.class Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;
.super Landroid/os/Handler;
.source "OemGestureButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemGestureButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OemGestureButtonHandler"
.end annotation


# static fields
.field static final MSG_OEM_ADD_BUTTON:I = 0x1

.field static final MSG_OEM_EFFECT:I = 0xa

.field static final MSG_OEM_REMOVE_BUTTON:I = 0x3

.field static final MSG_OEM_REMOVE_BUTTON_TIMEOUT:I = 0x4

.field static final MSG_OEM_SCALE_BUTTON:I = 0x2

.field static final MSG_OEM_SCALE_UP_ANIMATION:I = 0x9

.field static final MSG_OEM_SEND_KEY:I = 0x6

.field static final MSG_OEM_SEND_SWITCH_KEY:I = 0x5

.field static final MSG_OEM_START_TRANSITION:I = 0x8

.field static final MSG_OEM_UPDATE_BACKGROUND:I = 0xb

.field static final MSG_OEM_UPDATE_REGION:I = 0x7


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemGestureButton;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/OemGestureButton;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 835
    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    .line 836
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 837
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 19
    .param p1, "msg"    # Landroid/os/Message;

    move-object/from16 v0, p0

    .line 841
    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v4, 0xbb

    const/16 v5, 0x3e9

    const/4 v6, -0x1

    const-wide/16 v7, 0xa

    const-wide/16 v9, 0x7d0

    const/16 v11, 0xa

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_526

    goto/16 :goto_524

    .line 1048
    :pswitch_1b
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-virtual {v2}, Lcom/android/server/policy/OemGestureButton;->setIgnoreNotchWallpaper()V

    .line 1049
    goto/16 :goto_524

    .line 843
    :pswitch_22
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    if-eqz v2, :cond_524

    .line 844
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mEffectStage:I
    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$700(Lcom/android/server/policy/OemGestureButton;)I

    move-result v2

    # getter for: Lcom/android/server/policy/OemGestureButton;->mEffectParams:[F
    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->access$800()[F

    move-result-object v4

    array-length v4, v4

    sub-int/2addr v4, v12

    if-gt v2, v4, :cond_60

    .line 845
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    invoke-virtual {v2}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->setSize()V

    .line 846
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mEffectParams:[F
    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->access$800()[F

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mEffectStage:I
    invoke-static {v4}, Lcom/android/server/policy/OemGestureButton;->access$700(Lcom/android/server/policy/OemGestureButton;)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->onPull(F)V

    .line 847
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # operator++ for: Lcom/android/server/policy/OemGestureButton;->mEffectStage:I
    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$708(Lcom/android/server/policy/OemGestureButton;)I

    .line 848
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonAnimHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const-wide/16 v3, 0x10

    invoke-virtual {v2, v11, v3, v4}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_524

    .line 851
    :cond_60
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    invoke-virtual {v2}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->onRelease()V

    .line 852
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # setter for: Lcom/android/server/policy/OemGestureButton;->mEffectStage:I
    invoke-static {v2, v3}, Lcom/android/server/policy/OemGestureButton;->access$702(Lcom/android/server/policy/OemGestureButton;I)I

    goto/16 :goto_524

    .line 1037
    :pswitch_6e
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z
    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$1400(Lcom/android/server/policy/OemGestureButton;)Z

    move-result v2

    if-nez v2, :cond_524

    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    if-eqz v2, :cond_524

    .line 1038
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v2, v15}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 1040
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v3, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v3, v3, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    # invokes: Lcom/android/server/policy/OemGestureButton;->startScaleUpAnimation(Landroid/widget/ImageView;)V
    invoke-static {v2, v3}, Lcom/android/server/policy/OemGestureButton;->access$2900(Lcom/android/server/policy/OemGestureButton;Landroid/widget/ImageView;)V

    .line 1041
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v2, v14}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 1043
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v2, v14, v9, v10}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_524

    .line 1016
    :pswitch_9c
    const-string v2, "OemGestureButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_OEM_START_TRANSITION mGestureScreenShotView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v4, v4, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-nez v2, :cond_bd

    return-void

    .line 1018
    :cond_bd
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1022
    .local v2, "focusWin":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    if-eqz v2, :cond_e3

    iget-object v3, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # invokes: Lcom/android/server/policy/OemGestureButton;->isHomeOrRecent(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    invoke-static {v3, v2}, Lcom/android/server/policy/OemGestureButton;->access$2600(Lcom/android/server/policy/OemGestureButton;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v3

    if-eqz v3, :cond_e3

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getShown()Z

    move-result v3

    if-nez v3, :cond_d4

    goto :goto_e3

    .line 1032
    :cond_d4
    iget-object v3, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v3, v3, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v3, :cond_524

    .line 1033
    iget-object v3, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v3, v3, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    invoke-virtual {v3, v13}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_524

    .line 1023
    :cond_e3
    :goto_e3
    iget-object v3, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v3, v3, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 1025
    iget-object v3, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v3, v3, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v3, v4, v7, v8}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1027
    # getter for: Lcom/android/server/policy/OemGestureButton;->DEBUG:Z
    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->access$000()Z

    move-result v3

    if-eqz v3, :cond_10f

    .line 1028
    const-string v3, "OemGestureButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_OEM_START_TRANSITION delay remove bg to wait for visible win:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    :cond_10f
    return-void

    .line 1013
    .end local v2    # "focusWin":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    :pswitch_110
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # invokes: Lcom/android/server/policy/OemGestureButton;->updateGestureButtonRegion()V
    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$2800(Lcom/android/server/policy/OemGestureButton;)V

    .line 1014
    goto/16 :goto_524

    .line 857
    :pswitch_117
    const-string v2, "OemGestureButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_OEM_SEND_KEY mPreparedKeycode="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I
    invoke-static {v7}, Lcom/android/server/policy/OemGestureButton;->access$900(Lcom/android/server/policy/OemGestureButton;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v4, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I
    invoke-static {v4}, Lcom/android/server/policy/OemGestureButton;->access$900(Lcom/android/server/policy/OemGestureButton;)I

    move-result v4

    # setter for: Lcom/android/server/policy/OemGestureButton;->mLastKeyCode:I
    invoke-static {v2, v4}, Lcom/android/server/policy/OemGestureButton;->access$102(Lcom/android/server/policy/OemGestureButton;I)I

    .line 859
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I
    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$900(Lcom/android/server/policy/OemGestureButton;)I

    move-result v2

    if-ne v2, v15, :cond_18d

    .line 861
    sget-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v2, :cond_160

    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mQuickPayWhich:I

    if-eq v2, v6, :cond_160

    .line 862
    const-string v2, "OemGestureButton"

    const-string v4, "QuickPay: Cancelled by HOME key"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2, v12}, Lcom/android/server/policy/PhoneWindowManager;->clearQuickPaySwitch(Z)V

    .line 865
    :cond_160
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    if-eqz v2, :cond_184

    .line 866
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v2, v15}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 868
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v4, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v4, v4, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    # invokes: Lcom/android/server/policy/OemGestureButton;->startScaleDownAnimation(Landroid/widget/ImageView;)V
    invoke-static {v2, v4}, Lcom/android/server/policy/OemGestureButton;->access$1000(Lcom/android/server/policy/OemGestureButton;Landroid/widget/ImageView;)V

    .line 869
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v2, v14}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 871
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v2, v14, v9, v10}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 874
    :cond_184
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2, v13, v5, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    goto/16 :goto_524

    .line 876
    :cond_18d
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v3, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I
    invoke-static {v3}, Lcom/android/server/policy/OemGestureButton;->access$900(Lcom/android/server/policy/OemGestureButton;)I

    move-result v3

    # invokes: Lcom/android/server/policy/OemGestureButton;->triggerGestureVirtualKeypress(I)V
    invoke-static {v2, v3}, Lcom/android/server/policy/OemGestureButton;->access$1100(Lcom/android/server/policy/OemGestureButton;I)V

    .line 878
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I
    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$1200(Lcom/android/server/policy/OemGestureButton;)I

    move-result v2

    if-nez v2, :cond_524

    .line 879
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonAnimHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v2, v11}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_524

    .line 885
    :pswitch_1a9
    const-string v2, "OemGestureButton"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_OEM_SEND_SWITCH_KEY edge="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z
    invoke-static {v8}, Lcom/android/server/policy/OemGestureButton;->access$1300(Lcom/android/server/policy/OemGestureButton;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " mSwipeLongFireable="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    .line 886
    # getter for: Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z
    invoke-static {v8}, Lcom/android/server/policy/OemGestureButton;->access$1400(Lcom/android/server/policy/OemGestureButton;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " mIsKeyguardShowing="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mIsKeyguardShowing:Z
    invoke-static {v8}, Lcom/android/server/policy/OemGestureButton;->access$1500(Lcom/android/server/policy/OemGestureButton;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 885
    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z
    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$1300(Lcom/android/server/policy/OemGestureButton;)Z

    move-result v2

    if-eqz v2, :cond_292

    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z
    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$1400(Lcom/android/server/policy/OemGestureButton;)Z

    move-result v2

    if-eqz v2, :cond_292

    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mIsKeyguardShowing:Z
    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$1500(Lcom/android/server/policy/OemGestureButton;)Z

    move-result v2

    if-nez v2, :cond_292

    .line 890
    sget-boolean v2, Lcom/android/server/policy/OemGestureButton;->mDismissInputMethod:Z

    if-nez v2, :cond_202

    .line 891
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # invokes: Lcom/android/server/policy/OemGestureButton;->dismissInputMethod()V
    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$1600(Lcom/android/server/policy/OemGestureButton;)V

    .line 893
    :cond_202
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # setter for: Lcom/android/server/policy/OemGestureButton;->mLastKeyCode:I
    invoke-static {v2, v4}, Lcom/android/server/policy/OemGestureButton;->access$102(Lcom/android/server/policy/OemGestureButton;I)I

    .line 894
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # setter for: Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z
    invoke-static {v2, v3}, Lcom/android/server/policy/OemGestureButton;->access$1302(Lcom/android/server/policy/OemGestureButton;Z)Z

    .line 895
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # setter for: Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z
    invoke-static {v2, v3}, Lcom/android/server/policy/OemGestureButton;->access$1402(Lcom/android/server/policy/OemGestureButton;Z)Z

    .line 896
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2, v13, v5, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    .line 897
    sget-boolean v2, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    if-eqz v2, :cond_22c

    .line 898
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "op_gesture_button_guide_state"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_292

    .line 902
    :cond_22c
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I
    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$1200(Lcom/android/server/policy/OemGestureButton;)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    if-nez v2, :cond_25c

    .line 903
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I
    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$1700(Lcom/android/server/policy/OemGestureButton;)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mScaleSize:F
    invoke-static {v4}, Lcom/android/server/policy/OemGestureButton;->access$1800(Lcom/android/server/policy/OemGestureButton;)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 904
    .local v2, "x":I
    iget-object v4, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I
    invoke-static {v4}, Lcom/android/server/policy/OemGestureButton;->access$1900(Lcom/android/server/policy/OemGestureButton;)I

    move-result v4

    int-to-float v4, v4

    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mScaleSize:F
    invoke-static {v7}, Lcom/android/server/policy/OemGestureButton;->access$1800(Lcom/android/server/policy/OemGestureButton;)F

    move-result v7

    sub-float/2addr v5, v7

    mul-float/2addr v4, v5

    div-float/2addr v4, v3

    float-to-int v3, v4

    .local v3, "y":I
    goto :goto_281

    .line 906
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_25c
    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I
    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$1900(Lcom/android/server/policy/OemGestureButton;)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mScaleSize:F
    invoke-static {v4}, Lcom/android/server/policy/OemGestureButton;->access$1800(Lcom/android/server/policy/OemGestureButton;)F

    move-result v4

    sub-float v4, v5, v4

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 907
    .restart local v2    # "x":I
    iget-object v4, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I
    invoke-static {v4}, Lcom/android/server/policy/OemGestureButton;->access$1700(Lcom/android/server/policy/OemGestureButton;)I

    move-result v4

    int-to-float v4, v4

    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mScaleSize:F
    invoke-static {v7}, Lcom/android/server/policy/OemGestureButton;->access$1800(Lcom/android/server/policy/OemGestureButton;)F

    move-result v7

    sub-float/2addr v5, v7

    mul-float/2addr v4, v5

    div-float/2addr v4, v3

    float-to-int v3, v4

    .line 909
    .restart local v3    # "y":I
    :goto_281
    iget-object v4, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mScaleSize:F
    invoke-static {v5}, Lcom/android/server/policy/OemGestureButton;->access$1800(Lcom/android/server/policy/OemGestureButton;)F

    move-result v5

    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mScaleAlpha:F
    invoke-static {v7}, Lcom/android/server/policy/OemGestureButton;->access$2000(Lcom/android/server/policy/OemGestureButton;)F

    move-result v7

    # invokes: Lcom/android/server/policy/OemGestureButton;->toggleRecentAppsWithGesture(IIFF)V
    invoke-static {v4, v2, v3, v5, v7}, Lcom/android/server/policy/OemGestureButton;->access$2100(Lcom/android/server/policy/OemGestureButton;IIFF)V

    .line 914
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_292
    :goto_292
    sget-boolean v2, Lcom/android/server/policy/OemPhoneWindowManager;->IS_QUICK_PAY_ENABLED:Z

    if-eqz v2, :cond_524

    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mQuickPayWhich:I

    if-eq v2, v6, :cond_524

    .line 915
    const-string v2, "OemGestureButton"

    const-string v3, "QuickPay: Cancelled by SWITCH key"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2, v12}, Lcom/android/server/policy/PhoneWindowManager;->clearQuickPaySwitch(Z)V

    goto/16 :goto_524

    .line 1000
    :pswitch_2ae
    const-string v2, "OemGestureButton"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_OEM_REMOVE_BUTTON_TIMEOUT mGestureScreenShotView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v5, v5, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v2, v15}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 1003
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v2, :cond_2f0

    .line 1004
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v2, v2, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2ec

    .line 1005
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # invokes: Lcom/android/server/policy/OemGestureButton;->getWindowManager()Landroid/view/WindowManager;
    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$2700(Lcom/android/server/policy/OemGestureButton;)Landroid/view/WindowManager;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v4, v4, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    invoke-interface {v2, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1007
    :cond_2ec
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iput-object v13, v2, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    .line 1009
    :cond_2f0
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v4, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    const/high16 v5, 0x3f800000    # 1.0f

    # setter for: Lcom/android/server/policy/OemGestureButton;->mScaleAlpha:F
    invoke-static {v4, v5}, Lcom/android/server/policy/OemGestureButton;->access$2002(Lcom/android/server/policy/OemGestureButton;F)F

    move-result v4

    # setter for: Lcom/android/server/policy/OemGestureButton;->mScaleSize:F
    invoke-static {v2, v4}, Lcom/android/server/policy/OemGestureButton;->access$1802(Lcom/android/server/policy/OemGestureButton;F)F

    .line 1010
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # setter for: Lcom/android/server/policy/OemGestureButton;->mScaleAnimationShowing:Z
    invoke-static {v2, v3}, Lcom/android/server/policy/OemGestureButton;->access$202(Lcom/android/server/policy/OemGestureButton;Z)Z

    .line 1011
    goto/16 :goto_524

    .line 963
    :pswitch_304
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 964
    .local v5, "now":J
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_315

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_316

    :cond_315
    move v2, v3

    .line 965
    .local v2, "isWaitForHome":Z
    :goto_316
    const-string v9, "OemGestureButton"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MSG_OEM_REMOVE_BUTTON mGestureScreenShotView="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v11, v11, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v9, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v9, v9, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-nez v9, :cond_337

    return-void

    .line 967
    :cond_337
    iget-object v9, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v9, v9, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v9, v9, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 968
    .local v9, "focus":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    if-eqz v9, :cond_355

    iget-object v10, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mLastKeyCode:I
    invoke-static {v10}, Lcom/android/server/policy/OemGestureButton;->access$100(Lcom/android/server/policy/OemGestureButton;)I

    move-result v10

    if-ne v10, v4, :cond_34e

    .line 969
    invoke-interface {v9}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getShown()Z

    move-result v4

    if-eqz v4, :cond_355

    goto :goto_354

    :cond_34e
    invoke-interface {v9}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    move-result v4

    if-eqz v4, :cond_355

    :goto_354
    goto :goto_356

    :cond_355
    move v12, v3

    :goto_356
    move v4, v12

    .line 971
    .local v4, "isFocusShown":Z
    if-eqz v4, :cond_38a

    if-eqz v2, :cond_38a

    iget-object v10, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mMaxWaitTime:J
    invoke-static {v10}, Lcom/android/server/policy/OemGestureButton;->access$300(Lcom/android/server/policy/OemGestureButton;)J

    move-result-wide v10

    cmp-long v10, v5, v10

    if-gez v10, :cond_38a

    .line 972
    const-string v10, "OemGestureButton"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MSG_OEM_REMOVE_BUTTON now="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " focus="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v10, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # invokes: Lcom/android/server/policy/OemGestureButton;->isHomeOrRecent(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    invoke-static {v10, v9}, Lcom/android/server/policy/OemGestureButton;->access$2600(Lcom/android/server/policy/OemGestureButton;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v10

    and-int/2addr v4, v10

    .line 976
    :cond_38a
    if-nez v4, :cond_3c7

    .line 977
    iget-object v3, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v3, v3, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v3, v15}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 979
    iget-object v3, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v3, v3, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    iget-object v10, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v10, v10, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    .line 980
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 979
    invoke-virtual {v10, v15, v11}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v3, v10, v7, v8}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 981
    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-nez v3, :cond_3b0

    # getter for: Lcom/android/server/policy/OemGestureButton;->DEBUG:Z
    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->access$000()Z

    move-result v3

    if-eqz v3, :cond_3c6

    .line 982
    :cond_3b0
    const-string v3, "OemGestureButton"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_OEM_REMOVE_BUTTON delay remove to wait for visible win:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_3c6
    return-void

    .line 986
    :cond_3c7
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v7, v7, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v7, v15}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 988
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v7, v7, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v7, v14}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 990
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v7, v7, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v7, :cond_3f6

    .line 991
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v7, v7, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_3f2

    .line 992
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # invokes: Lcom/android/server/policy/OemGestureButton;->getWindowManager()Landroid/view/WindowManager;
    invoke-static {v7}, Lcom/android/server/policy/OemGestureButton;->access$2700(Lcom/android/server/policy/OemGestureButton;)Landroid/view/WindowManager;

    move-result-object v7

    iget-object v8, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v8, v8, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    invoke-interface {v7, v8}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 994
    :cond_3f2
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iput-object v13, v7, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    .line 996
    :cond_3f6
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v8, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    const/high16 v10, 0x3f800000    # 1.0f

    # setter for: Lcom/android/server/policy/OemGestureButton;->mScaleAlpha:F
    invoke-static {v8, v10}, Lcom/android/server/policy/OemGestureButton;->access$2002(Lcom/android/server/policy/OemGestureButton;F)F

    move-result v8

    # setter for: Lcom/android/server/policy/OemGestureButton;->mScaleSize:F
    invoke-static {v7, v8}, Lcom/android/server/policy/OemGestureButton;->access$1802(Lcom/android/server/policy/OemGestureButton;F)F

    .line 997
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # setter for: Lcom/android/server/policy/OemGestureButton;->mScaleAnimationShowing:Z
    invoke-static {v7, v3}, Lcom/android/server/policy/OemGestureButton;->access$202(Lcom/android/server/policy/OemGestureButton;Z)Z

    .line 998
    goto/16 :goto_524

    .line 924
    .end local v2    # "isWaitForHome":Z
    .end local v4    # "isFocusShown":Z
    .end local v5    # "now":J
    .end local v9    # "focus":Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    :pswitch_40a
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/MotionEvent;

    .line 925
    .local v2, "event":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    .line 926
    .local v4, "rawX":F
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .line 927
    .local v5, "rawY":F
    iget-object v6, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v6, v6, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    if-eqz v6, :cond_524

    .line 929
    iget-object v6, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I
    invoke-static {v6}, Lcom/android/server/policy/OemGestureButton;->access$1200(Lcom/android/server/policy/OemGestureButton;)I

    move-result v6

    if-nez v6, :cond_430

    .line 930
    iget-object v6, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mFromY:F
    invoke-static {v6}, Lcom/android/server/policy/OemGestureButton;->access$2300(Lcom/android/server/policy/OemGestureButton;)F

    move-result v6

    sub-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 930
    .local v6, "moveDistance":F
    goto :goto_43b

    .line 932
    .end local v6    # "moveDistance":F
    :cond_430
    iget-object v6, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mFromX:F
    invoke-static {v6}, Lcom/android/server/policy/OemGestureButton;->access$2400(Lcom/android/server/policy/OemGestureButton;)F

    move-result v6

    sub-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 935
    .restart local v6    # "moveDistance":F
    :goto_43b
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v7, v7, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v7, :cond_456

    const/high16 v7, 0x41a00000    # 20.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_456

    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mLongClick:Z
    invoke-static {v7}, Lcom/android/server/policy/OemGestureButton;->access$2500(Lcom/android/server/policy/OemGestureButton;)Z

    move-result v7

    if-nez v7, :cond_456

    .line 936
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v7, v7, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 944
    :cond_456
    iget-object v3, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I
    invoke-static {v7}, Lcom/android/server/policy/OemGestureButton;->access$1900(Lcom/android/server/policy/OemGestureButton;)I

    move-result v7

    int-to-float v7, v7

    div-float v7, v6, v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    # setter for: Lcom/android/server/policy/OemGestureButton;->mScaleAlpha:F
    invoke-static {v3, v7}, Lcom/android/server/policy/OemGestureButton;->access$2002(Lcom/android/server/policy/OemGestureButton;F)F

    .line 945
    iget-object v3, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I
    invoke-static {v3}, Lcom/android/server/policy/OemGestureButton;->access$1900(Lcom/android/server/policy/OemGestureButton;)I

    move-result v3

    const/4 v7, 0x2

    div-int/2addr v3, v7

    .line 946
    .local v3, "half":I
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mScaleAlpha:F
    invoke-static {v7}, Lcom/android/server/policy/OemGestureButton;->access$2000(Lcom/android/server/policy/OemGestureButton;)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_491

    .line 947
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    const v8, 0x3ecccccd    # 0.4f

    const v9, 0x3f19999a    # 0.6f

    int-to-float v10, v3

    div-float v10, v6, v10

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v10, v11, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    # setter for: Lcom/android/server/policy/OemGestureButton;->mScaleSize:F
    invoke-static {v7, v8}, Lcom/android/server/policy/OemGestureButton;->access$1802(Lcom/android/server/policy/OemGestureButton;F)F

    goto :goto_4a7

    .line 949
    :cond_491
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    const v8, 0x3e99999a    # 0.3f

    const v9, 0x3dcccccc    # 0.099999994f

    int-to-float v10, v3

    sub-float v10, v6, v10

    int-to-float v11, v3

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v10, v11, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    # setter for: Lcom/android/server/policy/OemGestureButton;->mScaleSize:F
    invoke-static {v7, v8}, Lcom/android/server/policy/OemGestureButton;->access$1802(Lcom/android/server/policy/OemGestureButton;F)F

    .line 952
    :goto_4a7
    # getter for: Lcom/android/server/policy/OemGestureButton;->DEBUG:Z
    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->access$000()Z

    move-result v7

    if-eqz v7, :cond_4ef

    .line 953
    const-string v7, "OemGestureButton"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MSG_OEM_SCALE_BUTTON setScaleX rawX="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " rawY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " moveDistance="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " mScaleAlpha="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    .line 954
    # getter for: Lcom/android/server/policy/OemGestureButton;->mScaleAlpha:F
    invoke-static {v9}, Lcom/android/server/policy/OemGestureButton;->access$2000(Lcom/android/server/policy/OemGestureButton;)F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " mScaleSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mScaleSize:F
    invoke-static {v9}, Lcom/android/server/policy/OemGestureButton;->access$1800(Lcom/android/server/policy/OemGestureButton;)F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 953
    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_4ef
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v7, v7, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mScaleSize:F
    invoke-static {v8}, Lcom/android/server/policy/OemGestureButton;->access$1800(Lcom/android/server/policy/OemGestureButton;)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 957
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v7, v7, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mScaleSize:F
    invoke-static {v8}, Lcom/android/server/policy/OemGestureButton;->access$1800(Lcom/android/server/policy/OemGestureButton;)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 958
    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v7, v7, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # getter for: Lcom/android/server/policy/OemGestureButton;->mScaleAlpha:F
    invoke-static {v8}, Lcom/android/server/policy/OemGestureButton;->access$2000(Lcom/android/server/policy/OemGestureButton;)F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 959
    .end local v3    # "half":I
    .end local v6    # "moveDistance":F
    goto :goto_524

    .line 920
    .end local v2    # "event":Landroid/view/MotionEvent;
    .end local v4    # "rawX":F
    .end local v5    # "rawY":F
    :pswitch_517
    const-string v2, "OemGestureButton"

    const-string v3, "MSG_OEM_ADD_BUTTON"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    iget-object v2, v0, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->this$0:Lcom/android/server/policy/OemGestureButton;

    # invokes: Lcom/android/server/policy/OemGestureButton;->showScreenShot()V
    invoke-static {v2}, Lcom/android/server/policy/OemGestureButton;->access$2200(Lcom/android/server/policy/OemGestureButton;)V

    .line 922
    nop

    .line 1053
    :cond_524
    :goto_524
    return-void

    nop

    :pswitch_data_526
    .packed-switch 0x1
        :pswitch_517
        :pswitch_40a
        :pswitch_304
        :pswitch_2ae
        :pswitch_1a9
        :pswitch_117
        :pswitch_110
        :pswitch_9c
        :pswitch_6e
        :pswitch_22
        :pswitch_1b
    .end packed-switch
.end method
