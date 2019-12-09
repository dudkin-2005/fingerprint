.class Lcom/android/server/ESportGuider$1;
.super Ljava/lang/Object;
.source "ESportGuider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ESportGuider;->initView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ESportGuider;


# direct methods
.method constructor <init>(Lcom/android/server/ESportGuider;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ESportGuider;

    .line 113
    iput-object p1, p0, Lcom/android/server/ESportGuider$1;->this$0:Lcom/android/server/ESportGuider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/android/server/ESportGuider$1;->this$0:Lcom/android/server/ESportGuider;

    # getter for: Lcom/android/server/ESportGuider;->mDontShowAgain:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/server/ESportGuider;->access$000(Lcom/android/server/ESportGuider;)Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 117
    iget-object v0, p0, Lcom/android/server/ESportGuider$1;->this$0:Lcom/android/server/ESportGuider;

    # getter for: Lcom/android/server/ESportGuider;->mDontShowAgain:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/server/ESportGuider;->access$000(Lcom/android/server/ESportGuider;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 118
    .local v0, "newDontShowAgainChecked":Z
    # getter for: Lcom/android/server/ESportGuider;->mInitialDontShowAgainChecked:Z
    invoke-static {}, Lcom/android/server/ESportGuider;->access$100()Z

    move-result v1

    if-eq v1, v0, :cond_28

    .line 120
    iget-object v1, p0, Lcom/android/server/ESportGuider$1;->this$0:Lcom/android/server/ESportGuider;

    # getter for: Lcom/android/server/ESportGuider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/ESportGuider;->access$200(Lcom/android/server/ESportGuider;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "esport_mode_guider_never_show"

    .line 122
    const/4 v3, -0x2

    .line 120
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 125
    .end local v0    # "newDontShowAgainChecked":Z
    :cond_28
    iget-object v0, p0, Lcom/android/server/ESportGuider$1;->this$0:Lcom/android/server/ESportGuider;

    invoke-virtual {v0}, Lcom/android/server/ESportGuider;->hide()V

    .line 126
    return-void
.end method
