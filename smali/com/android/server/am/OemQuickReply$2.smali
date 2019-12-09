.class Lcom/android/server/am/OemQuickReply$2;
.super Ljava/lang/Object;
.source "OemQuickReply.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OemQuickReply;->setQuickReplyRunning(Z)V
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

    .line 424
    iput-object p1, p0, Lcom/android/server/am/OemQuickReply$2;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 428
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$2;->this$0:Lcom/android/server/am/OemQuickReply;

    # invokes: Lcom/android/server/am/OemQuickReply;->dismissInputMethod()V
    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$200(Lcom/android/server/am/OemQuickReply;)V

    .line 429
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$2;->this$0:Lcom/android/server/am/OemQuickReply;

    # getter for: Lcom/android/server/am/OemQuickReply;->mWMS:Lcom/android/server/wm/WindowManagerService;
    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$300(Lcom/android/server/am/OemQuickReply;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->killIMEs()V

    .line 430
    return-void
.end method
