.class Lcom/android/server/am/OemQuickReply$5;
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

    .line 492
    iput-object p1, p0, Lcom/android/server/am/OemQuickReply$5;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 496
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_27

    .line 497
    const-string v0, "OemQuickReply"

    const-string v1, "click to go settings"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$5;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-virtual {v0}, Lcom/android/server/am/OemQuickReply;->exitQuickReply()V

    .line 500
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.action.QUICK_REPLY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 502
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply$5;->this$0:Lcom/android/server/am/OemQuickReply;

    # getter for: Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/OemQuickReply;->access$000(Lcom/android/server/am/OemQuickReply;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    .line 506
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_27
    goto :goto_30

    .line 504
    :catch_28
    move-exception v0

    .line 505
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OemQuickReply"

    const-string v2, "click to go settings fail: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_30
    const/4 v0, 0x1

    return v0
.end method
