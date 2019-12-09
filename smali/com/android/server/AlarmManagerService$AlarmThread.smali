.class Lcom/android/server/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .registers 2

    .line 4691
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 4692
    const-string p1, "AlarmManager"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4693
    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    .line 4697
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :goto_7
    move-object v8, v0

    .line 4701
    .end local v0    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local v8, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService;->mNativeData:J

    # invokes: Lcom/android/server/AlarmManagerService;->waitForAlarm(J)I
    invoke-static {v0, v2, v3}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;J)I

    move-result v2

    .line 4703
    .local v2, "result":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 4704
    .local v6, "nowRTC":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 4705
    .local v4, "nowELAPSED":J
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4706
    :try_start_1f
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # setter for: Lcom/android/server/AlarmManagerService;->mLastWakeup:J
    invoke-static {v0, v4, v5}, Lcom/android/server/AlarmManagerService;->access$1602(Lcom/android/server/AlarmManagerService;J)J

    .line 4707
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_22b

    .line 4709
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 4711
    const/high16 v0, 0x10000

    and-int v3, v2, v0

    if-eqz v3, :cond_b8

    .line 4716
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4717
    :try_start_33
    iget-object v9, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v9, v9, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 4718
    .local v9, "lastTimeChangeClockTime":J
    iget-object v11, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v11, v11, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    sub-long v11, v4, v11

    add-long/2addr v11, v9

    .line 4720
    .local v11, "expectedClockTime":J
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_b5

    .line 4721
    const-wide/16 v13, 0x0

    cmp-long v3, v9, v13

    if-eqz v3, :cond_52

    const-wide/16 v13, 0x3e8

    sub-long v15, v11, v13

    cmp-long v3, v6, v15

    if-ltz v3, :cond_52

    add-long/2addr v13, v11

    cmp-long v3, v6, v13

    if-lez v3, :cond_b8

    .line 4725
    :cond_52
    sget-boolean v3, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v3, :cond_5d

    .line 4726
    const-string v3, "AlarmManager"

    const-string v13, "Time changed notification from kernel; rebatching"

    invoke-static {v3, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4728
    :cond_5d
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v13, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v13, v13, Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;

    invoke-virtual {v3, v13}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    .line 4729
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v13, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v13, v13, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    invoke-virtual {v3, v13}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;)V

    .line 4730
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarms()V

    .line 4731
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 4732
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 4733
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v13, v3, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 4734
    :try_start_87
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget v14, v3, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v3, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    .line 4735
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v6, v3, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 4736
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v4, v3, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    .line 4737
    monitor-exit v13
    :try_end_98
    .catchall {:try_start_87 .. :try_end_98} :catchall_b2

    .line 4738
    new-instance v3, Landroid/content/Intent;

    const-string v13, "android.intent.action.TIME_SET"

    invoke-direct {v3, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4739
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v13, 0x35200000

    invoke-virtual {v3, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4746
    iget-object v13, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v13}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v3, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4750
    or-int/lit8 v2, v2, 0x5

    .end local v3    # "intent":Landroid/content/Intent;
    .end local v9    # "lastTimeChangeClockTime":J
    .end local v11    # "expectedClockTime":J
    goto :goto_b8

    .line 4737
    .restart local v9    # "lastTimeChangeClockTime":J
    .restart local v11    # "expectedClockTime":J
    :catchall_b2
    move-exception v0

    :try_start_b3
    monitor-exit v13
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw v0

    .line 4720
    .end local v9    # "lastTimeChangeClockTime":J
    .end local v11    # "expectedClockTime":J
    :catchall_b5
    move-exception v0

    :try_start_b6
    monitor-exit v3
    :try_end_b7
    .catchall {:try_start_b6 .. :try_end_b7} :catchall_b5

    throw v0

    .line 4754
    .end local v2    # "result":I
    .local v15, "result":I
    :cond_b8
    :goto_b8
    move v15, v2

    if-eq v15, v0, :cond_217

    .line 4757
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4758
    :try_start_c0
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z
    :try_end_c2
    .catchall {:try_start_c0 .. :try_end_c2} :catchall_20f

    if-eqz v0, :cond_e9

    :try_start_c4
    const-string v0, "AlarmManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checking for alarms... rtc="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", elapsed="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e2
    .catchall {:try_start_c4 .. :try_end_e2} :catchall_e3

    goto :goto_e9

    .line 4822
    :catchall_e3
    move-exception v0

    move-object v9, v3

    move-wide v10, v4

    move-wide v12, v6

    goto/16 :goto_213

    .line 4762
    :cond_e9
    :goto_e9
    :try_start_e9
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->WAKEUP_STATS:Z
    :try_end_eb
    .catchall {:try_start_e9 .. :try_end_eb} :catchall_20f

    const/16 v16, 0x0

    if-eqz v0, :cond_130

    .line 4763
    and-int/lit8 v0, v15, 0x5

    if-eqz v0, :cond_130

    .line 4764
    const-wide/32 v9, 0x5265c00

    sub-long v17, v6, v9

    .line 4765
    .local v17, "newEarliest":J
    const/4 v0, 0x0

    .line 4766
    .local v0, "n":I
    :try_start_f9
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_101
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_117

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AlarmManagerService$WakeupEvent;

    .line 4767
    .local v9, "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    iget-wide v10, v9, Lcom/android/server/AlarmManagerService$WakeupEvent;->when:J

    cmp-long v10, v10, v17

    if-lez v10, :cond_114

    .end local v9    # "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    goto :goto_117

    .line 4768
    .restart local v9    # "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    :cond_114
    add-int/lit8 v0, v0, 0x1

    .line 4769
    .end local v9    # "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    goto :goto_101

    .line 4770
    :cond_117
    :goto_117
    move/from16 v2, v16

    .local v2, "i":I
    :goto_119
    if-ge v2, v0, :cond_125

    .line 4771
    iget-object v9, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v9, v9, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 4770
    add-int/lit8 v2, v2, 0x1

    goto :goto_119

    .line 4774
    .end local v2    # "i":I
    :cond_125
    iget-object v9, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v10, v2, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move-wide v11, v4

    move-wide v13, v6

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/AlarmManagerService;->recordWakeupAlarms(Ljava/util/ArrayList;JJ)V
    :try_end_130
    .catchall {:try_start_f9 .. :try_end_130} :catchall_e3

    .line 4778
    .end local v0    # "n":I
    .end local v17    # "newEarliest":J
    :cond_130
    :try_start_130
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # setter for: Lcom/android/server/AlarmManagerService;->mLastTrigger:J
    invoke-static {v0, v4, v5}, Lcom/android/server/AlarmManagerService;->access$1702(Lcom/android/server/AlarmManagerService;J)J

    .line 4779
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;
    :try_end_137
    .catchall {:try_start_130 .. :try_end_137} :catchall_20f

    move-object v9, v3

    move-object v3, v8

    move-wide v10, v4

    .end local v4    # "nowELAPSED":J
    .local v10, "nowELAPSED":J
    move-wide v12, v6

    .end local v6    # "nowRTC":J
    .local v12, "nowRTC":J
    :try_start_13b
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;JJ)Z

    move-result v0

    .line 4780
    .local v0, "hasWakeup":Z
    if-nez v0, :cond_186

    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2, v10, v11}, Lcom/android/server/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v2

    if-eqz v2, :cond_186

    .line 4783
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_168

    .line 4784
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v10, v2, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 4785
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 4786
    invoke-virtual {v3, v10, v11}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v3

    const-wide/16 v5, 0x3

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x2

    div-long/2addr v3, v5

    add-long/2addr v3, v10

    iput-wide v3, v2, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 4788
    :cond_168
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4789
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget v3, v2, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    .line 4790
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4791
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)V

    goto/16 :goto_20d

    .line 4797
    :cond_186
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1c7

    .line 4798
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 4799
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4800
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v8, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4801
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v4, v10, v2

    .line 4802
    .local v4, "thisDelayTime":J
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v6, v2, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v6, v4

    iput-wide v6, v2, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 4803
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1c0

    .line 4804
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v4, v2, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 4806
    :cond_1c0
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4808
    .end local v4    # "thisDelayTime":J
    :cond_1c7
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 4810
    .local v2, "triggerPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    nop

    .local v16, "i":I
    :goto_1cd
    move/from16 v3, v16

    .end local v16    # "i":I
    .local v3, "i":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1f9

    .line 4811
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 4812
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/AlarmManagerService$Alarm;)Z
    invoke-static {v5, v4}, Lcom/android/server/AlarmManagerService;->access$1900(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v5

    if-nez v5, :cond_1f6

    .line 4813
    iget-object v5, v4, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    iget v6, v4, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 4814
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 4813
    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4810
    .end local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1f6
    add-int/lit8 v16, v3, 0x1

    .end local v3    # "i":I
    .restart local v16    # "i":I
    goto :goto_1cd

    .line 4817
    .end local v16    # "i":I
    :cond_1f9
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3, v8, v10, v11}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 4818
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    .line 4819
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4820
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    # invokes: Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$1800(Lcom/android/server/AlarmManagerService;)V

    .line 4822
    .end local v0    # "hasWakeup":Z
    .end local v2    # "triggerPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_20d
    monitor-exit v9

    goto :goto_224

    .end local v10    # "nowELAPSED":J
    .end local v12    # "nowRTC":J
    .local v4, "nowELAPSED":J
    .restart local v6    # "nowRTC":J
    :catchall_20f
    move-exception v0

    move-object v9, v3

    move-wide v10, v4

    move-wide v12, v6

    .end local v4    # "nowELAPSED":J
    .end local v6    # "nowRTC":J
    .restart local v10    # "nowELAPSED":J
    .restart local v12    # "nowRTC":J
    :goto_213
    monitor-exit v9
    :try_end_214
    .catchall {:try_start_13b .. :try_end_214} :catchall_215

    throw v0

    :catchall_215
    move-exception v0

    goto :goto_213

    .line 4827
    .end local v10    # "nowELAPSED":J
    .end local v12    # "nowRTC":J
    .restart local v4    # "nowELAPSED":J
    .restart local v6    # "nowRTC":J
    :cond_217
    move-wide v10, v4

    move-wide v12, v6

    .end local v4    # "nowELAPSED":J
    .end local v6    # "nowRTC":J
    .restart local v10    # "nowELAPSED":J
    .restart local v12    # "nowRTC":J
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4828
    :try_start_21e
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4829
    monitor-exit v4

    .line 4831
    .end local v10    # "nowELAPSED":J
    .end local v12    # "nowRTC":J
    .end local v15    # "result":I
    :goto_224
    nop

    .line 4697
    move-object v0, v8

    goto/16 :goto_7

    .line 4829
    .restart local v10    # "nowELAPSED":J
    .restart local v12    # "nowRTC":J
    .restart local v15    # "result":I
    :catchall_228
    move-exception v0

    monitor-exit v4
    :try_end_22a
    .catchall {:try_start_21e .. :try_end_22a} :catchall_228

    throw v0

    .line 4707
    .end local v10    # "nowELAPSED":J
    .end local v12    # "nowRTC":J
    .end local v15    # "result":I
    .local v2, "result":I
    .restart local v4    # "nowELAPSED":J
    .restart local v6    # "nowRTC":J
    :catchall_22b
    move-exception v0

    move-wide v10, v4

    move-wide v12, v6

    .end local v4    # "nowELAPSED":J
    .end local v6    # "nowRTC":J
    .restart local v10    # "nowELAPSED":J
    .restart local v12    # "nowRTC":J
    :goto_22e
    :try_start_22e
    monitor-exit v3
    :try_end_22f
    .catchall {:try_start_22e .. :try_end_22f} :catchall_230

    throw v0

    :catchall_230
    move-exception v0

    goto :goto_22e
.end method
