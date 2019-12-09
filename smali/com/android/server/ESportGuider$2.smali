.class Lcom/android/server/ESportGuider$2;
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

    .line 137
    iput-object p1, p0, Lcom/android/server/ESportGuider$2;->this$0:Lcom/android/server/ESportGuider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 140
    iget-object v0, p0, Lcom/android/server/ESportGuider$2;->this$0:Lcom/android/server/ESportGuider;

    # getter for: Lcom/android/server/ESportGuider;->mDontShowAgain:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/server/ESportGuider;->access$000(Lcom/android/server/ESportGuider;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ESportGuider$2;->this$0:Lcom/android/server/ESportGuider;

    # getter for: Lcom/android/server/ESportGuider;->mDontShowAgain:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/server/ESportGuider;->access$000(Lcom/android/server/ESportGuider;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 141
    return-void
.end method
