.class public Lcom/android/server/ESportGuider$ESportGuiderView;
.super Landroid/widget/RelativeLayout;
.source "ESportGuider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ESportGuider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ESportGuiderView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ESportGuider;


# direct methods
.method public constructor <init>(Lcom/android/server/ESportGuider;Landroid/content/Context;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/ESportGuider;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layout"    # I

    .line 205
    iput-object p1, p0, Lcom/android/server/ESportGuider$ESportGuiderView;->this$0:Lcom/android/server/ESportGuider;

    .line 206
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 207
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 208
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 212
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_24

    .line 213
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_24

    .line 214
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0xbb

    if-eq v0, v1, :cond_24

    .line 215
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_1f

    goto :goto_24

    .line 223
    :cond_1f
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 216
    :cond_24
    :goto_24
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    .line 218
    iget-object v0, p0, Lcom/android/server/ESportGuider$ESportGuiderView;->this$0:Lcom/android/server/ESportGuider;

    invoke-virtual {v0}, Lcom/android/server/ESportGuider;->hide()V

    .line 221
    :cond_30
    return v1
.end method
