.class Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaseTimer"
.end annotation


# instance fields
.field cumulativeTime:J

.field startTime:J

.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;JJ)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p2, "_startTime"    # J
    .param p4, "_cumulativeTime"    # J

    .line 2616
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2613
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->startTime:J

    .line 2614
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->cumulativeTime:J

    .line 2617
    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->timerLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2618
    :try_start_10
    iput-wide p2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->startTime:J

    .line 2619
    iput-wide p4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->cumulativeTime:J

    .line 2620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BaseTimer _startTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |_cumulativeTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 2622
    monitor-exit v0

    .line 2623
    return-void

    .line 2622
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_10 .. :try_end_34} :catchall_32

    throw v1
.end method

.method static synthetic access$7300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;

    .line 2612
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->getCurrentPoint()J

    move-result-wide v0

    return-wide v0
.end method

.method private getCurrentPoint()J
    .registers 6

    .line 2633
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->timerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2634
    :try_start_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->startTime:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->cumulativeTime:J

    add-long/2addr v1, v3

    .line 2637
    .local v1, "timePoint":J
    monitor-exit v0

    return-wide v1

    .line 2638
    .end local v1    # "timePoint":J
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private getStartTime()J
    .registers 4

    .line 2627
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->timerLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2628
    :try_start_7
    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseTimer;->cumulativeTime:J

    monitor-exit v0

    return-wide v1

    .line 2629
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method
