.class Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;
.super Landroid/database/ContentObserver;
.source "OemSceneModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameModeBatterySaverContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneModeController;


# direct methods
.method public constructor <init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 328
    iput-object p1, p0, Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    .line 329
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 330
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 334
    # getter for: Lcom/android/server/OemSceneModeController;->DBG:Z
    invoke-static {}, Lcom/android/server/OemSceneModeController;->access$400()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "OemSceneModeController"

    const-string v1, "[gameMode PowerSavePolicy] GameModeBatterySaver changed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_d
    iget-object v0, p0, Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    # getter for: Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$300(Lcom/android/server/OemSceneModeController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 336
    return-void
.end method
