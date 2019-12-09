.class final Lcom/android/server/display/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/RampAnimator$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAnimatedValue:F

.field private mAnimating:Z

.field private final mAnimationCallback:Ljava/lang/Runnable;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCurrentValue:I

.field private mFirstTime:Z

.field private mLastFrameTimeNanos:J

.field private mListener:Lcom/android/server/display/RampAnimator$Listener;

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mRate:I

.field private mTargetValue:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty<",
            "TT;>;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 131
    new-instance v0, Lcom/android/server/display/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    .line 45
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    .line 46
    iput-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    .line 47
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/display/RampAnimator;)J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/server/display/RampAnimator;J)J
    .locals 0

    .line 27
    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/display/RampAnimator;)F
    .locals 0

    .line 27
    iget p0, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return p0
.end method

.method static synthetic access$202(Lcom/android/server/display/RampAnimator;F)F
    .locals 0

    .line 27
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/display/RampAnimator;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/display/RampAnimator;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/display/RampAnimator;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return p0
.end method

.method static synthetic access$502(Lcom/android/server/display/RampAnimator;I)I
    .locals 0

    .line 27
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/display/RampAnimator;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/display/RampAnimator;Z)Z
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return p1
.end method

.method private cancelAnimationCallback()V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method private postAnimationCallback()V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lcom/android/server/display/RampAnimator;->mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 125
    return-void
.end method


# virtual methods
.method public animateTo(II)Z
    .locals 4

    .line 62
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_6

    if-lez p2, :cond_6

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 88
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    if-gt p2, v0, :cond_2

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-le v0, v3, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    iget v3, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt v0, v3, :cond_3

    iget v0, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-gt v0, p1, :cond_3

    .line 92
    :cond_2
    iput p2, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    .line 95
    :cond_3
    iget p2, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    if-eq p2, p1, :cond_4

    .line 96
    move v2, v1

    goto :goto_0

    .line 95
    :cond_4
    nop

    .line 96
    :goto_0
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    .line 99
    iget-boolean p2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-nez p2, :cond_5

    iget p2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq p1, p2, :cond_5

    .line 100
    iput-boolean v1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 101
    iget p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    int-to-float p1, p1

    iput p1, p0, Lcom/android/server/display/RampAnimator;->mAnimatedValue:F

    .line 102
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J

    .line 103
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->postAnimationCallback()V

    .line 106
    :cond_5
    return v2

    .line 63
    :cond_6
    :goto_1
    iget-boolean p2, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    if-nez p2, :cond_8

    iget p2, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    if-eq p1, p2, :cond_7

    goto :goto_2

    .line 78
    :cond_7
    return v2

    .line 64
    :cond_8
    :goto_2
    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mFirstTime:Z

    .line 65
    iput v2, p0, Lcom/android/server/display/RampAnimator;->mRate:I

    .line 66
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mTargetValue:I

    .line 67
    iput p1, p0, Lcom/android/server/display/RampAnimator;->mCurrentValue:I

    .line 68
    iget-object p2, p0, Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;

    iget-object v0, p0, Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;

    invoke-virtual {p2, v0, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 69
    iget-boolean p1, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    if-eqz p1, :cond_9

    .line 70
    iput-boolean v2, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    .line 71
    invoke-direct {p0}, Lcom/android/server/display/RampAnimator;->cancelAnimationCallback()V

    .line 73
    :cond_9
    iget-object p1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    if-eqz p1, :cond_a

    .line 74
    iget-object p1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-interface {p1}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    .line 76
    :cond_a
    return v1
.end method

.method public isAnimating()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/android/server/display/RampAnimator;->mAnimating:Z

    return v0
.end method

.method public setListener(Lcom/android/server/display/RampAnimator$Listener;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 121
    return-void
.end method
