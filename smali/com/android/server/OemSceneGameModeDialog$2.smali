.class Lcom/android/server/OemSceneGameModeDialog$2;
.super Ljava/lang/Object;
.source "OemSceneGameModeDialog.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneGameModeDialog;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneGameModeDialog;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneGameModeDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 196
    iput-object p1, p0, Lcom/android/server/OemSceneGameModeDialog$2;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 210
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 201
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$2;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # invokes: Lcom/android/server/OemSceneGameModeDialog;->startFnaticOffAnimation()V
    invoke-static {v0}, Lcom/android/server/OemSceneGameModeDialog;->access$200(Lcom/android/server/OemSceneGameModeDialog;)V

    .line 202
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$2;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog$2;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # getter for: Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z
    invoke-static {v1}, Lcom/android/server/OemSceneGameModeDialog;->access$300(Lcom/android/server/OemSceneGameModeDialog;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    # setter for: Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z
    invoke-static {v0, v1}, Lcom/android/server/OemSceneGameModeDialog;->access$302(Lcom/android/server/OemSceneGameModeDialog;Z)Z

    .line 203
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$2;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # invokes: Lcom/android/server/OemSceneGameModeDialog;->triggerToChangeFnaticMode()V
    invoke-static {v0}, Lcom/android/server/OemSceneGameModeDialog;->access$400(Lcom/android/server/OemSceneGameModeDialog;)V

    .line 204
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 207
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 199
    return-void
.end method
