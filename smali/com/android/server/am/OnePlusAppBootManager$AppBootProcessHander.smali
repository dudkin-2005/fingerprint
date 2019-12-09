.class Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;
.super Landroid/os/Handler;
.source "OnePlusAppBootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusAppBootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppBootProcessHander"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusAppBootManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusAppBootManager;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2482
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    .line 2483
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2484
    return-void
.end method

.method private handlePkgMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 2525
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handlePkgMessage # msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2526
    :cond_19
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_8e

    goto :goto_8d

    .line 2538
    :pswitch_1f
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/android/server/am/OnePlusAppBootManager;->updateAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->access$2500(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 2539
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_8d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handlePkgMessage # install "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_8d

    .line 2533
    :pswitch_44
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/android/server/am/OnePlusAppBootManager;->removeAppBootInfo(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->access$2600(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)V

    .line 2534
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_8d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handlePkgMessage # remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_8d

    .line 2528
    :pswitch_69
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/android/server/am/OnePlusAppBootManager;->updateAppBootInfo(Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;
    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->access$2500(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 2529
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_8d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handlePkgMessage # reinstall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2545
    :cond_8d
    :goto_8d
    return-void

    :pswitch_data_8e
    .packed-switch 0x15
        :pswitch_69
        :pswitch_44
        :pswitch_1f
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 2487
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage # msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2489
    :cond_19
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_9c

    packed-switch v0, :pswitch_data_a6

    .line 2519
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->handlePkgMessage(Landroid/os/Message;)V

    goto/16 :goto_99

    .line 2515
    :pswitch_26
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    # invokes: Lcom/android/server/am/OnePlusAppBootManager;->autoChangeRule()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->access$2300(Lcom/android/server/am/OnePlusAppBootManager;)V

    .line 2516
    goto :goto_99

    .line 2510
    :pswitch_2c
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    # invokes: Lcom/android/server/am/OnePlusAppBootManager;->autoChangeRule()V
    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->access$2300(Lcom/android/server/am/OnePlusAppBootManager;)V

    .line 2511
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    const-wide/32 v1, 0x5265c00

    # invokes: Lcom/android/server/am/OnePlusAppBootManager;->sendNextChangeRuleMsg(J)V
    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusAppBootManager;->access$2400(Lcom/android/server/am/OnePlusAppBootManager;J)V

    .line 2512
    goto :goto_99

    .line 2506
    :pswitch_3a
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_42

    const/4 v1, 0x1

    goto :goto_43

    :cond_42
    const/4 v1, 0x0

    :goto_43
    # invokes: Lcom/android/server/am/OnePlusAppBootManager;->updateHugePowerPkgTempAction(Z)V
    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->access$2200(Lcom/android/server/am/OnePlusAppBootManager;Z)V

    .line 2507
    goto :goto_99

    .line 2501
    :pswitch_47
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    # getter for: Lcom/android/server/am/OnePlusAppBootManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->access$1900(Lcom/android/server/am/OnePlusAppBootManager;)Landroid/content/Context;

    move-result-object v1

    # getter for: Lcom/android/server/am/OnePlusAppBootManager;->APPBOOT_CONFIG_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/OnePlusAppBootManager;->access$2000()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2502
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    # invokes: Lcom/android/server/am/OnePlusAppBootManager;->resolveAppBootConfigFromJSON(Lorg/json/JSONArray;)V
    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusAppBootManager;->access$2100(Lcom/android/server/am/OnePlusAppBootManager;Lorg/json/JSONArray;)V

    .line 2503
    goto :goto_99

    .line 2495
    .end local v0    # "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    :pswitch_60
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/android/server/am/OnePlusAppBootManager;->forceStopPkg(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->access$1800(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)I

    move-result v0

    .line 2496
    .local v0, "ret":I
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_99

    .line 2497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceStopPkg # ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_99

    .line 2491
    .end local v0    # "ret":I
    :pswitch_8f
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    # getter for: Lcom/android/server/am/OnePlusAppBootManager;->mPkgMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/server/am/OnePlusAppBootManager;->access$1700()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->writeXml_appboot(Ljava/util/HashMap;)I

    .line 2492
    nop

    .line 2522
    :cond_99
    :goto_99
    return-void

    nop

    nop

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_60
        :pswitch_47
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x1f
        :pswitch_3a
        :pswitch_2c
        :pswitch_26
    .end packed-switch
.end method
