.class Lcom/android/server/display/ColorDisplayService$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/ColorDisplayService;->applyTint(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCancelled:Z

.field final synthetic this$0:Lcom/android/server/display/ColorDisplayService;

.field final synthetic val$dtm:Lcom/android/server/display/DisplayTransformManager;

.field final synthetic val$to:[F


# direct methods
.method constructor <init>(Lcom/android/server/display/ColorDisplayService;Lcom/android/server/display/DisplayTransformManager;[F)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService$3;->this$0:Lcom/android/server/display/ColorDisplayService;

    iput-object p2, p0, Lcom/android/server/display/ColorDisplayService$3;->val$dtm:Lcom/android/server/display/DisplayTransformManager;

    iput-object p3, p0, Lcom/android/server/display/ColorDisplayService$3;->val$to:[F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 450
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/display/ColorDisplayService$3;->mIsCancelled:Z

    .line 451
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 455
    iget-boolean p1, p0, Lcom/android/server/display/ColorDisplayService$3;->mIsCancelled:Z

    if-nez p1, :cond_0

    .line 459
    iget-object p1, p0, Lcom/android/server/display/ColorDisplayService$3;->val$dtm:Lcom/android/server/display/DisplayTransformManager;

    const/16 v0, 0x64

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService$3;->val$to:[F

    invoke-virtual {p1, v0, v1}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 461
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/ColorDisplayService$3;->this$0:Lcom/android/server/display/ColorDisplayService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/display/ColorDisplayService;->access$602(Lcom/android/server/display/ColorDisplayService;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 462
    return-void
.end method
