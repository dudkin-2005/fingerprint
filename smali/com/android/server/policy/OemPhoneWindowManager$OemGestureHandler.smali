.class public Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;
.super Landroid/os/Handler;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OemGestureHandler"
.end annotation


# static fields
.field static final MSG_OEM_DISABLE_Quick_Pay_Button:I = 0x9

.field static final MSG_OEM_DISABLE_SCREEN_CAPTURE:I = 0x2

.field static final MSG_OEM_ENABLE_Quick_Pay_Button:I = 0x8

.field static final MSG_OEM_ENABLE_SCREEN_CAPTURE:I = 0x1

.field static final MSG_OEM_GET_ONLINE_CONFIG:I = 0xa

.field static final MSG_OEM_START_QUICK_PAY:I = 0x7

.field static final MSG_OEM_TAKE_SCREEN_SHOT:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2044
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    .line 2045
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2046
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 2050
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_d0

    :pswitch_7
    goto/16 :goto_ce

    .line 2099
    :pswitch_9
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mContext:Landroid/content/Context;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->QUICKPAY_APPS_CONFIG_NAME:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2100()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2100
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    # invokes: Lcom/android/server/policy/OemPhoneWindowManager;->resolveQuickPayConfigFromJSON(Lorg/json/JSONArray;)V
    invoke-static {v1, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2200(Lcom/android/server/policy/OemPhoneWindowManager;Lorg/json/JSONArray;)V

    .line 2101
    goto/16 :goto_ce

    .line 2096
    .end local v0    # "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    :pswitch_21
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # invokes: Lcom/android/server/policy/OemPhoneWindowManager;->disableQuickPayButton()V
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$2000(Lcom/android/server/policy/OemPhoneWindowManager;)V

    .line 2097
    goto/16 :goto_ce

    .line 2086
    :pswitch_28
    const/4 v0, 0x0

    .line 2088
    .local v0, "appToken":Landroid/view/IApplicationToken;
    :try_start_29
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/IApplicationToken;

    move-object v0, v1

    .line 2089
    if-eqz v0, :cond_33

    invoke-interface {v0}, Landroid/view/IApplicationToken;->addNoHistory()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_33} :catch_34

    .line 2092
    :cond_33
    goto :goto_4b

    .line 2090
    :catch_34
    move-exception v1

    .line 2091
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "OemPhoneWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QuickPay: Could not add NoHistory for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2093
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_4b
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # invokes: Lcom/android/server/policy/OemPhoneWindowManager;->enableQuickPayButton()V
    invoke-static {v1}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1900(Lcom/android/server/policy/OemPhoneWindowManager;)V

    .line 2094
    goto/16 :goto_ce

    .line 2082
    .end local v0    # "appToken":Landroid/view/IApplicationToken;
    :pswitch_52
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v3, v3, Lcom/android/server/policy/OemPhoneWindowManager;->mQuickPayDefault:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_5d

    goto :goto_5e

    :cond_5d
    move v2, v1

    :goto_5e
    # invokes: Lcom/android/server/policy/OemPhoneWindowManager;->startQuickPay(IZZ)V
    invoke-static {v0, v3, v2, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1800(Lcom/android/server/policy/OemPhoneWindowManager;IZZ)V

    .line 2083
    goto :goto_ce

    .line 2073
    :pswitch_62
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    .line 2074
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mHandler:Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1700(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager$PolicyHandler;->post(Ljava/lang/Runnable;)Z

    .line 2075
    goto :goto_ce

    .line 2064
    :pswitch_77
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;

    move-result-object v0

    if-eqz v0, :cond_ce

    .line 2065
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemThreePointersGesturesListener;->setScreenShotEnable(Z)V

    .line 2066
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointerGestureRegisterd:Z
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1600(Lcom/android/server/policy/OemPhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_ce

    .line 2067
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v2, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;
    invoke-static {v2}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 2068
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointerGestureRegisterd:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    goto :goto_ce

    .line 2055
    :pswitch_a3
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;

    move-result-object v0

    if-eqz v0, :cond_ce

    .line 2056
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointerGestureRegisterd:Z
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1600(Lcom/android/server/policy/OemPhoneWindowManager;)Z

    move-result v0

    if-nez v0, :cond_c5

    .line 2057
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;
    invoke-static {v1}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    .line 2058
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # setter for: Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointerGestureRegisterd:Z
    invoke-static {v0, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1602(Lcom/android/server/policy/OemPhoneWindowManager;Z)Z

    .line 2060
    :cond_c5
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$OemGestureHandler;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    # getter for: Lcom/android/server/policy/OemPhoneWindowManager;->mThreePointersGestures:Lcom/android/server/policy/OemThreePointersGesturesListener;
    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$1500(Lcom/android/server/policy/OemPhoneWindowManager;)Lcom/android/server/policy/OemThreePointersGesturesListener;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/policy/OemThreePointersGesturesListener;->setScreenShotEnable(Z)V

    .line 2107
    :cond_ce
    :goto_ce
    return-void

    nop

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_a3
        :pswitch_77
        :pswitch_62
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_52
        :pswitch_28
        :pswitch_21
        :pswitch_9
    .end packed-switch
.end method
