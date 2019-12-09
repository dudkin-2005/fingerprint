.class Lcom/android/server/am/ActivityManagerService$5;
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
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 3005
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic lambda$handleMessage$0(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .registers 5
    .param p0, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 3037
    iget-wide v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 50
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 3008
    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_396

    goto/16 :goto_394

    .line 3164
    :pswitch_b
    # getter for: Lcom/android/server/am/ActivityManagerService;->mIsPreciseDevTemp:Z
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->access$2000()Z

    move-result v0

    # getter for: Lcom/android/server/am/ActivityManagerService;->DEVICE_TEMP_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->access$2100()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->getDeviceTemp(ZLjava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/internal/os/ProcessCpuTracker;->sSystemTempreture:I

    .line 3166
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    if-eqz v0, :cond_35

    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PEEK_SYSTEM_TEMP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/internal/os/ProcessCpuTracker;->sSystemTempreture:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    :cond_35
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    const-wide/32 v4, 0xea60

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_394

    .line 3157
    :pswitch_42
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    if-eqz v0, :cond_4d

    const-string v0, "ActivityManager"

    const-string v3, "PERSIST_CPU_TRACKER"

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    :cond_4d
    invoke-static {}, Lcom/android/internal/os/ProcessCpuTracker;->tryPersistToDisk()V

    .line 3159
    goto/16 :goto_394

    .line 3149
    :pswitch_52
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mEmbryoManager:Lcom/android/server/am/IEmbryoManager;

    invoke-interface {v0}, Lcom/android/server/am/IEmbryoManager;->forceUpdateOnlineConfig()V

    .line 3150
    goto/16 :goto_394

    .line 3012
    :pswitch_5b
    const/4 v0, 0x0

    .line 3013
    .local v0, "isDelayMessage":Z
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_73

    .line 3014
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3015
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v3, :cond_73

    .line 3016
    const-string v3, "ActivityManager"

    const-string v4, "COLLECT_PSS_BG_MSG  isDelay message"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    :cond_73
    move v3, v0

    .line 3019
    .end local v0    # "isDelayMessage":Z
    .local v3, "isDelayMessage":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3022
    .local v4, "start":J
    const/4 v0, 0x0

    const/4 v6, 0x0

    if-nez v3, :cond_15e

    .line 3024
    const/4 v7, 0x0

    .line 3025
    .local v7, "memInfo":Lcom/android/internal/util/MemInfoReader;
    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_80
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3026
    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v9, v9, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    if-eqz v9, :cond_93

    .line 3027
    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v6, v9, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    .line 3028
    new-instance v9, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v9}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    move-object v7, v9

    .line 3030
    :cond_93
    monitor-exit v8
    :try_end_94
    .catchall {:try_start_80 .. :try_end_94} :catchall_158

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3031
    if-eqz v7, :cond_15e

    .line 3032
    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 3033
    const-wide/16 v8, 0x0

    .line 3035
    .local v8, "nativeTotalPss":J
    iget-object v10, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v10

    .line 3036
    :try_start_a5
    iget-object v11, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    sget-object v12, Lcom/android/server/am/-$$Lambda$ActivityManagerService$5$BegFiGFfKLYS7VRmiWluczgOC5k;->INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerService$5$BegFiGFfKLYS7VRmiWluczgOC5k;

    invoke-virtual {v11, v12}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object v11

    .line 3039
    .local v11, "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    monitor-exit v10
    :try_end_b0
    .catchall {:try_start_a5 .. :try_end_b0} :catchall_155

    .line 3040
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 3041
    .local v12, "N":I
    move-wide/from16 v24, v8

    move v8, v6

    .line 3041
    .local v8, "j":I
    .local v24, "nativeTotalPss":J
    :goto_b7
    if-ge v8, v12, :cond_e7

    .line 3042
    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v9

    .line 3043
    :try_start_be
    iget-object v10, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v13, v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v10, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v10

    if-ltz v10, :cond_d2

    .line 3045
    monitor-exit v9

    goto :goto_e1

    .line 3047
    :cond_d2
    monitor-exit v9
    :try_end_d3
    .catchall {:try_start_be .. :try_end_d3} :catchall_e4

    .line 3048
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v9, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v9, v0, v0}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v9

    add-long v24, v24, v9

    .line 3041
    :goto_e1
    add-int/lit8 v8, v8, 0x1

    goto :goto_b7

    .line 3047
    :catchall_e4
    move-exception v0

    :try_start_e5
    monitor-exit v9
    :try_end_e6
    .catchall {:try_start_e5 .. :try_end_e6} :catchall_e4

    throw v0

    .line 3050
    .end local v8    # "j":I
    :cond_e7
    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 3051
    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_ed
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3052
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v9, :cond_115

    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Collected native and kernel memory in "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3053
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v4

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "ms"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3052
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    :cond_115
    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v9

    .line 3055
    .local v9, "cachedKb":J
    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v13

    move-wide/from16 v26, v13

    .line 3056
    .local v26, "freeKb":J
    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v13

    move-wide/from16 v28, v13

    .line 3057
    .local v28, "zramKb":J
    invoke-virtual {v7}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v13

    move-wide/from16 v30, v13

    .line 3058
    .local v30, "kernelKb":J
    const-wide/16 v13, 0x400

    mul-long v32, v9, v13

    mul-long v34, v26, v13

    mul-long v36, v28, v13

    mul-long v38, v30, v13

    mul-long v40, v24, v13

    invoke-static/range {v32 .. v41}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 3060
    iget-object v13, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-wide v14, v9

    move-wide/from16 v16, v26

    move-wide/from16 v18, v28

    move-wide/from16 v20, v30

    move-wide/from16 v22, v24

    invoke-virtual/range {v13 .. v23}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V

    .line 3062
    .end local v9    # "cachedKb":J
    .end local v26    # "freeKb":J
    .end local v28    # "zramKb":J
    .end local v30    # "kernelKb":J
    monitor-exit v8
    :try_end_14b
    .catchall {:try_start_ed .. :try_end_14b} :catchall_14f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_15e

    :catchall_14f
    move-exception v0

    :try_start_150
    monitor-exit v8
    :try_end_151
    .catchall {:try_start_150 .. :try_end_151} :catchall_14f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 3039
    .end local v11    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v12    # "N":I
    .end local v24    # "nativeTotalPss":J
    .local v8, "nativeTotalPss":J
    :catchall_155
    move-exception v0

    :try_start_156
    monitor-exit v10
    :try_end_157
    .catchall {:try_start_156 .. :try_end_157} :catchall_155

    throw v0

    .line 3030
    .end local v8    # "nativeTotalPss":J
    :catchall_158
    move-exception v0

    :try_start_159
    monitor-exit v8
    :try_end_15a
    .catchall {:try_start_159 .. :try_end_15a} :catchall_158

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 3066
    .end local v7    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    :cond_15e
    :goto_15e
    const/4 v7, 0x0

    .line 3069
    .local v7, "num":I
    const/4 v8, 0x0

    .line 3071
    .local v8, "k":I
    const/4 v9, 0x3

    new-array v9, v9, [J

    .line 3076
    .local v9, "tmp":[J
    :goto_163
    const/4 v10, -0x1

    .line 3080
    .local v10, "pid":I
    const/16 v11, 0xf

    const/4 v12, 0x1

    if-lt v8, v11, :cond_18a

    .line 3081
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3082
    .local v0, "msg2":Landroid/os/Message;
    iput v12, v0, Landroid/os/Message;->what:I

    .line 3083
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3084
    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    const-wide/16 v11, 0x3a98

    invoke-virtual {v6, v0, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3085
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v6, :cond_189

    .line 3086
    const-string v6, "ActivityManager"

    const-string v11, "COLLECT_PSS_BG_MSG delay getpss"

    invoke-static {v6, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3087
    :cond_189
    return-void

    .line 3090
    .end local v0    # "msg2":Landroid/os/Message;
    :cond_18a
    iget-object v11, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_18d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3091
    iget-object v13, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13
    :try_end_198
    .catchall {:try_start_18d .. :try_end_198} :catchall_384

    if-gtz v13, :cond_1e4

    .line 3092
    :try_start_19a
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    if-nez v0, :cond_1a4

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_1cd

    :cond_1a4
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Collected pss of "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " processes in "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3094
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v4

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "ms"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3092
    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3095
    :cond_1cd
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3096
    monitor-exit v11
    :try_end_1d5
    .catchall {:try_start_19a .. :try_end_1d5} :catchall_1d9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3116
    :catchall_1d9
    move-exception v0

    move/from16 v43, v3

    move-wide/from16 v44, v4

    move/from16 v42, v7

    .line 3116
    .end local v3    # "isDelayMessage":Z
    .end local v4    # "start":J
    .end local v7    # "num":I
    .end local v9    # "tmp":[J
    .local v42, "num":I
    .local v43, "isDelayMessage":Z
    .local v44, "start":J
    .local v46, "tmp":[J
    :goto_1e0
    move-object/from16 v46, v9

    goto/16 :goto_38d

    .line 3098
    .end local v42    # "num":I
    .end local v43    # "isDelayMessage":Z
    .end local v44    # "start":J
    .end local v46    # "tmp":[J
    .restart local v3    # "isDelayMessage":Z
    .restart local v4    # "start":J
    .restart local v7    # "num":I
    .restart local v9    # "tmp":[J
    :cond_1e4
    :try_start_1e4
    iget-object v13, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 3099
    .local v13, "proc":Lcom/android/server/am/ProcessRecord;
    iget v14, v13, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    .line 3100
    .local v14, "procState":I
    iget v15, v13, Lcom/android/server/am/ProcessRecord;->pssStatType:I
    :try_end_1f2
    .catchall {:try_start_1e4 .. :try_end_1f2} :catchall_384

    move/from16 v27, v15

    .line 3101
    .local v27, "statType":I
    move/from16 v42, v7

    :try_start_1f6
    iget-wide v6, v13, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    .line 3102
    .end local v7    # "num":I
    .local v6, "lastPssTime":J
    .restart local v42    # "num":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 3103
    .local v15, "now":J
    iget-object v12, v13, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_1fe
    .catchall {:try_start_1f6 .. :try_end_1fe} :catchall_37c

    const-wide/16 v17, 0x3e8

    if-eqz v12, :cond_218

    :try_start_202
    iget v12, v13, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v14, v12, :cond_218

    add-long v19, v6, v17

    cmp-long v12, v19, v15

    if-gez v12, :cond_218

    .line 3106
    iget v12, v13, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_20e
    .catchall {:try_start_202 .. :try_end_20e} :catchall_212

    move v10, v12

    .line 3116
    move/from16 v43, v3

    goto :goto_25c

    .line 3116
    .end local v6    # "lastPssTime":J
    .end local v13    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "procState":I
    .end local v15    # "now":J
    .end local v27    # "statType":I
    :catchall_212
    move-exception v0

    move/from16 v43, v3

    .line 3116
    .end local v3    # "isDelayMessage":Z
    .end local v4    # "start":J
    .end local v9    # "tmp":[J
    .restart local v43    # "isDelayMessage":Z
    .restart local v44    # "start":J
    .restart local v46    # "tmp":[J
    :goto_215
    move-wide/from16 v44, v4

    goto :goto_1e0

    .line 3108
    .end local v43    # "isDelayMessage":Z
    .end local v44    # "start":J
    .end local v46    # "tmp":[J
    .restart local v3    # "isDelayMessage":Z
    .restart local v4    # "start":J
    .restart local v6    # "lastPssTime":J
    .restart local v9    # "tmp":[J
    .restart local v13    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v14    # "procState":I
    .restart local v15    # "now":J
    .restart local v27    # "statType":I
    :cond_218
    :try_start_218
    iget-object v12, v13, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v12}, Lcom/android/server/am/ProcessList;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    .line 3109
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z
    :try_end_21f
    .catchall {:try_start_218 .. :try_end_21f} :catchall_37c

    if-eqz v12, :cond_257

    :try_start_221
    const-string v12, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipped pss collection of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": still need "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_235
    .catchall {:try_start_221 .. :try_end_235} :catchall_24e

    add-long v17, v6, v17

    move/from16 v43, v3

    sub-long v2, v17, v15

    .end local v3    # "isDelayMessage":Z
    .restart local v43    # "isDelayMessage":Z
    :try_start_23b
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms until safe"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24b
    .catchall {:try_start_23b .. :try_end_24b} :catchall_24c

    goto :goto_259

    .line 3116
    .end local v6    # "lastPssTime":J
    .end local v13    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v14    # "procState":I
    .end local v15    # "now":J
    .end local v27    # "statType":I
    :catchall_24c
    move-exception v0

    goto :goto_215

    .line 3116
    .end local v43    # "isDelayMessage":Z
    .restart local v3    # "isDelayMessage":Z
    :catchall_24e
    move-exception v0

    move/from16 v43, v3

    move-wide/from16 v44, v4

    move-object/from16 v46, v9

    .line 3116
    .end local v3    # "isDelayMessage":Z
    .restart local v43    # "isDelayMessage":Z
    goto/16 :goto_38d

    .line 3113
    .end local v43    # "isDelayMessage":Z
    .restart local v3    # "isDelayMessage":Z
    .restart local v6    # "lastPssTime":J
    .restart local v13    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v14    # "procState":I
    .restart local v15    # "now":J
    .restart local v27    # "statType":I
    :cond_257
    move/from16 v43, v3

    .line 3113
    .end local v3    # "isDelayMessage":Z
    .restart local v43    # "isDelayMessage":Z
    :goto_259
    const/4 v13, 0x0

    .line 3114
    const/4 v0, 0x0

    .line 3116
    .end local v10    # "pid":I
    .end local v15    # "now":J
    .local v0, "pid":I
    move v10, v0

    .line 3116
    .end local v0    # "pid":I
    .restart local v10    # "pid":I
    :goto_25c
    :try_start_25c
    monitor-exit v11
    :try_end_25d
    .catchall {:try_start_25c .. :try_end_25d} :catchall_374

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object v2, v13

    .line 3116
    .end local v13    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v2, "proc":Lcom/android/server/am/ProcessRecord;
    move v3, v14

    .line 3117
    .end local v14    # "procState":I
    .local v3, "procState":I
    if-eqz v2, :cond_362

    .line 3120
    add-int/lit8 v11, v8, 0x1

    .line 3122
    .end local v8    # "k":I
    .local v11, "k":I
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v12

    .line 3123
    .local v12, "startTime":J
    const/4 v0, 0x0

    invoke-static {v10, v9, v0}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v14

    .line 3124
    .local v14, "pss":J
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v32

    .line 3125
    .local v32, "endTime":J
    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_276
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_279
    .catchall {:try_start_276 .. :try_end_279} :catchall_354

    .line 3126
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-eqz v16, :cond_2d4

    :try_start_27f
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_2d4

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v0, v3, :cond_2d4

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_289
    .catchall {:try_start_27f .. :try_end_289} :catchall_2cb

    if-ne v0, v10, :cond_2d4

    move-wide/from16 v44, v4

    :try_start_28d
    iget-wide v4, v2, Lcom/android/server/am/ProcessRecord;->lastPssTime:J
    :try_end_28f
    .catchall {:try_start_28d .. :try_end_28f} :catchall_2c4

    .end local v4    # "start":J
    .restart local v44    # "start":J
    cmp-long v0, v4, v6

    if-nez v0, :cond_2c2

    .line 3128
    add-int/lit8 v4, v42, 0x1

    .line 3129
    .end local v42    # "num":I
    .local v4, "num":I
    :try_start_295
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    .line 3130
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    aget-wide v21, v9, v5

    const/16 v16, 0x1

    aget-wide v23, v9, v16

    const/16 v16, 0x2

    aget-wide v25, v9, v16

    sub-long v28, v32, v12

    .line 3131
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v30

    .line 3130
    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move/from16 v18, v3

    move-wide/from16 v19, v14

    invoke-virtual/range {v16 .. v31}, Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJJIJJ)V
    :try_end_2b8
    .catchall {:try_start_295 .. :try_end_2b8} :catchall_2be

    .line 3141
    move-object/from16 v46, v9

    move/from16 v47, v10

    goto/16 :goto_343

    :catchall_2be
    move-exception v0

    move/from16 v42, v4

    goto :goto_2c5

    .line 3133
    .end local v4    # "num":I
    .restart local v42    # "num":I
    :cond_2c2
    const/4 v5, 0x0

    goto :goto_2d7

    .line 3141
    :catchall_2c4
    move-exception v0

    .line 3141
    .end local v9    # "tmp":[J
    .end local v10    # "pid":I
    .restart local v46    # "tmp":[J
    .local v47, "pid":I
    :goto_2c5
    move-object/from16 v46, v9

    move/from16 v47, v10

    goto/16 :goto_35b

    .line 3141
    .end local v44    # "start":J
    .end local v46    # "tmp":[J
    .end local v47    # "pid":I
    .local v4, "start":J
    .restart local v9    # "tmp":[J
    .restart local v10    # "pid":I
    :catchall_2cb
    move-exception v0

    move-wide/from16 v44, v4

    move-object/from16 v46, v9

    move/from16 v47, v10

    .line 3141
    .end local v4    # "start":J
    .restart local v44    # "start":J
    goto/16 :goto_35b

    .line 3133
    .end local v44    # "start":J
    .restart local v4    # "start":J
    :cond_2d4
    move-wide/from16 v44, v4

    const/4 v5, 0x0

    .line 3133
    .end local v4    # "start":J
    .restart local v44    # "start":J
    :goto_2d7
    :try_start_2d7
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    .line 3134
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_33d

    const-string v0, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipped pss collection of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3135
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_2f6
    .catchall {:try_start_2d7 .. :try_end_2f6} :catchall_34e

    if-nez v5, :cond_2fb

    :try_start_2f8
    const-string v5, "NO_THREAD "
    :try_end_2fa
    .catchall {:try_start_2f8 .. :try_end_2fa} :catchall_2c4

    goto :goto_2fd

    :cond_2fb
    :try_start_2fb
    const-string v5, ""

    :goto_2fd
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3136
    iget v5, v2, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_302
    .catchall {:try_start_2fb .. :try_end_302} :catchall_34e

    if-eq v5, v10, :cond_307

    :try_start_304
    const-string v5, "PID_CHANGED "
    :try_end_306
    .catchall {:try_start_304 .. :try_end_306} :catchall_2c4

    goto :goto_309

    :cond_307
    :try_start_307
    const-string v5, ""

    :goto_309
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " initState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " curState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_323
    .catchall {:try_start_307 .. :try_end_323} :catchall_34e

    .line 3139
    move-object/from16 v46, v9

    move/from16 v47, v10

    :try_start_327
    iget-wide v9, v2, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    .line 3139
    .end local v9    # "tmp":[J
    .end local v10    # "pid":I
    .restart local v46    # "tmp":[J
    .restart local v47    # "pid":I
    cmp-long v5, v9, v6

    if-eqz v5, :cond_330

    const-string v5, "TIME_CHANGED"

    goto :goto_332

    :cond_330
    const-string v5, ""

    :goto_332
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3134
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33c
    .catchall {:try_start_327 .. :try_end_33c} :catchall_360

    goto :goto_341

    .line 3141
    .end local v46    # "tmp":[J
    .end local v47    # "pid":I
    .restart local v9    # "tmp":[J
    .restart local v10    # "pid":I
    :cond_33d
    move-object/from16 v46, v9

    move/from16 v47, v10

    .line 3141
    .end local v9    # "tmp":[J
    .end local v10    # "pid":I
    .restart local v46    # "tmp":[J
    .restart local v47    # "pid":I
    :goto_341
    move/from16 v4, v42

    .line 3141
    .end local v42    # "num":I
    .local v4, "num":I
    :goto_343
    :try_start_343
    monitor-exit v8
    :try_end_344
    .catchall {:try_start_343 .. :try_end_344} :catchall_34a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3143
    move v7, v4

    move v8, v11

    goto :goto_368

    .line 3141
    :catchall_34a
    move-exception v0

    move/from16 v42, v4

    goto :goto_35b

    .line 3141
    .end local v4    # "num":I
    .end local v46    # "tmp":[J
    .end local v47    # "pid":I
    .restart local v9    # "tmp":[J
    .restart local v10    # "pid":I
    .restart local v42    # "num":I
    :catchall_34e
    move-exception v0

    move-object/from16 v46, v9

    move/from16 v47, v10

    .line 3141
    .end local v9    # "tmp":[J
    .end local v10    # "pid":I
    .restart local v46    # "tmp":[J
    .restart local v47    # "pid":I
    goto :goto_35b

    .line 3141
    .end local v44    # "start":J
    .end local v46    # "tmp":[J
    .end local v47    # "pid":I
    .local v4, "start":J
    .restart local v9    # "tmp":[J
    .restart local v10    # "pid":I
    :catchall_354
    move-exception v0

    move-wide/from16 v44, v4

    move-object/from16 v46, v9

    move/from16 v47, v10

    .line 3141
    .end local v4    # "start":J
    .end local v9    # "tmp":[J
    .end local v10    # "pid":I
    .restart local v44    # "start":J
    .restart local v46    # "tmp":[J
    .restart local v47    # "pid":I
    :goto_35b
    :try_start_35b
    monitor-exit v8
    :try_end_35c
    .catchall {:try_start_35b .. :try_end_35c} :catchall_360

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_360
    move-exception v0

    goto :goto_35b

    .line 3143
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "procState":I
    .end local v6    # "lastPssTime":J
    .end local v11    # "k":I
    .end local v12    # "startTime":J
    .end local v14    # "pss":J
    .end local v27    # "statType":I
    .end local v32    # "endTime":J
    .end local v44    # "start":J
    .end local v46    # "tmp":[J
    .end local v47    # "pid":I
    .restart local v4    # "start":J
    .restart local v8    # "k":I
    .restart local v9    # "tmp":[J
    :cond_362
    move-wide/from16 v44, v4

    move-object/from16 v46, v9

    move/from16 v7, v42

    .line 3071
    .end local v4    # "start":J
    .end local v9    # "tmp":[J
    .end local v42    # "num":I
    .restart local v7    # "num":I
    .restart local v44    # "start":J
    .restart local v46    # "tmp":[J
    :goto_368
    move/from16 v3, v43

    move-wide/from16 v4, v44

    move-object/from16 v9, v46

    const/4 v0, 0x0

    move-object/from16 v2, p1

    const/4 v6, 0x0

    goto/16 :goto_163

    .line 3116
    .end local v7    # "num":I
    .end local v44    # "start":J
    .end local v46    # "tmp":[J
    .restart local v4    # "start":J
    .restart local v9    # "tmp":[J
    .restart local v10    # "pid":I
    .restart local v42    # "num":I
    :catchall_374
    move-exception v0

    move-wide/from16 v44, v4

    move-object/from16 v46, v9

    move/from16 v47, v10

    .line 3116
    .end local v4    # "start":J
    .end local v9    # "tmp":[J
    .end local v10    # "pid":I
    .restart local v44    # "start":J
    .restart local v46    # "tmp":[J
    .restart local v47    # "pid":I
    goto :goto_38d

    .line 3116
    .end local v43    # "isDelayMessage":Z
    .end local v44    # "start":J
    .end local v46    # "tmp":[J
    .end local v47    # "pid":I
    .local v3, "isDelayMessage":Z
    .restart local v4    # "start":J
    .restart local v9    # "tmp":[J
    .restart local v10    # "pid":I
    :catchall_37c
    move-exception v0

    move/from16 v43, v3

    move-wide/from16 v44, v4

    move-object/from16 v46, v9

    .line 3116
    .end local v3    # "isDelayMessage":Z
    .end local v4    # "start":J
    .end local v9    # "tmp":[J
    .restart local v43    # "isDelayMessage":Z
    .restart local v44    # "start":J
    .restart local v46    # "tmp":[J
    goto :goto_38d

    .line 3116
    .end local v42    # "num":I
    .end local v43    # "isDelayMessage":Z
    .end local v44    # "start":J
    .end local v46    # "tmp":[J
    .restart local v3    # "isDelayMessage":Z
    .restart local v4    # "start":J
    .restart local v7    # "num":I
    .restart local v9    # "tmp":[J
    :catchall_384
    move-exception v0

    move/from16 v43, v3

    move-wide/from16 v44, v4

    move/from16 v42, v7

    move-object/from16 v46, v9

    .line 3116
    .end local v3    # "isDelayMessage":Z
    .end local v4    # "start":J
    .end local v7    # "num":I
    .end local v9    # "tmp":[J
    .restart local v42    # "num":I
    .restart local v43    # "isDelayMessage":Z
    .restart local v44    # "start":J
    .restart local v46    # "tmp":[J
    :goto_38d
    :try_start_38d
    monitor-exit v11
    :try_end_38e
    .catchall {:try_start_38d .. :try_end_38e} :catchall_392

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_392
    move-exception v0

    goto :goto_38d

    .line 3172
    .end local v8    # "k":I
    .end local v10    # "pid":I
    .end local v42    # "num":I
    .end local v43    # "isDelayMessage":Z
    .end local v44    # "start":J
    .end local v46    # "tmp":[J
    :goto_394
    return-void

    nop

    :pswitch_data_396
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_52
        :pswitch_42
        :pswitch_b
    .end packed-switch
.end method
