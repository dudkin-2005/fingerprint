.class final Lcom/android/server/oneplus/display/ColorBalanceService$CMH;
.super Landroid/os/Handler;
.source "ColorBalanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oneplus/display/ColorBalanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CMH"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oneplus/display/ColorBalanceService;


# direct methods
.method public constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 3597
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 3598
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3599
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 3609
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2800(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/oneplus/display/SDManager;

    move-result-object v0

    if-nez v0, :cond_18

    .line 3610
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    new-instance v1, Lcom/oneplus/display/SDManager;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1600(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oneplus/display/SDManager;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;
    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2802(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/oneplus/display/SDManager;)Lcom/oneplus/display/SDManager;

    .line 3612
    :cond_18
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_210

    .line 3719
    :pswitch_1f
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20e

    .line 3716
    :pswitch_3a
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # invokes: Lcom/android/server/oneplus/display/ColorBalanceService;->closePropeties()V
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4800(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    .line 3717
    goto/16 :goto_20e

    .line 3713
    :pswitch_41
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->onResetStatus(I)V

    .line 3714
    goto/16 :goto_20e

    .line 3707
    :pswitch_4a
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->Night2ReadMode()V

    .line 3708
    goto/16 :goto_20e

    .line 3710
    :pswitch_51
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->Read2NightMode()V

    .line 3711
    goto/16 :goto_20e

    .line 3665
    :pswitch_58
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # invokes: Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentColorChangeAtAdaptionMode(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4100(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V

    .line 3666
    goto/16 :goto_20e

    .line 3703
    :pswitch_5f
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_65

    move v1, v2

    nop

    :cond_65
    move v0, v1

    .line 3704
    .local v0, "activated":Z
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->NightModeActivated(Z)V

    .line 3705
    goto/16 :goto_20e

    .line 3699
    .end local v0    # "activated":Z
    :pswitch_6d
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_73

    move v1, v2

    nop

    :cond_73
    move v0, v1

    .line 3700
    .restart local v0    # "activated":Z
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->ReadModeActivated(Z)V

    .line 3701
    goto/16 :goto_20e

    .line 3696
    .end local v0    # "activated":Z
    :pswitch_7b
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # invokes: Lcom/android/server/oneplus/display/ColorBalanceService;->ResetNode()V
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4700(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    .line 3697
    goto/16 :goto_20e

    .line 3672
    :pswitch_82
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2700(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_20e

    .line 3673
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4400(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    const/16 v2, 0x1194

    if-eq v0, v2, :cond_20e

    .line 3674
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # setter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I
    invoke-static {v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4402(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 3675
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # setter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I
    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2602(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 3676
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # invokes: Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentChange()V
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4500(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    goto/16 :goto_20e

    .line 3681
    :pswitch_a7
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_CHECK_SRGBSEN,generation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mSrgbSensorGeneration:I
    invoke-static {v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4600(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " =? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " color:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 3682
    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorColortemperature:I
    invoke-static {v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1900(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3681
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3683
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mSrgbSensorGeneration:I
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4600(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_20e

    .line 3684
    const/4 v0, 0x0

    .line 3685
    .local v0, "delta":I
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I
    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4400(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v1

    if-eqz v1, :cond_ff

    .line 3686
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I
    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4400(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorColortemperature:I
    invoke-static {v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1900(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 3687
    :cond_ff
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mStableColor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I
    invoke-static {v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4400(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " delat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3689
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorColortemperature:I
    invoke-static {v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1900(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v2

    # setter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I
    invoke-static {v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4402(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 3690
    const/16 v1, 0x1f4

    if-le v0, v1, :cond_138

    .line 3691
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # invokes: Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentChange()V
    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4500(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    .line 3693
    .end local v0    # "delta":I
    :cond_138
    goto/16 :goto_20e

    .line 3634
    :pswitch_13a
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/oneplus/display/ColorBalanceService;->changeReading2NightMode(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3400(Lcom/android/server/oneplus/display/ColorBalanceService;II)V

    .line 3635
    goto/16 :goto_20e

    .line 3637
    :pswitch_145
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/oneplus/display/ColorBalanceService;->changeNight2ReadingMode(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3500(Lcom/android/server/oneplus/display/ColorBalanceService;II)V

    .line 3638
    goto/16 :goto_20e

    .line 3668
    :pswitch_150
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4202(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 3669
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # invokes: Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V
    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4300(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    .line 3670
    goto/16 :goto_20e

    .line 3631
    :pswitch_160
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3200(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/oneplus/display/ColorBalanceService;->readingModeSwitch(ZII)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3300(Lcom/android/server/oneplus/display/ColorBalanceService;ZII)V

    .line 3632
    goto/16 :goto_20e

    .line 3628
    :pswitch_175
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # getter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/oneplus/display/ColorBalanceService;->nightModeSwitch(ZI)V
    invoke-static {v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3100(Lcom/android/server/oneplus/display/ColorBalanceService;ZI)V

    .line 3629
    goto/16 :goto_20e

    .line 3662
    :pswitch_188
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # invokes: Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentColorChangeAtReadingMode(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4000(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V

    .line 3663
    goto/16 :goto_20e

    .line 3659
    :pswitch_18f
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # invokes: Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentColorChangeAtNightMode(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3900(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V

    .line 3660
    goto/16 :goto_20e

    .line 3654
    :pswitch_196
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3655
    .local v0, "dmode":I
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # invokes: Lcom/android/server/oneplus/display/ColorBalanceService;->opSetDefaultModesId(I)V
    invoke-static {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3800(Lcom/android/server/oneplus/display/ColorBalanceService;I)V

    .line 3656
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AMODE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3657
    goto :goto_20e

    .line 3648
    .end local v0    # "dmode":I
    :pswitch_1b4
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3649
    .local v0, "amode":I
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # invokes: Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V
    invoke-static {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3700(Lcom/android/server/oneplus/display/ColorBalanceService;I)V

    .line 3650
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AMODE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3651
    goto :goto_20e

    .line 3643
    .end local v0    # "amode":I
    :pswitch_1d2
    const-string v0, "ColorBalanceService"

    const-string v1, "MSG_SAVE_MODE is not support"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3645
    goto :goto_20e

    .line 3640
    :pswitch_1da
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/oneplus/display/ColorBalanceService;->processSetColorBalance(I)V
    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3600(Lcom/android/server/oneplus/display/ColorBalanceService;I)V

    .line 3641
    goto :goto_20e

    .line 3619
    :pswitch_1e2
    const-string v0, "ColorBalanceService"

    const-string v2, "MSG_SCREEN_OFF"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3620
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # setter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;
    invoke-static {v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2902(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 3625
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # invokes: Lcom/android/server/oneplus/display/ColorBalanceService;->processScreenOn(Z)V
    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3000(Lcom/android/server/oneplus/display/ColorBalanceService;Z)V

    .line 3626
    goto :goto_20e

    .line 3614
    :pswitch_1f8
    const-string v0, "ColorBalanceService"

    const-string v1, "MSG_SCREEN_ON"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3615
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2902(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 3616
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    # invokes: Lcom/android/server/oneplus/display/ColorBalanceService;->processScreenOn(Z)V
    invoke-static {v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3000(Lcom/android/server/oneplus/display/ColorBalanceService;Z)V

    .line 3617
    nop

    .line 3721
    :cond_20e
    :goto_20e
    return-void

    nop

    :pswitch_data_210
    .packed-switch 0x1
        :pswitch_1f8
        :pswitch_1e2
        :pswitch_1da
        :pswitch_1d2
        :pswitch_1b4
        :pswitch_196
        :pswitch_1f
        :pswitch_18f
        :pswitch_188
        :pswitch_175
        :pswitch_160
        :pswitch_150
        :pswitch_145
        :pswitch_13a
        :pswitch_a7
        :pswitch_82
        :pswitch_7b
        :pswitch_6d
        :pswitch_5f
        :pswitch_58
        :pswitch_51
        :pswitch_4a
        :pswitch_41
        :pswitch_3a
    .end packed-switch
.end method
