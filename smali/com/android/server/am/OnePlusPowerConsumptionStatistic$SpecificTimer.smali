.class Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpecificTimer"
.end annotation


# instance fields
.field cumulativeTime:J

.field isTiming:Z

.field lock:Ljava/lang/Object;

.field pauseTime:J

.field startTime:J

.field tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p2, "_tag"    # Ljava/lang/String;

    .line 2674
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2667
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTime:J

    .line 2668
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTime:J

    .line 2669
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->cumulativeTime:J

    .line 2670
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->isTiming:Z

    .line 2671
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->tag:Ljava/lang/String;

    .line 2672
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->lock:Ljava/lang/Object;

    .line 2675
    iput-object p2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->tag:Ljava/lang/String;

    .line 2676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecificTimer tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 2677
    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    .line 2666
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTiming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;
    .param p1, "x1"    # J

    .line 2666
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTiming(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    .line 2666
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTiming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    .line 2666
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->resetTime()V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J
    .registers 5
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;
    .param p1, "x1"    # J

    .line 2666
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->getCumulativeTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private dump()V
    .registers 6

    .line 2776
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2777
    :try_start_3
    const-string v1, "OPCS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# dump # SpecificTimer # Begin # tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    const-string v1, "OPCS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# dump # SpecificTimer # cumulativeTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->cumulativeTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |isTiming:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->isTiming:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " |startTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |pauseTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    const-string v1, "OPCS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# dump # SpecificTimer # End # tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    monitor-exit v0

    .line 2784
    return-void

    .line 2783
    :catchall_6b
    move-exception v1

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_3 .. :try_end_6d} :catchall_6b

    throw v1
.end method

.method private getCumulativeTime()J
    .registers 9

    .line 2727
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2728
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->isTiming:Z

    if-eqz v1, :cond_46

    .line 2729
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getCurrentPoint()J
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)J

    move-result-wide v1

    .line 2730
    .local v1, "thisTime":J
    iget-wide v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->cumulativeTime:J

    .line 2731
    .local v3, "cumulativeTime_new":J
    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTime:J

    sub-long v5, v1, v5

    add-long/2addr v3, v5

    .line 2732
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SpecificTimer getCumulativeTime tag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " |startTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " |thisTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " |cumulativeTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 2736
    monitor-exit v0

    return-wide v3

    .line 2738
    .end local v1    # "thisTime":J
    .end local v3    # "cumulativeTime_new":J
    :cond_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpecificTimer getCumulativeTime tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |cumulativeTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->cumulativeTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 2740
    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->cumulativeTime:J

    monitor-exit v0

    return-wide v1

    .line 2742
    :catchall_6a
    move-exception v1

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_6a

    throw v1
.end method

.method private getCumulativeTime(J)J
    .registers 9
    .param p1, "timeLine"    # J

    .line 2746
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2747
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->isTiming:Z

    if-eqz v1, :cond_40

    .line 2748
    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->cumulativeTime:J

    .line 2749
    .local v1, "cumulativeTime_new":J
    iget-wide v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTime:J

    sub-long v3, p1, v3

    add-long/2addr v1, v3

    .line 2750
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SpecificTimer getCumulativeTime tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " |startTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " |timeLine:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " |cumulativeTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 2754
    monitor-exit v0

    return-wide v1

    .line 2756
    .end local v1    # "cumulativeTime_new":J
    :cond_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpecificTimer getCumulativeTime tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |timeLine<pauseTime?:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTime:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_5c

    const/4 v2, 0x1

    goto :goto_5d

    :cond_5c
    const/4 v2, 0x0

    :goto_5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |cumulativeTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->cumulativeTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 2759
    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->cumulativeTime:J

    monitor-exit v0

    return-wide v1

    .line 2761
    :catchall_75
    move-exception v1

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_3 .. :try_end_77} :catchall_75

    throw v1
.end method

.method private pauseTiming()Z
    .registers 8

    .line 2710
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2711
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->isTiming:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2712
    monitor-exit v0

    return v2

    .line 2714
    :cond_a
    iput-boolean v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->isTiming:Z

    .line 2716
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getCurrentPoint()J
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTime:J

    .line 2717
    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->cumulativeTime:J

    iget-wide v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTime:J

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTime:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->cumulativeTime:J

    .line 2718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpecificTimer pauseTiming tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |startTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |pauseTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |cumulativeTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->cumulativeTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 2721
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 2722
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw v1
.end method

.method private resetTime()V
    .registers 4

    .line 2765
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2766
    const-wide/16 v1, 0x0

    :try_start_5
    iput-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTime:J

    .line 2767
    iput-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTime:J

    .line 2768
    iput-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->cumulativeTime:J

    .line 2769
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->isTiming:Z

    .line 2770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpecificTimer resetTime tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 2771
    monitor-exit v0

    .line 2772
    return-void

    .line 2771
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private startTiming()Z
    .registers 6

    .line 2695
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2696
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->isTiming:Z

    if-eqz v1, :cond_a

    .line 2697
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2699
    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->isTiming:Z

    .line 2701
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getCurrentPoint()J
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTime:J

    .line 2702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpecificTimer startTiming tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |startTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |cumulativeTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->cumulativeTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 2705
    monitor-exit v0

    return v1

    .line 2706
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_41

    throw v1
.end method

.method private startTiming(J)Z
    .registers 8
    .param p1, "_startTime"    # J

    .line 2680
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2681
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->isTiming:Z

    if-eqz v1, :cond_a

    .line 2682
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2684
    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->isTiming:Z

    .line 2686
    iput-wide p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTime:J

    .line 2687
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpecificTimer startTiming tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |startTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |cumulativeTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->cumulativeTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 2690
    monitor-exit v0

    return v1

    .line 2691
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method
