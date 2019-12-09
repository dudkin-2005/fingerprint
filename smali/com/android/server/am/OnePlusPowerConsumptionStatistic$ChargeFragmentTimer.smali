.class Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChargeFragmentTimer"
.end annotation


# instance fields
.field ChargeFragmentTimer_ScreenOn:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

.field fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

.field hasFirstFullTime:Z

.field isTiming:Z

.field lock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 2906
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2907
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    .line 2908
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->lock:Ljava/lang/Object;

    .line 2909
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->isTiming:Z

    .line 2910
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->hasFirstFullTime:Z

    .line 2911
    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    const-string v2, "ChargeFragmentTimer_ScreenOn"

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->ChargeFragmentTimer_ScreenOn:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;
    .param p1, "x1"    # I

    .line 2906
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->startTiming(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    .line 2906
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->stopTiming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    .line 2906
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->startTiming_ScreenOn()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    .line 2906
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->pauseTiming_ScreenOn()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    .line 2906
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->updatePlugTypeFastCharge()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    .line 2906
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->updateFirstFullTime()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    .line 2906
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->clear()V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;

    .line 2906
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->getCacheChargeFragment()Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    move-result-object v0

    return-object v0
.end method

.method private clear()V
    .registers 3

    .line 2915
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2916
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->clear()V
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->access$7500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;)V

    .line 2917
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->ChargeFragmentTimer_ScreenOn:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->resetTime()V
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    .line 2918
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->hasFirstFullTime:Z

    .line 2919
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->isTiming:Z

    .line 2920
    const-string v1, "ChargeFragmentTimer clear"

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 2921
    monitor-exit v0

    .line 2922
    return-void

    .line 2921
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private getCacheChargeFragment()Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;
    .registers 7

    .line 3034
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3035
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->isTiming:Z

    if-eqz v1, :cond_b5

    .line 3036
    new-instance v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    .line 3037
    .local v1, "fragment_new":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    .line 3038
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getCurrentPoint()J
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    .line 3039
    iget-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    iget-wide v4, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->duration:J

    .line 3041
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->realBeginTime:J

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->realBeginTime:J

    .line 3042
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->beginPowerLevel:I

    iput v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->beginPowerLevel:I

    .line 3043
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerLevel:I
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v2

    iput v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->endPowerLevel:I

    .line 3044
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->plugType:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->plugType:Ljava/lang/String;

    .line 3045
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->firstFullTimeToRelativeBeginTime:J

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->firstFullTimeToRelativeBeginTime:J

    .line 3046
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->ChargeFragmentTimer_ScreenOn:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-wide v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    .line 3047
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->getCumulativeTime(J)J
    invoke-static {v2, v3, v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->screenOnDuration:J

    .line 3049
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChargeFragmentTimer getCacheChargeFragment relativeBeginTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |relativeEndTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->duration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |realBeginTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->realBeginTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |beginPowerLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->beginPowerLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |endPowerLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->endPowerLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |plugType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->plugType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |firstFullTimeToRelativeBeginTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->firstFullTimeToRelativeBeginTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |screenOnDuration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->screenOnDuration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 3068
    monitor-exit v0

    return-object v1

    .line 3070
    .end local v1    # "fragment_new":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;
    :cond_b5
    const-string v1, "ChargeFragmentTimer getCacheChargeFragment not Timing , return null"

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 3071
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 3073
    :catchall_bd
    move-exception v1

    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_3 .. :try_end_bf} :catchall_bd

    throw v1
.end method

.method private pauseTiming_ScreenOn()V
    .registers 3

    .line 2933
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2934
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->isTiming:Z

    if-eqz v1, :cond_c

    .line 2935
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->ChargeFragmentTimer_ScreenOn:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->pauseTiming()Z
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$4900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 2937
    :cond_c
    monitor-exit v0

    .line 2938
    return-void

    .line 2937
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private startTiming(I)Z
    .registers 7
    .param p1, "plugType"    # I

    .line 2941
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2942
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->isTiming:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 2943
    monitor-exit v0

    return v2

    .line 2945
    :cond_a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->isTiming:Z

    .line 2947
    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->clear()V
    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->access$7500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;)V

    .line 2948
    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->ChargeFragmentTimer_ScreenOn:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->resetTime()V
    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)V

    .line 2949
    iput-boolean v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->hasFirstFullTime:Z

    .line 2951
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getCurrentPoint()J
    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    .line 2952
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->realBeginTime:J

    .line 2953
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerLevel:I
    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v3

    iput v3, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->beginPowerLevel:I

    .line 2954
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getDescriptionByPlugType(I)Ljava/lang/String;
    invoke-static {v3, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->plugType:Ljava/lang/String;

    .line 2956
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mScreenState:Z
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 2957
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->ChargeFragmentTimer_ScreenOn:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    .line 2958
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTiming(J)Z
    invoke-static {v2, v3, v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)Z

    .line 2961
    :cond_50
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerLevel:I
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_5c

    .line 2962
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->hasFirstFullTime:Z

    .line 2965
    :cond_5c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChargeFragmentTimer startTiming startRelativeTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |realBeginTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->realBeginTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |beginPowerLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->beginPowerLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |plugType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->plugType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 2973
    monitor-exit v0

    return v1

    .line 2974
    :catchall_9a
    move-exception v1

    monitor-exit v0
    :try_end_9c
    .catchall {:try_start_3 .. :try_end_9c} :catchall_9a

    throw v1
.end method

.method private startTiming_ScreenOn()V
    .registers 3

    .line 2925
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2926
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->isTiming:Z

    if-eqz v1, :cond_c

    .line 2927
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->ChargeFragmentTimer_ScreenOn:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->startTiming()Z
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$5300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;)Z

    .line 2929
    :cond_c
    monitor-exit v0

    .line 2930
    return-void

    .line 2929
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method private stopTiming()Z
    .registers 7

    .line 3009
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 3010
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->isTiming:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 3011
    monitor-exit v0

    return v2

    .line 3013
    :cond_a
    iput-boolean v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->isTiming:Z

    .line 3015
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getCurrentPoint()J
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    .line 3016
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    iget-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v4, v4, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->duration:J

    .line 3018
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mPowerLevel:I
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$3100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)I

    move-result v2

    iput v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->endPowerLevel:I

    .line 3019
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->ChargeFragmentTimer_ScreenOn:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    .line 3020
    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->getCumulativeTime(J)J
    invoke-static {v2, v3, v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;->access$6900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificTimer;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->screenOnDuration:J

    .line 3022
    new-instance v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    invoke-direct {v1, v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;)V

    .line 3023
    .local v1, "c":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    iget-object v2, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mChargeFragment:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3024
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChargeFragmentTimer stopTiming relativeEndTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |duration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->duration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |endPowerLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->endPowerLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |screenOnDuration:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->screenOnDuration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 3029
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 3030
    .end local v1    # "c":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;
    :catchall_8a
    move-exception v1

    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_3 .. :try_end_8c} :catchall_8a

    throw v1
.end method

.method private updateFirstFullTime()Z
    .registers 8

    .line 2991
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2992
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->isTiming:Z

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 2993
    monitor-exit v0

    return v2

    .line 2996
    :cond_a
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->hasFirstFullTime:Z

    if-eqz v1, :cond_10

    .line 2997
    monitor-exit v0

    return v2

    .line 2999
    :cond_10
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->hasFirstFullTime:Z

    .line 3001
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getCurrentPoint()J
    invoke-static {v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v5, v5, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->firstFullTimeToRelativeBeginTime:J

    .line 3002
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChargeFragmentTimer updateFirstFullTime firstFullTimeToRelativeBeginTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->firstFullTimeToRelativeBeginTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 3004
    monitor-exit v0

    return v1

    .line 3005
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method private updatePlugTypeFastCharge()Z
    .registers 4

    .line 2978
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2979
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->isTiming:Z

    if-nez v1, :cond_a

    .line 2980
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2983
    :cond_a
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragmentTimer;->fragment:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    const-string v2, "FASTCHARGE"

    iput-object v2, v1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->plugType:Ljava/lang/String;

    .line 2984
    const-string v1, "ChargeFragmentTimer updatePlugType plugType:FASTCHARGE"

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 2986
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 2987
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method
