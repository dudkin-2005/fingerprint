.class public Lcom/android/server/OemSceneGameModePanel$EsportStatusContentObserver;
.super Landroid/database/ContentObserver;
.source "OemSceneGameModePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneGameModePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EsportStatusContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneGameModePanel;


# direct methods
.method public constructor <init>(Lcom/android/server/OemSceneGameModePanel;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/OemSceneGameModePanel;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 537
    iput-object p1, p0, Lcom/android/server/OemSceneGameModePanel$EsportStatusContentObserver;->this$0:Lcom/android/server/OemSceneGameModePanel;

    .line 538
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 539
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 543
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel$EsportStatusContentObserver;->this$0:Lcom/android/server/OemSceneGameModePanel;

    # getter for: Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;
    invoke-static {v0}, Lcom/android/server/OemSceneGameModePanel;->access$100(Lcom/android/server/OemSceneGameModePanel;)Lcom/android/server/OemSceneGameModeView;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 544
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel$EsportStatusContentObserver;->this$0:Lcom/android/server/OemSceneGameModePanel;

    # getter for: Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;
    invoke-static {v0}, Lcom/android/server/OemSceneGameModePanel;->access$100(Lcom/android/server/OemSceneGameModePanel;)Lcom/android/server/OemSceneGameModeView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/OemSceneGameModeMessage;

    if-eqz v0, :cond_17

    .line 545
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel$EsportStatusContentObserver;->this$0:Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanel;->animateSimple()V

    .line 547
    :cond_17
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel$EsportStatusContentObserver;->this$0:Lcom/android/server/OemSceneGameModePanel;

    # getter for: Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;
    invoke-static {v0}, Lcom/android/server/OemSceneGameModePanel;->access$100(Lcom/android/server/OemSceneGameModePanel;)Lcom/android/server/OemSceneGameModeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModeView;->updateViewState()V

    .line 549
    :cond_20
    return-void
.end method
