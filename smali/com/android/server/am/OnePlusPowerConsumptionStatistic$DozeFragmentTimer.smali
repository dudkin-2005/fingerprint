.class Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DozeFragmentTimer"
.end annotation


# instance fields
.field fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

.field isTiming:Z

.field lock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 2787
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2788
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    .line 2789
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->lock:Ljava/lang/Object;

    .line 2790
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->isTiming:Z

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;

    .line 2787
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->startTiming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;
    .param p1, "x1"    # Ljava/lang/String;

    .line 2787
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->stopTiming(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;

    .line 2787
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->clear()V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;

    .line 2787
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->getCacheDozeFragment()Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    move-result-object v0

    return-object v0
.end method

.method private clear()V
    .registers 3

    .line 2793
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2794
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->clear()V
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->access$7400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;)V

    .line 2795
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->isTiming:Z

    .line 2796
    const-string v1, "DozeFragmentTimer clear"

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 2797
    monitor-exit v0

    .line 2798
    return-void

    .line 2797
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private getCacheDozeFragment()Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;
    .registers 7

    .line 2846
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2847
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->isTiming:Z

    if-eqz v1, :cond_8f

    .line 2848
    new-instance v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    .line 2849
    .local v1, "fragment_new":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    .line 2850
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->realBeginTime:J

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->realBeginTime:J

    .line 2851
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->beginPowerLevel:I

    iput v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->beginPowerLevel:I

    .line 2853
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getCurrentPoint()J
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeEndTime:J

    .line 2854
    iget-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeEndTime:J

    iget-wide v4, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->duration:J

    .line 2856
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerLevel:I
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v2

    iput v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->endPowerLevel:I

    .line 2857
    const-string v2, "StillContinuing"

    iput-object v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->exitReason:Ljava/lang/String;

    .line 2859
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DozeFragmentTimer getCacheDozeFragment relativeBeginTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |relativeEndTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeEndTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->duration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |realBeginTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->realBeginTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |beginPowerLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->beginPowerLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |endPowerLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->endPowerLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |exitReason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->exitReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 2874
    monitor-exit v0

    return-object v1

    .line 2876
    .end local v1    # "fragment_new":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;
    :cond_8f
    const-string v1, "DozeFragmentTimer getCacheDozeFragment not Timing , return null"

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 2877
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 2879
    :catchall_97
    move-exception v1

    monitor-exit v0
    :try_end_99
    .catchall {:try_start_3 .. :try_end_99} :catchall_97

    throw v1
.end method

.method private startTiming()Z
    .registers 6

    .line 2801
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2802
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->isTiming:Z

    if-eqz v1, :cond_a

    .line 2803
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2805
    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->isTiming:Z

    .line 2807
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->clear()V
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->access$7400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;)V

    .line 2808
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getCurrentPoint()J
    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    .line 2809
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->realBeginTime:J

    .line 2810
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerLevel:I
    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v3

    iput v3, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->beginPowerLevel:I

    .line 2811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DozeFragmentTimer startTiming startRelativeTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |realBeginTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->realBeginTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |beginPowerLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->beginPowerLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 2817
    monitor-exit v0

    return v1

    .line 2818
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw v1
.end method

.method private stopTiming(Ljava/lang/String;)Z
    .registers 8
    .param p1, "reason"    # Ljava/lang/String;

    .line 2822
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2823
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->isTiming:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2824
    monitor-exit v0

    return v2

    .line 2826
    :cond_a
    iput-boolean v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->isTiming:Z

    .line 2828
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getCurrentPoint()J
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeEndTime:J

    .line 2829
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeEndTime:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-wide v4, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->duration:J

    .line 2831
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerLevel:I
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v2

    iput v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->endPowerLevel:I

    .line 2832
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iput-object p1, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->exitReason:Ljava/lang/String;

    .line 2834
    new-instance v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    invoke-direct {v1, v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;)V

    .line 2835
    .local v1, "d":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    iget-object v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mDozeFragment:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2836
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DozeFragmentTimer stopTiming relativeEndTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeEndTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->duration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |endPowerLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->endPowerLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |exitReason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    iget-object v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->exitReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 2841
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 2842
    .end local v1    # "d":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;
    :catchall_80
    move-exception v1

    monitor-exit v0
    :try_end_82
    .catchall {:try_start_3 .. :try_end_82} :catchall_80

    throw v1
.end method
