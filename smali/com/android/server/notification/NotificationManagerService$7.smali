.class Lcom/android/server/notification/NotificationManagerService$7;
.super Lcom/android/server/notification/ZenModeHelper$Callback;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->init(Landroid/os/Looper;Landroid/content/pm/IPackageManager;Landroid/content/pm/PackageManager;Lcom/android/server/lights/LightsManager;Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ConditionProviders;Landroid/companion/ICompanionDeviceManager;Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationUsageStats;Landroid/util/AtomicFile;Landroid/app/ActivityManager;Lcom/android/server/notification/GroupHelper;Landroid/app/IActivityManager;Landroid/app/usage/UsageStatsManagerInternal;Landroid/app/admin/DevicePolicyManagerInternal;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 1448
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged()V
    .locals 1

    .line 1451
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    .line 1452
    return-void
.end method

.method onPolicyChanged()V
    .locals 2

    .line 1469
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v1, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$2400(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 1470
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$2600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 1471
    return-void
.end method

.method onZenModeChanged()V
    .locals 4

    .line 1456
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$2400(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 1457
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1459
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.MANAGE_NOTIFICATIONS"

    .line 1457
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1461
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1462
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2500(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1463
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1464
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$2600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 1465
    return-void

    .line 1463
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
