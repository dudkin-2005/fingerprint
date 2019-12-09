.class Lcom/android/server/net/NetworkPolicyManagerService$19;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 3362
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 3365
    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "setDeviceIdleMode PolicyHandler "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3367
    :try_start_d
    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->isDozeChangeSupport:Z
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->access$800()Z

    move-result v1

    if-nez v1, :cond_1a

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mPolicy:I
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->access$900()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2d

    :cond_1a
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceMode:Z

    if-eqz v1, :cond_2d

    .line 3368
    const-string v1, "NetworkPolicy"

    const-string v2, "Update mAllowFGNetworkAccess to false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowFGNetworkAccess:Z

    .line 3370
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V
    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 3372
    :cond_2d
    monitor-exit v0

    .line 3373
    return-void

    .line 3372
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_d .. :try_end_31} :catchall_2f

    throw v1
.end method
