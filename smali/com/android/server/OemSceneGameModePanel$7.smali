.class Lcom/android/server/OemSceneGameModePanel$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OemSceneGameModePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneGameModePanel;->startHideAnimator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneGameModePanel;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneGameModePanel;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/OemSceneGameModePanel;

    .line 427
    iput-object p1, p0, Lcom/android/server/OemSceneGameModePanel$7;->this$0:Lcom/android/server/OemSceneGameModePanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 430
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel$7;->this$0:Lcom/android/server/OemSceneGameModePanel;

    # getter for: Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;
    invoke-static {v0}, Lcom/android/server/OemSceneGameModePanel;->access$100(Lcom/android/server/OemSceneGameModePanel;)Lcom/android/server/OemSceneGameModeView;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 431
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel$7;->this$0:Lcom/android/server/OemSceneGameModePanel;

    # getter for: Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;
    invoke-static {v0}, Lcom/android/server/OemSceneGameModePanel;->access$100(Lcom/android/server/OemSceneGameModePanel;)Lcom/android/server/OemSceneGameModeView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneGameModeView;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel$7;->this$0:Lcom/android/server/OemSceneGameModePanel;

    # getter for: Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/server/OemSceneGameModePanel;->access$300(Lcom/android/server/OemSceneGameModePanel;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel$7;->this$0:Lcom/android/server/OemSceneGameModePanel;

    # getter for: Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;
    invoke-static {v1}, Lcom/android/server/OemSceneGameModePanel;->access$100(Lcom/android/server/OemSceneGameModePanel;)Lcom/android/server/OemSceneGameModeView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 433
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel$7;->this$0:Lcom/android/server/OemSceneGameModePanel;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;
    invoke-static {v0, v1}, Lcom/android/server/OemSceneGameModePanel;->access$102(Lcom/android/server/OemSceneGameModePanel;Lcom/android/server/OemSceneGameModeView;)Lcom/android/server/OemSceneGameModeView;

    .line 435
    :cond_27
    return-void
.end method
