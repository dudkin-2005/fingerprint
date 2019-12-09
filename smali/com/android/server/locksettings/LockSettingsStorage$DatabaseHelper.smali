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
    .locals 3

    .line 742
    const-string v0, "locksettings.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 743
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 745
    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->setIdleConnectionTimeout(J)V

    .line 746
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 753
    const-string v0, "CREATE TABLE locksettings (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,user INTEGER,value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 759
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 763
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 764
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->mCallback:Lcom/android/server/locksettings/LockSettingsStorage$Callback;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->mCallback:Lcom/android/server/locksettings/LockSettingsStorage$Callback;

    invoke-interface {v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Callback;->initialize(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 767
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 771
    nop

    .line 772
    const/4 p1, 0x2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 774
    nop

    .line 777
    move p2, p1

    :cond_0
    if-eq p2, p1, :cond_1

    .line 778
    const-string p1, "LockSettingsDB"

    const-string p2, "Failed to upgrade database!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_1
    return-void
.end method

.method public setCallback(Lcom/android/server/locksettings/LockSettingsStorage$Callback;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->mCallback:Lcom/android/server/locksettings/LockSettingsStorage$Callback;

    .line 750
    return-void
.end method
