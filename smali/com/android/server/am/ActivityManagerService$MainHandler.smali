.class final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2479
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2480
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2481
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 27
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v1, p0

    .line 2485
    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const v6, 0x108079b

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    sparse-switch v0, :sswitch_data_8ba

    goto/16 :goto_8b7

    .line 2980
    :sswitch_13
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    # invokes: Lcom/android/server/am/ActivityManagerService;->handleUntrackedProcessLocked(I)V
    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerService;->access$1900(Lcom/android/server/am/ActivityManagerService;I)V

    .line 2981
    goto/16 :goto_8b7

    .line 2985
    :sswitch_22
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_25
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2986
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 2987
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_8b7

    :catchall_33
    move-exception v0

    :try_start_34
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2953
    :sswitch_39
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "pkg"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/RestartProcessManager;->updateLaunchTime(Ljava/lang/String;J)V

    .line 2954
    goto/16 :goto_8b7

    .line 2949
    :sswitch_51
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "pkg"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "time"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/RestartProcessManager;->updateDuration(Ljava/lang/String;J)V

    .line 2950
    goto/16 :goto_8b7

    .line 2958
    :sswitch_70
    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 2959
    .local v3, "flag":I
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    .line 2960
    .local v4, "packageName":Ljava/lang/String;
    if-nez v3, :cond_98

    .line 2961
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v0, :cond_98

    .line 2962
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mNetLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2963
    :try_start_82
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mActiveNetType:I

    if-ltz v0, :cond_93

    .line 2964
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mActiveNetType:I

    invoke-virtual {v0, v7, v4, v6, v10}, Lcom/android/internal/app/ActivityTrigger;->activityMiscTrigger(ILjava/lang/String;II)F

    .line 2966
    monitor-exit v5

    return-void

    .line 2968
    :cond_93
    monitor-exit v5

    goto :goto_98

    :catchall_95
    move-exception v0

    monitor-exit v5
    :try_end_97
    .catchall {:try_start_82 .. :try_end_97} :catchall_95

    throw v0

    .line 2971
    :cond_98
    :goto_98
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v0, :cond_a1

    .line 2972
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    invoke-virtual {v0, v7, v4, v9, v11}, Lcom/android/internal/app/ActivityTrigger;->activityMiscTrigger(ILjava/lang/String;II)F

    .line 2975
    .end local v3    # "flag":I
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_a1
    goto/16 :goto_8b7

    .line 2503
    :sswitch_a3
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 2504
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "servicerecord"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2503
    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActiveServices;->serviceForegroundCrash(Lcom/android/server/am/ProcessRecord;Ljava/lang/CharSequence;)V

    .line 2505
    goto/16 :goto_8b7

    .line 2507
    :sswitch_bb
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/RemoteCallbackList;

    .line 2509
    .local v3, "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/os/IResultReceiver;>;"
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 2510
    .local v4, "N":I
    move v0, v10

    .line 2510
    .local v0, "i":I
    :goto_c5
    move v5, v0

    .line 2510
    .end local v0    # "i":I
    .local v5, "i":I
    if-ge v5, v4, :cond_d6

    .line 2512
    :try_start_c8
    invoke-virtual {v3, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/IResultReceiver;

    invoke-interface {v0, v10, v8}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_d1
    .catch Landroid/os/RemoteException; {:try_start_c8 .. :try_end_d1} :catch_d2

    .line 2514
    goto :goto_d3

    .line 2513
    :catch_d2
    move-exception v0

    .line 2510
    :goto_d3
    add-int/lit8 v0, v5, 0x1

    .line 2510
    .end local v5    # "i":I
    .restart local v0    # "i":I
    goto :goto_c5

    .line 2516
    .end local v0    # "i":I
    :cond_d6
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2517
    .end local v3    # "callbacks":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/os/IResultReceiver;>;"
    .end local v4    # "N":I
    goto/16 :goto_8b7

    .line 2500
    :sswitch_db
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActiveServices;->serviceForegroundTimeout(Lcom/android/server/am/ServiceRecord;)V

    .line 2501
    goto/16 :goto_8b7

    .line 2928
    :sswitch_e8
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_ee

    move v10, v11

    nop

    :cond_ee
    move v0, v10

    .line 2929
    .local v0, "isShowing":Z
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v11

    .line 2929
    .local v3, "i":I
    :goto_f8
    if-ltz v3, :cond_10a

    .line 2930
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManagerInternal$ScreenObserver;

    invoke-interface {v4, v0}, Landroid/app/ActivityManagerInternal$ScreenObserver;->onKeyguardStateChanged(Z)V

    .line 2929
    add-int/lit8 v3, v3, -0x1

    goto :goto_f8

    .line 2932
    .end local v0    # "isShowing":Z
    .end local v3    # "i":I
    :cond_10a
    goto/16 :goto_8b7

    .line 2922
    :sswitch_10c
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_112

    move v10, v11

    nop

    :cond_112
    move v0, v10

    .line 2923
    .local v0, "isAwake":Z
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v11

    .line 2923
    .restart local v3    # "i":I
    :goto_11c
    if-ltz v3, :cond_12e

    .line 2924
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManagerInternal$ScreenObserver;

    invoke-interface {v4, v0}, Landroid/app/ActivityManagerInternal$ScreenObserver;->onAwakeStateChanged(Z)V

    .line 2923
    add-int/lit8 v3, v3, -0x1

    goto :goto_11c

    .line 2926
    .end local v0    # "isAwake":Z
    .end local v3    # "i":I
    :cond_12e
    goto/16 :goto_8b7

    .line 2934
    :sswitch_130
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_133
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2935
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v11

    .line 2935
    .local v0, "i":I
    :goto_13f
    move v4, v0

    .line 2935
    .end local v0    # "i":I
    .local v4, "i":I
    if-ltz v4, :cond_175

    .line 2936
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v5, v0

    .line 2937
    .local v5, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_14f
    .catchall {:try_start_133 .. :try_end_14f} :catchall_17b

    if-eqz v0, :cond_172

    .line 2939
    :try_start_151
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->handleTrustStorageUpdate()V
    :try_end_156
    .catch Landroid/os/RemoteException; {:try_start_151 .. :try_end_156} :catch_157
    .catchall {:try_start_151 .. :try_end_156} :catchall_17b

    .line 2943
    goto :goto_172

    .line 2940
    :catch_157
    move-exception v0

    .line 2941
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_158
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to handle trust storage update for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_172
    :goto_172
    add-int/lit8 v0, v4, -0x1

    .line 2935
    .end local v4    # "i":I
    .local v0, "i":I
    goto :goto_13f

    .line 2946
    .end local v0    # "i":I
    :cond_175
    monitor-exit v3
    :try_end_176
    .catchall {:try_start_158 .. :try_end_176} :catchall_17b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2947
    goto/16 :goto_8b7

    .line 2946
    :catchall_17b
    move-exception v0

    :try_start_17c
    monitor-exit v3
    :try_end_17d
    .catchall {:try_start_17c .. :try_end_17d} :catchall_17b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2908
    :sswitch_181
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mVrController:Lcom/android/server/am/VrController;
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1800(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/VrController;

    move-result-object v0

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/VrController;->onVrModeChanged(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_192

    .line 2909
    return-void

    .line 2911
    :cond_192
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_195
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2912
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mVrController:Lcom/android/server/am/VrController;
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1800(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/VrController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/VrController;->shouldDisableNonVrUiLocked()Z

    move-result v0

    .line 2913
    .local v0, "disableNonVrUi":Z
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService;->disableNonVrUi(Z)V

    .line 2914
    if-eqz v0, :cond_1b6

    .line 2917
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-array v5, v11, [I

    aput v7, v5, v10

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->removeStacksInWindowingModes([I)V

    .line 2919
    .end local v0    # "disableNonVrUi":Z
    :cond_1b6
    monitor-exit v3
    :try_end_1b7
    .catchall {:try_start_195 .. :try_end_1b7} :catchall_1bc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2920
    goto/16 :goto_8b7

    .line 2919
    :catchall_1bc
    move-exception v0

    :try_start_1bd
    monitor-exit v3
    :try_end_1be
    .catchall {:try_start_1bd .. :try_end_1be} :catchall_1bc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2905
    :sswitch_1c2
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->idleUids()V

    .line 2906
    goto/16 :goto_8b7

    .line 2585
    :sswitch_1c9
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 2586
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_1d1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2587
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->processContentProviderPublishTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerService;->access$1500(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 2588
    monitor-exit v4
    :try_end_1da
    .catchall {:try_start_1d1 .. :try_end_1da} :catchall_1df

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2589
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    goto/16 :goto_8b7

    .line 2588
    .restart local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_1df
    move-exception v0

    :try_start_1e0
    monitor-exit v4
    :try_end_1e1
    .catchall {:try_start_1e0 .. :try_end_1e1} :catchall_1df

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2894
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_1e5
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/IUiAutomationConnection;

    move-object v3, v0

    .line 2896
    .local v3, "connection":Landroid/app/IUiAutomationConnection;
    :try_start_1ea
    invoke-interface {v3}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_1ed
    .catch Landroid/os/RemoteException; {:try_start_1ea .. :try_end_1ed} :catch_1ee

    .line 2899
    goto :goto_1f7

    .line 2897
    :catch_1ee
    move-exception v0

    move-object v4, v0

    .line 2898
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    const-string v5, "Error shutting down UiAutomationConnection"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1f7
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # setter for: Lcom/android/server/am/ActivityManagerService;->mUserIsMonkey:Z
    invoke-static {v0, v10}, Lcom/android/server/am/ActivityManagerService;->access$1702(Lcom/android/server/am/ActivityManagerService;Z)Z

    .line 2903
    .end local v3    # "connection":Landroid/app/IUiAutomationConnection;
    goto/16 :goto_8b7

    .line 2890
    :sswitch_1fe
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/AppTimeTracker;

    .line 2891
    .local v0, "tracker":Lcom/android/server/am/AppTimeTracker;
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/server/am/AppTimeTracker;->deliverResult(Landroid/content/Context;)V

    .line 2892
    .end local v0    # "tracker":Lcom/android/server/am/AppTimeTracker;
    goto/16 :goto_8b7

    .line 2877
    :sswitch_20b
    iget-object v10, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v11

    const/4 v12, 0x0

    sget-object v13, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    const/4 v14, 0x3

    .line 2881
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    .line 2877
    invoke-virtual/range {v10 .. v15}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 2882
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_223
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2883
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v8, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpFile:Ljava/lang/String;

    .line 2884
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v8, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 2885
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput v9, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpPid:I

    .line 2886
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput v9, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    .line 2887
    monitor-exit v7
    :try_end_237
    .catchall {:try_start_223 .. :try_end_237} :catchall_23c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2888
    goto/16 :goto_8b7

    .line 2887
    :catchall_23c
    move-exception v0

    :try_start_23d
    monitor-exit v7
    :try_end_23e
    .catchall {:try_start_23d .. :try_end_23e} :catchall_23c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2807
    :sswitch_242
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_245
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2808
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 2809
    .local v0, "procName":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v9, v9, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    .line 2810
    .local v9, "uid":I
    iget-object v12, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v12, v0, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    .line 2811
    .local v12, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v12, :cond_267

    .line 2812
    iget-object v13, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v13, v0, v10}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    move-object v12, v13

    .line 2814
    :cond_267
    if-eqz v12, :cond_276

    .line 2815
    iget-object v8, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 2816
    .local v13, "memLimit":J
    iget-object v8, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 2816
    .local v8, "reportPackage":Ljava/lang/String;
    goto :goto_279

    .line 2818
    .end local v8    # "reportPackage":Ljava/lang/String;
    .end local v13    # "memLimit":J
    :cond_276
    const-wide/16 v13, 0x0

    .line 2819
    .restart local v13    # "memLimit":J
    nop

    .line 2821
    .end local v12    # "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v8    # "reportPackage":Ljava/lang/String;
    :goto_279
    monitor-exit v7
    :try_end_27a
    .catchall {:try_start_245 .. :try_end_27a} :catchall_387

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object v7, v0

    .line 2821
    .end local v0    # "procName":Ljava/lang/String;
    .local v7, "procName":Ljava/lang/String;
    move-wide v12, v13

    .line 2822
    .end local v13    # "memLimit":J
    .local v12, "memLimit":J
    if-nez v7, :cond_282

    .line 2823
    return-void

    .line 2826
    :cond_282
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_2a4

    const-string v0, "ActivityManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Showing dump heap notification from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    :cond_2a4
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v14

    .line 2830
    .local v14, "inm":Landroid/app/INotificationManager;
    if-nez v14, :cond_2ab

    .line 2831
    return-void

    .line 2834
    :cond_2ab
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v15, 0x10401da

    new-array v3, v11, [Ljava/lang/Object;

    aput-object v7, v3, v10

    invoke-virtual {v0, v15, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2837
    .local v3, "text":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v15, v0

    .line 2838
    .local v15, "deleteIntent":Landroid/content/Intent;
    const-string v0, "com.android.server.am.DELETE_DUMPHEAP"

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2839
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object/from16 v22, v0

    .line 2840
    .local v22, "intent":Landroid/content/Intent;
    const-string v0, "android"

    const-class v10, Lcom/android/internal/app/DumpHeapActivity;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, v22

    invoke-virtual {v11, v0, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2841
    .end local v22    # "intent":Landroid/content/Intent;
    .local v11, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "process"

    invoke-virtual {v11, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2842
    const-string/jumbo v0, "size"

    invoke-virtual {v11, v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2843
    if-eqz v8, :cond_2ec

    .line 2844
    const-string v0, "direct_launch"

    invoke-virtual {v11, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2846
    :cond_2ec
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 2847
    .local v10, "userId":I
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2849
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2850
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2851
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2852
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2853
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2854
    const v5, 0x1060157

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2856
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x10401db

    .line 2858
    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2857
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    const/high16 v19, 0x10000000

    const/16 v20, 0x0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 2859
    move-object/from16 v16, v4

    move-object/from16 v18, v11

    move-object/from16 v21, v5

    invoke-static/range {v16 .. v21}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 2862
    const/4 v6, 0x0

    invoke-static {v4, v6, v15, v6, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2864
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v20

    .line 2867
    .local v20, "notification":Landroid/app/Notification;
    :try_start_364
    const-string v16, "android"

    const-string v17, "android"
    :try_end_368
    .catch Ljava/lang/RuntimeException; {:try_start_364 .. :try_end_368} :catch_37b
    .catch Landroid/os/RemoteException; {:try_start_364 .. :try_end_368} :catch_378

    const/16 v18, 0x0

    const/16 v19, 0xc

    move-object v4, v15

    move-object v15, v14

    .line 2867
    .end local v15    # "deleteIntent":Landroid/content/Intent;
    .local v4, "deleteIntent":Landroid/content/Intent;
    move/from16 v21, v10

    :try_start_370
    invoke-interface/range {v15 .. v21}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_373
    .catch Ljava/lang/RuntimeException; {:try_start_370 .. :try_end_373} :catch_376
    .catch Landroid/os/RemoteException; {:try_start_370 .. :try_end_373} :catch_374

    goto :goto_384

    .line 2873
    :catch_374
    move-exception v0

    goto :goto_37a

    .line 2870
    :catch_376
    move-exception v0

    goto :goto_37d

    .line 2873
    .end local v4    # "deleteIntent":Landroid/content/Intent;
    .restart local v15    # "deleteIntent":Landroid/content/Intent;
    :catch_378
    move-exception v0

    move-object v4, v15

    .line 2873
    .end local v3    # "text":Ljava/lang/String;
    .end local v7    # "procName":Ljava/lang/String;
    .end local v8    # "reportPackage":Ljava/lang/String;
    .end local v9    # "uid":I
    .end local v10    # "userId":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "memLimit":J
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v15    # "deleteIntent":Landroid/content/Intent;
    .end local v20    # "notification":Landroid/app/Notification;
    :goto_37a
    goto :goto_385

    .line 2870
    .restart local v3    # "text":Ljava/lang/String;
    .restart local v7    # "procName":Ljava/lang/String;
    .restart local v8    # "reportPackage":Ljava/lang/String;
    .restart local v9    # "uid":I
    .restart local v10    # "userId":I
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v12    # "memLimit":J
    .restart local v14    # "inm":Landroid/app/INotificationManager;
    .restart local v15    # "deleteIntent":Landroid/content/Intent;
    .restart local v20    # "notification":Landroid/app/Notification;
    :catch_37b
    move-exception v0

    move-object v4, v15

    .line 2871
    .end local v15    # "deleteIntent":Landroid/content/Intent;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v4    # "deleteIntent":Landroid/content/Intent;
    :goto_37d
    const-string v5, "ActivityManager"

    const-string v6, "Error showing notification for dump heap"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2874
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "deleteIntent":Landroid/content/Intent;
    .end local v7    # "procName":Ljava/lang/String;
    .end local v8    # "reportPackage":Ljava/lang/String;
    .end local v9    # "uid":I
    .end local v10    # "userId":I
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "memLimit":J
    .end local v14    # "inm":Landroid/app/INotificationManager;
    .end local v20    # "notification":Landroid/app/Notification;
    :goto_384
    nop

    .line 2875
    :goto_385
    goto/16 :goto_8b7

    .line 2821
    :catchall_387
    move-exception v0

    :try_start_388
    monitor-exit v7
    :try_end_389
    .catchall {:try_start_388 .. :try_end_389} :catchall_387

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2786
    :sswitch_38d
    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 2787
    .local v3, "uid":I
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, [B

    .line 2789
    .local v4, "firstPacket":[B
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v5

    .line 2790
    const/16 v23, 0x0

    .line 2790
    .local v23, "i":I
    :goto_39b
    move/from16 v6, v23

    .line 2790
    .end local v23    # "i":I
    .local v6, "i":I
    :try_start_39d
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v6, v0, :cond_3c0

    .line 2791
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v7, v0

    .line 2792
    .local v7, "p":Lcom/android/server/am/ProcessRecord;
    iget v0, v7, Lcom/android/server/am/ProcessRecord;->uid:I
    :try_end_3b4
    .catchall {:try_start_39d .. :try_end_3b4} :catchall_3c3

    if-ne v0, v3, :cond_3bd

    .line 2794
    :try_start_3b6
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0, v4}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_3bb
    .catch Landroid/os/RemoteException; {:try_start_3b6 .. :try_end_3bb} :catch_3bc
    .catchall {:try_start_3b6 .. :try_end_3bb} :catchall_3c3

    .line 2796
    goto :goto_3bd

    .line 2795
    :catch_3bc
    move-exception v0

    .line 2790
    .end local v7    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_3bd
    :goto_3bd
    add-int/lit8 v23, v6, 0x1

    .line 2790
    .end local v6    # "i":I
    .restart local v23    # "i":I
    goto :goto_39b

    .line 2799
    .end local v23    # "i":I
    :cond_3c0
    :try_start_3c0
    monitor-exit v5

    .line 2800
    goto/16 :goto_8b7

    .line 2799
    :catchall_3c3
    move-exception v0

    monitor-exit v5
    :try_end_3c5
    .catchall {:try_start_3c0 .. :try_end_3c5} :catchall_3c3

    throw v0

    .line 2775
    .end local v3    # "uid":I
    .end local v4    # "firstPacket":[B
    :sswitch_3c6
    :try_start_3c6
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Locale;

    .line 2776
    .local v0, "l":Ljava/util/Locale;
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 2777
    .local v3, "service":Landroid/os/IBinder;
    invoke-static {v3}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v4

    .line 2778
    .local v4, "storageManager":Landroid/os/storage/IStorageManager;
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Storing locale "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " for decryption UI"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    const-string v5, "SystemLocale"

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/os/storage/IStorageManager;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3fd
    .catch Landroid/os/RemoteException; {:try_start_3c6 .. :try_end_3fd} :catch_3ff

    .line 2782
    .end local v0    # "l":Ljava/util/Locale;
    .end local v3    # "service":Landroid/os/IBinder;
    .end local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    goto/16 :goto_8b7

    .line 2780
    :catch_3ff
    move-exception v0

    .line 2781
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ActivityManager"

    const-string v4, "Error storing locale for decryption UI"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2783
    .end local v0    # "e":Landroid/os/RemoteException;
    goto/16 :goto_8b7

    .line 2763
    :sswitch_409
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_41c

    .line 2764
    const-string v0, "FinishBooting"

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2765
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 2766
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2768
    :cond_41c
    iget v0, v2, Landroid/os/Message;->arg2:I

    if-eqz v0, :cond_8b7

    .line 2769
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    goto/16 :goto_8b7

    .line 2718
    :sswitch_427
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_42a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2719
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    move-object v4, v0

    .line 2720
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_53f

    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_53f

    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_440
    .catchall {:try_start_42a .. :try_end_440} :catchall_545

    if-eqz v0, :cond_53f

    .line 2722
    :try_start_442
    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v0, v5}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 2726
    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move v5, v0

    .line 2727
    .local v5, "userId":I
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->IS_APP_LOCKER_ENABLED:Z

    if-eqz v0, :cond_53d

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mHintConfirmed:Z

    if-nez v0, :cond_53d

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPassedPackageList:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53d

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v6, 0x3f

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 2728
    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_53d

    .line 2730
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V
    :try_end_490
    .catch Landroid/os/RemoteException; {:try_start_442 .. :try_end_490} :catch_53e
    .catchall {:try_start_442 .. :try_end_490} :catchall_545

    move-object v15, v0

    .line 2732
    .local v15, "hintIntent":Landroid/content/Intent;
    :try_start_491
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AppLocker: start app locker hint: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2733
    const-string v0, "com.oneplus.applocker"

    const-string v6, "com.oneplus.applocker.AppLockerHintActivity"

    invoke-virtual {v15, v0, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2734
    const/high16 v0, 0x20000000

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2735
    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;
    :try_end_4b5
    .catch Ljava/lang/Exception; {:try_start_491 .. :try_end_4b5} :catch_522
    .catch Landroid/os/RemoteException; {:try_start_491 .. :try_end_4b5} :catch_53e
    .catchall {:try_start_491 .. :try_end_4b5} :catchall_545

    if-nez v0, :cond_4ea

    .line 2736
    :try_start_4b7
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getActivityStartController()Lcom/android/server/am/ActivityStartController;

    move-result-object v0

    const-string v6, "AppLocker_ENTER_ANIMATION_COMPLETE_MSG"

    invoke-virtual {v0, v15, v6}, Lcom/android/server/am/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 2737
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStarter;->setCallingUid(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    .line 2738
    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mRequestHashCode:I

    .line 2739
    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStarter;->setRequestCode(I)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mConfirmResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2740
    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityStarter;

    move-result-object v0

    .line 2741
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStarter;->execute()I
    :try_end_4e3
    .catch Ljava/lang/Exception; {:try_start_4b7 .. :try_end_4e3} :catch_4e6
    .catch Landroid/os/RemoteException; {:try_start_4b7 .. :try_end_4e3} :catch_53e
    .catchall {:try_start_4b7 .. :try_end_4e3} :catchall_545

    .line 2748
    move-object/from16 v24, v15

    goto :goto_50b

    .line 2751
    :catch_4e6
    move-exception v0

    move-object/from16 v24, v15

    goto :goto_525

    .line 2743
    :cond_4ea
    :try_start_4ea
    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v7, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v10, ""

    iget-object v11, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v12, v4, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v13, v0, Lcom/android/server/am/ActivityManagerService;->mRequestHashCode:I
    :try_end_4fc
    .catch Ljava/lang/Exception; {:try_start_4ea .. :try_end_4fc} :catch_522
    .catch Landroid/os/RemoteException; {:try_start_4ea .. :try_end_4fc} :catch_53e
    .catchall {:try_start_4ea .. :try_end_4fc} :catchall_545

    const/4 v14, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x2710

    move-object v9, v15

    move-object/from16 v24, v15

    move-object v15, v0

    .end local v15    # "hintIntent":Landroid/content/Intent;
    .local v24, "hintIntent":Landroid/content/Intent;
    :try_start_508
    invoke-virtual/range {v6 .. v18}, Lcom/android/server/am/ActivityManagerService;->oemStartActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    .line 2748
    :goto_50b
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/server/am/ActivityManagerService;->mHintConfirmed:Z

    .line 2749
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "op_applocker_hint_confirmed"

    const/4 v7, 0x1

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_51f
    .catch Ljava/lang/Exception; {:try_start_508 .. :try_end_51f} :catch_520
    .catch Landroid/os/RemoteException; {:try_start_508 .. :try_end_51f} :catch_53e
    .catchall {:try_start_508 .. :try_end_51f} :catchall_545

    .line 2753
    goto :goto_53d

    .line 2751
    :catch_520
    move-exception v0

    goto :goto_525

    .line 2751
    .end local v24    # "hintIntent":Landroid/content/Intent;
    .restart local v15    # "hintIntent":Landroid/content/Intent;
    :catch_522
    move-exception v0

    move-object/from16 v24, v15

    .line 2752
    .end local v15    # "hintIntent":Landroid/content/Intent;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v24    # "hintIntent":Landroid/content/Intent;
    :goto_525
    :try_start_525
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppLocker: No activity to handle start "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, v24

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .end local v24    # "hintIntent":Landroid/content/Intent;
    .local v8, "hintIntent":Landroid/content/Intent;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_53d
    .catch Landroid/os/RemoteException; {:try_start_525 .. :try_end_53d} :catch_53e
    .catchall {:try_start_525 .. :try_end_53d} :catchall_545

    .line 2757
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "userId":I
    .end local v8    # "hintIntent":Landroid/content/Intent;
    :cond_53d
    :goto_53d
    goto :goto_53f

    .line 2756
    :catch_53e
    move-exception v0

    .line 2759
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_53f
    :goto_53f
    :try_start_53f
    monitor-exit v3
    :try_end_540
    .catchall {:try_start_53f .. :try_end_540} :catchall_545

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2760
    goto/16 :goto_8b7

    .line 2759
    :catchall_545
    move-exception v0

    :try_start_546
    monitor-exit v3
    :try_end_547
    .catchall {:try_start_546 .. :try_end_547} :catchall_545

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2702
    :sswitch_54b
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_54e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2703
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .line 2703
    .local v0, "i":I
    :goto_55b
    move v4, v0

    .line 2703
    .end local v0    # "i":I
    .local v4, "i":I
    if-ltz v4, :cond_593

    .line 2704
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v5, v0

    .line 2705
    .local v5, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_56b
    .catchall {:try_start_54e .. :try_end_56b} :catchall_599

    if-eqz v0, :cond_590

    .line 2707
    :try_start_56d
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget v6, v2, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v6}, Landroid/app/IApplicationThread;->updateTimePrefs(I)V
    :try_end_574
    .catch Landroid/os/RemoteException; {:try_start_56d .. :try_end_574} :catch_575
    .catchall {:try_start_56d .. :try_end_574} :catchall_599

    .line 2711
    goto :goto_590

    .line 2708
    :catch_575
    move-exception v0

    .line 2709
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_576
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update preferences for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_590
    :goto_590
    add-int/lit8 v0, v4, -0x1

    .line 2703
    .end local v4    # "i":I
    .local v0, "i":I
    goto :goto_55b

    .line 2714
    .end local v0    # "i":I
    :cond_593
    monitor-exit v3
    :try_end_594
    .catchall {:try_start_576 .. :try_end_594} :catchall_599

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2715
    goto/16 :goto_8b7

    .line 2714
    :catchall_599
    move-exception v0

    :try_start_59a
    monitor-exit v3
    :try_end_59b
    .catchall {:try_start_59a .. :try_end_59b} :catchall_599

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2696
    :sswitch_59f
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->writeGrantedUriPermissions()V
    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$1600(Lcom/android/server/am/ActivityManagerService;)V

    .line 2697
    goto/16 :goto_8b7

    .line 2682
    :sswitch_5a6
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_5ad

    const/16 v23, 0x1

    goto :goto_5af

    :cond_5ad
    const/16 v23, 0x0

    :goto_5af
    move/from16 v0, v23

    .line 2683
    .local v0, "nextState":Z
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v3}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v3

    if-eq v3, v0, :cond_8b7

    .line 2684
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_IMMERSIVE:Z

    if-eqz v3, :cond_5e1

    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Applying new update lock state \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\' for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    :cond_5e1
    if-eqz v0, :cond_5ec

    .line 2688
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v3}, Landroid/os/UpdateLock;->acquire()V

    goto/16 :goto_8b7

    .line 2690
    :cond_5ec
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v3}, Landroid/os/UpdateLock;->release()V

    goto/16 :goto_8b7

    .line 2672
    .end local v0    # "nextState":Z
    :sswitch_5f5
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 2673
    .local v0, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    new-instance v3, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    invoke-direct {v3, v1, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    .line 2678
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 2679
    goto/16 :goto_8b7

    .line 2551
    .end local v0    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v3    # "thread":Ljava/lang/Thread;
    :sswitch_603
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/net/ProxyInfo;

    .line 2552
    .local v3, "proxy":Landroid/net/ProxyInfo;
    const-string v0, ""

    .line 2553
    .local v0, "host":Ljava/lang/String;
    const-string v4, ""

    .line 2554
    .local v4, "port":Ljava/lang/String;
    const-string v5, ""

    .line 2555
    .local v5, "exclList":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 2556
    .local v6, "pacFileUrl":Landroid/net/Uri;
    if-eqz v3, :cond_626

    .line 2557
    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 2558
    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getPort()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 2559
    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v5

    .line 2560
    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v6

    .line 2562
    .end local v0    # "host":Ljava/lang/String;
    .local v4, "host":Ljava/lang/String;
    .local v5, "port":Ljava/lang/String;
    .local v6, "exclList":Ljava/lang/String;
    .local v7, "pacFileUrl":Landroid/net/Uri;
    :cond_626
    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v0

    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_62d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2563
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v9, 0x1

    sub-int/2addr v0, v9

    .line 2563
    .local v0, "i":I
    :goto_63a
    move v9, v0

    .line 2563
    .end local v0    # "i":I
    .local v9, "i":I
    if-ltz v9, :cond_674

    .line 2564
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v10, v0

    .line 2567
    .local v10, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_671

    iget-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_64e
    .catchall {:try_start_62d .. :try_end_64e} :catchall_67a

    if-nez v0, :cond_671

    .line 2569
    :try_start_650
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0, v4, v5, v6, v7}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_655
    .catch Landroid/os/RemoteException; {:try_start_650 .. :try_end_655} :catch_656
    .catchall {:try_start_650 .. :try_end_655} :catchall_67a

    .line 2573
    goto :goto_671

    .line 2570
    :catch_656
    move-exception v0

    .line 2571
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_657
    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to update http proxy for: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v10    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_671
    :goto_671
    add-int/lit8 v0, v9, -0x1

    .line 2563
    .end local v9    # "i":I
    .local v0, "i":I
    goto :goto_63a

    .line 2576
    .end local v0    # "i":I
    :cond_674
    monitor-exit v8
    :try_end_675
    .catchall {:try_start_657 .. :try_end_675} :catchall_67a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2577
    .end local v3    # "proxy":Landroid/net/ProxyInfo;
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "port":Ljava/lang/String;
    .end local v6    # "exclList":Ljava/lang/String;
    .end local v7    # "pacFileUrl":Landroid/net/Uri;
    goto/16 :goto_8b7

    .line 2576
    .restart local v3    # "proxy":Landroid/net/ProxyInfo;
    .restart local v4    # "host":Ljava/lang/String;
    .restart local v5    # "port":Ljava/lang/String;
    .restart local v6    # "exclList":Ljava/lang/String;
    .restart local v7    # "pacFileUrl":Landroid/net/Uri;
    :catchall_67a
    move-exception v0

    :try_start_67b
    monitor-exit v8
    :try_end_67c
    .catchall {:try_start_67b .. :try_end_67c} :catchall_67a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2537
    .end local v3    # "proxy":Landroid/net/ProxyInfo;
    .end local v4    # "host":Ljava/lang/String;
    .end local v5    # "port":Ljava/lang/String;
    .end local v6    # "exclList":Ljava/lang/String;
    .end local v7    # "pacFileUrl":Landroid/net/Uri;
    :sswitch_680
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_683
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2538
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .line 2538
    .restart local v0    # "i":I
    :goto_690
    move v4, v0

    .line 2538
    .end local v0    # "i":I
    .local v4, "i":I
    if-ltz v4, :cond_6c6

    .line 2539
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v5, v0

    .line 2540
    .local v5, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_6a0
    .catchall {:try_start_683 .. :try_end_6a0} :catchall_6cc

    if-eqz v0, :cond_6c3

    .line 2542
    :try_start_6a2
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_6a7
    .catch Landroid/os/RemoteException; {:try_start_6a2 .. :try_end_6a7} :catch_6a8
    .catchall {:try_start_6a2 .. :try_end_6a7} :catchall_6cc

    .line 2545
    goto :goto_6c3

    .line 2543
    :catch_6a8
    move-exception v0

    .line 2544
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_6a9
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to clear dns cache for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_6c3
    :goto_6c3
    add-int/lit8 v0, v4, -0x1

    .line 2538
    .end local v4    # "i":I
    .local v0, "i":I
    goto :goto_690

    .line 2548
    .end local v0    # "i":I
    :cond_6c6
    monitor-exit v3
    :try_end_6c7
    .catchall {:try_start_6a9 .. :try_end_6c7} :catchall_6cc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2549
    goto/16 :goto_8b7

    .line 2548
    :catchall_6cc
    move-exception v0

    :try_start_6cd
    monitor-exit v3
    :try_end_6ce
    .catchall {:try_start_6cd .. :try_end_6ce} :catchall_6cc

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2664
    :sswitch_6d2
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_6d5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2665
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked()V

    .line 2666
    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 2667
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2668
    .local v0, "nmsg":Landroid/os/Message;
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2669
    .end local v0    # "nmsg":Landroid/os/Message;
    monitor-exit v3
    :try_end_6f0
    .catchall {:try_start_6d5 .. :try_end_6f0} :catchall_6f5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2670
    goto/16 :goto_8b7

    .line 2669
    :catchall_6f5
    move-exception v0

    :try_start_6f6
    monitor-exit v3
    :try_end_6f7
    .catchall {:try_start_6f6 .. :try_end_6f7} :catchall_6f5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2650
    :sswitch_6fb
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v3

    .line 2651
    .local v3, "inm":Landroid/app/INotificationManager;
    if-nez v3, :cond_702

    .line 2652
    return-void

    .line 2655
    :cond_702
    :try_start_702
    const-string v0, "android"

    const/16 v4, 0xb

    iget v5, v2, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v0, v8, v4, v5}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_70b
    .catch Ljava/lang/RuntimeException; {:try_start_702 .. :try_end_70b} :catch_70e
    .catch Landroid/os/RemoteException; {:try_start_702 .. :try_end_70b} :catch_70c

    goto :goto_716

    .line 2660
    :catch_70c
    move-exception v0

    .line 2660
    .end local v3    # "inm":Landroid/app/INotificationManager;
    goto :goto_717

    .line 2657
    .restart local v3    # "inm":Landroid/app/INotificationManager;
    :catch_70e
    move-exception v0

    .line 2658
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    const-string v5, "Error canceling notification for service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2661
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v3    # "inm":Landroid/app/INotificationManager;
    :goto_716
    nop

    .line 2662
    :goto_717
    goto/16 :goto_8b7

    .line 2605
    :sswitch_719
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v3

    .line 2606
    .restart local v3    # "inm":Landroid/app/INotificationManager;
    if-nez v3, :cond_720

    .line 2607
    return-void

    .line 2610
    :cond_720
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 2611
    .local v4, "root":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2612
    .local v5, "process":Lcom/android/server/am/ProcessRecord;
    if-nez v5, :cond_72a

    .line 2613
    return-void

    .line 2617
    :cond_72a
    :try_start_72a
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    move-object v13, v0

    .line 2618
    .local v13, "context":Landroid/content/Context;
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v7, 0x1040285

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    .line 2619
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v9, v10

    .line 2618
    invoke-virtual {v0, v7, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 2620
    .local v14, "text":Ljava/lang/String;
    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->HEAVY_WEIGHT_APP:Ljava/lang/String;

    invoke-direct {v0, v13, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2623
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2624
    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2625
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2626
    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 2627
    const v7, 0x1060157

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2629
    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v7, 0x1040286

    .line 2631
    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 2630
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v10, 0x10000000

    const/4 v11, 0x0

    new-instance v12, Landroid/os/UserHandle;

    iget v6, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-direct {v12, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 2632
    invoke-static/range {v7 .. v12}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 2635
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11
    :try_end_7af
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_72a .. :try_end_7af} :catch_7c9

    .line 2637
    .local v11, "notification":Landroid/app/Notification;
    :try_start_7af
    const-string v7, "android"

    const-string v8, "android"

    const/4 v9, 0x0

    const/16 v10, 0xb

    iget v12, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object v6, v3

    invoke-interface/range {v6 .. v12}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_7bc
    .catch Ljava/lang/RuntimeException; {:try_start_7af .. :try_end_7bc} :catch_7bf
    .catch Landroid/os/RemoteException; {:try_start_7af .. :try_end_7bc} :catch_7bd
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7af .. :try_end_7bc} :catch_7c9

    .line 2644
    .end local v11    # "notification":Landroid/app/Notification;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "text":Ljava/lang/String;
    :goto_7bc
    goto :goto_7c8

    .line 2643
    .restart local v11    # "notification":Landroid/app/Notification;
    .restart local v13    # "context":Landroid/content/Context;
    .restart local v14    # "text":Ljava/lang/String;
    :catch_7bd
    move-exception v0

    .line 2643
    .end local v11    # "notification":Landroid/app/Notification;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "text":Ljava/lang/String;
    goto :goto_7c8

    .line 2640
    .restart local v11    # "notification":Landroid/app/Notification;
    .restart local v13    # "context":Landroid/content/Context;
    .restart local v14    # "text":Ljava/lang/String;
    :catch_7bf
    move-exception v0

    .line 2641
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    :try_start_7c0
    const-string v6, "ActivityManager"

    const-string v7, "Error showing notification for heavy-weight app"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7c7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7c0 .. :try_end_7c7} :catch_7c9

    .line 2641
    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto :goto_7bc

    .line 2647
    .end local v11    # "notification":Landroid/app/Notification;
    .end local v13    # "context":Landroid/content/Context;
    .end local v14    # "text":Ljava/lang/String;
    :goto_7c8
    goto :goto_7d1

    .line 2645
    :catch_7c9
    move-exception v0

    .line 2646
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "ActivityManager"

    const-string v7, "Unable to create context for heavy notification"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2648
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "inm":Landroid/app/INotificationManager;
    .end local v4    # "root":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "process":Lcom/android/server/am/ProcessRecord;
    :goto_7d1
    goto/16 :goto_8b7

    .line 2602
    :sswitch_7d3
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v0}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    .line 2603
    goto/16 :goto_8b7

    .line 2591
    :sswitch_7dc
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_7df
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2592
    iget v6, v2, Landroid/os/Message;->arg1:I

    .line 2593
    .local v6, "appId":I
    iget v12, v2, Landroid/os/Message;->arg2:I

    .line 2594
    .local v12, "userId":I
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2595
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "pkg"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2596
    .local v5, "pkg":Ljava/lang/String;
    const-string/jumbo v4, "reason"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2597
    .local v13, "reason":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 2599
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v5    # "pkg":Ljava/lang/String;
    .end local v6    # "appId":I
    .end local v12    # "userId":I
    .end local v13    # "reason":Ljava/lang/String;
    monitor-exit v3
    :try_end_803
    .catchall {:try_start_7df .. :try_end_803} :catchall_808

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2600
    goto/16 :goto_8b7

    .line 2599
    :catchall_808
    move-exception v0

    :try_start_809
    monitor-exit v3
    :try_end_80a
    .catchall {:try_start_809 .. :try_end_80a} :catchall_808

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2579
    :sswitch_80e
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 2580
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_816
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2581
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerService;->access$1400(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 2582
    monitor-exit v4
    :try_end_81f
    .catchall {:try_start_816 .. :try_end_81f} :catchall_824

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2583
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    goto/16 :goto_8b7

    .line 2582
    .restart local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_824
    move-exception v0

    :try_start_825
    monitor-exit v4
    :try_end_826
    .catchall {:try_start_825 .. :try_end_826} :catchall_824

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2519
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_82a
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_82d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2520
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    .line 2520
    .local v0, "i":I
    :goto_83a
    move v4, v0

    .line 2520
    .end local v0    # "i":I
    .local v4, "i":I
    if-ltz v4, :cond_878

    .line 2521
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v5, v0

    .line 2522
    .local v5, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_84a
    .catchall {:try_start_82d .. :try_end_84a} :catchall_87d

    if-eqz v0, :cond_875

    .line 2526
    :try_start_84c
    iget v0, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string/jumbo v6, "updateTimeZone"

    invoke-static {v0, v6}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 2528
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_859
    .catch Landroid/os/RemoteException; {:try_start_84c .. :try_end_859} :catch_85a
    .catchall {:try_start_84c .. :try_end_859} :catchall_87d

    .line 2531
    goto :goto_875

    .line 2529
    :catch_85a
    move-exception v0

    .line 2530
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_85b
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update time zone for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v5    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_875
    :goto_875
    add-int/lit8 v0, v4, -0x1

    .line 2520
    .end local v4    # "i":I
    .local v0, "i":I
    goto :goto_83a

    .line 2534
    .end local v0    # "i":I
    :cond_878
    monitor-exit v3
    :try_end_879
    .catchall {:try_start_85b .. :try_end_879} :catchall_87d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2535
    goto :goto_8b7

    .line 2534
    :catchall_87d
    move-exception v0

    :try_start_87e
    monitor-exit v3
    :try_end_87f
    .catchall {:try_start_87e .. :try_end_87f} :catchall_87d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2497
    :sswitch_883
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    .line 2498
    goto :goto_8b7

    .line 2492
    :sswitch_88f
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_892
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2493
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 2494
    monitor-exit v3
    :try_end_89b
    .catchall {:try_start_892 .. :try_end_89b} :catchall_89f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2495
    goto :goto_8b7

    .line 2494
    :catchall_89f
    move-exception v0

    :try_start_8a0
    monitor-exit v3
    :try_end_8a1
    .catchall {:try_start_8a0 .. :try_end_8a1} :catchall_89f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2487
    :sswitch_8a5
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2488
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/res/Configuration;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    .line 2490
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    nop

    .line 2990
    :cond_8b7
    :goto_8b7
    return-void

    nop

    nop

    :sswitch_data_8ba
    .sparse-switch
        0x4 -> :sswitch_8a5
        0x5 -> :sswitch_88f
        0xc -> :sswitch_883
        0xd -> :sswitch_82a
        0x14 -> :sswitch_80e
        0x16 -> :sswitch_7dc
        0x17 -> :sswitch_7d3
        0x18 -> :sswitch_719
        0x19 -> :sswitch_6fb
        0x1b -> :sswitch_6d2
        0x1c -> :sswitch_680
        0x1d -> :sswitch_603
        0x21 -> :sswitch_5f5
        0x25 -> :sswitch_5a6
        0x26 -> :sswitch_59f
        0x29 -> :sswitch_54b
        0x2c -> :sswitch_427
        0x2d -> :sswitch_409
        0x2f -> :sswitch_3c6
        0x31 -> :sswitch_38d
        0x32 -> :sswitch_242
        0x33 -> :sswitch_20b
        0x36 -> :sswitch_1fe
        0x38 -> :sswitch_1e5
        0x39 -> :sswitch_1c9
        0x3a -> :sswitch_1c2
        0x3d -> :sswitch_181
        0x3f -> :sswitch_130
        0x40 -> :sswitch_10c
        0x41 -> :sswitch_e8
        0x42 -> :sswitch_db
        0x43 -> :sswitch_bb
        0x45 -> :sswitch_a3
        0x58 -> :sswitch_70
        0x457 -> :sswitch_51
        0x458 -> :sswitch_39
        0x459 -> :sswitch_22
        0x45e -> :sswitch_13
    .end sparse-switch
.end method
