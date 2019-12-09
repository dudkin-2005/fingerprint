.class public Lcom/android/server/OemSceneModeController$EsportStatusContentObserver;
.super Landroid/database/ContentObserver;
.source "OemSceneModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EsportStatusContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneModeController;


# direct methods
.method public constructor <init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/OemSceneModeController;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 316
    iput-object p1, p0, Lcom/android/server/OemSceneModeController$EsportStatusContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    .line 317
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 318
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 321
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$EsportStatusContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    # getter for: Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z
    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$600(Lcom/android/server/OemSceneModeController;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 322
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$EsportStatusContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    const/4 v1, 0x1

    # invokes: Lcom/android/server/OemSceneModeController;->notifyGameMode(Z)V
    invoke-static {v0, v1}, Lcom/android/server/OemSceneModeController;->access$700(Lcom/android/server/OemSceneModeController;Z)V

    .line 324
    :cond_e
    return-void
.end method
