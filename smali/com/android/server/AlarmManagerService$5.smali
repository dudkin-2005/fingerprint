.class Lcom/android/server/AlarmManagerService$5;
.super Lcom/android/server/AppStateTracker$Listener;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    .line 3979
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$5;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Lcom/android/server/AppStateTracker$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidForeground(IZ)V
    .locals 2

    .line 4003
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$5;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4004
    if-eqz p2, :cond_0

    .line 4005
    :try_start_0
    iget-object p2, p0, Lcom/android/server/AlarmManagerService$5;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object p2, p2, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    .line 4010
    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    .line 4011
    return-void

    .line 4010
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unblockAlarmsForUid(I)V
    .locals 3

    .line 3989
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$5;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3990
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$5;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/AlarmManagerService;->sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V

    .line 3991
    monitor-exit v0

    .line 3992
    return-void

    .line 3991
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unblockAlarmsForUidPackage(ILjava/lang/String;)V
    .locals 2

    .line 3996
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$5;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3997
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$5;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/AlarmManagerService;->sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V

    .line 3998
    monitor-exit v0

    .line 3999
    return-void

    .line 3998
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public unblockAllUnrestrictedAlarms()V
    .locals 2

    .line 3982
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$5;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3983
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$5;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService;->sendAllUnrestrictedPendingBackgroundAlarmsLocked()V

    .line 3984
    monitor-exit v0

    .line 3985
    return-void

    .line 3984
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
