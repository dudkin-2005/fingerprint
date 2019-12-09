.class public Lcom/android/server/wm/animation/ClipRectTBAnimation;
.super Landroid/view/animation/ClipRectAnimation;
.source "ClipRectTBAnimation.java"


# instance fields
.field private final mFromTranslateY:I

.field private mNormalizedTime:F

.field private final mToTranslateY:I

.field private final mTranslateInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(IIIIIILandroid/view/animation/Interpolator;)V
    .locals 10

    move-object v9, p0

    .line 44
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move v2, p1

    move v4, p2

    move v6, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ClipRectAnimation;-><init>(IIIIIIII)V

    .line 45
    move v0, p5

    iput v0, v9, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mFromTranslateY:I

    .line 46
    move/from16 v0, p6

    iput v0, v9, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mToTranslateY:I

    .line 47
    move-object/from16 v0, p7

    iput-object v0, v9, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mTranslateInterpolator:Landroid/view/animation/Interpolator;

    .line 48
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6

    .line 76
    iget-object v0, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mTranslateInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mNormalizedTime:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 77
    iget v1, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mFromTranslateY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mToTranslateY:I

    iget v3, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mFromTranslateY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 79
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 80
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mToRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    float-to-int v4, v4

    add-int/2addr v3, v4

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v0

    iget-object v0, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mToRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    add-int/2addr v4, p1

    invoke-virtual {p2, v2, v3, v1, v4}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    .line 84
    return-void
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 6

    .line 56
    invoke-virtual {p0}, Lcom/android/server/wm/animation/ClipRectTBAnimation;->getStartOffset()J

    move-result-wide v0

    .line 57
    invoke-virtual {p0}, Lcom/android/server/wm/animation/ClipRectTBAnimation;->getDuration()J

    move-result-wide v2

    .line 59
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/android/server/wm/animation/ClipRectTBAnimation;->getStartTime()J

    move-result-wide v4

    add-long/2addr v4, v0

    sub-long v0, p1, v4

    long-to-float v0, v0

    long-to-float v1, v2

    div-float/2addr v0, v1

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/animation/ClipRectTBAnimation;->getStartTime()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 66
    :goto_0
    iput v0, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mNormalizedTime:F

    .line 67
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/ClipRectAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result p1

    return p1
.end method
