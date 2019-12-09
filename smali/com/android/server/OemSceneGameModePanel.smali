.class public Lcom/android/server/OemSceneGameModePanel;
.super Ljava/lang/Object;
.source "OemSceneGameModePanel.java"

# interfaces
.implements Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontPackageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemSceneGameModePanel$EsportStatusContentObserver;
    }
.end annotation


# static fields
.field private static final ACTION_PHONE_STATE:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field private static final DBG:Z

.field private static final MESSAGE_ANIMATION_DURATION:J = 0x1f4L

.field private static final SHORT_DURATION_TIMEOUT:J = 0x1194L

.field private static final TAG:Ljava/lang/String; = "OemSceneGameModePanel"

.field private static final UID_NO_3RD_CALLING:Ljava/lang/String; = "-1"

.field private static final URI_ESPORT_STATUS:Landroid/net/Uri;

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static sCurrentShowingViewDialogLand:Lcom/android/server/OemSceneGameModeView;

.field private static sCurrentShowingViewDialogPort:Lcom/android/server/OemSceneGameModeView;

.field private static sDialogView:Landroid/view/View;


# instance fields
.field private layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mBtA2dpOn:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

.field private mESportGuider:Lcom/android/server/ESportGuider;

.field private mEsportStatusContentObserver:Lcom/android/server/OemSceneGameModePanel$EsportStatusContentObserver;

.field private mFgPkg:Ljava/lang/String;

.field private mGameModeUIAcquired:Z

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedbackSupportedApp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHideAnimator:Landroid/animation/ValueAnimator;

.field private mShowAnimator:Landroid/animation/ValueAnimator;

.field private mWManager:Landroid/view/WindowManager;

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field private mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 67
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemSceneGameModePanel;->DBG:Z

    .line 68
    const-string v0, "esport_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneGameModePanel;->URI_ESPORT_STATUS:Landroid/net/Uri;

    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/OemSceneGameModePanel;->sCurrentShowingViewDialogPort:Lcom/android/server/OemSceneGameModeView;

    .line 79
    sput-object v0, Lcom/android/server/OemSceneGameModePanel;->sCurrentShowingViewDialogLand:Lcom/android/server/OemSceneGameModeView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    .line 77
    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    .line 81
    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mESportGuider:Lcom/android/server/ESportGuider;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mFgPkg:Ljava/lang/String;

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModePanel;->mBtA2dpOn:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModePanel;->mGameModeUIAcquired:Z

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mHapticFeedbackSupportedApp:Ljava/util/ArrayList;

    .line 90
    iput-object p1, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/android/server/OemSceneGameModePanel;->mHandler:Landroid/os/Handler;

    .line 94
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    .line 95
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 96
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 99
    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_9c

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    .line 100
    new-array v1, v1, [F

    fill-array-data v1, :array_a4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    .line 103
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->listenForCallState()V

    .line 104
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->listenFor3rdCallState()V

    .line 107
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->listenForA2dpConnection()V

    .line 111
    :try_start_59
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/OemSceneGameModePanel$1;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneGameModePanel$1;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    const-class v3, Lcom/android/server/OemSceneGameModePanel;

    .line 123
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_6b} :catch_6c

    .line 125
    goto :goto_6d

    .line 124
    :catch_6c
    move-exception v1

    .line 126
    :goto_6d
    invoke-static {p1}, Lcom/android/server/ESportGuider;->getInstance(Landroid/content/Context;)Lcom/android/server/ESportGuider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mESportGuider:Lcom/android/server/ESportGuider;

    .line 127
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mESportGuider:Lcom/android/server/ESportGuider;

    invoke-virtual {v1, p0}, Lcom/android/server/ESportGuider;->setPanel(Lcom/android/server/OemSceneGameModePanel;)V

    .line 128
    new-instance v1, Lcom/android/server/OemSceneGameModePanel$EsportStatusContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/OemSceneGameModePanel$EsportStatusContentObserver;-><init>(Lcom/android/server/OemSceneGameModePanel;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mEsportStatusContentObserver:Lcom/android/server/OemSceneGameModePanel$EsportStatusContentObserver;

    .line 129
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/OemSceneGameModePanel;->URI_ESPORT_STATUS:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModePanel;->mEsportStatusContentObserver:Lcom/android/server/OemSceneGameModePanel$EsportStatusContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 131
    invoke-static {}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->getInstance()Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->registerFrontPackageListener(Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontPackageListener;)V

    .line 132
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->initHapticFeedbackAppList()V

    .line 133
    return-void

    nop

    nop

    :array_9c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_a4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/OemSceneGameModePanel;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModePanel;

    .line 60
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/OemSceneGameModePanel;)Lcom/android/server/OemSceneGameModeView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModePanel;

    .line 60
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/OemSceneGameModePanel;Lcom/android/server/OemSceneGameModeView;)Lcom/android/server/OemSceneGameModeView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModePanel;
    .param p1, "x1"    # Lcom/android/server/OemSceneGameModeView;

    .line 60
    iput-object p1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/OemSceneGameModePanel;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModePanel;

    .line 60
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/OemSceneGameModePanel;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModePanel;

    .line 60
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/OemSceneGameModePanel;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModePanel;
    .param p1, "x1"    # Z

    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneGameModePanel;->hide(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/OemSceneGameModePanel;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModePanel;

    .line 60
    iget-boolean v0, p0, Lcom/android/server/OemSceneGameModePanel;->mBtA2dpOn:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/OemSceneGameModePanel;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemSceneGameModePanel;
    .param p1, "x1"    # Z

    .line 60
    iput-boolean p1, p0, Lcom/android/server/OemSceneGameModePanel;->mBtA2dpOn:Z

    return p1
.end method

.method static synthetic access$600()Z
    .registers 1

    .line 60
    sget-boolean v0, Lcom/android/server/OemSceneGameModePanel;->DBG:Z

    return v0
.end method

.method private checkIfFullWidthFontType(Ljava/lang/String;)Z
    .registers 5
    .param p1, "source"    # Ljava/lang/String;

    .line 263
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 264
    return v0

    .line 266
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    if-ne v1, v2, :cond_10

    .line 267
    return v0

    .line 269
    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method public static getDialogHeight()I
    .registers 1

    .line 328
    sget-object v0, Lcom/android/server/OemSceneGameModePanel;->sDialogView:Landroid/view/View;

    if-nez v0, :cond_6

    .line 329
    const/4 v0, 0x0

    return v0

    .line 331
    :cond_6
    sget-object v0, Lcom/android/server/OemSceneGameModePanel;->sDialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method private hide(Z)V
    .registers 5
    .param p1, "animate"    # Z

    .line 378
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 379
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 380
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 381
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 382
    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    .line 383
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->startHideAnimator()V

    goto :goto_28

    .line 385
    :cond_1b
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    if-eqz v1, :cond_28

    .line 386
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 387
    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    .line 390
    :cond_28
    :goto_28
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mESportGuider:Lcom/android/server/ESportGuider;

    invoke-virtual {v1}, Lcom/android/server/ESportGuider;->hide()V

    .line 391
    sput-object v0, Lcom/android/server/OemSceneGameModePanel;->sDialogView:Landroid/view/View;

    .line 392
    return-void
.end method

.method private inViewInBounds(Landroid/view/View;II)Z
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 336
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 337
    .local v0, "outRect":Landroid/graphics/Rect;
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 338
    .local v1, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 339
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 340
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 341
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    return v2
.end method

.method private initHapticFeedbackAppList()V
    .registers 6

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 498
    .local v0, "tmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_18
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_34

    .line 499
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    .line 500
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/OemSceneGameModePanel;->mHapticFeedbackSupportedApp:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    .end local v3    # "pkg":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 502
    .end local v2    # "i":I
    :cond_34
    const-string v1, "OemSceneGameModePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Support haptic feedback app list:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModePanel;->mHapticFeedbackSupportedApp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return-void
.end method

.method private listenFor3rdCallState()V
    .registers 6

    .line 473
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_notifications_3rd_calls_uid"

    .line 474
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/OemSceneGameModePanel$9;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/OemSceneGameModePanel$9;-><init>(Lcom/android/server/OemSceneGameModePanel;Landroid/os/Handler;)V

    .line 473
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 487
    return-void
.end method

.method private listenForA2dpConnection()V
    .registers 4

    .line 507
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 508
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 509
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/OemSceneGameModePanel$10;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneGameModePanel$10;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 531
    return-void
.end method

.method private listenForCallState()V
    .registers 4

    .line 455
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 456
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/OemSceneGameModePanel$8;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneGameModePanel$8;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 469
    return-void
.end method

.method private show(Z)V
    .registers 6
    .param p1, "animateView"    # Z

    .line 209
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    if-eqz v0, :cond_c

    .line 210
    const-string v0, "OemSceneGameModePanel"

    const-string v1, "There is gaming mode UI shown. Ignore."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void

    .line 213
    :cond_c
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 214
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 215
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 216
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 217
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_panel_detail"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v3, :cond_33

    move v0, v3

    goto :goto_34

    :cond_33
    move v0, v1

    .line 221
    .local v0, "toShowDetail":Z
    :goto_34
    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModePanel;->isDocked()Z

    move-result v2

    if-nez v2, :cond_3e

    move v1, v3

    nop

    :cond_3e
    move v0, v1

    .line 223
    if-eqz v0, :cond_45

    .line 224
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneGameModePanel;->showDetail(Z)V

    goto :goto_48

    .line 226
    :cond_45
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->showSimple()V

    .line 228
    :goto_48
    return-void
.end method

.method private showDetail(Z)V
    .registers 12
    .param p1, "animateView"    # Z

    .line 286
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 287
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 289
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 290
    .local v0, "orientation":I
    const-string v1, "OemSceneGameModePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "new OemSceneGameModeDialog, mContext orientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v1, 0x1

    :try_start_2e
    new-instance v2, Lcom/android/server/OemSceneGameModeDialog;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    const v4, 0x5090008

    invoke-direct {v2, v3, v4, p0, p1}, Lcom/android/server/OemSceneGameModeDialog;-><init>(Landroid/content/Context;ILcom/android/server/OemSceneGameModePanel;Z)V

    iput-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    .line 294
    if-ne v0, v1, :cond_41

    .line 295
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    sput-object v2, Lcom/android/server/OemSceneGameModePanel;->sCurrentShowingViewDialogPort:Lcom/android/server/OemSceneGameModeView;

    goto :goto_45

    .line 297
    :cond_41
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    sput-object v2, Lcom/android/server/OemSceneGameModePanel;->sCurrentShowingViewDialogLand:Lcom/android/server/OemSceneGameModeView;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_45} :catch_46

    .line 310
    :goto_45
    goto :goto_7a

    .line 299
    :catch_46
    move-exception v2

    .line 300
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OemSceneGameModePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCurrentShowingView,  Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    if-ne v0, v1, :cond_69

    .line 302
    sget-object v1, Lcom/android/server/OemSceneGameModePanel;->sCurrentShowingViewDialogPort:Lcom/android/server/OemSceneGameModeView;

    iput-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    goto :goto_6d

    .line 304
    :cond_69
    sget-object v1, Lcom/android/server/OemSceneGameModePanel;->sCurrentShowingViewDialogLand:Lcom/android/server/OemSceneGameModeView;

    iput-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    .line 306
    :goto_6d
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    if-nez v1, :cond_7a

    .line 307
    const-string v1, "OemSceneGameModePanel"

    const-string/jumbo v3, "mCurrentShowingView is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void

    .line 312
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7a
    :goto_7a
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v7, 0x7d8

    const/16 v8, 0x8

    const/4 v9, -0x2

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 315
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x31

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 316
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x12

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 317
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "GameModeMsg"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Lcom/android/server/OemSceneGameModeView;->setSystemUiVisibility(I)V

    .line 321
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    const v2, 0x5070016

    invoke-virtual {v1, v2}, Lcom/android/server/OemSceneGameModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lcom/android/server/OemSceneGameModePanel;->sDialogView:Landroid/view/View;

    .line 322
    const-string v1, "OemSceneGameModePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sDialogView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/OemSceneGameModePanel;->sDialogView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->startShownAnimator()V

    .line 325
    return-void
.end method

.method private showSimple()V
    .registers 15

    .line 235
    new-instance v0, Lcom/android/server/OemSceneGameModeMessage;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const v3, 0x509000a

    invoke-direct {v0, v1, v3, p0, v2}, Lcom/android/server/OemSceneGameModeMessage;-><init>(Landroid/content/Context;ILcom/android/server/OemSceneGameModePanel;Z)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    .line 236
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    const v1, 0x507001a

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneGameModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 237
    .local v0, "gameModeTitle":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    const v3, 0x5070011

    invoke-virtual {v1, v3}, Lcom/android/server/OemSceneGameModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 238
    .local v1, "esportModeBtn":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    const v4, 0x507001c

    invoke-virtual {v3, v4}, Lcom/android/server/OemSceneGameModeView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 239
    .local v3, "gameModeOptionBtn":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    const v5, 0x5070019

    invoke-virtual {v4, v5}, Lcom/android/server/OemSceneGameModeView;->findViewById(I)Landroid/view/View;

    .line 240
    const/16 v4, 0x19

    .line 241
    .local v4, "maxTextLength":I
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/OemSceneGameModePanel;->checkIfFullWidthFontType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 242
    const/16 v4, 0xf

    .line 245
    :cond_48
    iget-object v5, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8c

    .line 246
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v4, :cond_80

    .line 247
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    if-le v5, v4, :cond_8c

    .line 248
    :cond_80
    new-instance v5, Lcom/android/server/OemSceneGameModeMessage;

    iget-object v6, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    const v7, 0x509000b

    invoke-direct {v5, v6, v7, p0, v2}, Lcom/android/server/OemSceneGameModeMessage;-><init>(Landroid/content/Context;ILcom/android/server/OemSceneGameModePanel;Z)V

    iput-object v5, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    .line 250
    :cond_8c
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/16 v11, 0x7d8

    const/16 v12, 0x8

    const/4 v13, -0x2

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 253
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x31

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 254
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 255
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v5, "GameModeMsg"

    invoke-virtual {v2, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    iget-object v6, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    const/16 v5, 0x400

    invoke-virtual {v2, v5}, Lcom/android/server/OemSceneGameModeView;->setSystemUiVisibility(I)V

    .line 259
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModePanel;->animateSimple()V

    .line 260
    return-void
.end method

.method private startHideAnimator()V
    .registers 2

    .line 414
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneGameModePanel;->startHideAnimator(Z)V

    .line 415
    return-void
.end method

.method private startHideAnimator(Z)V
    .registers 5
    .param p1, "delayed"    # Z

    .line 418
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/OemSceneGameModePanel$6;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModePanel$6;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 427
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/OemSceneGameModePanel$7;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModePanel$7;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 437
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 438
    if-eqz p1, :cond_24

    .line 439
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 441
    :cond_24
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 442
    return-void
.end method

.method private startShownAnimator()V
    .registers 4

    .line 345
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/OemSceneGameModePanel$3;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModePanel$3;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 354
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/OemSceneGameModePanel$4;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModePanel$4;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 368
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 369
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 370
    return-void
.end method


# virtual methods
.method protected animateSimple()V
    .registers 2

    .line 274
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->startShownAnimator()V

    .line 275
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneGameModePanel;->startHideAnimator(Z)V

    .line 276
    return-void
.end method

.method public configurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 445
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneGameModePanel;->hide(Z)V

    .line 446
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, v1, Landroid/content/res/Configuration;->orientation:I

    .line 448
    iget-boolean v1, p0, Lcom/android/server/OemSceneGameModePanel;->mGameModeUIAcquired:Z

    if-eqz v1, :cond_19

    .line 449
    invoke-direct {p0, v0}, Lcom/android/server/OemSceneGameModePanel;->show(Z)V

    .line 451
    :cond_19
    return-void
.end method

.method public doneEsportModeGuiderHide()V
    .registers 3

    .line 395
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/OemSceneGameModePanel$5;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModePanel$5;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 411
    return-void
.end method

.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "lpackageName"    # Ljava/lang/String;
    .param p5, "luid"    # I
    .param p6, "lpid"    # I

    .line 137
    sget-boolean v0, Lcom/android/server/OemSceneGameModePanel;->DBG:Z

    if-eqz v0, :cond_1a

    const-string v0, "OemSceneGameModePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current fg pgk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1a
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mFgPkg:Ljava/lang/String;

    .line 139
    .local v0, "oldPkg":Ljava/lang/String;
    iput-object p1, p0, Lcom/android/server/OemSceneGameModePanel;->mFgPkg:Ljava/lang/String;

    .line 141
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    if-eqz v1, :cond_36

    if-eqz v0, :cond_36

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mFgPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 142
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/OemSceneGameModePanel$2;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneGameModePanel$2;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    :cond_36
    return-void
.end method

.method public getFgPkg()Ljava/lang/String;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mFgPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public hide()V
    .registers 2

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModePanel;->mGameModeUIAcquired:Z

    .line 374
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneGameModePanel;->hide(Z)V

    .line 375
    return-void
.end method

.method public isBtA2dpOn()Z
    .registers 2

    .line 534
    iget-boolean v0, p0, Lcom/android/server/OemSceneGameModePanel;->mBtA2dpOn:Z

    return v0
.end method

.method protected isDocked()Z
    .registers 8

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "isDocked":Z
    const/4 v1, 0x0

    move v2, v1

    .line 199
    .local v2, "dockMinimized":Z
    const/4 v3, 0x1

    :try_start_4
    iget-object v4, p0, Lcom/android/server/OemSceneGameModePanel;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v4}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_f

    move v4, v3

    goto :goto_10

    :cond_f
    move v4, v1

    :goto_10
    move v0, v4

    .line 200
    iget-object v4, p0, Lcom/android/server/OemSceneGameModePanel;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerInternal;->isMinimizedDock()Z

    move-result v4
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_17} :catch_19

    move v2, v4

    .line 203
    goto :goto_21

    .line 201
    :catch_19
    move-exception v4

    .line 202
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "OemSceneGameModePanel"

    const-string v6, "Remote exception while checking dock status."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_21
    if-eqz v0, :cond_27

    if-nez v2, :cond_27

    move v1, v3

    nop

    :cond_27
    return v1
.end method

.method public isGameModeUIShowing()Z
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isSupportHapticFeedbackApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHapticFeedbackSupportedApp:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 491
    const/4 v0, 0x1

    return v0

    .line 493
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public show()V
    .registers 3

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModePanel;->mGameModeUIAcquired:Z

    .line 178
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    if-eqz v1, :cond_f

    .line 179
    const-string v0, "OemSceneGameModePanel"

    const-string v1, "There is gaming mode UI shown. Ignore."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void

    .line 183
    :cond_f
    const/4 v1, -0x1

    sput v1, Lcom/android/server/OemSceneGameModeDialog;->sDontShowAgainValue:I

    .line 185
    invoke-direct {p0, v0}, Lcom/android/server/OemSceneGameModePanel;->show(Z)V

    .line 186
    return-void
.end method

.method public showDialog(Z)V
    .registers 3
    .param p1, "anim"    # Z

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModePanel;->mGameModeUIAcquired:Z

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneGameModePanel;->hide(Z)V

    .line 191
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneGameModePanel;->showDetail(Z)V

    .line 192
    return-void
.end method

.method public silentShow(Z)V
    .registers 6
    .param p1, "recoverCachedFuncs"    # Z

    .line 169
    if-eqz p1, :cond_10

    .line 171
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "esport_mode_enable_trigger"

    const-string v2, "1"

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 174
    :cond_10
    return-void
.end method

.method public toShowDetail(Z)V
    .registers 3
    .param p1, "animateView"    # Z

    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModePanel;->mGameModeUIAcquired:Z

    .line 280
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneGameModePanel;->showDetail(Z)V

    .line 281
    return-void
.end method
