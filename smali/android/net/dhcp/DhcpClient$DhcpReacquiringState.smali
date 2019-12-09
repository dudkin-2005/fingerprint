.class abstract Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;
.super Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "DhcpReacquiringState"
.end annotation


# instance fields
.field protected mLeaseMsg:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 0

    .line 1001
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .line 1006
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->enter()V

    .line 1007
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$1100(Landroid/net/dhcp/DhcpClient;)V

    .line 1008
    return-void
.end method

.method protected abstract packetDestination()Ljava/net/Inet4Address;
.end method

.method protected receivePacket(Landroid/net/dhcp/DhcpPacket;)V
    .locals 3

    .line 1021
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v0, p1}, Landroid/net/dhcp/DhcpClient;->isValidPacket(Landroid/net/dhcp/DhcpPacket;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1022
    :cond_0
    instance-of v0, p1, Landroid/net/dhcp/DhcpAckPacket;

    if-eqz v0, :cond_3

    .line 1023
    invoke-virtual {p1}, Landroid/net/dhcp/DhcpPacket;->toDhcpResults()Landroid/net/DhcpResults;

    move-result-object v0

    .line 1024
    if-eqz v0, :cond_2

    .line 1025
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$3100(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v1

    iget-object v1, v1, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    iget-object v2, v0, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v1, v2}, Landroid/net/LinkAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1026
    const-string v1, "DhcpClient"

    const-string v2, "Renewed lease not for our current IP address!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$2200(Landroid/net/dhcp/DhcpClient;)V

    .line 1028
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->access$800(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1030
    :cond_1
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {v1, p1}, Landroid/net/dhcp/DhcpClient;->setDhcpLeaseExpiry(Landroid/net/dhcp/DhcpPacket;)V

    .line 1036
    iget-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->mLeaseMsg:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/net/dhcp/DhcpClient;->access$1600(Landroid/net/dhcp/DhcpClient;Landroid/net/DhcpResults;Ljava/lang/String;)V

    .line 1037
    iget-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$3200(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1039
    :cond_2
    goto :goto_0

    :cond_3
    instance-of p1, p1, Landroid/net/dhcp/DhcpNakPacket;

    if-eqz p1, :cond_4

    .line 1040
    const-string p1, "DhcpClient"

    const-string v0, "Received NAK, returning to INIT"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iget-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {p1}, Landroid/net/dhcp/DhcpClient;->access$2200(Landroid/net/dhcp/DhcpClient;)V

    .line 1042
    iget-object p1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$800(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/dhcp/DhcpClient;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1044
    :cond_4
    :goto_0
    return-void
.end method

.method protected sendPacket()Z
    .locals 5

    .line 1013
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->this$0:Landroid/net/dhcp/DhcpClient;

    .line 1014
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$3100(Landroid/net/dhcp/DhcpClient;)Landroid/net/DhcpResults;

    move-result-object v1

    iget-object v1, v1, Landroid/net/DhcpResults;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;

    sget-object v2, Landroid/net/dhcp/DhcpPacket;->INADDR_ANY:Ljava/net/Inet4Address;

    .line 1017
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$DhcpReacquiringState;->packetDestination()Ljava/net/Inet4Address;

    move-result-object v3

    .line 1013
    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Landroid/net/dhcp/DhcpClient;->access$2700(Landroid/net/dhcp/DhcpClient;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z

    move-result v0

    return v0
.end method
