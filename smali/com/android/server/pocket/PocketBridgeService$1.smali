.class Lcom/android/server/pocket/PocketBridgeService$1;
.super Landroid/pocket/IPocketCallback$Stub;
.source "PocketBridgeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pocket/PocketBridgeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pocket/PocketBridgeService;


# direct methods
.method constructor <init>(Lcom/android/server/pocket/PocketBridgeService;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/server/pocket/PocketBridgeService$1;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-direct {p0}, Landroid/pocket/IPocketCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(ZI)V
    .locals 2

    .line 60
    nop

    .line 61
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 62
    iget-object p2, p0, Lcom/android/server/pocket/PocketBridgeService$1;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-static {p2}, Lcom/android/server/pocket/PocketBridgeService;->access$000(Lcom/android/server/pocket/PocketBridgeService;)Z

    move-result p2

    if-eq p1, p2, :cond_0

    .line 63
    iget-object p2, p0, Lcom/android/server/pocket/PocketBridgeService$1;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-static {p2, p1}, Lcom/android/server/pocket/PocketBridgeService;->access$002(Lcom/android/server/pocket/PocketBridgeService;Z)Z

    .line 64
    nop

    .line 70
    move p1, v0

    goto :goto_1

    :cond_0
    move p1, v1

    goto :goto_1

    .line 67
    :cond_1
    iget-object p2, p0, Lcom/android/server/pocket/PocketBridgeService$1;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-static {p2}, Lcom/android/server/pocket/PocketBridgeService;->access$000(Lcom/android/server/pocket/PocketBridgeService;)Z

    move-result p2

    if-eq p1, p2, :cond_2

    .line 68
    move p1, v0

    goto :goto_0

    .line 67
    :cond_2
    nop

    .line 68
    move p1, v1

    :goto_0
    iget-object p2, p0, Lcom/android/server/pocket/PocketBridgeService$1;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-static {p2, v1}, Lcom/android/server/pocket/PocketBridgeService;->access$002(Lcom/android/server/pocket/PocketBridgeService;Z)Z

    .line 70
    :goto_1
    if-eqz p1, :cond_3

    .line 71
    iget-object p1, p0, Lcom/android/server/pocket/PocketBridgeService$1;->this$0:Lcom/android/server/pocket/PocketBridgeService;

    invoke-static {p1}, Lcom/android/server/pocket/PocketBridgeService;->access$100(Lcom/android/server/pocket/PocketBridgeService;)Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/pocket/PocketBridgeService$PocketBridgeHandler;->sendEmptyMessage(I)Z

    .line 73
    :cond_3
    return-void
.end method
