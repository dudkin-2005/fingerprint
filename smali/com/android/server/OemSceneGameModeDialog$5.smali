.class Lcom/android/server/OemSceneGameModeDialog$5;
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

    .line 393
    iput-object p1, p0, Lcom/android/server/OemSceneGameModeDialog$5;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .line 396
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$5;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # getter for: Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;
    invoke-static {v0}, Lcom/android/server/OemSceneGameModeDialog;->access$600(Lcom/android/server/OemSceneGameModeDialog;)Lcom/android/server/StaticScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/StaticScrollView;->scrollToTop()V

    .line 397
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$5;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # getter for: Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;
    invoke-static {v0}, Lcom/android/server/OemSceneGameModeDialog;->access$600(Lcom/android/server/OemSceneGameModeDialog;)Lcom/android/server/StaticScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog$5;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # getter for: Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z
    invoke-static {v1}, Lcom/android/server/OemSceneGameModeDialog;->access$300(Lcom/android/server/OemSceneGameModeDialog;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/StaticScrollView;->switchView(Z)V

    .line 398
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$5;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # getter for: Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;
    invoke-static {v0}, Lcom/android/server/OemSceneGameModeDialog;->access$100(Lcom/android/server/OemSceneGameModeDialog;)Lcom/android/server/OemSceneGameModePanelPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 399
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$5;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # getter for: Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;
    invoke-static {v0}, Lcom/android/server/OemSceneGameModeDialog;->access$100(Lcom/android/server/OemSceneGameModeDialog;)Lcom/android/server/OemSceneGameModePanelPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->dismiss()V

    .line 401
    :cond_29
    return-void
.end method
