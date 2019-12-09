.class Lcom/android/server/wm/TaskPositioner;
.super Ljava/lang/Object;
.source "TaskPositioner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskPositioner$Factory;,
        Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;,
        Lcom/android/server/wm/TaskPositioner$CtrlType;
    }
.end annotation


# static fields
.field private static final CTRL_BOTTOM:I = 0x8

.field private static final CTRL_LEFT:I = 0x1

.field private static final CTRL_NONE:I = 0x0

.field private static final CTRL_RIGHT:I = 0x2

.field private static final CTRL_TOP:I = 0x4

.field private static final DEBUG_ORIENTATION_VIOLATIONS:Z = false

.field static final MIN_ASPECT:F = 1.2f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final RESIZING_HINT_ALPHA:F = 0.5f

.field public static final RESIZING_HINT_DURATION_MS:I = 0x0

.field static final SIDE_MARGIN_DIP:I = 0x64

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TAG_LOCAL:Ljava/lang/String; = "TaskPositioner"

.field private static sFactory:Lcom/android/server/wm/TaskPositioner$Factory;


# instance fields
.field mClientChannel:Landroid/view/InputChannel;

.field private mCtrlType:I

.field private mDisplay:Landroid/view/Display;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field private mDragEnded:Z

.field mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field private mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

.field private final mMaxVisibleSize:Landroid/graphics/Point;

.field private mMinVisibleHeight:I

.field private mMinVisibleWidth:I

.field private mPreserveOrientation:Z

.field private mResizing:Z

.field mServerChannel:Landroid/view/InputChannel;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSideMargin:I

.field private mStartDragX:F

.field private mStartDragY:F

.field private mStartOrientationWasLandscape:Z

.field private mTask:Lcom/android/server/wm/Task;

.field private mTmpRect:Landroid/graphics/Rect;

.field private final mWindowDragBounds:Landroid/graphics/Rect;

.field private final mWindowOriginalBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    .line 110
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 115
    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 221
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/TaskPositioner;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/server/wm/TaskPositioner;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskPositioner;FF)Z
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/Task;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/wm/TaskPositioner;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/wm/TaskPositioner;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioner;->endDragLocked()V

    return-void
.end method

.method private checkBoundsForOrientationViolations(Landroid/graphics/Rect;)V
    .locals 0

    .line 602
    return-void
.end method

.method static create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/TaskPositioner;
    .locals 1

    .line 634
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    if-nez v0, :cond_0

    .line 635
    new-instance v0, Lcom/android/server/wm/TaskPositioner$1;

    invoke-direct {v0}, Lcom/android/server/wm/TaskPositioner$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    .line 638
    :cond_0
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    invoke-interface {v0, p0}, Lcom/android/server/wm/TaskPositioner$Factory;->create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/TaskPositioner;

    move-result-object p0

    return-object p0
.end method

.method private endDragLocked()V
    .locals 2

    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    .line 411
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v0, v0}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 412
    return-void
.end method

.method public static synthetic lambda$startDrag$0(Lcom/android/server/wm/TaskPositioner;Landroid/graphics/Rect;)V
    .locals 3

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    invoke-interface {v0, v1, p1, v2}, Landroid/app/IActivityManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    goto :goto_0

    .line 399
    :catch_0
    move-exception p1

    .line 401
    :goto_0
    return-void
.end method

.method private notifyMoveLocked(FF)Z
    .locals 3

    .line 420
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->resizeDrag(FF)V

    .line 422
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v1}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 423
    return v1

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 429
    float-to-int p1, p1

    .line 430
    float-to-int p2, p2

    .line 431
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 435
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/TaskPositioner;->updateWindowDragBounds(IILandroid/graphics/Rect;)V

    .line 439
    return v1
.end method

.method static setFactory(Lcom/android/server/wm/TaskPositioner$Factory;)V
    .locals 0

    .line 630
    sput-object p0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    .line 631
    return-void
.end method

.method private updateWindowDragBounds(IILandroid/graphics/Rect;)V
    .locals 5

    .line 605
    int-to-float p1, p1

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 606
    int-to-float p2, p2

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 607
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 609
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    sub-int/2addr v0, v1

    .line 610
    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    .line 614
    iget v2, p3, Landroid/graphics/Rect;->top:I

    .line 615
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    sub-int/2addr p3, v3

    .line 617
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, p1

    .line 618
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    .line 619
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 617
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 623
    return-void
.end method


# virtual methods
.method getWindowDragBounds()Landroid/graphics/Rect;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method register(Lcom/android/server/wm/DisplayContent;)V
    .locals 7

    .line 233
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object p1

    .line 239
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    .line 240
    const-string p1, "WindowManager"

    const-string v0, "Task positioner already registered"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    .line 244
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    .line 245
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 246
    const-string p1, "WindowManager"

    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object p1

    .line 247
    const/4 v0, 0x0

    aget-object v1, p1, v0

    iput-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    .line 248
    const/4 v1, 0x1

    aget-object p1, p1, v1

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 249
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    .line 251
    new-instance p1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 252
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 253
    invoke-virtual {v5}, Lcom/android/server/wm/WindowAnimator;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v5

    invoke-direct {p1, p0, v2, v4, v5}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;-><init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    .line 255
    new-instance p1, Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {p1, v3}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 256
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    const-string v2, "WindowManager"

    iput-object v2, p1, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 257
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    const-wide v4, 0x12a05f200L

    iput-wide v4, p1, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 260
    new-instance p1, Lcom/android/server/input/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    .line 261
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    invoke-direct {p1, v2, v3, v3, v6}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;Landroid/view/IWindow;I)V

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 262
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const-string v2, "WindowManager"

    iput-object v2, p1, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 263
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    iput-object v2, p1, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 264
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDragLayerLocked()I

    move-result v2

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 265
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v0, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 266
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/16 v2, 0x7e0

    iput v2, p1, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 267
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-wide v4, p1, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 269
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v1, p1, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 270
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v0, p1, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 271
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v1, p1, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 272
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v0, p1, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 273
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v0, p1, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 274
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 275
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 276
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v0, p1, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 277
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p1, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 280
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object p1, p1, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    .line 283
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v0, p1, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 284
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v0, p1, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 285
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 286
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 287
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v2, p1, Landroid/graphics/Point;->x:I

    iput v2, v1, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 288
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, v1, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 294
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->pauseRotationLocked()V

    .line 296
    const/16 p1, 0x64

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    .line 297
    const/16 p1, 0x30

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    .line 298
    const/16 p1, 0x20

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    .line 299
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    invoke-virtual {p1, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 301
    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 302
    return-void
.end method

.method resizeDrag(FF)V
    .locals 18
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    .line 454
    iget v1, v0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 455
    iget v2, v0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 456
    iget-object v3, v0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 457
    iget-object v4, v0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 458
    iget-object v5, v0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 459
    iget-object v6, v0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 464
    iget-boolean v7, v0, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    if-nez v7, :cond_0

    .line 465
    goto :goto_0

    .line 466
    :cond_0
    iget-boolean v7, v0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    .line 468
    :goto_0
    sub-int v7, v5, v3

    .line 469
    sub-int v8, v6, v4

    .line 470
    iget v9, v0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    const/4 v10, 0x1

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    .line 471
    iget v9, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    sub-int v1, v7, v1

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 472
    :cond_1
    iget v9, v0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_2

    .line 473
    iget v9, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    add-int/2addr v1, v7

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 475
    :cond_2
    move v1, v7

    :goto_1
    iget v9, v0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_3

    .line 476
    iget v9, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    sub-int v2, v8, v2

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2

    .line 477
    :cond_3
    iget v9, v0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_4

    .line 478
    iget v9, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    add-int/2addr v2, v8

    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2

    .line 482
    :cond_4
    move v2, v8

    :goto_2
    int-to-float v9, v1

    int-to-float v11, v2

    div-float/2addr v9, v11

    .line 483
    iget-boolean v11, v0, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    if-eqz v11, :cond_f

    iget-boolean v11, v0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    const v12, 0x3f99999a    # 1.2f

    if-eqz v11, :cond_5

    cmpg-float v11, v9, v12

    if-ltz v11, :cond_6

    :cond_5
    iget-boolean v11, v0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-nez v11, :cond_f

    float-to-double v13, v9

    const-wide v15, 0x3feaaaaa98e38e45L    # 0.8333333002196431

    cmpl-double v9, v13, v15

    if-lez v9, :cond_f

    .line 491
    :cond_6
    iget-boolean v9, v0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-eqz v9, :cond_8

    .line 493
    iget v9, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget-object v11, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 494
    int-to-float v11, v9

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 495
    iget v13, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    if-ge v11, v13, :cond_7

    .line 497
    iget v11, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    .line 498
    iget v9, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget-object v13, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    int-to-float v14, v11

    mul-float/2addr v14, v12

    .line 499
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 498
    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 502
    :cond_7
    iget v13, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget-object v14, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->y:I

    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 503
    int-to-float v14, v13

    mul-float/2addr v14, v12

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 504
    iget v15, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    if-ge v14, v15, :cond_a

    .line 506
    iget v14, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    .line 507
    iget v13, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget-object v15, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->y:I

    int-to-float v10, v14

    div-float/2addr v10, v12

    .line 508
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v15, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 507
    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_4

    .line 512
    :cond_8
    iget v9, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget-object v10, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 513
    int-to-float v10, v9

    mul-float/2addr v10, v12

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 514
    iget v11, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    if-ge v10, v11, :cond_9

    .line 516
    iget v9, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    .line 517
    iget v10, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget-object v11, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    int-to-float v13, v9

    div-float/2addr v13, v12

    .line 518
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 517
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 521
    move v11, v9

    move v9, v10

    goto :goto_3

    :cond_9
    move v11, v10

    :goto_3
    iget v10, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget-object v13, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v10, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 522
    int-to-float v10, v13

    div-float/2addr v10, v12

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v1, v10}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 523
    iget v10, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    if-ge v14, v10, :cond_a

    .line 525
    iget v14, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    .line 526
    iget v10, v0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget-object v13, v0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    int-to-float v15, v14

    mul-float/2addr v15, v12

    .line 527
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 526
    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 533
    :cond_a
    :goto_4
    const/4 v10, 0x0

    if-gt v1, v7, :cond_c

    if-le v2, v8, :cond_b

    goto :goto_5

    .line 534
    :cond_b
    move v1, v10

    goto :goto_6

    .line 533
    :cond_c
    :goto_5
    nop

    .line 534
    const/4 v1, 0x1

    :goto_6
    mul-int v2, v9, v11

    mul-int v7, v14, v13

    if-le v2, v7, :cond_d

    const/4 v10, 0x1

    nop

    :cond_d
    if-ne v1, v10, :cond_e

    .line 535
    nop

    .line 536
    nop

    .line 544
    move v14, v9

    goto :goto_7

    .line 538
    :cond_e
    nop

    .line 539
    nop

    .line 544
    move v11, v13

    goto :goto_7

    :cond_f
    move v14, v1

    move v11, v2

    :goto_7
    move v1, v3

    move v2, v4

    move v3, v5

    move v4, v6

    move v5, v14

    move v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TaskPositioner;->updateDraggedBounds(IIIIII)V

    .line 545
    return-void
.end method

.method startDrag(Lcom/android/server/wm/WindowState;ZZFF)V
    .locals 7

    .line 342
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 348
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 349
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/TaskPositioner;->startDrag(ZZFFLandroid/graphics/Rect;)V

    .line 350
    return-void
.end method

.method startDrag(ZZFFLandroid/graphics/Rect;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 355
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 356
    iput p3, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    .line 357
    iput p4, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    .line 358
    iput-boolean p2, p0, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    .line 360
    const/4 p2, 0x1

    if-eqz p1, :cond_5

    .line 361
    iget p1, p5, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    cmpg-float p1, p3, p1

    if-gez p1, :cond_0

    .line 362
    iget p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 364
    :cond_0
    iget p1, p5, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_1

    .line 365
    iget p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 367
    :cond_1
    iget p1, p5, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpg-float p1, p4, p1

    if-gez p1, :cond_2

    .line 368
    iget p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 370
    :cond_2
    iget p1, p5, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    cmpl-float p1, p4, p1

    if-lez p1, :cond_3

    .line 371
    iget p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 373
    :cond_3
    iget p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    if-eqz p1, :cond_4

    move p1, p2

    goto :goto_0

    :cond_4
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    .line 380
    :cond_5
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lt p1, v1, :cond_6

    goto :goto_1

    :cond_6
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    .line 381
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 386
    iget-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    if-eqz p1, :cond_7

    .line 387
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter p1

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 388
    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z

    .line 389
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 395
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance p2, Lcom/android/server/wm/-$$Lambda$TaskPositioner$TE0EjYzJeOSFARmUlY6wF3y3c2U;

    invoke-direct {p2, p0, p5}, Lcom/android/server/wm/-$$Lambda$TaskPositioner$TE0EjYzJeOSFARmUlY6wF3y3c2U;-><init>(Lcom/android/server/wm/TaskPositioner;Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 389
    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p2

    .line 406
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 407
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    .line 626
    const-string v0, "WindowManager"

    return-object v0
.end method

.method unregister()V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_0

    .line 310
    const-string v0, "WindowManager"

    const-string v1, "Task positioner not registered"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 316
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->dispose()V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    .line 318
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 319
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 320
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 321
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    .line 323
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 324
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 325
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplay:Landroid/view/Display;

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 332
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->resumeRotationLocked()V

    .line 333
    return-void
.end method

.method updateDraggedBounds(IIIIII)V
    .locals 1

    .line 560
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 561
    sub-int p1, p3, p5

    goto :goto_0

    .line 563
    :cond_0
    add-int p3, p1, p5

    .line 565
    :goto_0
    iget p5, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    .line 566
    sub-int p2, p4, p6

    goto :goto_1

    .line 568
    :cond_1
    add-int p4, p2, p6

    .line 571
    :goto_1
    iget-object p5, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 573
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskPositioner;->checkBoundsForOrientationViolations(Landroid/graphics/Rect;)V

    .line 574
    return-void
.end method
