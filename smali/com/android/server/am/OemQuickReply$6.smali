.class Lcom/android/server/am/OemQuickReply$6;
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

    .line 517
    iput-object p1, p0, Lcom/android/server/am/OemQuickReply$6;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 521
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_61

    .line 522
    const-string v0, "OemQuickReply"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click to go switch from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/am/OemQuickReply;->sIMEposition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    sget v0, Lcom/android/server/am/OemQuickReply;->sIMEposition:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_27

    .line 524
    sput v1, Lcom/android/server/am/OemQuickReply;->sIMEposition:I

    goto :goto_29

    .line 526
    :cond_27
    sput v2, Lcom/android/server/am/OemQuickReply;->sIMEposition:I

    .line 528
    :goto_29
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$6;->this$0:Lcom/android/server/am/OemQuickReply;

    # getter for: Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;
    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$500(Lcom/android/server/am/OemQuickReply;)Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->sendEmptyMessage(I)Z

    .line 530
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$6;->this$0:Lcom/android/server/am/OemQuickReply;

    # getter for: Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$000(Lcom/android/server/am/OemQuickReply;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "quickreply_ime_position"

    sget v3, Lcom/android/server/am/OemQuickReply;->sIMEposition:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 532
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$6;->this$0:Lcom/android/server/am/OemQuickReply;

    # setter for: Lcom/android/server/am/OemQuickReply;->mImeControlsBtnX:I
    invoke-static {v0, v1}, Lcom/android/server/am/OemQuickReply;->access$602(Lcom/android/server/am/OemQuickReply;I)I

    .line 533
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$6;->this$0:Lcom/android/server/am/OemQuickReply;

    # getter for: Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$000(Lcom/android/server/am/OemQuickReply;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "quickreply_imbutton_x"

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply$6;->this$0:Lcom/android/server/am/OemQuickReply;

    .line 534
    # getter for: Lcom/android/server/am/OemQuickReply;->mImeControlsBtnX:I
    invoke-static {v2}, Lcom/android/server/am/OemQuickReply;->access$600(Lcom/android/server/am/OemQuickReply;)I

    move-result v2

    .line 533
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_62

    .line 538
    :cond_61
    goto :goto_6a

    .line 536
    :catch_62
    move-exception v0

    .line 537
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OemQuickReply"

    const-string v2, "click to go switch fail: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 539
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6a
    const/4 v0, 0x1

    return v0
.end method
