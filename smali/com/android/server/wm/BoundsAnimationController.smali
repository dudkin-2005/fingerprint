.class public Lcom/android/server/wm/BoundsAnimationController;
.super Ljava/lang/Object;
.source "BoundsAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;,
        Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;,
        Lcom/android/server/wm/BoundsAnimationController$SchedulePipModeChangedState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_ANIMATION_SLOW_DOWN_FACTOR:I = 0x1

.field private static final DEBUG_LOCAL:Z = false

.field private static final DEFAULT_TRANSITION_DURATION:I = 0x1a9

.field public static final NO_PIP_MODE_CHANGED_CALLBACKS:I = 0x0

.field public static final SCHEDULE_PIP_MODE_CHANGED_ON_END:I = 0x2

.field public static final SCHEDULE_PIP_MODE_CHANGED_ON_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final WAIT_FOR_DRAW_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private final mAnimationHandler:Landroid/animation/AnimationHandler;

.field private final mAppTransition:Lcom/android/server/wm/AppTransition;

.field private final mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

.field private mChoreographer:Landroid/view/Choreographer;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFinishAnimationAfterTransition:Z

.field private final mHandler:Landroid/os/Handler;

.field private mRunningAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/BoundsAnimationTarget;",
            "Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    sput-boolean v0, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/AppTransition;Landroid/os/Handler;Landroid/animation/AnimationHandler;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transition"    # Lcom/android/server/wm/AppTransition;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "animationHandler"    # Landroid/animation/AnimationHandler;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    .line 113
    new-instance v0, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;-><init>(Lcom/android/server/wm/BoundsAnimationController;Lcom/android/server/wm/BoundsAnimationController$1;)V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    .line 123
    iput-object p3, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    .line 124
    iput-object p2, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 126
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 128
    iput-object p4, p0, Lcom/android/server/wm/BoundsAnimationController;->mAnimationHandler:Landroid/animation/AnimationHandler;

    .line 129
    if-eqz p4, :cond_41

    .line 131
    new-instance v0, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$dXxeGqbKxeDo9iKFwG9az5rUo3U;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$dXxeGqbKxeDo9iKFwG9az5rUo3U;-><init>(Lcom/android/server/wm/BoundsAnimationController;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p3, v0, v1, v2}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 133
    new-instance v0, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mChoreographer:Landroid/view/Choreographer;

    invoke-direct {v0, v1}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>(Landroid/view/Choreographer;)V

    invoke-virtual {p4, v0}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    .line 135
    :cond_41
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 56
    sget-boolean v0, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/BoundsAnimationController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/BoundsAnimationController;

    .line 56
    iget-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/wm/BoundsAnimationController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/BoundsAnimationController;
    .param p1, "x1"    # Z

    .line 56
    iput-boolean p1, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/wm/BoundsAnimationController;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/BoundsAnimationController;

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/BoundsAnimationController;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/BoundsAnimationController;

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/BoundsAnimationController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/BoundsAnimationController;

    .line 56
    invoke-direct {p0}, Lcom/android/server/wm/BoundsAnimationController;->updateBooster()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/BoundsAnimationController;)Lcom/android/server/wm/AppTransition;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/BoundsAnimationController;

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/BoundsAnimationController;)Landroid/animation/AnimationHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/BoundsAnimationController;

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAnimationHandler:Landroid/animation/AnimationHandler;

    return-object v0
.end method

.method public static synthetic lambda$MoVv_WhxoMrTVo-xz1qu2FMcYrM(Lcom/android/server/wm/BoundsAnimationController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/BoundsAnimationController;->resume()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/BoundsAnimationController;)V
    .registers 2

    .line 131
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method private resume()V
    .registers 3

    .line 479
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 480
    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    .line 481
    .local v1, "b":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    invoke-virtual {v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->resume()V

    .line 479
    .end local v1    # "b":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 483
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method private updateBooster()V
    .registers 3

    .line 486
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    .line 487
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    .line 486
    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->setBoundsAnimationRunning(Z)V

    .line 488
    return-void
.end method


# virtual methods
.method public animateBounds(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V
    .registers 8
    .param p1, "target"    # Lcom/android/server/wm/BoundsAnimationTarget;
    .param p2, "from"    # Landroid/graphics/Rect;
    .param p3, "to"    # Landroid/graphics/Rect;
    .param p4, "animationDuration"    # I
    .param p5, "schedulePipModeChangedState"    # I
    .param p6, "moveFromFullscreen"    # Z
    .param p7, "moveToFullscreen"    # Z

    .line 395
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/wm/BoundsAnimationController;->animateBoundsImpl(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    .line 397
    return-void
.end method

.method animateBoundsImpl(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    .registers 30
    .param p1, "target"    # Lcom/android/server/wm/BoundsAnimationTarget;
    .param p2, "from"    # Landroid/graphics/Rect;
    .param p3, "to"    # Landroid/graphics/Rect;
    .param p4, "animationDuration"    # I
    .param p5, "schedulePipModeChangedState"    # I
    .param p6, "moveFromFullscreen"    # Z
    .param p7, "moveToFullscreen"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v0, p5

    .line 403
    iget-object v3, v9, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    .line 404
    .local v12, "existing":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    const/4 v13, 0x1

    if-eqz v12, :cond_16

    move v3, v13

    goto :goto_17

    :cond_16
    const/4 v3, 0x0

    :goto_17
    move v14, v3

    .line 405
    .local v14, "replacing":Z
    const/4 v3, 0x0

    .line 408
    .local v3, "prevSchedulePipModeChangedState":I
    sget-boolean v4, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v4, :cond_56

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateBounds: target="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " from="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p2

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " schedulePipModeChangedState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " replacing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 412
    :cond_56
    move-object/from16 v15, p2

    :goto_58
    const/4 v8, 0x2

    if-eqz v14, :cond_f2

    .line 413
    invoke-virtual {v12, v11}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->isAnimatingTo(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_91

    if-eqz p7, :cond_69

    # getter for: Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z
    invoke-static {v12}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$800(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z

    move-result v4

    if-eqz v4, :cond_91

    :cond_69
    if-eqz p6, :cond_71

    .line 414
    # getter for: Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveFromFullscreen:Z
    invoke-static {v12}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$900(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z

    move-result v4

    if-eqz v4, :cond_91

    .line 418
    :cond_71
    sget-boolean v4, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v4, :cond_90

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateBounds: same destination and moveTo/From flags as existing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", ignoring..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_90
    return-object v12

    .line 424
    :cond_91
    # getter for: Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSchedulePipModeChangedState:I
    invoke-static {v12}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$1000(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v3

    .line 427
    # getter for: Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSchedulePipModeChangedState:I
    invoke-static {v12}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$1000(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v4

    if-ne v4, v13, :cond_b6

    .line 428
    if-ne v0, v13, :cond_a9

    .line 429
    sget-boolean v4, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v4, :cond_d7

    const-string v4, "WindowManager"

    const-string v5, "animateBounds: still animating to fullscreen, keep existing deferred state"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7

    .line 432
    :cond_a9
    sget-boolean v4, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v4, :cond_b4

    const-string v4, "WindowManager"

    const-string v5, "animateBounds: fullscreen animation canceled, callback on start already processed, schedule deferred update on end"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_b4
    const/4 v0, 0x2

    .end local p5    # "schedulePipModeChangedState":I
    .local v0, "schedulePipModeChangedState":I
    :goto_b5
    goto :goto_d7

    .line 436
    .end local v0    # "schedulePipModeChangedState":I
    .restart local p5    # "schedulePipModeChangedState":I
    :cond_b6
    # getter for: Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mSchedulePipModeChangedState:I
    invoke-static {v12}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$1000(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v4

    if-ne v4, v8, :cond_d7

    .line 437
    if-ne v0, v13, :cond_ca

    .line 438
    sget-boolean v4, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v4, :cond_d7

    const-string v4, "WindowManager"

    const-string v5, "animateBounds: non-fullscreen animation canceled, callback on start will be processed"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7

    .line 441
    :cond_ca
    sget-boolean v4, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v4, :cond_d5

    const-string v4, "WindowManager"

    const-string v5, "animateBounds: still animating from fullscreen, keep existing deferred state"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_d5
    const/4 v0, 0x2

    goto :goto_b5

    .line 449
    .end local p5    # "schedulePipModeChangedState":I
    .restart local v0    # "schedulePipModeChangedState":I
    :cond_d7
    :goto_d7
    if-nez p6, :cond_e4

    if-nez p7, :cond_e4

    .line 450
    # getter for: Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveToFullscreen:Z
    invoke-static {v12}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$800(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z

    move-result v2

    .line 451
    .end local p7    # "moveToFullscreen":Z
    .local v2, "moveToFullscreen":Z
    # getter for: Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->mMoveFromFullscreen:Z
    invoke-static {v12}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$900(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z

    move-result v1

    .end local p6    # "moveFromFullscreen":Z
    .local v1, "moveFromFullscreen":Z
    goto :goto_e8

    .line 455
    .end local v1    # "moveFromFullscreen":Z
    .end local v2    # "moveToFullscreen":Z
    .restart local p6    # "moveFromFullscreen":Z
    .restart local p7    # "moveToFullscreen":Z
    :cond_e4
    move/from16 v1, p6

    move/from16 v2, p7

    .end local p6    # "moveFromFullscreen":Z
    .end local p7    # "moveToFullscreen":Z
    .restart local v1    # "moveFromFullscreen":Z
    .restart local v2    # "moveToFullscreen":Z
    :goto_e8
    invoke-virtual {v12}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->cancel()V

    .line 457
    move/from16 v16, v0

    move/from16 v18, v1

    move/from16 v19, v2

    goto :goto_f8

    .end local v0    # "schedulePipModeChangedState":I
    .end local v1    # "moveFromFullscreen":Z
    .end local v2    # "moveToFullscreen":Z
    .restart local p5    # "schedulePipModeChangedState":I
    .restart local p6    # "moveFromFullscreen":Z
    .restart local p7    # "moveToFullscreen":Z
    :cond_f2
    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v16, v0

    .end local v3    # "prevSchedulePipModeChangedState":I
    .end local p5    # "schedulePipModeChangedState":I
    .end local p6    # "moveFromFullscreen":Z
    .end local p7    # "moveToFullscreen":Z
    .local v16, "schedulePipModeChangedState":I
    .local v17, "prevSchedulePipModeChangedState":I
    .local v18, "moveFromFullscreen":Z
    .local v19, "moveToFullscreen":Z
    :goto_f8
    move/from16 v17, v3

    new-instance v20, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    move-object/from16 v0, v20

    move-object v1, v9

    move-object v2, v10

    move-object v3, v15

    move-object v4, v11

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move v13, v8

    move/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;-><init>(Lcom/android/server/wm/BoundsAnimationController;Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V

    .line 460
    .local v0, "animator":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    iget-object v1, v9, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    new-array v1, v13, [F

    fill-array-data v1, :array_134

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setFloatValues([F)V

    .line 462
    const/4 v1, -0x1

    move/from16 v2, p4

    if-eq v2, v1, :cond_122

    .line 463
    move v1, v2

    goto :goto_124

    :cond_122
    const/16 v1, 0x1a9

    :goto_124
    const/4 v3, 0x1

    mul-int/2addr v1, v3

    int-to-long v3, v1

    .line 462
    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 464
    iget-object v1, v9, Lcom/android/server/wm/BoundsAnimationController;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 465
    invoke-virtual {v0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->start()V

    .line 466
    return-object v0

    nop

    :array_134
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .line 470
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onAllWindowsDrawn()V
    .registers 3

    .line 474
    sget-boolean v0, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "WindowManager"

    const-string/jumbo v1, "onAllWindowsDrawn:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$MoVv_WhxoMrTVo-xz1qu2FMcYrM;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$MoVv_WhxoMrTVo-xz1qu2FMcYrM;-><init>(Lcom/android/server/wm/BoundsAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 476
    return-void
.end method
