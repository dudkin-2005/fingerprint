.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;
.super Ljava/lang/Object;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OffloadWrapper"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .line 1948
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public excludeDownstreamInterface(Ljava/lang/String;)V
    .registers 3
    .param p1, "ifname"    # Ljava/lang/String;

    .line 1973
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->sendOffloadExemptPrefixes()V

    .line 1974
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$3300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/OffloadController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->removeDownstreamInterface(Ljava/lang/String;)V

    .line 1975
    return-void
.end method

.method public sendOffloadExemptPrefixes()V
    .registers 2

    .line 1978
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$2100(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->getLocalPrefixes()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->sendOffloadExemptPrefixes(Ljava/util/Set;)V

    .line 1979
    return-void
.end method

.method public sendOffloadExemptPrefixes(Ljava/util/Set;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    .line 1983
    .local p1, "localPrefixes":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/IpPrefix;>;"
    invoke-static {p1}, Landroid/net/util/PrefixUtils;->addNonForwardablePrefixes(Ljava/util/Set;)V

    .line 1985
    sget-object v0, Landroid/net/util/PrefixUtils;->DEFAULT_WIFI_P2P_PREFIX:Landroid/net/IpPrefix;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1989
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$3000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 1990
    .local v1, "tism":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->linkProperties()Landroid/net/LinkProperties;

    move-result-object v2

    .line 1992
    .local v2, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->servingMode()I

    move-result v3

    packed-switch v3, :pswitch_data_68

    .end local v1    # "tism":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    goto :goto_5b

    .line 2009
    .restart local v1    # "tism":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .restart local v2    # "lp":Landroid/net/LinkProperties;
    :pswitch_2a
    invoke-static {v2}, Landroid/net/util/PrefixUtils;->localPrefixesFrom(Landroid/net/LinkProperties;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .end local v1    # "tism":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    goto :goto_5b

    .line 2001
    .restart local v1    # "tism":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .restart local v2    # "lp":Landroid/net/LinkProperties;
    :pswitch_32
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 2002
    .local v4, "addr":Landroid/net/LinkAddress;
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 2003
    .local v5, "ip":Ljava/net/InetAddress;
    invoke-virtual {v5}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v6

    if-eqz v6, :cond_51

    .end local v4    # "addr":Landroid/net/LinkAddress;
    .end local v5    # "ip":Ljava/net/InetAddress;
    goto :goto_3a

    .line 2004
    .restart local v4    # "addr":Landroid/net/LinkAddress;
    .restart local v5    # "ip":Ljava/net/InetAddress;
    :cond_51
    invoke-static {v5}, Landroid/net/util/PrefixUtils;->ipAddressAsPrefix(Ljava/net/InetAddress;)Landroid/net/IpPrefix;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2005
    .end local v4    # "addr":Landroid/net/LinkAddress;
    .end local v5    # "ip":Ljava/net/InetAddress;
    goto :goto_3a

    .line 2006
    :cond_59
    goto :goto_5b

    .line 1996
    :pswitch_5a
    goto :goto_12

    .line 2012
    .end local v1    # "tism":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .end local v2    # "lp":Landroid/net/LinkProperties;
    :goto_5b
    goto :goto_12

    .line 2014
    :cond_5c
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$3300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/OffloadController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->setLocalPrefixes(Ljava/util/Set;)V

    .line 2015
    return-void

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_5a
        :pswitch_32
        :pswitch_2a
    .end packed-switch
.end method

.method public start()V
    .registers 2

    .line 1950
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$3300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/OffloadController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->start()Z

    .line 1951
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->sendOffloadExemptPrefixes()V

    .line 1952
    return-void
.end method

.method public stop()V
    .registers 2

    .line 1955
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$3300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/OffloadController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->stop()V

    .line 1956
    return-void
.end method

.method public updateDownstreamLinkProperties(Landroid/net/LinkProperties;)V
    .registers 3
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .line 1966
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->sendOffloadExemptPrefixes()V

    .line 1967
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$3300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/OffloadController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->notifyDownstreamLinkProperties(Landroid/net/LinkProperties;)V

    .line 1968
    return-void
.end method

.method public updateUpstreamNetworkState(Landroid/net/NetworkState;)V
    .registers 4
    .param p1, "ns"    # Landroid/net/NetworkState;

    .line 1959
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;
    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$3300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/OffloadController;

    move-result-object v0

    .line 1960
    if-eqz p1, :cond_d

    iget-object v1, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 1959
    :goto_e
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/OffloadController;->setUpstreamLinkProperties(Landroid/net/LinkProperties;)V

    .line 1961
    return-void
.end method
