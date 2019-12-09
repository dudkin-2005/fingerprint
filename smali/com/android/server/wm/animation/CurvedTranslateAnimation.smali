.class public Lcom/android/server/wm/animation/CurvedTranslateAnimation;
.super Landroid/view/animation/Animation;
.source "CurvedTranslateAnimation.java"


# instance fields
.field private final mKeyframes:Landroid/animation/PathKeyframes;


# direct methods
.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 34
    invoke-static {p1}, Landroid/animation/KeyframeSet;->ofPath(Landroid/graphics/Path;)Landroid/animation/PathKeyframes;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/animation/CurvedTranslateAnimation;->mKeyframes:Landroid/animation/PathKeyframes;

    .line 35
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/android/server/wm/animation/CurvedTranslateAnimation;->mKeyframes:Landroid/animation/PathKeyframes;

    invoke-virtual {v0, p1}, Landroid/animation/PathKeyframes;->getValue(F)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    .line 40
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v0, p1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 41
    return-void
.end method
