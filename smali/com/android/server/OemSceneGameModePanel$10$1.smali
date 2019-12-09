.class Lcom/android/server/OemSceneGameModePanel$10$1;
.super Ljava/lang/Object;
.source "OemSceneGameModePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneGameModePanel$10;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/OemSceneGameModePanel$10;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneGameModePanel$10;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/OemSceneGameModePanel$10;

    .line 518
    iput-object p1, p0, Lcom/android/server/OemSceneGameModePanel$10$1;->this$1:Lcom/android/server/OemSceneGameModePanel$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel$10$1;->this$1:Lcom/android/server/OemSceneGameModePanel$10;

    iget-object v0, v0, Lcom/android/server/OemSceneGameModePanel$10;->this$0:Lcom/android/server/OemSceneGameModePanel;

    # getter for: Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;
    invoke-static {v0}, Lcom/android/server/OemSceneGameModePanel;->access$100(Lcom/android/server/OemSceneGameModePanel;)Lcom/android/server/OemSceneGameModeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModeView;->updateViewOptions()V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_b} :catch_c

    .line 525
    goto :goto_16

    .line 523
    :catch_c
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "OemSceneGameModePanel"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_16
    return-void
.end method
