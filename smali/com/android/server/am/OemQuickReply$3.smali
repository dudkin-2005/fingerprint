.class Lcom/android/server/am/OemQuickReply$3;
.super Ljava/lang/Object;
.source "OemQuickReply.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 457
    iput-object p1, p0, Lcom/android/server/am/OemQuickReply$3;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 461
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_27

    .line 462
    const-string v0, "OemQuickReply"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click to full button app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply$3;->this$0:Lcom/android/server/am/OemQuickReply;

    # getter for: Lcom/android/server/am/OemQuickReply;->mResumedApp:Lcom/android/server/am/ActivityRecord;
    invoke-static {v2}, Lcom/android/server/am/OemQuickReply;->access$400(Lcom/android/server/am/OemQuickReply;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$3;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-virtual {v0}, Lcom/android/server/am/OemQuickReply;->exitQuickReply()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    .line 467
    :cond_27
    goto :goto_30

    .line 465
    :catch_28
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OemQuickReply"

    const-string v2, "click to full button fail: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 468
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_30
    const/4 v0, 0x1

    return v0
.end method
