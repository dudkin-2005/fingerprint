.class Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .registers 2

    .line 842
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p2, "x1"    # Lcom/android/server/NetworkManagementService$1;

    .line 842
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public onCheckHoldWakeLock(I)Z
    .registers 3
    .param p1, "code"    # I

    .line 867
    const/16 v0, 0x265

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onDaemonConnected()V
    .registers 3

    .line 845
    const-string v0, "NetworkManagement"

    const-string/jumbo v1, "onDaemonConnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$300(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 850
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$300(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 851
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0, v1}, Lcom/android/server/NetworkManagementService;->access$302(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    goto :goto_2e

    .line 855
    :cond_20
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mFgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$600(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;-><init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 863
    :goto_2e
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 23
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    .line 872
    move-object/from16 v2, p3

    const-string v0, "Invalid event from daemon (%s)"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 873
    .local v4, "errorMessage":Ljava/lang/String;
    const/4 v0, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    packed-switch p1, :pswitch_data_22c

    const/4 v9, 0x6

    packed-switch p1, :pswitch_data_234

    goto :goto_33

    .line 1032
    :pswitch_1c
    aget-object v0, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1033
    .local v3, "uid":I
    aget-object v0, v2, v8

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    move-object v6, v0

    .line 1035
    .local v6, "firstPacket":[B
    :try_start_29
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, v3, v6}, Landroid/app/IActivityManager;->notifyCleartextNetwork(I[B)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_30} :catch_31

    .line 1037
    goto :goto_33

    .line 1036
    :catch_31
    move-exception v0

    .line 1038
    nop

    .line 1041
    .end local v3    # "uid":I
    .end local v6    # "firstPacket":[B
    :goto_33
    return v5

    .line 995
    :pswitch_34
    aget-object v0, v2, v3

    const-string v5, "Route"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    array-length v0, v2

    if-lt v0, v9, :cond_a4

    .line 999
    const/4 v0, 0x0

    .line 1000
    .local v0, "via":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1001
    .local v5, "dev":Ljava/lang/String;
    const/4 v9, 0x1

    .line 1002
    .local v9, "valid":Z
    move-object v10, v5

    move-object v5, v0

    .line 1002
    .end local v0    # "via":Ljava/lang/String;
    .local v5, "via":Ljava/lang/String;
    .local v6, "i":I
    .local v10, "dev":Ljava/lang/String;
    :goto_46
    move v0, v6

    .line 1002
    .end local v6    # "i":I
    .local v0, "i":I
    add-int/lit8 v6, v0, 0x1

    array-length v11, v2

    if-ge v6, v11, :cond_7c

    if-eqz v9, :cond_7c

    .line 1003
    aget-object v6, v2, v0

    const-string v11, "dev"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 1004
    if-nez v10, :cond_60

    .line 1005
    add-int/lit8 v6, v0, 0x1

    aget-object v6, v2, v6

    .line 1002
    .end local v10    # "dev":Ljava/lang/String;
    .local v6, "dev":Ljava/lang/String;
    move-object v10, v6

    goto :goto_79

    .line 1007
    .end local v6    # "dev":Ljava/lang/String;
    .restart local v10    # "dev":Ljava/lang/String;
    :cond_60
    const/4 v6, 0x0

    .line 1002
    .end local v9    # "valid":Z
    .local v6, "valid":Z
    :goto_61
    move v9, v6

    goto :goto_79

    .line 1009
    .end local v6    # "valid":Z
    .restart local v9    # "valid":Z
    :cond_63
    aget-object v6, v2, v0

    const-string/jumbo v11, "via"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 1010
    if-nez v5, :cond_75

    .line 1011
    add-int/lit8 v6, v0, 0x1

    aget-object v5, v2, v6

    goto :goto_79

    .line 1013
    :cond_75
    const/4 v6, 0x0

    goto :goto_61

    .line 1016
    :cond_77
    const/4 v6, 0x0

    goto :goto_61

    .line 1002
    :goto_79
    add-int/lit8 v6, v0, 0x2

    .line 1002
    .end local v0    # "i":I
    .local v6, "i":I
    goto :goto_46

    .line 1019
    .end local v6    # "i":I
    :cond_7c
    if-eqz v9, :cond_9e

    .line 1022
    const/4 v0, 0x0

    .line 1023
    .local v0, "gateway":Ljava/net/InetAddress;
    if-eqz v5, :cond_89

    :try_start_81
    invoke-static {v5}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    move-object v0, v6

    goto :goto_89

    .line 1027
    .end local v0    # "gateway":Ljava/net/InetAddress;
    :catch_87
    move-exception v0

    goto :goto_9d

    .line 1024
    .restart local v0    # "gateway":Ljava/net/InetAddress;
    :cond_89
    :goto_89
    new-instance v6, Landroid/net/RouteInfo;

    new-instance v11, Landroid/net/IpPrefix;

    aget-object v7, v2, v7

    invoke-direct {v11, v7}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v11, v0, v10}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 1025
    .local v6, "route":Landroid/net/RouteInfo;
    iget-object v7, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v8, v2, v8

    # invokes: Lcom/android/server/NetworkManagementService;->notifyRouteChange(Ljava/lang/String;Landroid/net/RouteInfo;)V
    invoke-static {v7, v8, v6}, Lcom/android/server/NetworkManagementService;->access$1500(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_9c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_81 .. :try_end_9c} :catch_87

    .line 1026
    return v3

    .line 1027
    .end local v0    # "gateway":Ljava/net/InetAddress;
    .end local v6    # "route":Landroid/net/RouteInfo;
    :goto_9d
    nop

    .line 1029
    :cond_9e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 996
    .end local v5    # "via":Ljava/lang/String;
    .end local v9    # "valid":Z
    .end local v10    # "dev":Ljava/lang/String;
    :cond_a4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 977
    :pswitch_aa
    array-length v5, v2

    if-ne v5, v9, :cond_e1

    aget-object v5, v2, v3

    const-string v9, "DnsInfo"

    .line 978
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e1

    aget-object v5, v2, v8

    const-string/jumbo v8, "servers"

    .line 979
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e1

    .line 981
    :try_start_c2
    aget-object v5, v2, v6

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_c8
    .catch Ljava/lang/NumberFormatException; {:try_start_c2 .. :try_end_c8} :catch_da

    .line 984
    .local v8, "lifetime":J
    nop

    .line 983
    nop

    .line 985
    aget-object v0, v2, v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 986
    .local v0, "servers":[Ljava/lang/String;
    iget-object v5, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v6, v2, v7

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    invoke-static {v5, v6, v8, v9, v0}, Lcom/android/server/NetworkManagementService;->access$1400(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V

    .line 986
    .end local v0    # "servers":[Ljava/lang/String;
    .end local v8    # "lifetime":J
    goto :goto_e1

    .line 982
    :catch_da
    move-exception v0

    .line 983
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 988
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_e1
    :goto_e1
    return v3

    .line 947
    :pswitch_e2
    array-length v5, v2

    const/4 v10, 0x7

    if-lt v5, v10, :cond_12d

    aget-object v5, v2, v3

    const-string v10, "Address"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12d

    .line 951
    aget-object v5, v2, v6

    .line 954
    .local v5, "iface":Ljava/lang/String;
    :try_start_f2
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 955
    .local v0, "flags":I
    aget-object v6, v2, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 956
    .local v6, "scope":I
    new-instance v9, Landroid/net/LinkAddress;

    aget-object v7, v2, v7

    invoke-direct {v9, v7, v0, v6}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V
    :try_end_105
    .catch Ljava/lang/NumberFormatException; {:try_start_f2 .. :try_end_105} :catch_126
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f2 .. :try_end_105} :catch_11f

    .line 956
    .end local v0    # "flags":I
    .end local v6    # "scope":I
    move-object v0, v9

    .line 961
    .local v0, "address":Landroid/net/LinkAddress;
    nop

    .line 960
    nop

    .line 963
    aget-object v6, v2, v8

    const-string/jumbo v7, "updated"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_119

    .line 964
    iget-object v6, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # invokes: Lcom/android/server/NetworkManagementService;->notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    invoke-static {v6, v5, v0}, Lcom/android/server/NetworkManagementService;->access$1200(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    goto :goto_11e

    .line 966
    :cond_119
    iget-object v6, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # invokes: Lcom/android/server/NetworkManagementService;->notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    invoke-static {v6, v5, v0}, Lcom/android/server/NetworkManagementService;->access$1300(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 968
    :goto_11e
    return v3

    .line 959
    .end local v0    # "address":Landroid/net/LinkAddress;
    :catch_11f
    move-exception v0

    .line 960
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 957
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_126
    move-exception v0

    .line 958
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 948
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "iface":Ljava/lang/String;
    :cond_12d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 919
    :pswitch_133
    array-length v5, v2

    if-lt v5, v6, :cond_17c

    aget-object v5, v2, v3

    const-string v10, "IfaceClass"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17c

    .line 922
    const-wide/16 v10, 0x0

    .line 923
    .local v10, "timestampNanos":J
    const/4 v5, -0x1

    .line 924
    .local v5, "processUid":I
    array-length v12, v2

    if-lt v12, v0, :cond_15a

    .line 926
    :try_start_146
    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-wide v10, v12

    .line 927
    array-length v6, v2

    if-ne v6, v9, :cond_157

    .line 928
    aget-object v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_156
    .catch Ljava/lang/NumberFormatException; {:try_start_146 .. :try_end_156} :catch_158

    .line 930
    .end local v5    # "processUid":I
    .local v0, "processUid":I
    move v5, v0

    .line 930
    .end local v0    # "processUid":I
    .restart local v5    # "processUid":I
    :cond_157
    goto :goto_15e

    :catch_158
    move-exception v0

    goto :goto_15e

    .line 932
    :cond_15a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    .line 934
    :goto_15e
    aget-object v0, v2, v8

    const-string v6, "active"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 935
    .local v0, "isActive":Z
    iget-object v12, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v6, v2, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 936
    if-eqz v0, :cond_172

    .line 937
    move v14, v7

    goto :goto_173

    :cond_172
    move v14, v3

    :goto_173
    const/16 v18, 0x0

    .line 935
    move-wide v15, v10

    move/from16 v17, v5

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IIJIZ)V
    invoke-static/range {v12 .. v18}, Lcom/android/server/NetworkManagementService;->access$1100(Lcom/android/server/NetworkManagementService;IIJIZ)V

    .line 939
    return v3

    .line 920
    .end local v0    # "isActive":Z
    .end local v5    # "processUid":I
    .end local v10    # "timestampNanos":J
    :cond_17c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 905
    :pswitch_182
    array-length v5, v2

    if-lt v5, v0, :cond_1aa

    aget-object v0, v2, v3

    const-string/jumbo v5, "limit"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1aa

    .line 908
    aget-object v0, v2, v8

    const-string v5, "alert"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a4

    .line 909
    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v5, v2, v7

    aget-object v6, v2, v6

    # invokes: Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v5, v6}, Lcom/android/server/NetworkManagementService;->access$200(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    return v3

    .line 912
    :cond_1a4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 906
    :cond_1aa
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 882
    :pswitch_1b0
    array-length v5, v2

    if-lt v5, v6, :cond_225

    aget-object v5, v2, v3

    const-string v9, "Iface"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_225

    .line 885
    aget-object v5, v2, v8

    const-string v9, "added"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1cf

    .line 886
    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v5, v2, v7

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V
    invoke-static {v0, v5}, Lcom/android/server/NetworkManagementService;->access$700(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 887
    return v3

    .line 888
    :cond_1cf
    aget-object v5, v2, v8

    const-string/jumbo v9, "removed"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e2

    .line 889
    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v5, v2, v7

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V
    invoke-static {v0, v5}, Lcom/android/server/NetworkManagementService;->access$800(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 890
    return v3

    .line 891
    :cond_1e2
    aget-object v5, v2, v8

    const-string v9, "changed"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_200

    array-length v5, v2

    if-ne v5, v0, :cond_200

    .line 892
    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v5, v2, v7

    aget-object v6, v2, v6

    const-string/jumbo v7, "up"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    invoke-static {v0, v5, v6}, Lcom/android/server/NetworkManagementService;->access$900(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 893
    return v3

    .line 894
    :cond_200
    aget-object v5, v2, v8

    const-string/jumbo v8, "linkstate"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21f

    array-length v5, v2

    if-ne v5, v0, :cond_21f

    .line 895
    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v5, v2, v7

    aget-object v6, v2, v6

    const-string/jumbo v7, "up"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    invoke-static {v0, v5, v6}, Lcom/android/server/NetworkManagementService;->access$1000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 896
    return v3

    .line 898
    :cond_21f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 883
    :cond_225
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_22c
    .packed-switch 0x258
        :pswitch_1b0
        :pswitch_182
    .end packed-switch

    :pswitch_data_234
    .packed-switch 0x265
        :pswitch_133
        :pswitch_e2
        :pswitch_aa
        :pswitch_34
        :pswitch_1c
    .end packed-switch
.end method
