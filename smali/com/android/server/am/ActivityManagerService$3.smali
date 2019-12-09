.class Lcom/android/server/am/ActivityManagerService$3;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 0

    .line 2724
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic lambda$handleMessage$0(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 4

    .line 2743
    iget-wide v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget p0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 34

    move-object/from16 v0, p0

    .line 2727
    move-object/from16 v1, p1

    iget v1, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 2831
    return-void

    .line 2729
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2730
    nop

    .line 2731
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2732
    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    .line 2733
    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v7, v5, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    .line 2734
    new-instance v5, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v5}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    goto :goto_0

    .line 2736
    :cond_1
    move-object v5, v6

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2737
    const-wide/16 v8, 0x0

    if-eqz v5, :cond_4

    .line 2738
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 2739
    nop

    .line 2741
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v1

    .line 2742
    :try_start_1
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    sget-object v11, Lcom/android/server/am/-$$Lambda$ActivityManagerService$3$poTyYzHinA8s8lAJ-y6Bb3JsBNo;->INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerService$3$poTyYzHinA8s8lAJ-y6Bb3JsBNo;

    invoke-virtual {v10, v11}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object v10

    .line 2745
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2746
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    .line 2747
    move v11, v7

    move-wide/from16 v21, v8

    :goto_1
    if-ge v11, v1, :cond_3

    .line 2748
    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v12

    .line 2749
    :try_start_2
    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v14, v14, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v13, v14}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v13

    if-ltz v13, :cond_2

    .line 2751
    monitor-exit v12

    goto :goto_2

    .line 2753
    :cond_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2754
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v12, v12, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v12, v6, v6}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v12

    add-long v21, v21, v12

    .line 2747
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 2753
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 2756
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 2757
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2760
    invoke-virtual {v5}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v13

    .line 2761
    invoke-virtual {v5}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v15

    .line 2762
    invoke-virtual {v5}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v17

    .line 2763
    invoke-virtual {v5}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v19

    .line 2764
    const-wide/16 v11, 0x400

    mul-long v23, v13, v11

    mul-long v25, v15, v11

    mul-long v27, v17, v11

    mul-long v29, v19, v11

    mul-long v31, v21, v11

    invoke-static/range {v23 .. v32}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 2766
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual/range {v12 .. v22}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V

    .line 2768
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2745
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 2771
    :cond_4
    :goto_3
    nop

    .line 2772
    const/4 v1, 0x3

    new-array v1, v1, [J

    .line 2779
    move v5, v7

    :goto_4
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2780
    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gtz v11, :cond_6

    .line 2781
    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Collected pss of "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " processes in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2783
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2781
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    :goto_5
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2785
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2787
    :cond_6
    :try_start_8
    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    .line 2788
    iget v14, v11, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    .line 2789
    iget v15, v11, Lcom/android/server/am/ProcessRecord;->pssStatType:I

    .line 2790
    iget-wide v12, v11, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    .line 2791
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 2792
    iget-object v2, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_7

    iget v2, v11, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v14, v2, :cond_7

    const-wide/16 v18, 0x3e8

    add-long v18, v12, v18

    cmp-long v2, v18, v16

    if-gez v2, :cond_7

    .line 2795
    iget v2, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    goto :goto_6

    .line 2797
    :cond_7
    iget-object v2, v11, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v2}, Lcom/android/server/am/ProcessList;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    .line 2802
    nop

    .line 2803
    nop

    .line 2805
    move-object v11, v6

    move v2, v7

    :goto_6
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2806
    if-eqz v11, :cond_9

    .line 2807
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v16

    .line 2808
    invoke-static {v2, v1, v6}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v18

    .line 2809
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v20

    .line 2810
    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2811
    cmp-long v22, v18, v8

    if-eqz v22, :cond_8

    iget-object v6, v11, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_8

    iget v6, v11, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v6, v14, :cond_8

    iget v6, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v6, v2, :cond_8

    iget-wide v8, v11, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    cmp-long v2, v8, v12

    if-nez v2, :cond_8

    .line 2813
    add-int/lit8 v5, v5, 0x1

    .line 2814
    iget-object v2, v11, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v2}, Lcom/android/server/am/ProcessList;->commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    .line 2815
    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    aget-wide v8, v1, v7

    const/4 v2, 0x1

    aget-wide v22, v1, v2

    const/4 v6, 0x2

    aget-wide v24, v1, v6

    sub-long v26, v20, v16

    .line 2816
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    .line 2815
    move-object v13, v11

    move v6, v15

    move-wide/from16 v15, v18

    move-wide/from16 v17, v8

    move-wide/from16 v19, v22

    move-wide/from16 v21, v24

    move/from16 v23, v6

    move-wide/from16 v24, v26

    move-wide/from16 v26, v28

    invoke-virtual/range {v12 .. v27}, Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJJIJJ)V

    goto :goto_7

    .line 2818
    :cond_8
    const/4 v2, 0x1

    iget-object v6, v11, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v6}, Lcom/android/server/am/ProcessList;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    .line 2826
    :goto_7
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_8

    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2828
    :cond_9
    const/4 v2, 0x1

    .line 2779
    :goto_8
    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    goto/16 :goto_4

    .line 2805
    :catchall_4
    move-exception v0

    :try_start_b
    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2736
    :catchall_5
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method
