.class Lcom/android/server/DeviceIdleController$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    .line 484
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 486
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x5bb23923

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_3e

    const v2, -0x45e5283a

    if-eq v1, v2, :cond_34

    const v2, 0x1f50b9c2

    if-eq v1, v2, :cond_2a

    const v2, 0x3267c73d

    if-eq v1, v2, :cond_20

    goto :goto_48

    :cond_20
    const-string v1, "com.test.retrieve.battstats"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 v0, 0x3

    goto :goto_49

    :cond_2a
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 v0, 0x2

    goto :goto_49

    :cond_34
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    move v0, v5

    goto :goto_49

    :cond_3e
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    move v0, v3

    goto :goto_49

    :cond_48
    :goto_48
    move v0, v4

    :goto_49
    packed-switch v0, :pswitch_data_186

    goto/16 :goto_183

    .line 517
    :pswitch_4e
    const-string v0, "code"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, "code":Ljava/lang/String;
    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v1

    if-eqz v1, :cond_110

    .line 519
    const-string/jumbo v1, "start_v3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 520
    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v1

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->KWL_WR:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->snapShot(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V

    goto/16 :goto_183

    .line 521
    :cond_70
    const-string v1, "dump_start_v3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 522
    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v1

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpSnapShotData(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;)V

    goto/16 :goto_183

    .line 523
    :cond_83
    const-string v1, "dump_end_v3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 524
    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v1

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->END:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    invoke-virtual {v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpSnapShotData(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;)V

    goto/16 :goto_183

    .line 525
    :cond_96
    const-string v1, "end_v3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d9

    .line 526
    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v2

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->END:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->KWL_WR:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mFakeLevelDrop:I
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$300(Lcom/android/server/DeviceIdleController;)I

    move-result v5

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mFakemA:I
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$400(Lcom/android/server/DeviceIdleController;)I

    move-result v1

    int-to-float v6, v1

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->m_mA_Criteria:F
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$500(Lcom/android/server/DeviceIdleController;)F

    move-result v7

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mSIMULATE_REPORT:Z
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$600(Lcom/android/server/DeviceIdleController;)Z

    move-result v1

    if-eqz v1, :cond_c8

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mFakeMinimumPeriod:J
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$700(Lcom/android/server/DeviceIdleController;)J

    move-result-wide v8

    goto :goto_ce

    :cond_c8
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mMinimumPeriod:J
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$800(Lcom/android/server/DeviceIdleController;)J

    move-result-wide v8

    :goto_ce
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mSIMULATE_REPORT:Z
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$600(Lcom/android/server/DeviceIdleController;)Z

    move-result v10

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/OnePlusStandbyAnalyzer;->snapShot(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;IFFJZ)V

    goto/16 :goto_183

    .line 527
    :cond_d9
    const-string v1, "cal_v3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 528
    # getter for: Lcom/android/server/DeviceIdleController;->mOnePlusStandbyAnalyzer:Lcom/android/server/OnePlusStandbyAnalyzer;
    invoke-static {}, Lcom/android/server/DeviceIdleController;->access$200()Lcom/android/server/OnePlusStandbyAnalyzer;

    move-result-object v1

    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->CALCULATE:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    sget-object v3, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->KWL_WR:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->snapShot(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V

    goto/16 :goto_183

    .line 529
    :cond_ee
    const-string/jumbo v1, "trigger_start_v3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x2710

    if-eqz v1, :cond_100

    .line 530
    const/16 v1, 0x3ea

    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->sendEmptyMessageDelayed(IJ)V

    goto/16 :goto_183

    .line 531
    :cond_100
    const-string/jumbo v1, "trigger_end_v3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_183

    .line 532
    const/16 v1, 0x3eb

    invoke-static {v1, v2, v3}, Lcom/android/server/DeviceIdleController$OPBackgroundThread;->sendEmptyMessageDelayed(IJ)V

    goto/16 :goto_183

    .line 535
    :cond_110
    const-string v1, "DeviceIdleController"

    const-string/jumbo v2, "mOnePlusStandbyAnalyzer == null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .end local v0    # "code":Ljava/lang/String;
    goto :goto_183

    .line 506
    :pswitch_119
    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_183

    .line 507
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 509
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_133

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 509
    .local v2, "ssp":Ljava/lang/String;
    if-eqz v1, :cond_133

    .line 510
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1, v2}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    .line 512
    .end local v0    # "data":Landroid/net/Uri;
    .end local v2    # "ssp":Ljava/lang/String;
    :cond_133
    goto :goto_183

    .line 491
    :pswitch_134
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 492
    :try_start_137
    const-string/jumbo v1, "plugged"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 493
    .local v1, "plugged":I
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    if-eqz v1, :cond_143

    goto :goto_144

    :cond_143
    move v3, v5

    :goto_144
    invoke-virtual {v2, v3}, Lcom/android/server/DeviceIdleController;->updateChargingLocked(Z)V

    .line 494
    .end local v1    # "plugged":I
    monitor-exit v0
    :try_end_148
    .catchall {:try_start_137 .. :try_end_148} :catchall_17a

    .line 497
    const-string/jumbo v0, "level"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_183

    .line 498
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mCurrentBatteryLevel:I
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$100(Lcom/android/server/DeviceIdleController;)I

    move-result v1

    # setter for: Lcom/android/server/DeviceIdleController;->mPreviousBatteryLevel:I
    invoke-static {v0, v1}, Lcom/android/server/DeviceIdleController;->access$002(Lcom/android/server/DeviceIdleController;I)I

    .line 499
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    const-string/jumbo v1, "level"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/DeviceIdleController;->mCurrentBatteryLevel:I
    invoke-static {v0, v1}, Lcom/android/server/DeviceIdleController;->access$102(Lcom/android/server/DeviceIdleController;I)I

    .line 501
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mPreviousBatteryLevel:I
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$000(Lcom/android/server/DeviceIdleController;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mCurrentBatteryLevel:I
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$100(Lcom/android/server/DeviceIdleController;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DeviceIdleController;->checkIfHitBatteryLowLocked(II)V

    goto :goto_183

    .line 494
    :catchall_17a
    move-exception v1

    :try_start_17b
    monitor-exit v0
    :try_end_17c
    .catchall {:try_start_17b .. :try_end_17c} :catchall_17a

    throw v1

    .line 488
    :pswitch_17d
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, p2}, Lcom/android/server/DeviceIdleController;->updateConnectivityState(Landroid/content/Intent;)V

    .line 489
    nop

    .line 540
    :cond_183
    :goto_183
    return-void

    nop

    nop

    :pswitch_data_186
    .packed-switch 0x0
        :pswitch_17d
        :pswitch_134
        :pswitch_119
        :pswitch_4e
    .end packed-switch
.end method
