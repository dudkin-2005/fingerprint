.class Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;
.super Ljava/lang/Object;
.source "JobSchedulerService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeartbeatAlarmListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 1858
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 8

    .line 1862
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1863
    :try_start_0
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService;->mLastHeartbeatTime:J

    sub-long/2addr v1, v3

    .line 1864
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v3, v3, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v3, v3, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    div-long/2addr v1, v3

    .line 1865
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 1866
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-wide v4, v3, Lcom/android/server/job/JobSchedulerService;->mLastHeartbeatTime:J

    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v6, v6, Lcom/android/server/job/JobSchedulerService;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide v6, v6, Lcom/android/server/job/JobSchedulerService$Constants;->STANDBY_HEARTBEAT_TIME:J

    mul-long/2addr v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/server/job/JobSchedulerService;->mLastHeartbeatTime:J

    .line 1867
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/job/JobSchedulerService;->advanceHeartbeatLocked(J)V

    .line 1869
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1870
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$HeartbeatAlarmListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0}, Lcom/android/server/job/JobSchedulerService;->setNextHeartbeatAlarm()V

    .line 1871
    return-void

    .line 1869
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
