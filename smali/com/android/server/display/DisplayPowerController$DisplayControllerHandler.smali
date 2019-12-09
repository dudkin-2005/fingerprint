.class final Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
.super Landroid/os/Handler;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2143
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 2144
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2145
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 2149
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-eq v0, v1, :cond_a1

    packed-switch v0, :pswitch_data_a6

    goto/16 :goto_a5

    .line 2199
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    # setter for: Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->access$1802(Lcom/android/server/display/DisplayPowerController;F)F

    .line 2200
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->updatePowerState()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$700(Lcom/android/server/display/DisplayPowerController;)V

    goto/16 :goto_a5

    .line 2186
    :pswitch_1e
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->access$1502(Lcom/android/server/display/DisplayPowerController;I)I

    .line 2189
    # setter for: Lcom/android/server/display/DisplayPowerController;->mTemporaryScreen:Z
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$1602(Z)Z

    .line 2190
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1500(Lcom/android/server/display/DisplayPowerController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$1700(Lcom/android/server/display/DisplayPowerController;)I

    move-result v1

    if-ge v0, v1, :cond_41

    .line 2191
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$1700(Lcom/android/server/display/DisplayPowerController;)I

    move-result v1

    # setter for: Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->access$1502(Lcom/android/server/display/DisplayPowerController;I)I

    .line 2192
    :cond_41
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1500(Lcom/android/server/display/DisplayPowerController;)I

    move-result v0

    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-le v0, v1, :cond_52

    .line 2193
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    # setter for: Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:I
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->access$1502(Lcom/android/server/display/DisplayPowerController;I)I

    .line 2195
    :cond_52
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->updatePowerState()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$700(Lcom/android/server/display/DisplayPowerController;)V

    .line 2196
    goto :goto_a5

    .line 2175
    :pswitch_58
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/display/BrightnessConfiguration;

    # setter for: Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;
    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->access$1402(Lcom/android/server/display/DisplayPowerController;Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;

    .line 2176
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->updatePowerState()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$700(Lcom/android/server/display/DisplayPowerController;)V

    .line 2177
    goto :goto_a5

    .line 2169
    :pswitch_67
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1200(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v0, v1, :cond_a5

    .line 2170
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1300(Lcom/android/server/display/DisplayPowerController;)V

    .line 2171
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->updatePowerState()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$700(Lcom/android/server/display/DisplayPowerController;)V

    goto :goto_a5

    .line 2159
    :pswitch_7c
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$900(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v0, v1, :cond_a5

    .line 2162
    const/4 v0, 0x2

    # setter for: Lcom/android/server/display/DisplayPowerController;->mScreenOnRampRate:I
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1002(I)I

    .line 2164
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1100(Lcom/android/server/display/DisplayPowerController;)V

    .line 2165
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->updatePowerState()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$700(Lcom/android/server/display/DisplayPowerController;)V

    goto :goto_a5

    .line 2155
    :pswitch_95
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$800(Lcom/android/server/display/DisplayPowerController;)V

    .line 2156
    goto :goto_a5

    .line 2151
    :pswitch_9b
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    # invokes: Lcom/android/server/display/DisplayPowerController;->updatePowerState()V
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$700(Lcom/android/server/display/DisplayPowerController;)V

    .line 2152
    goto :goto_a5

    .line 2181
    :cond_a1
    # setter for: Lcom/android/server/display/DisplayPowerController;->mScreenOnRampRate:I
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$1002(I)I

    .line 2183
    nop

    .line 2203
    :cond_a5
    :goto_a5
    return-void

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_9b
        :pswitch_95
        :pswitch_7c
        :pswitch_67
        :pswitch_58
        :pswitch_1e
        :pswitch_c
    .end packed-switch
.end method
