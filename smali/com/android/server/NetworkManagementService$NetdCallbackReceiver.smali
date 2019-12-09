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
    .locals 0

    .line 827
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V
    .locals 0

    .line 827
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public onCheckHoldWakeLock(I)Z
    .locals 1

    .line 852
    const/16 v0, 0x265

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onDaemonConnected()V
    .locals 2

    .line 830
    const-string v0, "NetworkManagement"

    const-string v1, "onDaemonConnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$400(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$400(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 836
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/NetworkManagementService;->access$402(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    goto :goto_0

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$700(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;-><init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 848
    :goto_0
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v1, p0

    .line 857
    move-object/from16 v2, p3

    const-string v3, "Invalid event from daemon (%s)"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 858
    const/4 v5, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    packed-switch p1, :pswitch_data_0

    const/4 v10, 0x6

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 1017
    :pswitch_0
    aget-object v0, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1018
    aget-object v1, v2, v9

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 1020
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/app/IActivityManager;->notifyCleartextNetwork(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1022
    goto :goto_0

    .line 1021
    :catch_0
    move-exception v0

    .line 1023
    nop

    .line 1026
    :goto_0
    return v6

    .line 980
    :pswitch_1
    aget-object v0, v2, v4

    const-string v5, "Route"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    array-length v0, v2

    if-lt v0, v10, :cond_7

    .line 984
    nop

    .line 985
    nop

    .line 986
    nop

    .line 987
    const/4 v0, 0x0

    move-object v10, v0

    move-object v11, v10

    move v5, v4

    :goto_1
    add-int/lit8 v12, v7, 0x1

    array-length v13, v2

    if-ge v12, v13, :cond_4

    if-eqz v5, :cond_4

    .line 988
    aget-object v13, v2, v7

    const-string v14, "dev"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 989
    if-nez v11, :cond_0

    .line 990
    aget-object v11, v2, v12

    goto :goto_3

    .line 992
    :cond_0
    nop

    .line 987
    :goto_2
    move v5, v6

    goto :goto_3

    .line 994
    :cond_1
    aget-object v13, v2, v7

    const-string/jumbo v14, "via"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 995
    if-nez v10, :cond_2

    .line 996
    aget-object v10, v2, v12

    goto :goto_3

    .line 998
    :cond_2
    goto :goto_2

    .line 1001
    :cond_3
    goto :goto_2

    .line 987
    :goto_3
    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 1004
    :cond_4
    if-eqz v5, :cond_6

    .line 1007
    nop

    .line 1008
    if-eqz v10, :cond_5

    :try_start_1
    invoke-static {v10}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_4

    .line 1012
    :catch_1
    move-exception v0

    goto :goto_5

    .line 1009
    :cond_5
    :goto_4
    new-instance v5, Landroid/net/RouteInfo;

    new-instance v6, Landroid/net/IpPrefix;

    aget-object v7, v2, v8

    invoke-direct {v6, v7}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6, v0, v11}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    .line 1010
    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v1, v2, v9

    invoke-static {v0, v1, v5}, Lcom/android/server/NetworkManagementService;->access$1700(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1011
    return v4

    .line 1012
    :goto_5
    nop

    .line 1014
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 981
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 962
    :pswitch_2
    array-length v0, v2

    if-ne v0, v10, :cond_8

    aget-object v0, v2, v4

    const-string v6, "DnsInfo"

    .line 963
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    aget-object v0, v2, v9

    const-string/jumbo v6, "servers"

    .line 964
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 966
    :try_start_2
    aget-object v0, v2, v7

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 969
    nop

    .line 970
    aget-object v0, v2, v5

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 971
    iget-object v1, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v2, v2, v8

    invoke-static {v1, v2, v6, v7, v0}, Lcom/android/server/NetworkManagementService;->access$1600(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V

    goto :goto_6

    .line 967
    :catch_2
    move-exception v0

    .line 968
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 973
    :cond_8
    :goto_6
    return v4

    .line 932
    :pswitch_3
    array-length v0, v2

    const/4 v6, 0x7

    if-lt v0, v6, :cond_a

    aget-object v0, v2, v4

    const-string v6, "Address"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 936
    aget-object v0, v2, v7

    .line 939
    :try_start_3
    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 940
    aget-object v6, v2, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 941
    new-instance v7, Landroid/net/LinkAddress;

    aget-object v8, v2, v8

    invoke-direct {v7, v8, v5, v6}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 946
    nop

    .line 948
    aget-object v2, v2, v9

    const-string/jumbo v3, "updated"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 949
    iget-object v1, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1, v0, v7}, Lcom/android/server/NetworkManagementService;->access$1400(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    goto :goto_7

    .line 951
    :cond_9
    iget-object v1, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1, v0, v7}, Lcom/android/server/NetworkManagementService;->access$1500(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    .line 953
    :goto_7
    return v4

    .line 944
    :catch_3
    move-exception v0

    .line 945
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 942
    :catch_4
    move-exception v0

    .line 943
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 933
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 904
    :pswitch_4
    array-length v0, v2

    if-lt v0, v7, :cond_e

    aget-object v0, v2, v4

    const-string v6, "IfaceClass"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 907
    const-wide/16 v11, 0x0

    .line 908
    const/4 v3, -0x1

    .line 909
    array-length v0, v2

    if-lt v0, v5, :cond_c

    .line 911
    :try_start_4
    aget-object v0, v2, v7

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_6

    .line 912
    :try_start_5
    array-length v0, v2

    if-ne v0, v10, :cond_b

    .line 913
    aget-object v0, v2, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    .line 915
    move v3, v0

    :cond_b
    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_8

    :catch_6
    move-exception v0

    move-wide v6, v11

    goto :goto_8

    .line 917
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    .line 919
    :goto_8
    move v15, v3

    move-wide v13, v6

    aget-object v0, v2, v9

    const-string v3, "active"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 920
    iget-object v10, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v1, v2, v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 921
    if-eqz v0, :cond_d

    .line 922
    move v12, v8

    goto :goto_9

    :cond_d
    move v12, v4

    :goto_9
    const/16 v16, 0x0

    .line 920
    invoke-static/range {v10 .. v16}, Lcom/android/server/NetworkManagementService;->access$1300(Lcom/android/server/NetworkManagementService;IIJIZ)V

    .line 924
    return v4

    .line 905
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    :pswitch_5
    array-length v0, v2

    if-lt v0, v5, :cond_10

    aget-object v0, v2, v4

    const-string v5, "limit"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 893
    aget-object v0, v2, v9

    const-string v5, "alert"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 894
    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v1, v2, v8

    aget-object v2, v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/server/NetworkManagementService;->access$1200(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    return v4

    .line 897
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 891
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 867
    :pswitch_6
    array-length v0, v2

    if-lt v0, v7, :cond_15

    aget-object v0, v2, v4

    const-string v6, "Iface"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 870
    aget-object v0, v2, v9

    const-string v6, "added"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 871
    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v1, v2, v8

    invoke-static {v0, v1}, Lcom/android/server/NetworkManagementService;->access$800(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 872
    return v4

    .line 873
    :cond_11
    aget-object v0, v2, v9

    const-string/jumbo v6, "removed"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 874
    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v1, v2, v8

    invoke-static {v0, v1}, Lcom/android/server/NetworkManagementService;->access$900(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    .line 875
    return v4

    .line 876
    :cond_12
    aget-object v0, v2, v9

    const-string v6, "changed"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    array-length v0, v2

    if-ne v0, v5, :cond_13

    .line 877
    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v1, v2, v8

    aget-object v2, v2, v7

    const-string/jumbo v3, "up"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/NetworkManagementService;->access$1000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 878
    return v4

    .line 879
    :cond_13
    aget-object v0, v2, v9

    const-string v6, "linkstate"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    array-length v0, v2

    if-ne v0, v5, :cond_14

    .line 880
    iget-object v0, v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    aget-object v1, v2, v8

    aget-object v2, v2, v7

    const-string/jumbo v3, "up"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/server/NetworkManagementService;->access$1100(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    .line 881
    return v4

    .line 883
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x258
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x265
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
