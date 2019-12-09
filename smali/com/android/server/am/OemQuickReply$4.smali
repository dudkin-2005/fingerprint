.class Lcom/android/server/am/OemQuickReply$4;
.super Ljava/lang/Object;
.source "OemQuickReply.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OemQuickReply;->addIMButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OemQuickReply;


# direct methods
.method constructor <init>(Lcom/android/server/am/OemQuickReply;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/OemQuickReply;

    .line 472
    iput-object p1, p0, Lcom/android/server/am/OemQuickReply$4;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 4

    .line 475
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$4;->this$0:Lcom/android/server/am/OemQuickReply;

    iget-object v0, v0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    if-eqz v0, :cond_37

    .line 476
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$4;->this$0:Lcom/android/server/am/OemQuickReply;

    iget-object v0, v0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 477
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$4;->this$0:Lcom/android/server/am/OemQuickReply;

    iget-object v0, v0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sput v0, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_SIZE:I

    .line 478
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_37

    .line 479
    const-string v0, "OemQuickReply"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IM_BUTTON_SIZE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_SIZE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_37
    return-void
.end method
