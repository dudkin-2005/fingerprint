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
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-direct {p0}, Landroid/net/IIpConnectivityMetrics$Stub;-><init>()V

    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 1

    .line 317
    const-string v0, "android.permission.CONNECTIVITY_INTERNAL"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforcePermission(Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method private enforceDumpPermission()V
    .locals 1

    .line 321
    const-string v0, "android.permission.DUMP"

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforcePermission(Ljava/lang/String;)V

    .line 322
    return-void
.end method

.method private enforceNetdEventListeningPermission()V
    .locals 4

    .line 329
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 330
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 334
    return-void

    .line 331
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 332
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    .line 331
    const-string v0, "Uid %d has no permission to listen for netd events."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforcePermission(Ljava/lang/String;)V
    .locals 2

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
    .locals 1

    .line 338
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforceNetdEventListeningPermission()V

    .line 339
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    iget-object v0, v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    if-nez v0, :cond_0

    .line 340
    const/4 p1, 0x0

    return p1

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    iget-object v0, v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/connectivity/NetdEventListenerService;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z

    move-result p1

    return p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 288
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforceDumpPermission()V

    .line 290
    array-length p1, p3

    const/4 v0, 0x0

    if-lez p1, :cond_0

    aget-object p1, p3, v0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 291
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x32b09e

    const/4 v4, 0x1

    if-eq v2, v3, :cond_4

    const v3, 0x5d03b04

    if-eq v2, v3, :cond_3

    const v0, 0x65fc9e8

    if-eq v2, v0, :cond_2

    const v0, 0x6f2847b2

    if-eq v2, v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "ipclient"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x2

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "proto"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v0, v4

    goto :goto_2

    :cond_3
    const-string v2, "flush"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_4
    const-string v0, "list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x3

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v1

    :goto_2
    const/4 p1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 309
    iget-object p3, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {p3, p2}, Lcom/android/server/connectivity/IpConnectivityMetrics;->access$400(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V

    .line 310
    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    invoke-static {p2, p1}, Landroid/net/ip/IpClient;->dumpAllLogs(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 312
    return-void

    .line 306
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {p1, p2}, Lcom/android/server/connectivity/IpConnectivityMetrics;->access$400(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V

    .line 307
    return-void

    .line 299
    :pswitch_1
    if-eqz p3, :cond_6

    array-length v0, p3

    if-le v0, v4, :cond_6

    .line 300
    array-length p1, p3

    invoke-static {p3, v4, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_3

    .line 301
    :cond_6
    nop

    .line 302
    :goto_3
    invoke-static {p2, p1}, Landroid/net/ip/IpClient;->dumpAllLogs(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 303
    return-void

    .line 296
    :pswitch_2
    iget-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {p1, p2}, Lcom/android/server/connectivity/IpConnectivityMetrics;->access$300(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V

    .line 297
    return-void

    .line 293
    :pswitch_3
    iget-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {p1, p2}, Lcom/android/server/connectivity/IpConnectivityMetrics;->access$200(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V

    .line 294
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public logEvent(Landroid/net/ConnectivityMetricsEvent;)I
    .locals 1

    .line 282
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforceConnectivityInternalPermission()V

    .line 283
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->access$100(Lcom/android/server/connectivity/IpConnectivityMetrics;Landroid/net/ConnectivityMetricsEvent;)I

    move-result p1

    return p1
.end method

.method public removeNetdEventCallback(I)Z
    .locals 1

    .line 347
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforceNetdEventListeningPermission()V

    .line 348
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    iget-object v0, v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    if-nez v0, :cond_0

    .line 350
    const/4 p1, 0x1

    return p1

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    iget-object v0, v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->removeNetdEventCallback(I)Z

    move-result p1

    return p1
.end method
