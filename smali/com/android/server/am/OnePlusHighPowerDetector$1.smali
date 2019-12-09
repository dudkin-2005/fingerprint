.class Lcom/android/server/am/OnePlusHighPowerDetector$1;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusHighPowerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusHighPowerDetector;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusHighPowerDetector;

    .line 594
    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object/from16 v1, p0

    .line 596
    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 597
    .local v3, "action":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# mGeneralReceiver # onReceive # action="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 599
    :cond_20
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v4, 0x2710

    const v6, 0x101d7

    const/16 v7, 0x5b

    const v8, 0xd6e3

    const/16 v9, 0x5d

    const v10, 0xd6e7

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_7d

    .line 600
    # setter for: Lcom/android/server/am/OnePlusHighPowerDetector;->mIsScreenOn:Z
    invoke-static {v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$002(Z)Z

    .line 603
    new-array v0, v11, [I

    aput v9, v0, v12

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 605
    # getter for: Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$100()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-result-object v0

    const-wide/16 v13, 0x7530

    invoke-virtual {v0, v8, v13, v14}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 609
    :cond_4f
    new-array v0, v11, [I

    aput v7, v0, v12

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 611
    # getter for: Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$100()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-result-object v0

    const-wide/16 v7, 0xbb8

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 615
    :cond_62
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    # getter for: Lcom/android/server/am/OnePlusHighPowerDetector;->mFakeTestEnabled:Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$200(Lcom/android/server/am/OnePlusHighPowerDetector;)Z

    move-result v0

    if-nez v0, :cond_2b8

    .line 617
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    # getter for: Lcom/android/server/am/OnePlusHighPowerDetector;->MONITOR_RESET:I
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$400()I

    move-result v6

    int-to-long v6, v6

    # setter for: Lcom/android/server/am/OnePlusHighPowerDetector;->mMonitorStartTime:J
    invoke-static {v0, v6, v7}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$302(Lcom/android/server/am/OnePlusHighPowerDetector;J)J

    .line 618
    # getter for: Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$100()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-result-object v0

    invoke-virtual {v0, v10, v4, v5}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2b8

    .line 620
    :cond_7d
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 621
    # setter for: Lcom/android/server/am/OnePlusHighPowerDetector;->mIsScreenOn:Z
    invoke-static {v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$002(Z)Z

    .line 624
    new-array v0, v11, [I

    aput v9, v0, v12

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 626
    # getter for: Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$100()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->removeMessages(I)V

    .line 627
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    # setter for: Lcom/android/server/am/OnePlusHighPowerDetector;->mEverLightIdleCheck:Z
    invoke-static {v0, v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$502(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z

    .line 631
    :cond_9e
    new-array v0, v11, [I

    aput v7, v0, v12

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 633
    # getter for: Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$100()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->removeMessages(I)V

    .line 634
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    # setter for: Lcom/android/server/am/OnePlusHighPowerDetector;->mEverLightIdleBGCCheck:Z
    invoke-static {v0, v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$602(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z

    .line 638
    :cond_b4
    # getter for: Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$100()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->removeMessages(I)V

    .line 639
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    # setter for: Lcom/android/server/am/OnePlusHighPowerDetector;->mEverLightIdleCameraCheck:Z
    invoke-static {v0, v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$702(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z

    goto/16 :goto_2b8

    .line 640
    :cond_c2
    const-string/jumbo v0, "ohpd.action.test"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v6, 0xd6e2

    if-eqz v0, :cond_211

    .line 641
    const-string v0, "code"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 642
    .local v7, "code":Ljava/lang/String;
    const-string/jumbo v0, "userid"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 643
    .local v8, "userId":Ljava/lang/String;
    const-string/jumbo v0, "type"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 644
    .local v9, "type":Ljava/lang/String;
    const-string/jumbo v0, "pid"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 645
    .local v13, "pid":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "# mGeneralReceiver # onReceive # code = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 647
    if-eqz v7, :cond_15a

    if-eqz v8, :cond_15a

    if-eqz v9, :cond_15a

    if-eqz v13, :cond_15a

    .line 648
    :try_start_105
    const-string/jumbo v0, "notify#"

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15a

    .line 649
    const-string/jumbo v0, "notify#"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 650
    .local v0, "pkg":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "pkg="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " userid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " type="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " pid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 651
    iget-object v14, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const-string v18, "broadcast"

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move-object v15, v0

    # invokes: Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;I)V
    invoke-static/range {v14 .. v19}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$800(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;IILjava/lang/String;I)V

    .line 656
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_15a
    const-string/jumbo v0, "soff"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_174

    .line 657
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    # getter for: Lcom/android/server/am/OnePlusHighPowerDetector;->mFakeTestEnabled:Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$200(Lcom/android/server/am/OnePlusHighPowerDetector;)Z

    move-result v0

    if-eqz v0, :cond_203

    .line 658
    # getter for: Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$100()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-result-object v0

    invoke-virtual {v0, v10, v4, v5}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_203

    .line 659
    :cond_174
    const-string v0, "1st"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18d

    .line 660
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    # getter for: Lcom/android/server/am/OnePlusHighPowerDetector;->mFakeTestEnabled:Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$200(Lcom/android/server/am/OnePlusHighPowerDetector;)Z

    move-result v0

    if-eqz v0, :cond_203

    .line 661
    # getter for: Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$100()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_203

    .line 662
    :cond_18d
    const-string v0, "enable"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    .line 663
    const-string v0, "enable fake test"

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 664
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    # setter for: Lcom/android/server/am/OnePlusHighPowerDetector;->mFakeTestEnabled:Z
    invoke-static {v0, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$202(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z

    goto :goto_203

    .line 665
    :cond_1a0
    const-string v0, "disable"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b3

    .line 666
    const-string v0, "disable fake test"

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 667
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    # setter for: Lcom/android/server/am/OnePlusHighPowerDetector;->mFakeTestEnabled:Z
    invoke-static {v0, v12}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$202(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z

    goto :goto_203

    .line 668
    :cond_1b3
    const-string/jumbo v0, "native"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d8

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Try to kill native process pid:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 670
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_203

    .line 672
    :cond_1d8
    const-string/jumbo v0, "lru_dump"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ee

    .line 673
    const-string v0, "OHPD"

    const-string v4, "[BGC] lru_dump"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    # invokes: Lcom/android/server/am/OnePlusHighPowerDetector;->dumpLruProcess()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$900(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    goto :goto_203

    .line 675
    :cond_1ee
    const-string/jumbo v0, "oth_dump"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_203

    .line 676
    const-string v0, "OHPD"

    const-string v4, "[BGC] oth_dump"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    # invokes: Lcom/android/server/am/OnePlusHighPowerDetector;->dumpOther()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$1000(Lcom/android/server/am/OnePlusHighPowerDetector;)V
    :try_end_203
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_203} :catch_204

    .line 682
    :cond_203
    :goto_203
    goto :goto_20f

    .line 679
    :catch_204
    move-exception v0

    .line 680
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "OHPD"

    const-string v5, "error occured while ACTION_TEST"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 683
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "code":Ljava/lang/String;
    .end local v8    # "userId":Ljava/lang/String;
    .end local v9    # "type":Ljava/lang/String;
    .end local v13    # "pid":Ljava/lang/String;
    :goto_20f
    goto/16 :goto_2b8

    :cond_211
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_220

    .line 684
    iget-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    # invokes: Lcom/android/server/am/OnePlusHighPowerDetector;->responseSIMStateChanged()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$1100(Lcom/android/server/am/OnePlusHighPowerDetector;)Z

    goto/16 :goto_2b8

    .line 685
    :cond_220
    const-string v0, "com.oem.intent.action.force_stop_pkg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, -0x1

    if-eqz v0, :cond_250

    .line 686
    const-string/jumbo v0, "pkg"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "pkgName":Ljava/lang/String;
    const-string/jumbo v5, "userid"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 688
    .local v5, "userId":I
    const-string/jumbo v6, "type"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 689
    .local v6, "type":I
    if-eqz v0, :cond_24f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_24f

    if-eq v5, v4, :cond_24f

    if-eq v6, v4, :cond_24f

    .line 691
    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    # invokes: Lcom/android/server/am/OnePlusHighPowerDetector;->scheduleForceStopPkg(Ljava/lang/String;II)V
    invoke-static {v4, v0, v5, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$1200(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;II)V

    .line 693
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v5    # "userId":I
    .end local v6    # "type":I
    :cond_24f
    goto :goto_2b8

    :cond_250
    const-string v0, "com.oem.intent.action.force_stop_high_pkg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27f

    .line 694
    const-string/jumbo v0, "pkg"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 695
    .restart local v0    # "pkgName":Ljava/lang/String;
    const-string/jumbo v5, "userid"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 696
    .restart local v5    # "userId":I
    const-string/jumbo v6, "type"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 697
    .restart local v6    # "type":I
    if-eqz v0, :cond_27e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_27e

    if-eq v5, v4, :cond_27e

    if-eq v6, v4, :cond_27e

    .line 699
    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    # invokes: Lcom/android/server/am/OnePlusHighPowerDetector;->scheduleForceStopPkg(Ljava/lang/String;II)V
    invoke-static {v4, v0, v5, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$1200(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;II)V

    .line 702
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v5    # "userId":I
    .end local v6    # "type":I
    :cond_27e
    goto :goto_2b8

    :cond_27f
    const-string v0, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b8

    .line 703
    const-string v0, "LightIdle_Status"

    invoke-virtual {v2, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 704
    .local v0, "LightIdle":Z
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v4, :cond_2a7

    .line 705
    const-string v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LightIdle] LightIdle="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_2a7
    if-eqz v0, :cond_2b8

    .line 708
    iget-object v4, v1, Lcom/android/server/am/OnePlusHighPowerDetector$1;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    # getter for: Lcom/android/server/am/OnePlusHighPowerDetector;->mFakeTestEnabled:Z
    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$200(Lcom/android/server/am/OnePlusHighPowerDetector;)Z

    move-result v4

    if-nez v4, :cond_2b8

    .line 709
    # getter for: Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;
    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->access$100()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendEmptyMessage(I)Z

    .line 713
    .end local v0    # "LightIdle":Z
    :cond_2b8
    :goto_2b8
    return-void
.end method
