.class Lcom/android/server/OemSceneGameModeDialog$7;
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

    .line 452
    iput-object p1, p0, Lcom/android/server/OemSceneGameModeDialog$7;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 455
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$7;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # getter for: Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/server/OemSceneGameModeDialog;->access$700(Lcom/android/server/OemSceneGameModeDialog;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog$7;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    # getter for: Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/server/OemSceneGameModeDialog;->access$700(Lcom/android/server/OemSceneGameModeDialog;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 456
    return-void
.end method
