.class Lcom/android/server/OemSceneModeController$4;
.super Ljava/lang/Object;
.source "OemSceneModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneModeController;->hideGameModeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneModeController;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneModeController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/OemSceneModeController;

    .line 1108
    iput-object p1, p0, Lcom/android/server/OemSceneModeController$4;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1111
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$4;->this$0:Lcom/android/server/OemSceneModeController;

    # getter for: Lcom/android/server/OemSceneModeController;->mOemSceneGameModePanel:Lcom/android/server/OemSceneGameModePanel;
    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$2300(Lcom/android/server/OemSceneModeController;)Lcom/android/server/OemSceneGameModePanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanel;->hide()V

    .line 1112
    return-void
.end method
