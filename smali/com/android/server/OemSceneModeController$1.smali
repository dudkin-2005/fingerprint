.class Lcom/android/server/OemSceneModeController$1;
.super Landroid/os/Handler;
.source "OemSceneModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneModeController;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneModeController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/OemSceneModeController;

    .line 352
    iput-object p1, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 354
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_68

    :pswitch_5
    goto :goto_60

    .line 385
    :pswitch_6
    const/4 v0, 0x0

    .line 386
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 387
    .local v1, "event":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v2

    .line 388
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_1b

    .line 389
    const-string/jumbo v3, "hashmap"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/HashMap;

    .line 391
    :cond_1b
    iget-object v3, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    # getter for: Lcom/android/server/OemSceneModeController;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;
    invoke-static {v3}, Lcom/android/server/OemSceneModeController;->access$1400(Lcom/android/server/OemSceneModeController;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 392
    goto :goto_60

    .line 377
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "event":Ljava/lang/String;
    .end local v2    # "bundle":Landroid/os/Bundle;
    :pswitch_25
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    # invokes: Lcom/android/server/OemSceneModeController;->handleGameBatterySaverChanged()V
    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$1200(Lcom/android/server/OemSceneModeController;)V

    .line 378
    goto :goto_60

    .line 380
    :pswitch_2b
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController;->handleBreathModeChanged()V

    .line 382
    :pswitch_30
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    # invokes: Lcom/android/server/OemSceneModeController;->clearSilentlyShowGameUIFlags()V
    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$1300(Lcom/android/server/OemSceneModeController;)V

    .line 383
    goto :goto_60

    .line 374
    :pswitch_36
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController;->handleStartMonitorPassive()V

    .line 375
    goto :goto_60

    .line 371
    :pswitch_3c
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController;->handleStopMonitorPassive()V

    .line 372
    goto :goto_60

    .line 368
    :pswitch_42
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController;->handleStartMonitor()V

    .line 369
    goto :goto_60

    .line 365
    :pswitch_48
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    # invokes: Lcom/android/server/OemSceneModeController;->handleGameAutoChanged()V
    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$1100(Lcom/android/server/OemSceneModeController;)V

    .line 366
    goto :goto_60

    .line 362
    :pswitch_4e
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    # invokes: Lcom/android/server/OemSceneModeController;->handleGameManualChanged()V
    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$1000(Lcom/android/server/OemSceneModeController;)V

    .line 363
    goto :goto_60

    .line 359
    :pswitch_54
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    # invokes: Lcom/android/server/OemSceneModeController;->handleReadAutoChanged()V
    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$900(Lcom/android/server/OemSceneModeController;)V

    .line 360
    goto :goto_60

    .line 356
    :pswitch_5a
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    # invokes: Lcom/android/server/OemSceneModeController;->handleReadManualChanged()V
    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$800(Lcom/android/server/OemSceneModeController;)V

    .line 357
    nop

    .line 398
    :goto_60
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$1;->this$0:Lcom/android/server/OemSceneModeController;

    # invokes: Lcom/android/server/OemSceneModeController;->showStatusLog()V
    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$1500(Lcom/android/server/OemSceneModeController;)V

    .line 399
    return-void

    nop

    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_54
        :pswitch_4e
        :pswitch_48
        :pswitch_42
        :pswitch_5
        :pswitch_3c
        :pswitch_36
        :pswitch_2b
        :pswitch_5
        :pswitch_5
        :pswitch_25
        :pswitch_30
        :pswitch_6
    .end packed-switch
.end method
