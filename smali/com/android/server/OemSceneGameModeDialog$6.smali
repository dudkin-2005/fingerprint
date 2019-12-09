.class Lcom/android/server/OemSceneGameModeDialog$6;
.super Ljava/lang/Object;
.source "OemSceneGameModeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneGameModeDialog;->updateView()V
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

    .line 409
    iput-object p1, p0, Lcom/android/server/OemSceneGameModeDialog$6;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 412
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$6;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # getter for: Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/server/OemSceneGameModeDialog;->access$700(Lcom/android/server/OemSceneGameModeDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 413
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$6;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # getter for: Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/server/OemSceneGameModeDialog;->access$700(Lcom/android/server/OemSceneGameModeDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 414
    .local v0, "newDontShowAgainChecked":Z
    sget-boolean v1, Lcom/android/server/OemSceneGameModeDialog;->mInitialDontShowAgainChecked:Z

    if-eq v1, v0, :cond_33

    .line 416
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog$6;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    iget-object v1, v1, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "game_mode_panel_detail"

    .line 418
    xor-int/lit8 v3, v0, 0x1

    const/4 v4, -0x2

    .line 416
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 419
    const/4 v1, -0x1

    sput v1, Lcom/android/server/OemSceneGameModeView;->sDontShowAgainValue:I

    .line 421
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog$6;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    new-instance v2, Lcom/android/server/OemSceneGameModeDialog$6$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/OemSceneGameModeDialog$6$1;-><init>(Lcom/android/server/OemSceneGameModeDialog$6;Z)V

    invoke-virtual {v1, v2}, Lcom/android/server/OemSceneGameModeDialog;->post(Ljava/lang/Runnable;)Z

    .line 435
    .end local v0    # "newDontShowAgainChecked":Z
    :cond_33
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$6;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    iget-object v0, v0, Lcom/android/server/OemSceneGameModeDialog;->mPanel:Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanel;->hide()V

    .line 436
    return-void
.end method
