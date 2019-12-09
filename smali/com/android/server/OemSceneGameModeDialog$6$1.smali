.class Lcom/android/server/OemSceneGameModeDialog$6$1;
.super Ljava/lang/Object;
.source "OemSceneGameModeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneGameModeDialog$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/OemSceneGameModeDialog$6;

.field final synthetic val$newDontShowAgainChecked:Z


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneGameModeDialog$6;Z)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/OemSceneGameModeDialog$6;

    .line 421
    iput-object p1, p0, Lcom/android/server/OemSceneGameModeDialog$6$1;->this$1:Lcom/android/server/OemSceneGameModeDialog$6;

    iput-boolean p2, p0, Lcom/android/server/OemSceneGameModeDialog$6$1;->val$newDontShowAgainChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 424
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$6$1;->this$1:Lcom/android/server/OemSceneGameModeDialog$6;

    iget-object v0, v0, Lcom/android/server/OemSceneGameModeDialog$6;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # getter for: Lcom/android/server/OemSceneGameModeDialog;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;
    invoke-static {v0}, Lcom/android/server/OemSceneGameModeDialog;->access$800(Lcom/android/server/OemSceneGameModeDialog;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    move-result-object v0

    if-nez v0, :cond_1e

    .line 425
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$6$1;->this$1:Lcom/android/server/OemSceneGameModeDialog$6;

    iget-object v0, v0, Lcom/android/server/OemSceneGameModeDialog$6;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    new-instance v1, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog$6$1;->this$1:Lcom/android/server/OemSceneGameModeDialog$6;

    iget-object v2, v2, Lcom/android/server/OemSceneGameModeDialog$6;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    iget-object v2, v2, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const-string v3, "RBS8PPYT2W"

    invoke-direct {v1, v2, v3}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    # setter for: Lcom/android/server/OemSceneGameModeDialog;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;
    invoke-static {v0, v1}, Lcom/android/server/OemSceneGameModeDialog;->access$802(Lcom/android/server/OemSceneGameModeDialog;Lnet/oneplus/odm/insight/tracker/OSTracker;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 427
    :cond_1e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 428
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "onoff"

    iget-boolean v2, p0, Lcom/android/server/OemSceneGameModeDialog$6$1;->val$newDontShowAgainChecked:Z

    if-eqz v2, :cond_2d

    const-string v2, "1"

    goto :goto_2f

    :cond_2d
    const-string v2, "0"

    :goto_2f
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog$6$1;->this$1:Lcom/android/server/OemSceneGameModeDialog$6;

    iget-object v1, v1, Lcom/android/server/OemSceneGameModeDialog$6;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # getter for: Lcom/android/server/OemSceneGameModeDialog;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;
    invoke-static {v1}, Lcom/android/server/OemSceneGameModeDialog;->access$800(Lcom/android/server/OemSceneGameModeDialog;)Lnet/oneplus/odm/insight/tracker/OSTracker;

    move-result-object v1

    const-string v2, "dontshow_info"

    invoke-virtual {v1, v2, v0}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 430
    # getter for: Lcom/android/server/OemSceneGameModeDialog;->DBG:Z
    invoke-static {}, Lcom/android/server/OemSceneGameModeDialog;->access$900()Z

    move-result v1

    if-eqz v1, :cond_5e

    const-string v1, "OemSceneGameModeDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update dont show again check status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/OemSceneGameModeDialog$6$1;->val$newDontShowAgainChecked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_5e
    return-void
.end method
