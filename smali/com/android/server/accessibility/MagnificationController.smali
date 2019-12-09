.class public Lcom/android/server/accessibility/MagnificationController;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MagnificationController$SettingsBridge;,
        Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;,
        Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_SET_MAGNIFICATION_SPEC:Z = false

.field private static final DEFAULT_MAGNIFICATION_SCALE:F = 2.0f

.field private static final INVALID_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "MagnificationController"

.field public static final MAX_SCALE:F = 5.0f

.field public static final MIN_SCALE:F = 1.0f

.field private static final MSG_ON_MAGNIFIED_BOUNDS_CHANGED:I = 0x3

.field private static final MSG_ON_RECTANGLE_ON_SCREEN_REQUESTED:I = 0x4

.field private static final MSG_ON_USER_CONTEXT_CHANGED:I = 0x5

.field private static final MSG_SCREEN_TURNED_OFF:I = 0x2

.field private static final MSG_SEND_SPEC_TO_ANIMATION:I = 0x1


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

.field private mHandler:Landroid/os/Handler;

.field private mIdOfLastServiceToMagnify:I

.field private final mLock:Ljava/lang/Object;

.field private final mMagnificationBounds:Landroid/graphics/Rect;

.field private final mMagnificationRegion:Landroid/graphics/Region;

.field private final mMainThreadId:J

.field mRegistered:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

.field private final mSettingsBridge:Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

.field private final mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private mUnregisterPending:Z

.field private mUserId:I

.field private final mWMCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)V
    .locals 9

    .line 148
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/wm/WindowManagerInternal;

    new-instance v7, Landroid/animation/ValueAnimator;

    invoke-direct {v7}, Landroid/animation/ValueAnimator;-><init>()V

    new-instance v8, Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/android/server/accessibility/MagnificationController$SettingsBridge;-><init>(Landroid/content/ContentResolver;)V

    .line 148
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/accessibility/MagnificationController;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/os/Handler;Lcom/android/server/wm/WindowManagerInternal;Landroid/animation/ValueAnimator;Lcom/android/server/accessibility/MagnificationController$SettingsBridge;)V

    .line 150
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationController;->mHandler:Landroid/os/Handler;

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;Landroid/os/Handler;Lcom/android/server/wm/WindowManagerInternal;Landroid/animation/ValueAnimator;Lcom/android/server/accessibility/MagnificationController$SettingsBridge;)V
    .locals 6

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 86
    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect:Landroid/graphics/Rect;

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect1:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Lcom/android/server/accessibility/MagnificationController$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/MagnificationController$1;-><init>(Lcom/android/server/accessibility/MagnificationController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWMCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    .line 161
    iput-object p4, p0, Lcom/android/server/accessibility/MagnificationController;->mHandler:Landroid/os/Handler;

    .line 162
    iput-object p5, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-virtual {p4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Thread;->getId()J

    move-result-wide p4

    iput-wide p4, p0, Lcom/android/server/accessibility/MagnificationController;->mMainThreadId:J

    .line 164
    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 165
    new-instance p2, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-direct {p2, p1, p0}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;)V

    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    .line 166
    iput-object p3, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    .line 167
    new-instance p2, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/wm/WindowManagerInternal;Landroid/animation/ValueAnimator;Lcom/android/server/accessibility/MagnificationController$1;)V

    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    .line 169
    iput-object p7, p0, Lcom/android/server/accessibility/MagnificationController;->mSettingsBridge:Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/MagnificationController;)Landroid/os/Handler;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/server/accessibility/MagnificationController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/accessibility/MagnificationController;)Lcom/android/server/accessibility/MagnificationController$SettingsBridge;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/server/accessibility/MagnificationController;->mSettingsBridge:Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/MagnificationController;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onScreenTurnedOff()V

    return-void
.end method

.method private getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V
    .locals 3

    .line 716
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getSentScale()F

    move-result v0

    .line 717
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getSentOffsetX()F

    move-result v1

    .line 718
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getSentOffsetY()F

    move-result v2

    .line 719
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationController;->getMagnificationBounds(Landroid/graphics/Rect;)V

    .line 720
    neg-float v1, v1

    float-to-int v1, v1

    neg-float v2, v2

    float-to-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 721
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 722
    return-void
.end method

.method private getMinOffsetXLocked()F
    .locals 2

    .line 667
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 668
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v0

    sub-float/2addr v0, v1

    return v0
.end method

.method private getMinOffsetYLocked()F
    .locals 2

    .line 672
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 673
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v0

    sub-float/2addr v0, v1

    return v0
.end method

.method private getSentOffsetX()F
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->access$200(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    return v0
.end method

.method private getSentOffsetY()F
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->access$200(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    return v0
.end method

.method private getSentScale()F
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->access$200(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    return v0
.end method

.method private onMagnificationChangedLocked()V
    .locals 5

    .line 567
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    .line 568
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterX()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterY()F

    move-result v4

    .line 567
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(Landroid/graphics/Region;FFF)V

    .line 569
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mUnregisterPending:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->unregisterInternalLocked()V

    .line 572
    :cond_0
    return-void
.end method

.method private onMagnificationRegionChanged(Landroid/graphics/Region;)V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-nez v1, :cond_0

    .line 245
    monitor-exit v0

    return-void

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 248
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 249
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 252
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget p1, p1, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/MagnificationController;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 254
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/accessibility/MagnificationController;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    .line 256
    :cond_1
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationChangedLocked()V

    .line 258
    :cond_2
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private onScreenTurnedOff()V
    .locals 2

    .line 781
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 782
    return-void
.end method

.method private requestRectangleOnScreen(IIII)V
    .locals 5

    .line 725
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 726
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect:Landroid/graphics/Rect;

    .line 727
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/MagnificationController;->getMagnificationBounds(Landroid/graphics/Rect;)V

    .line 728
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v1

    if-nez v1, :cond_0

    .line 729
    monitor-exit v0

    return-void

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect1:Landroid/graphics/Rect;

    .line 733
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/MagnificationController;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    .line 737
    sub-int v2, p3, p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    if-le v2, v3, :cond_2

    .line 739
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    .line 740
    if-nez v2, :cond_1

    .line 741
    iget p3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p3

    int-to-float p1, p1

    goto :goto_0

    .line 743
    :cond_1
    iget p1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p1

    int-to-float p1, p3

    .line 745
    :goto_0
    goto :goto_1

    :cond_2
    iget v2, v1, Landroid/graphics/Rect;->left:I

    if-ge p1, v2, :cond_3

    .line 746
    iget p3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p3

    int-to-float p1, p1

    goto :goto_1

    .line 747
    :cond_3
    iget p1, v1, Landroid/graphics/Rect;->right:I

    if-le p3, p1, :cond_4

    .line 748
    iget p1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p1

    int-to-float p1, p3

    goto :goto_1

    .line 750
    :cond_4
    nop

    .line 753
    move p1, v4

    :goto_1
    sub-int p3, p4, p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le p3, v2, :cond_5

    .line 754
    iget p3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p3

    int-to-float v4, p2

    goto :goto_2

    .line 755
    :cond_5
    iget p3, v1, Landroid/graphics/Rect;->top:I

    if-ge p2, p3, :cond_6

    .line 756
    iget p3, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p3

    int-to-float v4, p2

    goto :goto_2

    .line 757
    :cond_6
    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    if-le p4, p2, :cond_7

    .line 758
    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, p2

    int-to-float v4, p4

    goto :goto_2

    .line 760
    :cond_7
    nop

    .line 763
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result p2

    .line 764
    mul-float/2addr p1, p2

    mul-float/2addr v4, p2

    const/4 p2, -0x1

    invoke-virtual {p0, p1, v4, p2}, Lcom/android/server/accessibility/MagnificationController;->offsetMagnifiedRegion(FFI)V

    .line 765
    monitor-exit v0

    .line 766
    return-void

    .line 765
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private resetLocked(Z)Z
    .locals 3

    .line 409
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-nez v0, :cond_0

    .line 410
    const/4 p1, 0x0

    return p1

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 413
    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v1

    .line 414
    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 415
    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->clear()V

    .line 416
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationChangedLocked()V

    .line 418
    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    .line 419
    invoke-direct {p0, v0, p1}, Lcom/android/server/accessibility/MagnificationController;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    .line 420
    return v1
.end method

.method private sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V
    .locals 4

    .line 772
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMainThreadId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->updateSentSpecMainThread(Landroid/view/MagnificationSpec;Z)V

    goto :goto_0

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 776
    const/4 v2, 0x0

    .line 775
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 776
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 778
    :goto_0
    return-void
.end method

.method private setScaleAndCenterLocked(FFFZI)Z
    .locals 0

    .line 521
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationController;->updateMagnificationSpecLocked(FFF)Z

    move-result p1

    .line 522
    iget-object p2, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0, p2, p4}, Lcom/android/server/accessibility/MagnificationController;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    .line 523
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, -0x1

    if-eq p5, p2, :cond_0

    .line 524
    iput p5, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    .line 526
    :cond_0
    return p1
.end method

.method private unregisterInternalLocked()V
    .locals 3

    .line 218
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    .line 220
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->unregister()V

    .line 221
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationCallbacks(Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)V

    .line 222
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 223
    iput-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    .line 225
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUnregisterPending:Z

    .line 226
    return-void
.end method

.method private updateCurrentSpecWithOffsetsLocked(FF)Z
    .locals 3

    .line 652
    nop

    .line 653
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getMinOffsetXLocked()F

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    .line 654
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput p1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    .line 656
    nop

    .line 658
    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getMinOffsetYLocked()F

    move-result v0

    invoke-static {p2, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p2

    .line 659
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_1

    .line 660
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput p2, p1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 661
    nop

    .line 663
    move p1, v2

    :cond_1
    return p1
.end method

.method private updateMagnificationSpecLocked(FFF)Z
    .locals 4

    .line 614
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterX()F

    move-result p2

    .line 617
    :cond_0
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterY()F

    move-result p3

    .line 620
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 621
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result p1

    .line 625
    :cond_2
    const/4 v0, 0x0

    .line 627
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {p1, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    .line 628
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->scale:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    .line 629
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iput p1, v0, Landroid/view/MagnificationSpec;->scale:F

    .line 630
    const/4 v0, 0x1

    .line 633
    :cond_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    mul-float/2addr p2, p1

    sub-float/2addr v1, p2

    .line 635
    iget-object p2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v2

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr p2, v2

    mul-float/2addr p3, p1

    sub-float/2addr p2, p3

    .line 637
    invoke-direct {p0, v1, p2}, Lcom/android/server/accessibility/MagnificationController;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result p1

    or-int/2addr p1, v0

    .line 639
    if-eqz p1, :cond_4

    .line 640
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationChangedLocked()V

    .line 643
    :cond_4
    return p1
.end method


# virtual methods
.method public getCenterX()F
    .locals 3

    .line 331
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 333
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getOffsetX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result v2

    div-float/2addr v1, v2

    monitor-exit v0

    .line 332
    return v1

    .line 334
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCenterY()F
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 356
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getOffsetY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result v2

    div-float/2addr v1, v2

    monitor-exit v0

    .line 355
    return v1

    .line 357
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIdOfLastServiceToMagnify()I
    .locals 1

    .line 563
    iget v0, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    return v0
.end method

.method public getMagnificationBounds(Landroid/graphics/Rect;)V
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 287
    monitor-exit v0

    .line 288
    return-void

    .line 287
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getMagnificationRegion(Landroid/graphics/Region;)V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 300
    monitor-exit v0

    .line 301
    return-void

    .line 300
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getOffsetX()F
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    return v0
.end method

.method public getPersistedScale()F
    .locals 2

    .line 598
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSettingsBridge:Lcom/android/server/accessibility/MagnificationController$SettingsBridge;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController$SettingsBridge;->getMagnificationScale(I)F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 785
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 811
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(Z)Z

    goto :goto_1

    .line 802
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 803
    iget v0, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 804
    iget v1, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 805
    iget v3, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 806
    iget v4, p1, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 807
    invoke-direct {p0, v0, v1, v3, v4}, Lcom/android/server/accessibility/MagnificationController;->requestRectangleOnScreen(IIII)V

    .line 808
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 809
    goto :goto_1

    .line 795
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 796
    iget-object v0, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Region;

    .line 797
    invoke-direct {p0, v0}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationRegionChanged(Landroid/graphics/Region;)V

    .line 798
    invoke-virtual {v0}, Landroid/graphics/Region;->recycle()V

    .line 799
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 800
    goto :goto_1

    .line 792
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(Z)Z

    .line 793
    goto :goto_1

    .line 787
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_0

    .line 788
    move v1, v2

    goto :goto_0

    .line 787
    :cond_0
    nop

    .line 788
    :goto_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/MagnificationSpec;

    .line 789
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->updateSentSpecMainThread(Landroid/view/MagnificationSpec;Z)V

    .line 790
    nop

    .line 814
    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isMagnifying()Z
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRegisteredLocked()Z
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    return v0
.end method

.method public magnificationRegionContains(FF)Z
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 273
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public offsetMagnifiedRegion(FFI)V
    .locals 2

    .line 540
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-nez v1, :cond_0

    .line 542
    monitor-exit v0

    return-void

    .line 545
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v1, p1

    .line 546
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget p1, p1, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr p1, p2

    .line 547
    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/MagnificationController;->updateCurrentSpecWithOffsetsLocked(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 548
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationChangedLocked()V

    .line 550
    :cond_1
    const/4 p1, -0x1

    if-eq p3, p1, :cond_2

    .line 551
    iput p3, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    .line 553
    :cond_2
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/MagnificationController;->sendSpecToAnimation(Landroid/view/MagnificationSpec;Z)V

    .line 554
    monitor-exit v0

    .line 555
    return-void

    .line 554
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public persistScale()V
    .locals 3

    .line 578
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    .line 579
    iget v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    .line 581
    new-instance v2, Lcom/android/server/accessibility/MagnificationController$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/accessibility/MagnificationController$2;-><init>(Lcom/android/server/accessibility/MagnificationController;FI)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 587
    invoke-virtual {v2, v0}, Lcom/android/server/accessibility/MagnificationController$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 588
    return-void
.end method

.method public register()V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-nez v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->register()V

    .line 183
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mWMCallbacks:Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationCallbacks(Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)V

    .line 184
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    .line 186
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerInternal;->getMagnificationRegion(Landroid/graphics/Region;)V

    .line 187
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 188
    iput-boolean v2, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    .line 190
    :cond_0
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reset(Z)Z
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 404
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationController;->resetLocked(Z)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 405
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method resetIfNeeded(Z)Z
    .locals 2

    .line 700
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 701
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 702
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z

    .line 703
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 705
    :cond_0
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 706
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCenter(FFZI)Z
    .locals 7

    .line 479
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 480
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-nez v1, :cond_0

    .line 481
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 483
    :cond_0
    const/high16 v2, 0x7fc00000    # Float.NaN

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenterLocked(FFFZI)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 484
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setForceShowMagnifiableBounds(Z)V
    .locals 1

    .line 710
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->setForceShowMagnifiableBounds(Z)V

    .line 713
    :cond_0
    return-void
.end method

.method public setScale(FFFZI)Z
    .locals 9

    .line 438
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 439
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-nez v1, :cond_0

    .line 440
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 443
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {p1, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v4

    .line 445
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect:Landroid/graphics/Rect;

    .line 446
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v1, p1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 447
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 448
    iget v2, v1, Landroid/view/MagnificationSpec;->scale:F

    .line 449
    nop

    .line 450
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    iget v6, v1, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v3, v6

    iget v6, p1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    div-float/2addr v3, v2

    .line 451
    nop

    .line 452
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v5

    iget v5, v1, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v6, v5

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    add-float/2addr v6, p1

    div-float/2addr v6, v2

    .line 453
    iget p1, v1, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr p2, p1

    div-float/2addr p2, v2

    .line 454
    iget p1, v1, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr p3, p1

    div-float/2addr p3, v2

    .line 455
    sub-float/2addr v3, p2

    div-float/2addr v2, v4

    mul-float/2addr v3, v2

    .line 456
    sub-float/2addr v6, p3

    mul-float/2addr v6, v2

    .line 457
    add-float v5, p2, v3

    .line 458
    add-float/2addr v6, p3

    .line 459
    iput p5, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    .line 460
    move-object v3, p0

    move v7, p4

    move v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenterLocked(FFFZI)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 461
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setScaleAndCenter(FFFZI)Z
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 506
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-nez v1, :cond_0

    .line 507
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 509
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenterLocked(FFFZI)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 510
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setUserId(I)V
    .locals 1

    .line 682
    iget v0, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    if-eq v0, p1, :cond_1

    .line 683
    iput p1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    .line 685
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 686
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 687
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z

    .line 689
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 691
    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MagnificationController{mCurrentMagnificationSpec="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnificationRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMagnificationBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIdOfLastServiceToMagnify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUnregisterPending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUnregisterPending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregister()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->unregisterInternalLocked()V

    goto :goto_0

    .line 202
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUnregisterPending:Z

    .line 203
    invoke-direct {p0, v1}, Lcom/android/server/accessibility/MagnificationController;->resetLocked(Z)Z

    .line 205
    :goto_0
    monitor-exit v0

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
