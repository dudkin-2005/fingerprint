.class Lcom/android/server/am/OnePlusProcessManager$4;
.super Landroid/app/IProcessObserver$Stub;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusProcessManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusProcessManager;

    .line 1809
    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 11
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 1815
    sget-boolean v0, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v0, :cond_20

    .line 1816
    const-string v0, "OnePlusProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onForegroundActivitiesChanged  uid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " begin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    :cond_20
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->getCurrentFrontUid()I
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$4100(Lcom/android/server/am/OnePlusProcessManager;)I

    move-result v1

    # setter for: Lcom/android/server/am/OnePlusProcessManager;->mCurrentFrontUid:I
    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusProcessManager;->access$4002(Lcom/android/server/am/OnePlusProcessManager;I)I

    .line 1819
    const/4 v0, 0x0

    .line 1820
    .local v0, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_be

    .line 1821
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a0

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a0

    .line 1822
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1824
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4f
    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a0

    .line 1825
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1826
    .local v2, "mUid":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v3, v3, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1827
    :try_start_60
    iget-object v4, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v4, v4, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v0, v4

    .line 1828
    monitor-exit v3
    :try_end_74
    .catchall {:try_start_60 .. :try_end_74} :catchall_9d

    .line 1829
    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ltz v3, :cond_4f

    .line 1830
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2700()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-wide v5, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/am/OnePlusProcessManager;->access$1600(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    .line 1831
    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->startComputeUidTraffic(I)V
    invoke-static {v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->access$4200(Lcom/android/server/am/OnePlusProcessManager;I)V

    .line 1832
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1833
    sget-object v3, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    .line 1828
    :catchall_9d
    move-exception v4

    :try_start_9e
    monitor-exit v3
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw v4

    .line 1837
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v2    # "mUid":Ljava/lang/Integer;
    :cond_a0
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1838
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1839
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_df

    .line 1841
    :cond_be
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mCurrentFrontUid:I
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$4000(Lcom/android/server/am/OnePlusProcessManager;)I

    move-result v1

    if-eq v1, p2, :cond_df

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_df

    .line 1842
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1846
    :cond_df
    :goto_df
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG:Z

    if-nez v1, :cond_e7

    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_11f

    :cond_e7
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GpsFreeze] pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |mCurrentFrontUid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mCurrentFrontUid:I
    invoke-static {v3}, Lcom/android/server/am/OnePlusProcessManager;->access$4000(Lcom/android/server/am/OnePlusProcessManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |foregroundActivities:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " |mFrontActivityUids:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v3, v3, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    :cond_11f
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1848
    :try_start_124
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object v0, v2

    .line 1849
    monitor-exit v1
    :try_end_138
    .catchall {:try_start_124 .. :try_end_138} :catchall_1c9

    .line 1850
    if-eqz v0, :cond_1c8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ltz v1, :cond_1c8

    .line 1851
    const/16 v1, 0x2710

    if-lt p2, v1, :cond_1c8

    .line 1852
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->scheduleChangeForGpsProcess(ZI)V
    invoke-static {v1, p3, p2}, Lcom/android/server/am/OnePlusProcessManager;->access$4300(Lcom/android/server/am/OnePlusProcessManager;ZI)V

    .line 1853
    if-eqz p3, :cond_186

    .line 1854
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1855
    :try_start_14e
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mLoactionFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1856
    monitor-exit v1
    :try_end_158
    .catchall {:try_start_14e .. :try_end_158} :catchall_183

    .line 1857
    sget-object v2, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 1858
    :try_start_15b
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mSuspendFailUidsCount:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1859
    monitor-exit v2
    :try_end_165
    .catchall {:try_start_15b .. :try_end_165} :catchall_180

    .line 1863
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mSuspendProcessHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$500(Lcom/android/server/am/OnePlusProcessManager;)Landroid/os/Handler;

    move-result-object v1

    add-int/lit16 v2, p2, -0x2710

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1864
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2700()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v1

    const-string/jumbo v2, "onForegroundActivitiesChanged"

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->scheduleResumeUid(ILjava/lang/String;)Z
    invoke-static {v1, p2, v2}, Lcom/android/server/am/OnePlusProcessManager;->access$4400(Lcom/android/server/am/OnePlusProcessManager;ILjava/lang/String;)Z

    .line 1865
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->scheduleForegroundChangeMessage(I)V
    invoke-static {v1, p2}, Lcom/android/server/am/OnePlusProcessManager;->access$4500(Lcom/android/server/am/OnePlusProcessManager;I)V

    goto :goto_1a9

    .line 1859
    :catchall_180
    move-exception v1

    :try_start_181
    monitor-exit v2
    :try_end_182
    .catchall {:try_start_181 .. :try_end_182} :catchall_180

    throw v1

    .line 1856
    :catchall_183
    move-exception v2

    :try_start_184
    monitor-exit v1
    :try_end_185
    .catchall {:try_start_184 .. :try_end_185} :catchall_183

    throw v2

    .line 1867
    :cond_186
    # getter for: Lcom/android/server/am/OnePlusProcessManager;->mOnePlusProcessManager:Lcom/android/server/am/OnePlusProcessManager;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->access$2700()Lcom/android/server/am/OnePlusProcessManager;

    move-result-object v1

    const-wide/16 v2, 0x4

    sget-wide v4, Lcom/android/server/am/OnePlusProcessManager;->suspendUidDelayTime:J

    mul-long/2addr v2, v4

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->scheduleSuspendUid(IJ)V
    invoke-static {v1, p2, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->access$1600(Lcom/android/server/am/OnePlusProcessManager;IJ)V

    .line 1868
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    # invokes: Lcom/android/server/am/OnePlusProcessManager;->startComputeUidTraffic(I)V
    invoke-static {v1, p2}, Lcom/android/server/am/OnePlusProcessManager;->access$4200(Lcom/android/server/am/OnePlusProcessManager;I)V

    .line 1869
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1870
    sget-object v1, Lcom/android/server/am/OnePlusProcessManager;->mDoThawedUids:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1872
    :goto_1a9
    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_DETAIL:Z

    if-eqz v1, :cond_1c8

    .line 1873
    const-string v1, "OnePlusProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onForeground mFrontActivityUids="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v3, v3, Lcom/android/server/am/OnePlusProcessManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :cond_1c8
    return-void

    .line 1849
    :catchall_1c9
    move-exception v2

    :try_start_1ca
    monitor-exit v1
    :try_end_1cb
    .catchall {:try_start_1ca .. :try_end_1cb} :catchall_1c9

    throw v2
.end method

.method public onProcessDied(II)V
    .registers 7
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 1883
    iget-object v0, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusProcessManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1884
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1885
    .local v1, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string/jumbo v2, "onProcessDied"

    const/4 v3, 0x2

    invoke-static {p2, v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out_Delay(ILjava/lang/String;I)V

    .line 1886
    if-eqz v1, :cond_2c

    .line 1887
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1888
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_2c

    .line 1889
    iget-object v2, p0, Lcom/android/server/am/OnePlusProcessManager$4;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusProcessManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1892
    .end local v1    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2c
    monitor-exit v0

    .line 1893
    return-void

    .line 1892
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_2e

    throw v1
.end method
