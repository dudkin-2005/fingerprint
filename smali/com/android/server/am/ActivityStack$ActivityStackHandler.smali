.class Lcom/android/server/am/ActivityStack$ActivityStackHandler;
.super Landroid/os/Handler;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityStackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStack;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStack;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 412
    .local p0, "this":Lcom/android/server/am/ActivityStack$ActivityStackHandler;, "Lcom/android/server/am/ActivityStack<TT;>.ActivityStackHandler;"
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    .line 413
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 414
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 418
    .local p0, "this":Lcom/android/server/am/ActivityStack$ActivityStackHandler;, "Lcom/android/server/am/ActivityStack<TT;>.ActivityStackHandler;"
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_170

    :pswitch_8
    goto/16 :goto_16f

    .line 484
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mOnePlusActivityStack:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->updateDisableSceneScreenEffectFlag(I)V

    goto/16 :goto_16f

    .line 479
    :pswitch_15
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_1b

    move v1, v3

    nop

    :cond_1b
    move v0, v1

    .line 481
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mOnePlusActivityStack:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;

    invoke-virtual {v1, v0}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->handleEvaluateGameMode(Z)V

    .line 482
    .end local v0    # "enabled":Z
    goto/16 :goto_16f

    .line 474
    :pswitch_25
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_2b

    move v1, v3

    nop

    :cond_2b
    move v0, v1

    .line 476
    .restart local v0    # "enabled":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mOnePlusActivityStack:Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;

    invoke-virtual {v1, v0}, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->handleEvaluateReadMode(Z)V

    .line 477
    .end local v0    # "enabled":Z
    goto/16 :goto_16f

    .line 467
    :pswitch_35
    iget-object v0, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 468
    iget-object v1, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 469
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_3a .. :try_end_43} :catchall_48

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 470
    goto/16 :goto_16f

    .line 469
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 461
    :pswitch_4e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    .line 462
    .local v0, "args":Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_57
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 463
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v3, v0, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;->mOwner:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v0, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;->mReason:Ljava/lang/String;

    # invokes: Lcom/android/server/am/ActivityStack;->destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/server/am/ActivityStack;->access$000(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 464
    monitor-exit v1
    :try_end_64
    .catchall {:try_start_57 .. :try_end_64} :catchall_69

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 465
    .end local v0    # "args":Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;
    goto/16 :goto_16f

    .line 464
    .restart local v0    # "args":Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;
    :catchall_69
    move-exception v2

    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 449
    .end local v0    # "args":Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;
    :pswitch_6f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 452
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity stop timeout for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v1, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_8e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 454
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isInHistory()Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 455
    invoke-virtual {v0, v2, v2, v2}, Lcom/android/server/am/ActivityRecord;->activityStoppedLocked(Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 458
    :cond_9a
    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_8e .. :try_end_9b} :catchall_a0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 459
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_16f

    .line 458
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_a0
    move-exception v2

    :try_start_a1
    monitor-exit v1
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 432
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :pswitch_a6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 433
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_af
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 434
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->continueLaunchTickingLocked()Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 435
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-wide v4, v0, Lcom/android/server/am/ActivityRecord;->launchTickTime:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "launching "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->logAppTooSlow(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;)V

    .line 437
    :cond_d5
    monitor-exit v1
    :try_end_d6
    .catchall {:try_start_af .. :try_end_d6} :catchall_db

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 438
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_16f

    .line 437
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_db
    move-exception v2

    :try_start_dc
    monitor-exit v1
    :try_end_dd
    .catchall {:try_start_dc .. :try_end_dd} :catchall_db

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 440
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :pswitch_e1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 443
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity destroy timeout for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v1, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_100
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 445
    iget-object v3, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_10a

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    nop

    :cond_10a
    const-string v4, "destroyTimeout"

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ActivityStack;->activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 446
    monitor-exit v1
    :try_end_110
    .catchall {:try_start_100 .. :try_end_110} :catchall_114

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 447
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_16f

    .line 446
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_114
    move-exception v2

    :try_start_115
    monitor-exit v1
    :try_end_116
    .catchall {:try_start_115 .. :try_end_116} :catchall_114

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 420
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :pswitch_11a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 423
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity pause timeout for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v1, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_139
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 425
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_15d

    .line 426
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v2, v2, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-wide v5, v0, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pausing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->logAppTooSlow(Lcom/android/server/am/ProcessRecord;JLjava/lang/String;)V

    .line 428
    :cond_15d
    iget-object v2, p0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;->this$0:Lcom/android/server/am/ActivityStack;

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V

    .line 429
    monitor-exit v1
    :try_end_165
    .catchall {:try_start_139 .. :try_end_165} :catchall_169

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 430
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    goto :goto_16f

    .line 429
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_169
    move-exception v2

    :try_start_16a
    monitor-exit v1
    :try_end_16b
    .catchall {:try_start_16a .. :try_end_16b} :catchall_169

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 489
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_16f
    return-void

    :pswitch_data_170
    .packed-switch 0x65
        :pswitch_11a
        :pswitch_e1
        :pswitch_a6
        :pswitch_6f
        :pswitch_4e
        :pswitch_35
        :pswitch_8
        :pswitch_25
        :pswitch_15
        :pswitch_a
    .end packed-switch
.end method
