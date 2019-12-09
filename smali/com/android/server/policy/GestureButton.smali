.class public Lcom/android/server/policy/GestureButton;
.super Ljava/lang/Object;
.source "GestureButton.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GestureButton$GestureButtonHandler;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MSG_SEND_KEY:I = 0x6

.field private static final MSG_SEND_LONG_PRESS:I = 0x7

.field private static final MSG_SEND_SWITCH_KEY:I = 0x5

.field private static final TAG:Ljava/lang/String; = "GestureButton"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDismissInputMethod:Z

.field private mDownTime:J

.field private mEventDeviceId:I

.field private mFromX:F

.field private mFromY:F

.field private mGestureButtonHandler:Lcom/android/server/policy/GestureButton$GestureButtonHandler;

.field private mIsKeyguardShowing:Z

.field private mKeyEventHandled:Z

.field private mLastX:F

.field private mLastY:F

.field private mLongSwipePossible:Z

.field private mMoveTolerance:I

.field private mNavigationBarPosition:I

.field private mPreparedKeycode:I

.field private mPwm:Lcom/android/server/policy/PhoneWindowManager;

.field private mRecentsTriggered:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSwipeMinLength:I

.field private mSwipeStartFromEdge:Z

.field private final mSwipeStartThreshold:I

.field private mSwipeTriggerTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/GestureButton;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/GestureButton;->mNavigationBarPosition:I

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/GestureButton;->mScreenHeight:I

    .line 70
    iput v0, p0, Lcom/android/server/policy/GestureButton;->mScreenWidth:I

    .line 114
    const-string v0, "GestureButton"

    const-string v1, "GestureButton init"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iput-object p1, p0, Lcom/android/server/policy/GestureButton;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/android/server/policy/GestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    .line 117
    new-instance p2, Landroid/util/DisplayMetrics;

    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 118
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 119
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 120
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GestureButton;->mScreenHeight:I

    .line 121
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/GestureButton;->mScreenWidth:I

    .line 122
    const/16 p2, 0x14

    iput p2, p0, Lcom/android/server/policy/GestureButton;->mSwipeStartThreshold:I

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e0103

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/server/policy/GestureButton;->getSwipeLengthInPixel(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/GestureButton;->mSwipeMinLength:I

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e0102

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/policy/GestureButton;->mMoveTolerance:I

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0104

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/policy/GestureButton;->mSwipeTriggerTimeout:I

    .line 126
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "GestureButtonThread"

    const/4 v0, -0x8

    invoke-direct {p1, p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 127
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 128
    new-instance p2, Lcom/android/server/policy/GestureButton$GestureButtonHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/server/policy/GestureButton$GestureButtonHandler;-><init>(Lcom/android/server/policy/GestureButton;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/policy/GestureButton;->mGestureButtonHandler:Lcom/android/server/policy/GestureButton$GestureButtonHandler;

    .line 129
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 51
    sget-boolean v0, Lcom/android/server/policy/GestureButton;->DEBUG:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/policy/GestureButton;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/android/server/policy/GestureButton;->mKeyEventHandled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/policy/GestureButton;)Lcom/android/server/policy/PhoneWindowManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/server/policy/GestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/policy/GestureButton;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/server/policy/GestureButton;->toggleRecentApps()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/GestureButton;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/android/server/policy/GestureButton;->mPreparedKeycode:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/policy/GestureButton;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/policy/GestureButton;->triggerGestureVirtualKeypress(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/policy/GestureButton;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/server/policy/GestureButton;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private cancelPreloadRecentApps()V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/android/server/policy/GestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 273
    return-void
.end method

.method private dismissInputMethod()V
    .locals 2

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/GestureButton;->mDismissInputMethod:Z

    .line 133
    iget-object v0, p0, Lcom/android/server/policy/GestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/server/policy/GestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    const-class v1, Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/server/policy/GestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-interface {v0}, Landroid/view/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    .line 139
    :cond_1
    return-void
.end method

.method private getSwipeLengthInPixel(I)I
    .locals 1

    .line 324
    int-to-float p1, p1

    iget-object v0, p0, Lcom/android/server/policy/GestureButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private preloadRecentApps()V
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/android/server/policy/GestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    .line 269
    return-void
.end method

.method private toggleRecentApps()V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/android/server/policy/GestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    .line 265
    return-void
.end method

.method private triggerGestureVirtualKeypress(I)V
    .locals 0

    .line 276
    invoke-static {p1}, Lcom/android/internal/util/aospextended/AEXUtils;->sendKeycode(I)V

    .line 277
    return-void
.end method


# virtual methods
.method isGestureButtonRegion(II)Z
    .locals 3

    .line 294
    nop

    .line 295
    iget v0, p0, Lcom/android/server/policy/GestureButton;->mNavigationBarPosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 296
    iget p1, p0, Lcom/android/server/policy/GestureButton;->mScreenHeight:I

    iget v0, p0, Lcom/android/server/policy/GestureButton;->mSwipeStartThreshold:I

    sub-int/2addr p1, v0

    if-ge p2, p1, :cond_2

    .line 297
    goto :goto_0

    .line 299
    :cond_0
    iget p2, p0, Lcom/android/server/policy/GestureButton;->mNavigationBarPosition:I

    if-ne p2, v1, :cond_1

    .line 300
    iget p2, p0, Lcom/android/server/policy/GestureButton;->mScreenHeight:I

    iget v0, p0, Lcom/android/server/policy/GestureButton;->mSwipeStartThreshold:I

    sub-int/2addr p2, v0

    if-ge p1, p2, :cond_2

    .line 301
    goto :goto_0

    .line 304
    :cond_1
    iget p2, p0, Lcom/android/server/policy/GestureButton;->mSwipeStartThreshold:I

    if-le p1, p2, :cond_2

    .line 305
    goto :goto_0

    .line 308
    :cond_2
    move v2, v1

    :goto_0
    return v2
.end method

.method navigationBarPosition(III)V
    .locals 0

    .line 280
    nop

    .line 281
    if-le p1, p2, :cond_1

    .line 282
    const/4 p1, 0x3

    if-ne p3, p1, :cond_0

    .line 283
    const/4 p1, 0x2

    goto :goto_0

    .line 285
    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    .line 288
    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget p2, p0, Lcom/android/server/policy/GestureButton;->mNavigationBarPosition:I

    if-eq p1, p2, :cond_2

    .line 289
    iput p1, p0, Lcom/android/server/policy/GestureButton;->mNavigationBarPosition:I

    .line 291
    :cond_2
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 12

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/GestureButton;->mEventDeviceId:I

    .line 146
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/GestureButton;->mSwipeStartFromEdge:Z

    if-eqz v1, :cond_15

    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 149
    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v9, 0x3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    .line 256
    :pswitch_0
    goto/16 :goto_7

    .line 210
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/policy/GestureButton;->mKeyEventHandled:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/policy/GestureButton;->mRecentsTriggered:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/policy/GestureButton;->mIsKeyguardShowing:Z

    if-nez v0, :cond_15

    iget v0, p0, Lcom/android/server/policy/GestureButton;->mPreparedKeycode:I

    if-eq v0, v6, :cond_15

    .line 212
    iget v0, p0, Lcom/android/server/policy/GestureButton;->mNavigationBarPosition:I

    if-nez v0, :cond_1

    .line 213
    iget v0, p0, Lcom/android/server/policy/GestureButton;->mFromY:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    .line 215
    :cond_1
    iget v0, p0, Lcom/android/server/policy/GestureButton;->mFromX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 218
    :goto_0
    iget v6, p0, Lcom/android/server/policy/GestureButton;->mNavigationBarPosition:I

    if-nez v6, :cond_2

    .line 219
    iget v6, p0, Lcom/android/server/policy/GestureButton;->mLastY:F

    sub-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    goto :goto_1

    .line 221
    :cond_2
    iget v6, p0, Lcom/android/server/policy/GestureButton;->mLastX:F

    sub-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 223
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    iget-wide v10, p0, Lcom/android/server/policy/GestureButton;->mDownTime:J

    .line 224
    iget p1, p0, Lcom/android/server/policy/GestureButton;->mPreparedKeycode:I

    if-ne p1, v9, :cond_5

    iget p1, p0, Lcom/android/server/policy/GestureButton;->mSwipeMinLength:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_5

    .line 225
    iget p1, p0, Lcom/android/server/policy/GestureButton;->mMoveTolerance:I

    int-to-float p1, p1

    cmpg-float p1, v6, p1

    if-gez p1, :cond_4

    .line 226
    sget-boolean p1, Lcom/android/server/policy/GestureButton;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "GestureButton"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "long click: moveDistanceSinceLast = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_3
    iget-object p1, p0, Lcom/android/server/policy/GestureButton;->mGestureButtonHandler:Lcom/android/server/policy/GestureButton$GestureButtonHandler;

    invoke-virtual {p1, v7}, Lcom/android/server/policy/GestureButton$GestureButtonHandler;->removeMessages(I)V

    .line 228
    iget-object p1, p0, Lcom/android/server/policy/GestureButton;->mGestureButtonHandler:Lcom/android/server/policy/GestureButton$GestureButtonHandler;

    iget v8, p0, Lcom/android/server/policy/GestureButton;->mSwipeTriggerTimeout:I

    int-to-long v8, v8

    invoke-virtual {p1, v7, v8, v9}, Lcom/android/server/policy/GestureButton$GestureButtonHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 230
    :cond_4
    iget-object p1, p0, Lcom/android/server/policy/GestureButton;->mGestureButtonHandler:Lcom/android/server/policy/GestureButton$GestureButtonHandler;

    invoke-virtual {p1, v7}, Lcom/android/server/policy/GestureButton$GestureButtonHandler;->removeMessages(I)V

    .line 234
    :cond_5
    :goto_2
    iget p1, p0, Lcom/android/server/policy/GestureButton;->mSwipeMinLength:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_8

    .line 235
    iget-object p1, p0, Lcom/android/server/policy/GestureButton;->mGestureButtonHandler:Lcom/android/server/policy/GestureButton$GestureButtonHandler;

    invoke-virtual {p1, v7}, Lcom/android/server/policy/GestureButton$GestureButtonHandler;->removeMessages(I)V

    .line 236
    sget-boolean p1, Lcom/android/server/policy/GestureButton;->DEBUG:Z

    if-eqz p1, :cond_6

    const-string p1, "GestureButton"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "swipe: moveDistanceSinceDown = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_6
    iput-boolean v5, p0, Lcom/android/server/policy/GestureButton;->mLongSwipePossible:Z

    .line 238
    iget p1, p0, Lcom/android/server/policy/GestureButton;->mPreparedKeycode:I

    if-ne p1, v4, :cond_7

    goto :goto_3

    .line 241
    :cond_7
    iget-boolean p1, p0, Lcom/android/server/policy/GestureButton;->mRecentsTriggered:Z

    if-nez p1, :cond_8

    .line 243
    iget p1, p0, Lcom/android/server/policy/GestureButton;->mMoveTolerance:I

    int-to-float p1, p1

    cmpg-float p1, v6, p1

    if-gez p1, :cond_8

    .line 244
    iput-boolean v5, p0, Lcom/android/server/policy/GestureButton;->mRecentsTriggered:Z

    .line 245
    invoke-direct {p0}, Lcom/android/server/policy/GestureButton;->preloadRecentApps()V

    .line 246
    iget-object p1, p0, Lcom/android/server/policy/GestureButton;->mGestureButtonHandler:Lcom/android/server/policy/GestureButton$GestureButtonHandler;

    invoke-virtual {p1, v3}, Lcom/android/server/policy/GestureButton$GestureButtonHandler;->removeMessages(I)V

    .line 247
    iget-object p1, p0, Lcom/android/server/policy/GestureButton;->mGestureButtonHandler:Lcom/android/server/policy/GestureButton$GestureButtonHandler;

    iget v0, p0, Lcom/android/server/policy/GestureButton;->mSwipeTriggerTimeout:I

    int-to-long v4, v0

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/server/policy/GestureButton$GestureButtonHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 251
    :cond_8
    :goto_3
    iput v1, p0, Lcom/android/server/policy/GestureButton;->mLastX:F

    .line 252
    iput v2, p0, Lcom/android/server/policy/GestureButton;->mLastY:F

    .line 253
    goto/16 :goto_7

    .line 188
    :pswitch_2
    iget-boolean p1, p0, Lcom/android/server/policy/GestureButton;->mIsKeyguardShowing:Z

    if-nez p1, :cond_15

    iget p1, p0, Lcom/android/server/policy/GestureButton;->mPreparedKeycode:I

    if-eq p1, v6, :cond_15

    .line 189
    sget-boolean p1, Lcom/android/server/policy/GestureButton;->DEBUG:Z

    if-eqz p1, :cond_9

    .line 190
    const-string p1, "GestureButton"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_UP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/GestureButton;->mPreparedKeycode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/GestureButton;->mRecentsTriggered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/GestureButton;->mKeyEventHandled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/GestureButton;->mLongSwipePossible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_9
    iget-object p1, p0, Lcom/android/server/policy/GestureButton;->mGestureButtonHandler:Lcom/android/server/policy/GestureButton$GestureButtonHandler;

    invoke-virtual {p1, v3}, Lcom/android/server/policy/GestureButton$GestureButtonHandler;->removeMessages(I)V

    .line 192
    iget-object p1, p0, Lcom/android/server/policy/GestureButton;->mGestureButtonHandler:Lcom/android/server/policy/GestureButton$GestureButtonHandler;

    invoke-virtual {p1, v7}, Lcom/android/server/policy/GestureButton$GestureButtonHandler;->removeMessages(I)V

    .line 193
    invoke-direct {p0}, Lcom/android/server/policy/GestureButton;->cancelPreloadRecentApps()V

    .line 195
    iget-boolean p1, p0, Lcom/android/server/policy/GestureButton;->mKeyEventHandled:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/android/server/policy/GestureButton;->mLongSwipePossible:Z

    if-eqz p1, :cond_b

    .line 196
    iget p1, p0, Lcom/android/server/policy/GestureButton;->mPreparedKeycode:I

    if-ne p1, v9, :cond_a

    .line 197
    iget-boolean p1, p0, Lcom/android/server/policy/GestureButton;->mDismissInputMethod:Z

    if-nez p1, :cond_a

    .line 198
    invoke-direct {p0}, Lcom/android/server/policy/GestureButton;->dismissInputMethod()V

    .line 201
    :cond_a
    iget-object p1, p0, Lcom/android/server/policy/GestureButton;->mGestureButtonHandler:Lcom/android/server/policy/GestureButton$GestureButtonHandler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/server/policy/GestureButton$GestureButtonHandler;->sendEmptyMessage(I)Z

    .line 203
    :cond_b
    iput-boolean v8, p0, Lcom/android/server/policy/GestureButton;->mSwipeStartFromEdge:Z

    .line 204
    iput-boolean v8, p0, Lcom/android/server/policy/GestureButton;->mKeyEventHandled:Z

    .line 205
    iput-boolean v8, p0, Lcom/android/server/policy/GestureButton;->mRecentsTriggered:Z

    .line 206
    iput-boolean v8, p0, Lcom/android/server/policy/GestureButton;->mLongSwipePossible:Z

    goto/16 :goto_7

    .line 151
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/policy/GestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/GestureButton;->mIsKeyguardShowing:Z

    .line 152
    iget-boolean v0, p0, Lcom/android/server/policy/GestureButton;->mIsKeyguardShowing:Z

    if-eqz v0, :cond_c

    .line 153
    goto/16 :goto_7

    .line 156
    :cond_c
    iput v6, p0, Lcom/android/server/policy/GestureButton;->mPreparedKeycode:I

    .line 157
    iget v0, p0, Lcom/android/server/policy/GestureButton;->mNavigationBarPosition:I

    const/4 v3, 0x2

    if-nez v0, :cond_f

    .line 158
    iget v0, p0, Lcom/android/server/policy/GestureButton;->mScreenHeight:I

    iget v7, p0, Lcom/android/server/policy/GestureButton;->mSwipeStartThreshold:I

    sub-int/2addr v0, v7

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_14

    .line 159
    iput v1, p0, Lcom/android/server/policy/GestureButton;->mFromX:F

    .line 160
    iput v2, p0, Lcom/android/server/policy/GestureButton;->mFromY:F

    .line 161
    iget v0, p0, Lcom/android/server/policy/GestureButton;->mFromX:F

    iget v1, p0, Lcom/android/server/policy/GestureButton;->mScreenWidth:I

    div-int/2addr v1, v9

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_e

    iget v0, p0, Lcom/android/server/policy/GestureButton;->mFromX:F

    iget v1, p0, Lcom/android/server/policy/GestureButton;->mScreenWidth:I

    mul-int/2addr v1, v3

    div-int/2addr v1, v9

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    goto :goto_4

    .line 164
    :cond_d
    iput v9, p0, Lcom/android/server/policy/GestureButton;->mPreparedKeycode:I

    goto :goto_6

    .line 162
    :cond_e
    :goto_4
    iput v4, p0, Lcom/android/server/policy/GestureButton;->mPreparedKeycode:I

    goto :goto_6

    .line 167
    :cond_f
    iget v0, p0, Lcom/android/server/policy/GestureButton;->mNavigationBarPosition:I

    if-ne v0, v5, :cond_10

    iget v0, p0, Lcom/android/server/policy/GestureButton;->mScreenHeight:I

    iget v7, p0, Lcom/android/server/policy/GestureButton;->mSwipeStartThreshold:I

    sub-int/2addr v0, v7

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_14

    :cond_10
    iget v0, p0, Lcom/android/server/policy/GestureButton;->mNavigationBarPosition:I

    if-ne v0, v3, :cond_11

    iget v0, p0, Lcom/android/server/policy/GestureButton;->mSwipeStartThreshold:I

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_14

    .line 168
    :cond_11
    iput v1, p0, Lcom/android/server/policy/GestureButton;->mFromX:F

    .line 169
    iput v2, p0, Lcom/android/server/policy/GestureButton;->mFromY:F

    .line 170
    iget v0, p0, Lcom/android/server/policy/GestureButton;->mFromY:F

    iget v1, p0, Lcom/android/server/policy/GestureButton;->mScreenWidth:I

    div-int/2addr v1, v9

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_13

    iget v0, p0, Lcom/android/server/policy/GestureButton;->mFromY:F

    iget v1, p0, Lcom/android/server/policy/GestureButton;->mScreenWidth:I

    mul-int/2addr v1, v3

    div-int/2addr v1, v9

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    goto :goto_5

    .line 173
    :cond_12
    iput v9, p0, Lcom/android/server/policy/GestureButton;->mPreparedKeycode:I

    goto :goto_6

    .line 171
    :cond_13
    :goto_5
    iput v4, p0, Lcom/android/server/policy/GestureButton;->mPreparedKeycode:I

    .line 176
    :cond_14
    :goto_6
    iget v0, p0, Lcom/android/server/policy/GestureButton;->mPreparedKeycode:I

    if-eq v0, v6, :cond_15

    .line 177
    iget v0, p0, Lcom/android/server/policy/GestureButton;->mFromY:F

    iput v0, p0, Lcom/android/server/policy/GestureButton;->mLastY:F

    .line 178
    iget v0, p0, Lcom/android/server/policy/GestureButton;->mFromX:F

    iput v0, p0, Lcom/android/server/policy/GestureButton;->mLastX:F

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/GestureButton;->mDownTime:J

    .line 180
    iput-boolean v5, p0, Lcom/android/server/policy/GestureButton;->mSwipeStartFromEdge:Z

    .line 181
    iput-boolean v8, p0, Lcom/android/server/policy/GestureButton;->mKeyEventHandled:Z

    .line 182
    iput-boolean v8, p0, Lcom/android/server/policy/GestureButton;->mRecentsTriggered:Z

    .line 183
    iput-boolean v8, p0, Lcom/android/server/policy/GestureButton;->mLongSwipePossible:Z

    .line 184
    sget-boolean p1, Lcom/android/server/policy/GestureButton;->DEBUG:Z

    if-eqz p1, :cond_15

    const-string p1, "GestureButton"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_DOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/GestureButton;->mPreparedKeycode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMoveTolerance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/GestureButton;->mMoveTolerance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_15
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method updateSettings()V
    .locals 5

    .line 312
    iget-object v0, p0, Lcom/android/server/policy/GestureButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bottom_gesture_navigation_trigger_timeout"

    iget-object v2, p0, Lcom/android/server/policy/GestureButton;->mContext:Landroid/content/Context;

    .line 314
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0104

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 312
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GestureButton;->mSwipeTriggerTimeout:I

    .line 316
    iget-object v0, p0, Lcom/android/server/policy/GestureButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bottom_gesture_navigation_swipe_limit"

    iget-object v2, p0, Lcom/android/server/policy/GestureButton;->mContext:Landroid/content/Context;

    .line 318
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e0103

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/policy/GestureButton;->getSwipeLengthInPixel(I)I

    move-result v2

    .line 316
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/GestureButton;->mSwipeMinLength:I

    .line 320
    sget-boolean v0, Lcom/android/server/policy/GestureButton;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GestureButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSettings mSwipeTriggerTimeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/GestureButton;->mSwipeTriggerTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSwipeMinLength = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/GestureButton;->mSwipeMinLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    return-void
.end method
