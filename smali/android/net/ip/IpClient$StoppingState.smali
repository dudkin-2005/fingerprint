.class Landroid/net/ip/IpClient$StoppingState;
.super Lcom/android/internal/util/State;
.source "IpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoppingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ip/IpClient;


# direct methods
.method constructor <init>(Landroid/net/ip/IpClient;)V
    .locals 0

    .line 1489
    iput-object p1, p0, Landroid/net/ip/IpClient$StoppingState;->this$0:Landroid/net/ip/IpClient;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 1492
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppingState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$1800(Landroid/net/ip/IpClient;)Landroid/net/dhcp/DhcpClient;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1494
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppingState;->this$0:Landroid/net/ip/IpClient;

    iget-object v1, p0, Landroid/net/ip/IpClient$StoppingState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v1}, Landroid/net/ip/IpClient;->access$1900(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1496
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1500
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const v1, 0x30005

    if-eq v0, v1, :cond_1

    const v1, 0x30007

    if-eq v0, v1, :cond_0

    .line 1514
    iget-object v0, p0, Landroid/net/ip/IpClient$StoppingState;->this$0:Landroid/net/ip/IpClient;

    invoke-virtual {v0, p1}, Landroid/net/ip/IpClient;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1505
    :cond_0
    iget-object p1, p0, Landroid/net/ip/IpClient$StoppingState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {p1}, Landroid/net/ip/IpClient;->access$2000(Landroid/net/ip/IpClient;)Landroid/net/ip/InterfaceController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/ip/InterfaceController;->clearIPv4Address()Z

    .line 1506
    goto :goto_0

    .line 1509
    :cond_1
    iget-object p1, p0, Landroid/net/ip/IpClient$StoppingState;->this$0:Landroid/net/ip/IpClient;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/net/ip/IpClient;->access$1802(Landroid/net/ip/IpClient;Landroid/net/dhcp/DhcpClient;)Landroid/net/dhcp/DhcpClient;

    .line 1510
    iget-object p1, p0, Landroid/net/ip/IpClient$StoppingState;->this$0:Landroid/net/ip/IpClient;

    iget-object v0, p0, Landroid/net/ip/IpClient$StoppingState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {v0}, Landroid/net/ip/IpClient;->access$1900(Landroid/net/ip/IpClient;)Lcom/android/internal/util/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/ip/IpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1511
    goto :goto_0

    .line 1502
    :cond_2
    nop

    .line 1517
    :goto_0
    iget-object p1, p0, Landroid/net/ip/IpClient$StoppingState;->this$0:Landroid/net/ip/IpClient;

    invoke-static {p1}, Landroid/net/ip/IpClient;->access$1700(Landroid/net/ip/IpClient;)Landroid/net/ip/IpClient$MessageHandlingLogger;

    move-result-object p1

    iget-object v0, p0, Landroid/net/ip/IpClient$StoppingState;->this$0:Landroid/net/ip/IpClient;

    invoke-virtual {v0}, Landroid/net/ip/IpClient;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/net/ip/IpClient$MessageHandlingLogger;->handled(Lcom/android/internal/util/State;Lcom/android/internal/util/IState;)V

    .line 1518
    const/4 p1, 0x1

    return p1
.end method
