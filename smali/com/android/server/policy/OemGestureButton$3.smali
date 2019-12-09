.class Lcom/android/server/policy/OemGestureButton$3;
.super Ljava/lang/Object;
.source "OemGestureButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemGestureButton;->startScaleUpAnimation(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemGestureButton;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemGestureButton;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/OemGestureButton;

    .line 313
    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton$3;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 317
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 322
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$3;->this$0:Lcom/android/server/policy/OemGestureButton;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/OemGestureButton;->mScaleAnimationShowing:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/OemGestureButton;->access$202(Lcom/android/server/policy/OemGestureButton;Z)Z

    .line 323
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$3;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    .line 325
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$3;->this$0:Lcom/android/server/policy/OemGestureButton;

    iget-object v0, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    .line 327
    const-string v0, "OemGestureButton"

    const-string/jumbo v1, "startScaleUpAnimation: end."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 319
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 315
    return-void
.end method
