.class Lcom/android/server/net/NetworkPolicyManagerService$20;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 4859
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 4862
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_1be

    .line 4985
    :pswitch_7
    return v1

    .line 4979
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 4980
    .local v0, "template":Landroid/net/NetworkTemplate;
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_12

    move v1, v2

    nop

    .line 4981
    .local v1, "enabled":Z
    :cond_12
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabledInner(Landroid/net/NetworkTemplate;Z)V
    invoke-static {v3, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4500(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;Z)V

    .line 4982
    return v2

    .line 4973
    .end local v0    # "template":Landroid/net/NetworkTemplate;
    .end local v1    # "enabled":Z
    :pswitch_18
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4974
    .local v0, "userId":I
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    .line 4975
    .local v1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredRestrictedPackagesInternal(Ljava/util/Set;I)V
    invoke-static {v3, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4400(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/Set;I)V

    .line 4976
    return v2

    .line 4961
    .end local v0    # "userId":I
    .end local v1    # "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :pswitch_24
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4962
    .local v0, "overrideMask":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 4963
    .local v3, "overrideValue":I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4964
    .local v4, "subId":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 4965
    .local v5, "length":I
    nop

    .local v1, "i":I
    :goto_3b
    if-ge v1, v5, :cond_51

    .line 4966
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/net/INetworkPolicyListener;

    .line 4967
    .local v6, "listener":Landroid/net/INetworkPolicyListener;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->dispatchSubscriptionOverride(Landroid/net/INetworkPolicyListener;III)V
    invoke-static {v7, v6, v4, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4300(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;III)V

    .line 4965
    .end local v6    # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 4969
    .end local v1    # "i":I
    :cond_51
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4970
    return v2

    .line 4957
    .end local v0    # "overrideMask":I
    .end local v3    # "overrideValue":I
    .end local v4    # "subId":I
    .end local v5    # "length":I
    :pswitch_5b
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->resetUidFirewallRules(I)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4200(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 4958
    return v2

    .line 4914
    :pswitch_63
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4915
    .local v0, "uid":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 4916
    .local v3, "policy":I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    .line 4918
    .local v4, "notifyApp":Ljava/lang/Boolean;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 4919
    .restart local v5    # "length":I
    nop

    .restart local v1    # "i":I
    :goto_76
    if-ge v1, v5, :cond_8c

    .line 4920
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v6}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v6

    check-cast v6, Landroid/net/INetworkPolicyListener;

    .line 4921
    .restart local v6    # "listener":Landroid/net/INetworkPolicyListener;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->dispatchUidPoliciesChanged(Landroid/net/INetworkPolicyListener;II)V
    invoke-static {v7, v6, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3700(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    .line 4919
    .end local v6    # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_76

    .line 4923
    .end local v1    # "i":I
    :cond_8c
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4925
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 4926
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->broadcastRestrictBackgroundChanged(ILjava/lang/Boolean;)V
    invoke-static {v1, v0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3800(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/Boolean;)V

    .line 4928
    :cond_a0
    return v2

    .line 4953
    .end local v0    # "uid":I
    .end local v3    # "policy":I
    .end local v4    # "notifyApp":Ljava/lang/Boolean;
    .end local v5    # "length":I
    :pswitch_a1
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4000(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    .line 4954
    return v2

    .line 4946
    :pswitch_ab
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4000(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    .line 4948
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    int-to-long v3, v3

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    iget v5, p1, Landroid/os/Message;->arg2:I

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V
    invoke-static {v0, v1, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4100(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V

    .line 4950
    return v2

    .line 4941
    :pswitch_ce
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3900(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 4942
    return v2

    .line 4931
    :pswitch_d4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4934
    .local v0, "lowestRule":J
    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    .line 4935
    .local v3, "persistThreshold":J
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;
    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3500(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkStatsManagerInternal;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/android/server/net/NetworkStatsManagerInternal;->advisePersistThreshold(J)V

    .line 4936
    return v2

    .line 4900
    .end local v0    # "lowestRule":J
    .end local v3    # "persistThreshold":J
    :pswitch_ea
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_f0

    move v0, v2

    goto :goto_f1

    :cond_f0
    move v0, v1

    .line 4901
    .local v0, "restrictBackground":Z
    :goto_f1
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 4902
    .local v3, "length":I
    nop

    .restart local v1    # "i":I
    :goto_fc
    if-ge v1, v3, :cond_112

    .line 4903
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/net/INetworkPolicyListener;

    .line 4904
    .local v4, "listener":Landroid/net/INetworkPolicyListener;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V
    invoke-static {v5, v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3600(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    .line 4902
    .end local v4    # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_fc

    .line 4906
    .end local v1    # "i":I
    :cond_112
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4907
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4909
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4910
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4911
    return v2

    .line 4885
    .end local v0    # "restrictBackground":Z
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "length":I
    :pswitch_133
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 4887
    .local v0, "iface":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4888
    :try_start_13c
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;
    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15b

    .line 4891
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;
    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3500(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkStatsManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsManagerInternal;->forceUpdate()V

    .line 4893
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 4894
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 4896
    :cond_15b
    monitor-exit v3

    .line 4897
    return v2

    .line 4896
    :catchall_15d
    move-exception v1

    monitor-exit v3
    :try_end_15f
    .catchall {:try_start_13c .. :try_end_15f} :catchall_15d

    throw v1

    .line 4875
    .end local v0    # "iface":Ljava/lang/String;
    :pswitch_160
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 4876
    .local v0, "meteredIfaces":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 4877
    .restart local v3    # "length":I
    nop

    .local v1, "i":I
    :goto_16f
    if-ge v1, v3, :cond_185

    .line 4878
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/net/INetworkPolicyListener;

    .line 4879
    .restart local v4    # "listener":Landroid/net/INetworkPolicyListener;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    invoke-static {v5, v4, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3300(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    .line 4877
    .end local v4    # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_16f

    .line 4881
    .end local v1    # "i":I
    :cond_185
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4882
    return v2

    .line 4864
    .end local v0    # "meteredIfaces":[Ljava/lang/String;
    .end local v3    # "length":I
    :pswitch_18f
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4865
    .local v0, "uid":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 4866
    .local v3, "uidRules":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    .line 4867
    .local v4, "length":I
    nop

    .restart local v1    # "i":I
    :goto_19e
    if-ge v1, v4, :cond_1b4

    .line 4868
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/net/INetworkPolicyListener;

    .line 4869
    .local v5, "listener":Landroid/net/INetworkPolicyListener;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V
    invoke-static {v6, v5, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3200(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    .line 4867
    .end local v5    # "listener":Landroid/net/INetworkPolicyListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_19e

    .line 4871
    .end local v1    # "i":I
    :cond_1b4
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4872
    return v2

    :pswitch_data_1be
    .packed-switch 0x1
        :pswitch_18f
        :pswitch_160
        :pswitch_7
        :pswitch_7
        :pswitch_133
        :pswitch_ea
        :pswitch_d4
        :pswitch_ce
        :pswitch_7
        :pswitch_ab
        :pswitch_a1
        :pswitch_7
        :pswitch_63
        :pswitch_7
        :pswitch_5b
        :pswitch_24
        :pswitch_18
        :pswitch_8
    .end packed-switch
.end method
