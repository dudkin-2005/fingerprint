.class Lcom/android/server/OemSceneGameModePanel$3;
.super Ljava/lang/Object;
.source "OemSceneGameModePanel.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneGameModePanel;->startShownAnimator()V
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

    .line 345
    iput-object p1, p0, Lcom/android/server/OemSceneGameModePanel$3;->this$0:Lcom/android/server/OemSceneGameModePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 348
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 349
    .local v0, "animatorValue":F
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel$3;->this$0:Lcom/android/server/OemSceneGameModePanel;

    # getter for: Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;
    invoke-static {v1}, Lcom/android/server/OemSceneGameModePanel;->access$100(Lcom/android/server/OemSceneGameModePanel;)Lcom/android/server/OemSceneGameModeView;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 350
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel$3;->this$0:Lcom/android/server/OemSceneGameModePanel;

    # getter for: Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;
    invoke-static {v1}, Lcom/android/server/OemSceneGameModePanel;->access$100(Lcom/android/server/OemSceneGameModePanel;)Lcom/android/server/OemSceneGameModeView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/OemSceneGameModeView;->setAlpha(F)V

    .line 352
    :cond_1b
    return-void
.end method
