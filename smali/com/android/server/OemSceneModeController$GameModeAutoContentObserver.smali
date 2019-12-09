.class public Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;
.super Landroid/database/ContentObserver;
.source "OemSceneModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GameModeAutoContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneModeController;


# direct methods
.method public constructor <init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/OemSceneModeController;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 299
    iput-object p1, p0, Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    .line 300
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 301
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .param p1, "selfChange"    # Z

    .line 304
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    # getter for: Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z
    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$500(Lcom/android/server/OemSceneModeController;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 306
    :cond_9
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    iget-object v1, p0, Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    # getter for: Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/OemSceneModeController;->access$100(Lcom/android/server/OemSceneModeController;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "game_mode_status_auto"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/OemSceneModeController;->validateValue(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/OemSceneModeController;->access$200(Lcom/android/server/OemSceneModeController;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 308
    return-void

    .line 310
    :cond_1f
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    # getter for: Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$300(Lcom/android/server/OemSceneModeController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 311
    # getter for: Lcom/android/server/OemSceneModeController;->DBG:Z
    invoke-static {}, Lcom/android/server/OemSceneModeController;->access$400()Z

    move-result v0

    if-eqz v0, :cond_36

    const-string v0, "OemSceneModeController"

    const-string v1, "[scene] Game Auto changed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_36
    return-void
.end method
