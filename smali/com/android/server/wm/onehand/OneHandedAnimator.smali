.class Lcom/android/server/wm/onehand/OneHandedAnimator;
.super Ljava/lang/Object;
.source "OneHandedAnimator.java"


# static fields
.field private static final ACTION_ONEHAND_TRIGGER_EVENT:Ljava/lang/String; = "com.android.server.wm.onehand.intent.action.ONEHAND_TRIGGER_EVENT"

.field private static final DELAY_TIME:J = 0x2bcL

.field private static final EXTRA_ALIGNMENT_STATE:Ljava/lang/String; = "alignment_state"

.field private static final EXTRA_ALIGNMENT_STATE_LEFT:I = 0x0

.field private static final EXTRA_ALIGNMENT_STATE_RIGHT:I = 0x1

.field private static final EXTRA_ALIGNMENT_STATE_UNALIGNED:I = -0x1

.field private static final EXTRA_VERTICAL_POSITION:Ljava/lang/String; = "vertical_position"

.field private static final LOCAL_DEBUG:Z

.field private static final MSG_ONEHAND_TURNED_OFF:I = 0x577

.field private static final TAG:Ljava/lang/String; = "OneHandAnimator"

.field private static final TRANSIT_DURATION:J = 0x15eL

.field private static final VERBOSE_DEBUG:Z = false

.field private static sCurrentUser:I


# instance fields
.field volatile isOnehandTurnedOn:Z

.field private final mBatteryManager:Landroid/os/BatteryManagerInternal;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mH:Landroid/os/Handler;

.field private mInputLastOffsetX:I

.field private mInputLastOffsetY:I

.field private mInputLastScale:F

.field private final mInputManager:Landroid/hardware/input/InputManagerInternal;

.field private volatile mIsRacedAccessibilityEnabled:Z

.field private final mMainThread:Landroid/os/HandlerThread;

.field private final mMode:Lcom/android/server/wm/onehand/OneHandedMode;

.field private final mOneHandedModeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/onehand/IOneHandedModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOperationMonitor:Lcom/android/server/wm/onehand/OneHandOperationMonitor;

.field final mPanel:Lcom/android/server/wm/onehand/OneHandedControlPanel;

.field private mPointerMappingSuspended:Z

.field private mTransitAnimation:Landroid/view/animation/Animation;

.field private mTransitTransformation:Landroid/view/animation/Transformation;

.field private final mWindowManager:Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$IWindowManagerFuncs;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 55
    const-string v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    const-string v2, ""

    .line 56
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/onehand/OneHandedAnimator;->LOCAL_DEBUG:Z

    .line 74
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wm/onehand/OneHandedAnimator;->sCurrentUser:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$IWindowManagerFuncs;)V
    .locals 2

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/android/server/wm/onehand/OneHandedMode;

    invoke-direct {v0}, Lcom/android/server/wm/onehand/OneHandedMode;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mMode:Lcom/android/server/wm/onehand/OneHandedMode;

    .line 91
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mPointerMappingSuspended:Z

    .line 98
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mTransitAnimation:Landroid/view/animation/Animation;

    .line 99
    iput-object v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mTransitTransformation:Landroid/view/animation/Transformation;

    .line 103
    iput-boolean v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mIsRacedAccessibilityEnabled:Z

    .line 108
    iput v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mInputLastOffsetX:I

    .line 109
    iput v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mInputLastOffsetY:I

    .line 110
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mInputLastScale:F

    .line 112
    iput-boolean v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->isOnehandTurnedOn:Z

    .line 114
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mOneHandedModeListeners:Landroid/os/RemoteCallbackList;

    .line 374
    new-instance v1, Lcom/android/server/wm/onehand/OneHandedAnimator$2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/onehand/OneHandedAnimator$2;-><init>(Lcom/android/server/wm/onehand/OneHandedAnimator;)V

    iput-object v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 166
    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 167
    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mContext:Landroid/content/Context;

    .line 168
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mContext:Landroid/content/Context;

    const v0, 0x1030224

    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    .line 170
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mContext:Landroid/content/Context;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 172
    iput-object p2, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mWindowManager:Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$IWindowManagerFuncs;

    .line 174
    const-class p1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManagerInternal;

    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mInputManager:Landroid/hardware/input/InputManagerInternal;

    .line 175
    const-class p1, Landroid/os/BatteryManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManagerInternal;

    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mBatteryManager:Landroid/os/BatteryManagerInternal;

    .line 177
    new-instance p1, Lcom/android/server/wm/onehand/OneHandOperationMonitor;

    iget-object p2, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/server/wm/onehand/OneHandOperationMonitor;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mOperationMonitor:Lcom/android/server/wm/onehand/OneHandOperationMonitor;

    .line 179
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "OneHandAnimator"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mMainThread:Landroid/os/HandlerThread;

    .line 180
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mMainThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 181
    new-instance p1, Lcom/android/server/wm/onehand/OneHandedAnimator$1;

    iget-object p2, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mMainThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/onehand/OneHandedAnimator$1;-><init>(Lcom/android/server/wm/onehand/OneHandedAnimator;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mH:Landroid/os/Handler;

    .line 193
    new-instance p1, Lcom/android/server/wm/onehand/OneHandedControlPanel;

    iget-object p2, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mMainThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Lcom/android/server/wm/onehand/OneHandedControlPanel;-><init>(Landroid/content/Context;Lcom/android/server/wm/onehand/OneHandedAnimator;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mPanel:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    .line 195
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->updateDefaultDisplayInfoLocked()Z

    .line 197
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->registerObservers()V

    .line 199
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->updateIsRacedAccessibilityEnabled()V

    .line 202
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 51
    sget-boolean v0, Lcom/android/server/wm/onehand/OneHandedAnimator;->LOCAL_DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/onehand/OneHandedAnimator;)Z
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->doesRacedDisplayExist()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/android/server/wm/onehand/OneHandedAnimator;)Lcom/android/server/wm/onehand/OneHandOperationMonitor;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mOperationMonitor:Lcom/android/server/wm/onehand/OneHandOperationMonitor;

    return-object p0
.end method

.method static synthetic access$1102(I)I
    .locals 0

    .line 51
    sput p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->sCurrentUser:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/onehand/OneHandedAnimator;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->updateIsRacedAccessibilityEnabled()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/wm/onehand/OneHandedAnimator;)Landroid/os/Handler;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mH:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/wm/onehand/OneHandedAnimator;I)Z
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->isUserSetupCompleted(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/android/server/wm/onehand/OneHandedAnimator;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mIsRacedAccessibilityEnabled:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/wm/onehand/OneHandedAnimator;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getSyncRoot()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/wm/onehand/OneHandedAnimator;)Z
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->updateDefaultDisplayInfoLocked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/wm/onehand/OneHandedAnimator;)Landroid/view/DisplayInfo;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/wm/onehand/OneHandedAnimator;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->scheduleWindowAnimationLocked()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/onehand/OneHandedAnimator;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->updatePointerMappingParametersLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wm/onehand/OneHandedAnimator;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/wm/onehand/OneHandedAnimator;)Z
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->isPoweredByWireless()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/wm/onehand/OneHandedAnimator;)Lcom/android/server/wm/onehand/OneHandedMode;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mMode:Lcom/android/server/wm/onehand/OneHandedMode;

    return-object p0
.end method

.method private doesRacedDisplayExist()Z
    .locals 7

    .line 665
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v1, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    .line 668
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 669
    invoke-virtual {v4}, Landroid/view/Display;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 670
    invoke-virtual {v4}, Landroid/view/Display;->getType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 668
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 671
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 674
    :cond_2
    return v2
.end method

.method static getCurrentUser()I
    .locals 1

    .line 76
    sget v0, Lcom/android/server/wm/onehand/OneHandedAnimator;->sCurrentUser:I

    return v0
.end method

.method private getSyncRoot()Ljava/lang/Object;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mWindowManager:Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$IWindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$IWindowManagerFuncs;->getSyncRoot()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getTransformationArgsForModeLocked(Lcom/android/server/wm/onehand/OneHandedMode;[I[F)V
    .locals 7

    .line 304
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getTransformationArgsForMode(Lcom/android/server/wm/onehand/OneHandedMode;[I[FII)V

    .line 307
    return-void
.end method

.method private getTransformationLocked()Landroid/view/animation/Transformation;
    .locals 8

    .line 344
    nop

    .line 345
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mTransitTransformation:Landroid/view/animation/Transformation;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mMode:Lcom/android/server/wm/onehand/OneHandedMode;

    invoke-virtual {v0}, Lcom/android/server/wm/onehand/OneHandedMode;->isOffMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    return-object v1

    .line 350
    :cond_0
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    .line 352
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 353
    const/4 v3, 0x1

    new-array v4, v3, [F

    .line 355
    iget-object v5, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mMode:Lcom/android/server/wm/onehand/OneHandedMode;

    invoke-direct {p0, v5, v2, v4}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getTransformationArgsForModeLocked(Lcom/android/server/wm/onehand/OneHandedMode;[I[F)V

    .line 356
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    const/4 v6, 0x0

    aget v7, v4, v6

    aget v4, v4, v6

    invoke-virtual {v5, v7, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 357
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    aget v5, v2, v6

    int-to-float v5, v5

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 359
    nop

    .line 360
    goto :goto_0

    .line 362
    :cond_1
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    .line 363
    iget-object v2, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mTransitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0, v2}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 368
    :goto_0
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 369
    return-object v1

    .line 371
    :cond_2
    return-object v0
.end method

.method private isAccessibilityDisplayMagnificationEnabled()Z
    .locals 4

    .line 634
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    .line 636
    invoke-static {}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getCurrentUser()I

    move-result v2

    .line 634
    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    return v3
.end method

.method private isAccessibilityDisplayMagnificationNavbarEnabled()Z
    .locals 4

    .line 640
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_navbar_enabled"

    .line 642
    invoke-static {}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getCurrentUser()I

    move-result v2

    .line 640
    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    return v3
.end method

.method private isOneHandedModeAvailableLocked()Z
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    if-gt v0, v1, :cond_0

    .line 680
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->isPoweredByWireless()Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->isUserSetupCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mIsRacedAccessibilityEnabled:Z

    if-nez v0, :cond_0

    .line 683
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->doesRacedDisplayExist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 678
    :goto_0
    return v0
.end method

.method private isPoweredByWireless()Z
    .locals 2

    .line 607
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mBatteryManager:Landroid/os/BatteryManagerInternal;

    if-nez v0, :cond_0

    .line 610
    const/4 v0, 0x0

    return v0

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mBatteryManager:Landroid/os/BatteryManagerInternal;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v0

    return v0
.end method

.method private isRacedAccessibilityServiceEnabled()Z
    .locals 2

    .line 646
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 647
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 648
    nop

    .line 649
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    .line 655
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 656
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilities()I

    move-result v1

    and-int/lit8 v1, v1, 0x12

    if-eqz v1, :cond_0

    .line 657
    const/4 v0, 0x1

    return v0

    .line 659
    :cond_0
    goto :goto_0

    .line 661
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isUserSetupCompleted()Z
    .locals 1

    .line 617
    invoke-static {}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->isUserSetupCompleted(I)Z

    move-result v0

    return v0
.end method

.method private isUserSetupCompleted(I)Z
    .locals 3

    .line 621
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private notifyModeChange(Lcom/android/server/wm/onehand/OneHandedMode;Lcom/android/server/wm/onehand/OneHandedMode;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mPanel:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->notifyModeChanged(Lcom/android/server/wm/onehand/OneHandedMode;Lcom/android/server/wm/onehand/OneHandedMode;)V

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/onehand/OneHandedAnimator;->notifyModeChangeToListenersIfNeeded(Lcom/android/server/wm/onehand/OneHandedMode;Lcom/android/server/wm/onehand/OneHandedMode;)V

    .line 121
    return-void
.end method

.method private notifyModeChangeToListenersIfNeeded(Lcom/android/server/wm/onehand/OneHandedMode;Lcom/android/server/wm/onehand/OneHandedMode;)V
    .locals 5

    .line 125
    invoke-virtual {p2}, Lcom/android/server/wm/onehand/OneHandedMode;->isOffMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandedMode;->isOffMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    move v0, v2

    goto :goto_0

    .line 125
    :cond_0
    nop

    .line 126
    move v0, v1

    :goto_0
    invoke-virtual {p2}, Lcom/android/server/wm/onehand/OneHandedMode;->isOffMode()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandedMode;->isOffMode()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 128
    :cond_1
    move v2, v1

    :goto_1
    if-nez v0, :cond_2

    if-nez v2, :cond_2

    .line 129
    return-void

    .line 132
    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mOneHandedModeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1

    .line 133
    sget-boolean p2, Lcom/android/server/wm/onehand/OneHandedAnimator;->LOCAL_DEBUG:Z

    if-eqz p2, :cond_3

    const-string p2, "OneHandAnimator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyModeChangeToListenersIfNeeded: onEnter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " onExit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " listeners count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_3
    :goto_2
    if-ge v1, p1, :cond_6

    .line 137
    iget-object p2, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mOneHandedModeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/android/internal/onehand/IOneHandedModeListener;

    .line 139
    if-eqz v0, :cond_4

    .line 140
    :try_start_0
    invoke-interface {p2}, Lcom/android/internal/onehand/IOneHandedModeListener;->onEnterOneHandedMode()V

    goto :goto_4

    .line 144
    :catch_0
    move-exception p2

    goto :goto_3

    .line 141
    :cond_4
    if-eqz v2, :cond_5

    .line 142
    invoke-interface {p2}, Lcom/android/internal/onehand/IOneHandedModeListener;->onExitFromOneHandedMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 144
    :goto_3
    nop

    .line 145
    const-string v3, "OneHandAnimator"

    const-string v4, "Error delivering one handed mode state changed."

    invoke-static {v3, v4, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 146
    :cond_5
    :goto_4
    nop

    .line 136
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 148
    :cond_6
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mOneHandedModeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 149
    sget-boolean p1, Lcom/android/server/wm/onehand/OneHandedAnimator;->LOCAL_DEBUG:Z

    if-eqz p1, :cond_7

    const-string p1, "OneHandAnimator"

    const-string p2, "finish"

    invoke-static {p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_7
    return-void
.end method

.method private prepareAnimationLocked(Lcom/android/server/wm/onehand/OneHandedMode;)V
    .locals 10

    .line 205
    nop

    .line 206
    nop

    .line 207
    nop

    .line 208
    nop

    .line 210
    nop

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mTransitTransformation:Landroid/view/animation/Transformation;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 216
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mTransitTransformation:Landroid/view/animation/Transformation;

    .line 218
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 219
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 221
    aget p1, v0, v1

    .line 222
    const/4 v4, 0x5

    aget v4, v0, v4

    .line 223
    aget v5, v0, v3

    .line 224
    const/4 v6, 0x4

    aget v0, v0, v6

    .line 225
    nop

    .line 244
    move v9, v4

    move v4, v0

    move v0, v9

    goto :goto_0

    .line 229
    :cond_0
    new-array v0, v1, [I

    .line 230
    new-array v4, v2, [F

    .line 231
    invoke-direct {p0, p1, v0, v4}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getTransformationArgsForModeLocked(Lcom/android/server/wm/onehand/OneHandedMode;[I[F)V

    .line 232
    aget p1, v0, v3

    int-to-float p1, p1

    .line 233
    aget v0, v0, v2

    int-to-float v0, v0

    .line 234
    aget v5, v4, v3

    .line 235
    aget v4, v4, v3

    .line 236
    new-instance v6, Landroid/view/animation/Transformation;

    invoke-direct {v6}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v6, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mTransitTransformation:Landroid/view/animation/Transformation;

    .line 238
    iget-object v6, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mTransitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    .line 239
    invoke-virtual {v6, v5, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 240
    iget-object v6, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mTransitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    .line 241
    invoke-virtual {v6, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 244
    :goto_0
    new-array v1, v1, [I

    .line 245
    new-array v6, v2, [F

    .line 247
    iget-object v7, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mMode:Lcom/android/server/wm/onehand/OneHandedMode;

    invoke-direct {p0, v7, v1, v6}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getTransformationArgsForModeLocked(Lcom/android/server/wm/onehand/OneHandedMode;[I[F)V

    .line 249
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    aget v8, v1, v3

    int-to-float v8, v8

    aget v1, v1, v2

    int-to-float v1, v1

    invoke-direct {v7, p1, v8, v0, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 252
    new-instance p1, Landroid/view/animation/ScaleAnimation;

    aget v0, v6, v3

    aget v1, v6, v3

    invoke-direct {p1, v5, v0, v4, v1}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 255
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 256
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 257
    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 259
    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 260
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 262
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget p1, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 263
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 264
    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 265
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->start()V

    .line 272
    iput-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mTransitAnimation:Landroid/view/animation/Animation;

    .line 273
    return-void
.end method

.method private registerAccessibilityServicesStateChangeListener()V
    .locals 3

    .line 592
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 593
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 594
    new-instance v1, Lcom/android/server/wm/onehand/OneHandedAnimator$8;

    invoke-direct {v1, p0}, Lcom/android/server/wm/onehand/OneHandedAnimator$8;-><init>(Lcom/android/server/wm/onehand/OneHandedAnimator;)V

    iget-object v2, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mH:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;Landroid/os/Handler;)V

    .line 604
    return-void
.end method

.method private registerMagnificationSettingsObserver()V
    .locals 5

    .line 573
    new-instance v0, Lcom/android/server/wm/onehand/OneHandedAnimator$7;

    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mH:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/onehand/OneHandedAnimator$7;-><init>(Lcom/android/server/wm/onehand/OneHandedAnimator;Landroid/os/Handler;)V

    .line 583
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_magnification_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 586
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 589
    return-void
.end method

.method private registerObservers()V
    .locals 5

    .line 412
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wm/onehand/OneHandedAnimator$3;

    iget-object v2, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mH:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/onehand/OneHandedAnimator$3;-><init>(Lcom/android/server/wm/onehand/OneHandedAnimator;Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lcom/android/server/wm/onehand/OneHandedSettings;->registerFeatureEnableDisableObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 424
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->registerUserSetupCompleteObserver()V

    .line 425
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->registerMagnificationSettingsObserver()V

    .line 426
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->registerAccessibilityServicesStateChangeListener()V

    .line 428
    new-instance v0, Lcom/android/server/wm/onehand/OneHandedAnimator$4;

    invoke-direct {v0, p0}, Lcom/android/server/wm/onehand/OneHandedAnimator$4;-><init>(Lcom/android/server/wm/onehand/OneHandedAnimator;)V

    .line 519
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 520
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 521
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 522
    const-string v2, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 523
    const-string v2, "com.android.server.wm.onehand.intent.action.ONEHAND_TRIGGER_EVENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 524
    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 525
    iget-object v2, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mH:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 528
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/onehand/OneHandedAnimator$5;

    invoke-direct {v1, p0}, Lcom/android/server/wm/onehand/OneHandedAnimator$5;-><init>(Lcom/android/server/wm/onehand/OneHandedAnimator;)V

    const-string v2, "OneHandAnimator"

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    goto :goto_0

    .line 549
    :catch_0
    move-exception v0

    .line 550
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 552
    :goto_0
    return-void
.end method

.method private registerUserSetupCompleteObserver()V
    .locals 5

    .line 555
    new-instance v0, Lcom/android/server/wm/onehand/OneHandedAnimator$6;

    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mH:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/onehand/OneHandedAnimator$6;-><init>(Lcom/android/server/wm/onehand/OneHandedAnimator;Landroid/os/Handler;)V

    .line 567
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 570
    return-void
.end method

.method private scheduleWindowAnimationLocked()V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mWindowManager:Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$IWindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$IWindowManagerFuncs;->scheduleAnimation()V

    .line 300
    return-void
.end method

.method private updateDefaultDisplayInfoLocked()Z
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 160
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method private updateIsRacedAccessibilityEnabled()V
    .locals 1

    .line 627
    nop

    .line 628
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->isAccessibilityDisplayMagnificationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 629
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->isAccessibilityDisplayMagnificationNavbarEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 630
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->isRacedAccessibilityServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mIsRacedAccessibilityEnabled:Z

    .line 631
    return-void
.end method

.method private updatePointerMappingParametersLocked()V
    .locals 11

    .line 758
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mInputManager:Landroid/hardware/input/InputManagerInternal;

    if-nez v0, :cond_0

    .line 761
    return-void

    .line 764
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mPointerMappingSuspended:Z

    if-nez v0, :cond_7

    .line 765
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 766
    const/4 v1, 0x1

    new-array v2, v1, [F

    .line 768
    iget-object v3, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mMode:Lcom/android/server/wm/onehand/OneHandedMode;

    invoke-direct {p0, v3, v0, v2}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getTransformationArgsForModeLocked(Lcom/android/server/wm/onehand/OneHandedMode;[I[F)V

    .line 774
    iget-object v4, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mInputManager:Landroid/hardware/input/InputManagerInternal;

    const/4 v3, 0x0

    aget v5, v0, v3

    neg-int v5, v5

    aget v6, v0, v1

    neg-int v6, v6

    aget v7, v2, v3

    const/high16 v10, 0x3f800000    # 1.0f

    div-float v7, v10, v7

    iget-object v8, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v8, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v9, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v9, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/input/InputManagerInternal;->updatePointerMappingParameters(IIFII)V

    .line 779
    aget v4, v0, v3

    neg-int v4, v4

    iput v4, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mInputLastOffsetX:I

    .line 780
    aget v0, v0, v1

    neg-int v0, v0

    iput v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mInputLastOffsetY:I

    .line 781
    aget v0, v2, v3

    div-float v0, v10, v0

    iput v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mInputLastScale:F

    .line 783
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mH:Landroid/os/Handler;

    const/16 v4, 0x577

    if-eqz v0, :cond_3

    aget v0, v2, v3

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_1

    goto :goto_0

    .line 789
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/onehand/OneHandedAnimator;->LOCAL_DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "OneHandAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SendEmptyMessage to set isOnehandTurnedOn false scale[0]: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mH:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 792
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mH:Landroid/os/Handler;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 784
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/android/server/wm/onehand/OneHandedAnimator;->LOCAL_DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "OneHandAnimator"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mH: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mH:Landroid/os/Handler;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " set isOnehandTurnedOn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v3

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_4

    move v6, v1

    goto :goto_1

    :cond_4
    move v6, v3

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " scale[0]: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_5
    aget v0, v2, v3

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->isOnehandTurnedOn:Z

    .line 787
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mH:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 797
    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 835
    const-string v0, "  Persisted Settings:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 836
    const-string v0, " enabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/wm/onehand/OneHandedSettings;->isFeatureEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 837
    const-string v0, " xadj="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wm/onehand/OneHandedSettings;->getSavedXAdj(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 838
    const-string v0, " yadj="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/server/wm/onehand/OneHandedSettings;->getSavedYAdj(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 839
    const-string v0, " scale="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getSavedShrinkingScale()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 840
    const-string v0, " gravity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mContext:Landroid/content/Context;

    const/16 v1, 0x53

    invoke-static {v0, v1}, Lcom/android/server/wm/onehand/OneHandedSettings;->getSavedGravity(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 842
    const-string v0, "  Current Mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mMode:Lcom/android/server/wm/onehand/OneHandedMode;

    invoke-virtual {v0}, Lcom/android/server/wm/onehand/OneHandedMode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 843
    const-string v0, "  Current input pointer mapping:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 844
    const-string v0, " offsetX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mInputLastOffsetX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 845
    const-string v0, " offsetY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mInputLastOffsetY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 846
    const-string v0, " Scale="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mInputLastScale:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 848
    invoke-virtual {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getTransformation()Landroid/view/animation/Transformation;

    move-result-object v0

    .line 849
    const-string v1, "  Last transformation:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 851
    const-string v0, "  Internal status:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 852
    const-string v0, "    mPointerMappingSuspended="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mPointerMappingSuspended:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 853
    const-string v0, "    mDefaultDisplayInfo="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    const-string v0, "    mIsRacedAccessibilityEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mIsRacedAccessibilityEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 855
    const-string v0, "    Number of listeners="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mOneHandedModeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 857
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mPanel:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 858
    return-void
.end method

.method getOneHandMode()Lcom/android/server/wm/onehand/OneHandedMode;
    .locals 2

    .line 800
    new-instance v0, Lcom/android/server/wm/onehand/OneHandedMode;

    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mMode:Lcom/android/server/wm/onehand/OneHandedMode;

    invoke-direct {v0, v1}, Lcom/android/server/wm/onehand/OneHandedMode;-><init>(Lcom/android/server/wm/onehand/OneHandedMode;)V

    return-object v0
.end method

.method getSavedShrinkingScale()F
    .locals 3

    .line 819
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getSyncRoot()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 820
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mContext:Landroid/content/Context;

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-static {v1, v2}, Lcom/android/server/wm/onehand/OneHandedSettings;->getSavedScale(Landroid/content/Context;F)F

    move-result v1

    monitor-exit v0

    return v1

    .line 821
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getTransformation()Landroid/view/animation/Transformation;
    .locals 2

    .line 338
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getSyncRoot()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 339
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getTransformationLocked()Landroid/view/animation/Transformation;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 340
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getTransformationArgsForMode(Lcom/android/server/wm/onehand/OneHandedMode;[I[FII)V
    .locals 9

    .line 313
    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 316
    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 320
    new-instance v5, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {v5, v0, v0, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 323
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandedMode;->getScale()F

    move-result p5

    mul-float/2addr p4, p5

    const/high16 p5, 0x3f000000    # 0.5f

    add-float/2addr p4, p5

    float-to-int v3, p4

    .line 324
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandedMode;->getScale()F

    move-result v2

    mul-float/2addr p4, v2

    add-float/2addr p4, p5

    float-to-int v4, p4

    .line 326
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 327
    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandedMode;->getGravity()I

    move-result v2

    iget v6, p1, Lcom/android/server/wm/onehand/OneHandedMode;->xAdj:I

    iget v7, p1, Lcom/android/server/wm/onehand/OneHandedMode;->yAdj:I

    move-object v8, p4

    invoke-static/range {v2 .. v8}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 330
    iget p5, p4, Landroid/graphics/Rect;->left:I

    aput p5, p2, v0

    .line 331
    iget p4, p4, Landroid/graphics/Rect;->top:I

    aput p4, p2, v1

    .line 332
    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandedMode;->getScale()F

    move-result p1

    aput p1, p3, v0

    .line 335
    return-void

    .line 317
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Wrong array size"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 314
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Wrong array size"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method isOneHandedModeAvailable()Z
    .locals 2

    .line 808
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getSyncRoot()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 809
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/wm/onehand/OneHandedSettings;->isFeatureEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 810
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 813
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->updateDefaultDisplayInfoLocked()Z

    .line 814
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->isOneHandedModeAvailableLocked()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 815
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method notifyOutSideScreenTouch(II)V
    .locals 1

    .line 804
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mPanel:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->notifyOutsideScreenTouch(II)V

    .line 805
    return-void
.end method

.method registerOneHandedModeListener(Lcom/android/internal/onehand/IOneHandedModeListener;)V
    .locals 3

    .line 825
    sget-boolean v0, Lcom/android/server/wm/onehand/OneHandedAnimator;->LOCAL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OneHandAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerOneHandedModeListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/internal/onehand/IOneHandedModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mOneHandedModeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 827
    return-void
.end method

.method setOneHandedMode(Lcom/android/server/wm/onehand/OneHandedMode;Z)Z
    .locals 6

    .line 688
    if-nez p1, :cond_0

    .line 689
    new-instance p1, Lcom/android/server/wm/onehand/OneHandedMode;

    invoke-direct {p1}, Lcom/android/server/wm/onehand/OneHandedMode;-><init>()V

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/wm/onehand/OneHandedSettings;->isFeatureEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 693
    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandedMode;->isOffMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 696
    return v1

    .line 699
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getSyncRoot()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 700
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mMode:Lcom/android/server/wm/onehand/OneHandedMode;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/onehand/OneHandedMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 702
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->updateDefaultDisplayInfoLocked()Z

    .line 704
    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandedMode;->isOffMode()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->isOneHandedModeAvailableLocked()Z

    move-result v2

    if-nez v2, :cond_2

    .line 705
    monitor-exit v0

    return v1

    .line 708
    :cond_2
    new-instance v2, Lcom/android/server/wm/onehand/OneHandedMode;

    iget-object v3, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mMode:Lcom/android/server/wm/onehand/OneHandedMode;

    invoke-direct {v2, v3}, Lcom/android/server/wm/onehand/OneHandedMode;-><init>(Lcom/android/server/wm/onehand/OneHandedMode;)V

    .line 710
    invoke-virtual {v2}, Lcom/android/server/wm/onehand/OneHandedMode;->isOffMode()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandedMode;->isOffMode()Z

    move-result v3

    if-nez v3, :cond_4

    .line 711
    iget-object v3, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v4, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v5, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mH:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 712
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->updateDefaultDisplayInfoLocked()Z

    move-result v3

    if-nez v3, :cond_3

    .line 713
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object p2, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 714
    monitor-exit v0

    return v1

    .line 716
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mPanel:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-virtual {v1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->install()V

    .line 719
    :cond_4
    invoke-virtual {v2}, Lcom/android/server/wm/onehand/OneHandedMode;->isOffMode()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandedMode;->isOffMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 720
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v1, v3}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 721
    if-eqz p2, :cond_5

    .line 722
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mPanel:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-virtual {v1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->remove()V

    .line 726
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mMode:Lcom/android/server/wm/onehand/OneHandedMode;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/onehand/OneHandedMode;->set(Lcom/android/server/wm/onehand/OneHandedMode;)V

    .line 728
    if-nez p2, :cond_6

    .line 729
    invoke-direct {p0, v2}, Lcom/android/server/wm/onehand/OneHandedAnimator;->prepareAnimationLocked(Lcom/android/server/wm/onehand/OneHandedMode;)V

    .line 732
    :cond_6
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->scheduleWindowAnimationLocked()V

    .line 734
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->updatePointerMappingParametersLocked()V

    .line 736
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mMode:Lcom/android/server/wm/onehand/OneHandedMode;

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/onehand/OneHandedAnimator;->notifyModeChange(Lcom/android/server/wm/onehand/OneHandedMode;Lcom/android/server/wm/onehand/OneHandedMode;)V

    .line 738
    :cond_7
    monitor-exit v0

    .line 739
    const/4 p1, 0x1

    return p1

    .line 738
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method stepAnimationInTransaction(J)Z
    .locals 3

    .line 279
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getSyncRoot()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 280
    const/4 v1, 0x0

    .line 281
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mTransitAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mTransitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 283
    iget-object v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mTransitAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mTransitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v1

    .line 285
    if-nez v1, :cond_0

    .line 286
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mTransitAnimation:Landroid/view/animation/Animation;

    .line 287
    iput-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mTransitTransformation:Landroid/view/animation/Transformation;

    .line 289
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mMode:Lcom/android/server/wm/onehand/OneHandedMode;

    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandedMode;->isOffMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 290
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mPanel:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    invoke-virtual {p1}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->remove()V

    .line 294
    :cond_0
    monitor-exit v0

    return v1

    .line 295
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method suspendPointerMappingUpgration()V
    .locals 2

    .line 743
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getSyncRoot()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 744
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mPointerMappingSuspended:Z

    .line 746
    monitor-exit v0

    .line 747
    return-void

    .line 746
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method unregisterOneHandedModeListener(Lcom/android/internal/onehand/IOneHandedModeListener;)V
    .locals 3

    .line 830
    sget-boolean v0, Lcom/android/server/wm/onehand/OneHandedAnimator;->LOCAL_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OneHandAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterOneHandedModeListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/internal/onehand/IOneHandedModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mOneHandedModeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 832
    return-void
.end method

.method unsuspendPointerMappingUpgration()V
    .locals 2

    .line 750
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getSyncRoot()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 752
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/onehand/OneHandedAnimator;->mPointerMappingSuspended:Z

    .line 753
    invoke-direct {p0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->updatePointerMappingParametersLocked()V

    .line 754
    monitor-exit v0

    .line 755
    return-void

    .line 754
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
