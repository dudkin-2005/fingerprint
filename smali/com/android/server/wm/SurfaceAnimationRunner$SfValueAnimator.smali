.class Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;
.super Landroid/animation/ValueAnimator;
.source "SurfaceAnimationRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SurfaceAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SfValueAnimator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/SurfaceAnimationRunner;


# direct methods
.method constructor <init>(Lcom/android/server/wm/SurfaceAnimationRunner;)V
    .registers 2

    .line 276
    iput-object p1, p0, Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 277
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_10

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;->setFloatValues([F)V

    .line 278
    return-void

    nop

    :array_10
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getAnimationHandler()Landroid/animation/AnimationHandler;
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/android/server/wm/SurfaceAnimationRunner$SfValueAnimator;->this$0:Lcom/android/server/wm/SurfaceAnimationRunner;

    # getter for: Lcom/android/server/wm/SurfaceAnimationRunner;->mAnimationHandler:Landroid/animation/AnimationHandler;
    invoke-static {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->access$400(Lcom/android/server/wm/SurfaceAnimationRunner;)Landroid/animation/AnimationHandler;

    move-result-object v0

    return-object v0
.end method
