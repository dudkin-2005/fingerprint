.class Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DatabaseHelper"
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "locksettings.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final IDLE_CONNECTION_TIMEOUT_MS:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "LockSettingsDB"


# instance fields
.field private mCallback:Lcom/android/server/locksettings/LockSettingsStorage$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 738
    const-string/jumbo v0, "locksettings.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 739
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 741
    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->setIdleConnectionTimeout(J)V

    .line 742
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 749
    const-string v0, "CREATE TABLE locksettings (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,user INTEGER,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 755
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 759
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 760
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->mCallback:Lcom/android/server/locksettings/LockSettingsStorage$Callback;

    if-eqz v0, :cond_c

    .line 761
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->mCallback:Lcom/android/server/locksettings/LockSettingsStorage$Callback;

    invoke-interface {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Callback;->initialize(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 763
    :cond_c
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "currentVersion"    # I

    .line 767
    move v0, p2

    .line 768
    .local v0, "upgradeVersion":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 770
    const/4 v0, 0x2

    .line 773
    :cond_5
    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    .line 774
    const-string v1, "LockSettingsDB"

    const-string v2, "Failed to upgrade database!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_f
    return-void
.end method

.method public setCallback(Lcom/android/server/locksettings/LockSettingsStorage$Callback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/server/locksettings/LockSettingsStorage$Callback;

    .line 745
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->mCallback:Lcom/android/server/locksettings/LockSettingsStorage$Callback;

    .line 746
    return-void
.end method
