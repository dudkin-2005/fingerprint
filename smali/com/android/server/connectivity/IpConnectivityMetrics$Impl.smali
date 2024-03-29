.class public final Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;
.super Landroid/net/IIpConnectivityMetrics$Stub;
.source "IpConnectivityMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/IpConnectivityMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Impl"
.end annotation


# static fields
.field static final CMD_DEFAULT:Ljava/lang/String; = ""

.field static final CMD_FLUSH:Ljava/lang/String; = "flush"

.field static final CMD_IPCLIENT:Ljava/lang/String; = "ipclient"

.field static final CMD_LIST:Ljava/lang/String; = "list"

.field static final CMD_PROTO:Ljava/lang/String; = "proto"


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/IpConnectivityMetrics;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/connectivity/IpConnectivityMetrics;

    .line 265
    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-direct {p0}, Landroid/net/IIpConnectivityMetrics$Stub;-><init>()V

    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .registers 2

    .line 317
    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforcePermission(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method private enforceDumpPermission()V
    .registers 2

    .line 321
    const-string v0, "android.permission.DUMP"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforcePermission(Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method private enforceNetdEventListeningPermission()V
    .registers 6

    .line 329
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 330
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_9

    .line 334
    return-void

    .line 331
    :cond_9
    new-instance v1, Ljava/lang/SecurityException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 332
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 331
    const-string v3, "Uid %d has no permission to listen for netd events."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .registers 4
    .param p1, "what"    # Ljava/lang/String;

    .line 325
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "IpConnectivityMetrics"

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method


# virtual methods
.method public addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z
    .registers 4
    .param p1, "callerType"    # I
    .param p2, "callback"    # Landroid/net/INetdEventCallback;

    .line 338
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforceNetdEventListeningPermission()V

    .line 339
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    iget-object v0, v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    if-nez v0, :cond_b

    .line 340
    const/4 v0, 0x0

    return v0

    .line 342
    :cond_b
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    iget-object v0, v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/connectivity/NetdEventListenerService;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 288
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforceDumpPermission()V

    .line 290
    array-length v0, p3

    const/4 v1, 0x0

    if-lez v0, :cond_a

    aget-object v0, p3, v1

    goto :goto_c

    :cond_a
    const-string v0, ""

    .line 291
    .local v0, "cmd":Ljava/lang/String;
    :goto_c
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x32b09e

    const/4 v5, 0x1

    if-eq v3, v4, :cond_46

    const v4, 0x5d03b04

    if-eq v3, v4, :cond_3d

    const v1, 0x65fc9e8

    if-eq v3, v1, :cond_32

    const v1, 0x6f2847b2

    if-eq v3, v1, :cond_27

    goto :goto_51

    :cond_27
    const-string/jumbo v1, "ipclient"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    const/4 v1, 0x2

    goto :goto_52

    :cond_32
    const-string/jumbo v1, "proto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    move v1, v5

    goto :goto_52

    :cond_3d
    const-string v3, "flush"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    goto :goto_52

    :cond_46
    const-string/jumbo v1, "list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    const/4 v1, 0x3

    goto :goto_52

    :cond_51
    :goto_51
    move v1, v2

    :goto_52
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_8a

    .line 309
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    # invokes: Lcom/android/server/connectivity/IpConnectivityMetrics;->cmdList(Ljava/io/PrintWriter;)V
    invoke-static {v1, p2}, Lcom/android/server/connectivity/IpConnectivityMetrics;->access$400(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V

    .line 310
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    invoke-static {p2, v2}, Landroid/net/ip/IpClient;->dumpAllLogs(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 312
    return-void

    .line 306
    :pswitch_64
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    # invokes: Lcom/android/server/connectivity/IpConnectivityMetrics;->cmdList(Ljava/io/PrintWriter;)V
    invoke-static {v1, p2}, Lcom/android/server/connectivity/IpConnectivityMetrics;->access$400(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V

    .line 307
    return-void

    .line 299
    :pswitch_6a
    if-eqz p3, :cond_78

    array-length v1, p3

    if-le v1, v5, :cond_78

    .line 300
    array-length v1, p3

    invoke-static {p3, v5, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    nop

    .line 301
    :cond_78
    move-object v1, v2

    .line 302
    .local v1, "ipclientArgs":[Ljava/lang/String;
    invoke-static {p2, v1}, Landroid/net/ip/IpClient;->dumpAllLogs(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 303
    return-void

    .line 296
    .end local v1    # "ipclientArgs":[Ljava/lang/String;
    :pswitch_7d
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    # invokes: Lcom/android/server/connectivity/IpConnectivityMetrics;->cmdListAsProto(Ljava/io/PrintWriter;)V
    invoke-static {v1, p2}, Lcom/android/server/connectivity/IpConnectivityMetrics;->access$300(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V

    .line 297
    return-void

    .line 293
    :pswitch_83
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    # invokes: Lcom/android/server/connectivity/IpConnectivityMetrics;->cmdFlush(Ljava/io/PrintWriter;)V
    invoke-static {v1, p2}, Lcom/android/server/connectivity/IpConnectivityMetrics;->access$200(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V

    .line 294
    return-void

    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_83
        :pswitch_7d
        :pswitch_6a
        :pswitch_64
    .end packed-switch
.end method

.method public logEvent(Landroid/net/ConnectivityMetricsEvent;)I
    .registers 3
    .param p1, "event"    # Landroid/net/ConnectivityMetricsEvent;

    .line 282
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforceConnectivityInternalPermission()V

    .line 283
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    # invokes: Lcom/android/server/connectivity/IpConnectivityMetrics;->append(Landroid/net/ConnectivityMetricsEvent;)I
    invoke-static {v0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->access$100(Lcom/android/server/connectivity/IpConnectivityMetrics;Landroid/net/ConnectivityMetricsEvent;)I

    move-result v0

    return v0
.end method

.method public removeNetdEventCallback(I)Z
    .registers 3
    .param p1, "callerType"    # I

    .line 347
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforceNetdEventListeningPermission()V

    .line 348
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    iget-object v0, v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    if-nez v0, :cond_b

    .line 350
    const/4 v0, 0x1

    return v0

    .line 352
    :cond_b
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    iget-object v0, v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->removeNetdEventCallback(I)Z

    move-result v0

    return v0
.end method
