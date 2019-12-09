.class Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpecAnimationBridge"
.end annotation


# instance fields
.field private mEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mEndMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mLock:Ljava/lang/Object;

.field private final mSentMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mStartMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mValueAnimator:Landroid/animation/ValueAnimator;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/wm/WindowManagerInternal;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 841
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 843
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 845
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 847
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

    .line 856
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    .line 861
    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    .line 862
    iput-object p3, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    .line 863
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0002

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    .line 865
    iput-object p4, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 866
    iget-object p3, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 867
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p3, 0x40200000    # 2.5f

    invoke-direct {p2, p3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 868
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 869
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 870
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/wm/WindowManagerInternal;Landroid/animation/ValueAnimator;Lcom/android/server/accessibility/MagnificationController$1;)V
    .locals 0

    .line 834
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/wm/WindowManagerInternal;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;
    .locals 0

    .line 834
    iget-object p0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object p0
.end method

.method private animateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, p1}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 920
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p1, v0}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 921
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 922
    return-void
.end method

.method private setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 908
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, p1}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 914
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 916
    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 926
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 927
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 928
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 929
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->scale:F

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->scale:F

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->scale:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, v1, Landroid/view/MagnificationSpec;->scale:F

    .line 931
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetX:F

    .line 934
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v2, v2, Landroid/view/MagnificationSpec;->offsetY:F

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetY:F

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, v1, Landroid/view/MagnificationSpec;->offsetY:F

    .line 937
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 938
    :try_start_1
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    .line 939
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 941
    :cond_0
    :goto_0
    monitor-exit v0

    .line 942
    return-void

    .line 941
    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 877
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 878
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    if-eq p1, v1, :cond_0

    .line 879
    iput-boolean p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    .line 880
    iget-boolean p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mEnabled:Z

    if-nez p1, :cond_0

    .line 881
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p1}, Landroid/view/MagnificationSpec;->clear()V

    .line 882
    iget-object p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationSpec(Landroid/view/MagnificationSpec;)V

    .line 885
    :cond_0
    monitor-exit v0

    .line 886
    return-void

    .line 885
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public updateSentSpecMainThread(Landroid/view/MagnificationSpec;Z)V
    .locals 2

    .line 889
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 895
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v1, p1}, Landroid/view/MagnificationSpec;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 896
    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 897
    if-eqz p2, :cond_1

    .line 898
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->animateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    goto :goto_0

    .line 900
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    .line 903
    :cond_2
    :goto_0
    monitor-exit v0

    .line 904
    return-void

    .line 903
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
