.class final Lcom/android/server/am/ActivityManagerService$DevelopmentSettingsObserver;
.super Landroid/database/ContentObserver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DevelopmentSettingsObserver"
.end annotation


# instance fields
.field private final mBugreportStorageProvider:Landroid/content/ComponentName;

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 5

    .line 1512
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$DevelopmentSettingsObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1513
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1506
    const-string v0, "development_settings_enabled"

    .line 1507
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$DevelopmentSettingsObserver;->mUri:Landroid/net/Uri;

    .line 1509
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.shell"

    const-string v2, "com.android.shell.BugreportStorageProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$DevelopmentSettingsObserver;->mBugreportStorageProvider:Landroid/content/ComponentName;

    .line 1514
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$DevelopmentSettingsObserver;->mUri:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1517
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$DevelopmentSettingsObserver;->onChange()V

    .line 1518
    return-void
.end method


# virtual methods
.method public onChange()V
    .registers 6

    .line 1528
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$DevelopmentSettingsObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "development_settings_enabled"

    .line 1529
    sget-boolean v2, Landroid/os/Build;->IS_ENG:Z

    .line 1528
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v2

    .line 1530
    .local v0, "enabled":Z
    :goto_17
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$DevelopmentSettingsObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$DevelopmentSettingsObserver;->mBugreportStorageProvider:Landroid/content/ComponentName;

    .line 1531
    if-eqz v0, :cond_24

    goto :goto_25

    .line 1532
    :cond_24
    move v1, v2

    .line 1530
    :goto_25
    invoke-virtual {v3, v4, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1534
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "userId"    # I

    .line 1522
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$DevelopmentSettingsObserver;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1523
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$DevelopmentSettingsObserver;->onChange()V

    .line 1525
    :cond_b
    return-void
.end method
