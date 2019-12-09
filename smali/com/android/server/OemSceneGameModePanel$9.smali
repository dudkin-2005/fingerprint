.class Lcom/android/server/OemSceneGameModePanel$9;
.super Landroid/database/ContentObserver;
.source "OemSceneGameModePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneGameModePanel;->listenFor3rdCallState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneGameModePanel;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneGameModePanel;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/OemSceneGameModePanel;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 475
    iput-object p1, p0, Lcom/android/server/OemSceneGameModePanel$9;->this$0:Lcom/android/server/OemSceneGameModePanel;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .param p1, "selfChange"    # Z

    .line 478
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 479
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel$9;->this$0:Lcom/android/server/OemSceneGameModePanel;

    # getter for: Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/OemSceneGameModePanel;->access$200(Lcom/android/server/OemSceneGameModePanel;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_notifications_3rd_calls_uid"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "uid":Ljava/lang/String;
    const-string v1, "OemSceneGameModePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "3rd Call UID changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 483
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel$9;->this$0:Lcom/android/server/OemSceneGameModePanel;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/OemSceneGameModePanel;->hide(Z)V
    invoke-static {v1, v2}, Lcom/android/server/OemSceneGameModePanel;->access$400(Lcom/android/server/OemSceneGameModePanel;Z)V

    .line 485
    :cond_37
    return-void
.end method
