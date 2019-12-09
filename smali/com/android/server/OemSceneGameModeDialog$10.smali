.class Lcom/android/server/OemSceneGameModeDialog$10;
.super Ljava/lang/Object;
.source "OemSceneGameModeDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneGameModeDialog;->updateOptionItem(Landroid/view/View;Landroid/content/Context;IIILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneGameModeDialog;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneGameModeDialog;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/OemSceneGameModeDialog;

    .line 571
    iput-object p1, p0, Lcom/android/server/OemSceneGameModeDialog$10;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    iput-object p2, p0, Lcom/android/server/OemSceneGameModeDialog$10;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .line 574
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$10;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    iget-object v0, v0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog$10;->val$key:Ljava/lang/String;

    .line 575
    const/4 v2, -0x2

    .line 574
    invoke-static {v0, v1, p2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 576
    return-void
.end method
