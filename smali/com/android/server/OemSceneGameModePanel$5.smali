.class Lcom/android/server/OemSceneGameModePanel$5;
.super Ljava/lang/Object;
.source "OemSceneGameModePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneGameModePanel;->doneEsportModeGuiderHide()V
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

    .line 395
    iput-object p1, p0, Lcom/android/server/OemSceneGameModePanel$5;->this$0:Lcom/android/server/OemSceneGameModePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 399
    :try_start_0
    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel$5;->this$0:Lcom/android/server/OemSceneGameModePanel;

    # getter for: Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/OemSceneGameModePanel;->access$200(Lcom/android/server/OemSceneGameModePanel;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "esport_mode_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 402
    .local v0, "fnatic_mode_status":Z
    if-eqz v0, :cond_23

    .line 403
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel$5;->this$0:Lcom/android/server/OemSceneGameModePanel;

    # getter for: Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;
    invoke-static {v1}, Lcom/android/server/OemSceneGameModePanel;->access$100(Lcom/android/server/OemSceneGameModePanel;)Lcom/android/server/OemSceneGameModeView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/OemSceneGameModeView;->doSomething(I)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    .line 408
    .end local v0    # "fnatic_mode_status":Z
    :cond_23
    goto :goto_25

    .line 405
    :catch_24
    move-exception v0

    .line 409
    :goto_25
    return-void
.end method
