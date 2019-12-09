.class Landroid/net/dhcp/DhcpClient$DhcpRenewingState;
.super Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DhcpRenewingState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method public constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    .line 1078
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    .line 1079
    const-string v0, "Renewed"

    iput-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->mLeaseMsg:Ljava/lang/String;

    .line 1080
    return-void
.end method


# virtual methods
.method protected packetDestination()Ljava/net/Inet4Address;
    .registers 2

    .line 1101
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$3100(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v0

    iget-object v0, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    if-eqz v0, :cond_13

    .line 1102
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpLease:Landroid/net/DhcpResults;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$3100(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v0

    iget-object v0, v0, Landroid/net/DhcpResults;->serverAddress:Ljava/net/Inet4Address;

    goto :goto_15

    :cond_13
    sget-object v0, Landroid/net/dhcp/DhcpPacket;->INADDR_BROADCAST:Ljava/net/Inet4Address;

    .line 1101
    :goto_15
    return-object v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .line 1084
    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->processMessage(Landroid/os/Message;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 1085
    return v1

    .line 1088
    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x30069

    if-eq v0, v2, :cond_11

    .line 1093
    const/4 v0, 0x0

    return v0

    .line 1090
    :cond_11
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpRenewingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mDhcpRebindingState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->access$3800(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1091
    return v1
.end method
