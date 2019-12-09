.class public Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;
.super Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;
.source "OneHandedAnimatorProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OneHandedAnimatorProxy"


# instance fields
.field private mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

.field private mWms:Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$IWindowManagerFuncs;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    .line 23
    iput-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;->mWms:Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$IWindowManagerFuncs;

    .line 25
    return-void
.end method


# virtual methods
.method public applyTransformationForRect(Landroid/graphics/Rect;)V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getTransformation()Landroid/view/animation/Transformation;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 45
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 46
    iget v0, v1, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 47
    iget v0, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 48
    iget v0, v1, Landroid/graphics/RectF;->right:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 49
    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 51
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 77
    invoke-virtual {p0}, Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;->shouldDump()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "ONE HANDED MINI-SCREEN SOLUTION (dumpsys window onehand)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/onehand/OneHandedAnimator;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method

.method public getShrinkingScale()F
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getSavedShrinkingScale()F

    move-result v0

    return v0

    .line 104
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getTransformation()Landroid/view/animation/Transformation;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getTransformation()Landroid/view/animation/Transformation;

    move-result-object v0

    return-object v0
.end method

.method public getTransformationForWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Landroid/view/animation/Transformation;
    .locals 2

    .line 60
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0xbb4

    if-ne v0, v1, :cond_1

    .line 61
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "ONEHAND guide panel"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    iget-object p1, p1, Lcom/android/server/wm/onehand/OneHandedAnimator;->mPanel:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getTransformation()Landroid/view/animation/Transformation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->getTransformationForGuidePanel(Landroid/view/animation/Transformation;)Landroid/view/animation/Transformation;

    move-result-object p1

    return-object p1

    .line 63
    :cond_0
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    const-string v0, "ONEHAND control panel"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    iget-object p1, p1, Lcom/android/server/wm/onehand/OneHandedAnimator;->mPanel:Lcom/android/server/wm/onehand/OneHandedControlPanel;

    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->getTransformation()Landroid/view/animation/Transformation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/onehand/OneHandedControlPanel;->getTransformationForControlPanel(Landroid/view/animation/Transformation;)Landroid/view/animation/Transformation;

    move-result-object p1

    return-object p1

    .line 67
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public initialize(Landroid/content/Context;Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$IWindowManagerFuncs;)V
    .locals 1

    .line 29
    iput-object p2, p0, Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;->mWms:Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$IWindowManagerFuncs;

    .line 30
    new-instance p2, Lcom/android/server/wm/onehand/OneHandedAnimator;

    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;->mWms:Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$IWindowManagerFuncs;

    invoke-direct {p2, p1, v0}, Lcom/android/server/wm/onehand/OneHandedAnimator;-><init>(Landroid/content/Context;Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy$IWindowManagerFuncs;)V

    iput-object p2, p0, Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    .line 32
    const-class p1, Lcom/android/server/wm/onehand/IOneHandedAnimatorProxy;

    invoke-static {p1, p0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public isOneHandedModeAvailable()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/onehand/OneHandedAnimator;->isOneHandedModeAvailable()Z

    move-result v0

    return v0

    .line 96
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOnehandTurnedON()Z
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/onehand/OneHandedAnimator;->isOnehandTurnedOn:Z

    return v0

    .line 88
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyOutSideScreenTouch(II)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/onehand/OneHandedAnimator;->notifyOutSideScreenTouch(II)V

    .line 73
    return-void
.end method

.method public registerOneHandedModeListener(Lcom/android/internal/onehand/IOneHandedModeListener;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->registerOneHandedModeListener(Lcom/android/internal/onehand/IOneHandedModeListener;)V

    .line 112
    :cond_0
    return-void
.end method

.method public stepAnimationInTransaction(J)Z
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/onehand/OneHandedAnimator;->stepAnimationInTransaction(J)Z

    move-result p1

    return p1
.end method

.method public unregisterOneHandedModeListener(Lcom/android/internal/onehand/IOneHandedModeListener;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/onehand/OneHandedAnimatorProxy;->mAnimator:Lcom/android/server/wm/onehand/OneHandedAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/onehand/OneHandedAnimator;->unregisterOneHandedModeListener(Lcom/android/internal/onehand/IOneHandedModeListener;)V

    .line 119
    :cond_0
    return-void
.end method
