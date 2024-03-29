.class public Lcom/android/server/wm/WindowAnimationSpec;
.super Ljava/lang/Object;
.source "WindowAnimationSpec.java"

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimationSpec$TmpValues;
    }
.end annotation


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private final mCanSkipFirstFrame:Z

.field private final mIsAppAnimation:Z

.field private final mPosition:Landroid/graphics/Point;

.field private final mStackBounds:Landroid/graphics/Rect;

.field private mStackClipMode:I

.field private final mThreadLocalTmps:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/server/wm/WindowAnimationSpec$TmpValues;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIZ)V
    .registers 10
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "position"    # Landroid/graphics/Point;
    .param p3, "stackBounds"    # Landroid/graphics/Rect;
    .param p4, "canSkipFirstFrame"    # Z
    .param p5, "stackClipMode"    # I
    .param p6, "isAppAnimation"    # Z

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mPosition:Landroid/graphics/Point;

    .line 48
    sget-object v0, Lcom/android/server/wm/-$$Lambda$WindowAnimationSpec$jKE7Phq2DESkeBondpaNPBLn6Cs;->INSTANCE:Lcom/android/server/wm/-$$Lambda$WindowAnimationSpec$jKE7Phq2DESkeBondpaNPBLn6Cs;

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mStackBounds:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    .line 62
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    .line 63
    if-eqz p2, :cond_2d

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mPosition:Landroid/graphics/Point;

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 66
    :cond_2d
    iput-boolean p4, p0, Lcom/android/server/wm/WindowAnimationSpec;->mCanSkipFirstFrame:Z

    .line 67
    iput-boolean p6, p0, Lcom/android/server/wm/WindowAnimationSpec;->mIsAppAnimation:Z

    .line 68
    iput p5, p0, Lcom/android/server/wm/WindowAnimationSpec;->mStackClipMode:I

    .line 69
    if-eqz p3, :cond_3a

    .line 70
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 72
    :cond_3a
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Z)V
    .registers 11
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .param p2, "position"    # Landroid/graphics/Point;
    .param p3, "canSkipFirstFrame"    # Z

    .line 56
    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Landroid/graphics/Rect;ZIZ)V

    .line 58
    return-void
.end method

.method private static findAlmostThereFraction(Landroid/view/animation/Interpolator;)F
    .registers 5
    .param p0, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 182
    const/high16 v0, 0x3f000000    # 0.5f

    .line 183
    .local v0, "val":F
    const/high16 v1, 0x3e800000    # 0.25f

    .line 184
    .local v1, "adj":F
    :goto_4
    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1d

    .line 185
    invoke-interface {p0, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    const v3, 0x3f7d70a4    # 0.99f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_18

    .line 186
    add-float/2addr v0, v1

    goto :goto_19

    .line 188
    :cond_18
    sub-float/2addr v0, v1

    .line 190
    :goto_19
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    goto :goto_4

    .line 192
    :cond_1d
    return v0
.end method

.method private static findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;
    .registers 5
    .param p0, "animation"    # Landroid/view/animation/Animation;

    .line 163
    instance-of v0, p0, Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_8

    .line 164
    move-object v0, p0

    check-cast v0, Landroid/view/animation/TranslateAnimation;

    return-object v0

    .line 165
    :cond_8
    instance-of v0, p0, Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_2f

    .line 166
    move-object v0, p0

    check-cast v0, Landroid/view/animation/AnimationSet;

    .line 167
    .local v0, "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 168
    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation;

    .line 169
    .local v2, "a":Landroid/view/animation/Animation;
    instance-of v3, v2, Landroid/view/animation/TranslateAnimation;

    if-eqz v3, :cond_2c

    .line 170
    move-object v3, v2

    check-cast v3, Landroid/view/animation/TranslateAnimation;

    return-object v3

    .line 167
    .end local v2    # "a":Landroid/view/animation/Animation;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 174
    .end local v0    # "set":Landroid/view/animation/AnimationSet;
    .end local v1    # "i":I
    :cond_2f
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$new$0()Lcom/android/server/wm/WindowAnimationSpec$TmpValues;
    .registers 2

    .line 48
    new-instance v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;-><init>(Lcom/android/server/wm/WindowAnimationSpec$1;)V

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .registers 9
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;
    .param p3, "currentPlayTime"    # J

    .line 96
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mThreadLocalTmps:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;

    .line 97
    .local v0, "tmp":Lcom/android/server/wm/WindowAnimationSpec$TmpValues;
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    .line 98
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p3, p4, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 99
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimationSpec;->mPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 100
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->floats:[F

    invoke-virtual {p1, p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 101
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v1

    invoke-virtual {p1, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 102
    iget v1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mStackClipMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4a

    .line 103
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_88

    .line 104
    :cond_4a
    iget v1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mStackClipMode:I

    if-nez v1, :cond_71

    .line 105
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimationSpec;->mStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 107
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimationSpec;->mPosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/server/wm/WindowAnimationSpec;->mPosition:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 108
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setFinalCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 109
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_88

    .line 111
    :cond_71
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowAnimationSpec;->mStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 112
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/android/server/wm/WindowAnimationSpec$TmpValues;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 113
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimationSpec;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 115
    :goto_88
    return-void
.end method

.method public calculateStatusBarTransitionStartTime()J
    .registers 7

    .line 119
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-static {v0}, Lcom/android/server/wm/WindowAnimationSpec;->findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    .line 120
    .local v0, "openTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    if-eqz v0, :cond_25

    .line 125
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowAnimationSpec;->findAlmostThereFraction(Landroid/view/animation/Interpolator;)F

    move-result v1

    .line 126
    .local v1, "t":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 127
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getStartOffset()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 128
    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->getDuration()J

    move-result-wide v4

    long-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x78

    sub-long/2addr v2, v4

    .line 126
    return-wide v2

    .line 131
    .end local v1    # "t":F
    :cond_25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public canSkipFirstFrame()Z
    .registers 2

    .line 137
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mCanSkipFirstFrame:Z

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 147
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public getBackgroundColor()I
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getDetachWallpaper()Z
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v0

    return v0
.end method

.method public getDuration()J
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getShowWallpaper()Z

    move-result v0

    return v0
.end method

.method public needsEarlyWakeup()Z
    .registers 2

    .line 142
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimationSpec;->mIsAppAnimation:Z

    return v0
.end method

.method public writeToProtoInner(Landroid/util/proto/ProtoOutputStream;)V
    .registers 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 152
    const-wide v0, 0x10b00000001L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 153
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimationSpec;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 154
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 155
    return-void
.end method
