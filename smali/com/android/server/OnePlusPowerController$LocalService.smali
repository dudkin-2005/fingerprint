.class public Lcom/android/server/OnePlusPowerController$LocalService;
.super Ljava/lang/Object;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;

    .line 897
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAggressive()Z
    .registers 2

    .line 907
    # getter for: Lcom/android/server/OnePlusPowerController;->mAggressive:Z
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1100()Z

    move-result v0

    return v0
.end method

.method public isChinaRegion()Z
    .registers 2

    .line 903
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController;->isChinaRegionInternal()Z

    move-result v0

    return v0
.end method

.method public isInDeepSleep()Z
    .registers 2

    .line 928
    # getter for: Lcom/android/server/OnePlusPowerController;->mIsDeepSleep:Z
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1800()Z

    move-result v0

    return v0
.end method

.method public isInSleep()Z
    .registers 3

    .line 911
    # getter for: Lcom/android/server/OnePlusPowerController;->mSleepState:I
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$500()I

    move-result v0

    const/16 v1, 0x15be

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isIndiaRegion()Z
    .registers 2

    .line 899
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController;->isIndiaRegionInternal()Z

    move-result v0

    return v0
.end method

.method public notifyScreenState(I)V
    .registers 3
    .param p1, "state"    # I

    .line 921
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mUserSleep:Z
    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1700(Lcom/android/server/OnePlusPowerController;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 922
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0, p1}, Lcom/android/server/OnePlusPowerController;->notifyScreenStateInternal(I)V

    .line 924
    :cond_d
    return-void
.end method

.method public setDozeState(I)V
    .registers 10
    .param p1, "state"    # I

    .line 932
    # getter for: Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 933
    const-string v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDozeState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_1d
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    # setter for: Lcom/android/server/OnePlusPowerController;->mDozeState:I
    invoke-static {v0, p1}, Lcom/android/server/OnePlusPowerController;->access$702(Lcom/android/server/OnePlusPowerController;I)I

    .line 937
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mOPSMEnabled:I
    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$600(Lcom/android/server/OnePlusPowerController;)I

    move-result v0

    if-lez v0, :cond_83

    .line 938
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mDozeState:I
    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$700(Lcom/android/server/OnePlusPowerController;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6a

    .line 939
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;
    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController$IdleStats;->getNextSleepEnd()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 940
    .local v0, "awake":Ljava/time/LocalDateTime;
    if-eqz v0, :cond_69

    .line 941
    # getter for: Lcom/android/server/OnePlusPowerController;->mSleepState:I
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$500()I

    move-result v1

    const/16 v2, 0x15be

    if-ne v1, v2, :cond_69

    .line 942
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    .line 943
    .local v1, "now":Ljava/time/LocalDateTime;
    invoke-static {v1, v0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v3

    .line 944
    .local v3, "duration":Ljava/time/Duration;
    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    # getter for: Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1900()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_69

    .line 946
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;
    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->access$800(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 950
    .end local v0    # "awake":Ljava/time/LocalDateTime;
    .end local v1    # "now":Ljava/time/LocalDateTime;
    .end local v3    # "duration":Ljava/time/Duration;
    :cond_69
    goto :goto_83

    :cond_6a
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mDozeState:I
    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$700(Lcom/android/server/OnePlusPowerController;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_74

    goto :goto_83

    .line 953
    :cond_74
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;
    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$800(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v0

    const/16 v1, 0x1e6c

    invoke-virtual {v0, v1}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 956
    :cond_83
    :goto_83
    return-void
.end method

.method public setInOnePlusStandbyAnalyzer(Lcom/android/server/OnePlusStandbyAnalyzer;)V
    .registers 3
    .param p1, "obj"    # Lcom/android/server/OnePlusStandbyAnalyzer;

    .line 960
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    # setter for: Lcom/android/server/OnePlusPowerController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {v0, p1}, Lcom/android/server/OnePlusPowerController;->access$2002(Lcom/android/server/OnePlusPowerController;Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/OnePlusStandbyAnalyzer;

    .line 961
    return-void
.end method

.method public shutdown()V
    .registers 3

    .line 915
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;
    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v0

    monitor-enter v0

    .line 916
    :try_start_7
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v1}, Lcom/android/server/OnePlusPowerController;->shutdownLocked()V

    .line 917
    monitor-exit v0

    .line 918
    return-void

    .line 917
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method
