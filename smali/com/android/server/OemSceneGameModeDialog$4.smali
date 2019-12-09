.class Lcom/android/server/OemSceneGameModeDialog$4;
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

    .line 381
    iput-object p1, p0, Lcom/android/server/OemSceneGameModeDialog$4;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 384
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$4;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # invokes: Lcom/android/server/OemSceneGameModeDialog;->refreshFnaticModeStatus()V
    invoke-static {v0}, Lcom/android/server/OemSceneGameModeDialog;->access$500(Lcom/android/server/OemSceneGameModeDialog;)V

    .line 385
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$4;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # getter for: Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;
    invoke-static {v0}, Lcom/android/server/OemSceneGameModeDialog;->access$600(Lcom/android/server/OemSceneGameModeDialog;)Lcom/android/server/StaticScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/StaticScrollView;->scrollToTop()V

    .line 386
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$4;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # getter for: Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;
    invoke-static {v0}, Lcom/android/server/OemSceneGameModeDialog;->access$600(Lcom/android/server/OemSceneGameModeDialog;)Lcom/android/server/StaticScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog$4;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # getter for: Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z
    invoke-static {v1}, Lcom/android/server/OemSceneGameModeDialog;->access$300(Lcom/android/server/OemSceneGameModeDialog;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/StaticScrollView;->switchView(Z)V

    .line 388
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$4;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # getter for: Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;
    invoke-static {v0}, Lcom/android/server/OemSceneGameModeDialog;->access$100(Lcom/android/server/OemSceneGameModeDialog;)Lcom/android/server/OemSceneGameModePanelPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 389
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$4;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # getter for: Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;
    invoke-static {v0}, Lcom/android/server/OemSceneGameModeDialog;->access$100(Lcom/android/server/OemSceneGameModeDialog;)Lcom/android/server/OemSceneGameModePanelPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->dismiss()V

    .line 391
    :cond_2e
    return-void
.end method
