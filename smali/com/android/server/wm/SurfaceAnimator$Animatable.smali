.class interface abstract Lcom/android/server/wm/SurfaceAnimator$Animatable;
.super Ljava/lang/Object;
.source "SurfaceAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SurfaceAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Animatable"
.end annotation


# virtual methods
.method public abstract commitPendingTransaction()V
.end method

.method public abstract getAnimationLeashParent()Landroid/view/SurfaceControl;
.end method

.method public abstract getParentSurfaceControl()Landroid/view/SurfaceControl;
.end method

.method public abstract getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
.end method

.method public abstract getSurfaceControl()Landroid/view/SurfaceControl;
.end method

.method public abstract getSurfaceHeight()I
.end method

.method public abstract getSurfaceWidth()I
.end method

.method public abstract makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
.end method

.method public abstract onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
.end method

.method public abstract onAnimationLeashDestroyed(Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z
    .locals 0

    .line 429
    const/4 p1, 0x0

    return p1
.end method