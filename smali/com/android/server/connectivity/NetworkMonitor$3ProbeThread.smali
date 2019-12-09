.class final Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;
.super Ljava/lang/Thread;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/NetworkMonitor;->sendParallelHttpChinaO2Probes(Landroid/net/ProxyInfo;[Ljava/lang/String;Ljava/net/URL;)Landroid/net/captiveportal/CaptivePortalProbeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProbeThread"
.end annotation


# instance fields
.field private final GOOGLE_HTTP1:I

.field private final GOOGLE_HTTP2:I

.field private final GOOGLE_HTTPS:I

.field private final mHttpType:I

.field private volatile mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;

.field final synthetic val$httpChinaServers:[Ljava/lang/String;

.field final synthetic val$httpsGoogleChinaUrl:Ljava/net/URL;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$proxy:Landroid/net/ProxyInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;ILandroid/net/ProxyInfo;[Ljava/lang/String;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V
    .registers 7
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1632
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iput-object p4, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->val$httpChinaServers:[Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->val$httpsGoogleChinaUrl:Ljava/net/URL;

    iput-object p6, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1627
    sget-object p3, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 1628
    const/4 p3, 0x0

    iput p3, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->GOOGLE_HTTP1:I

    .line 1629
    const/4 p3, 0x1

    iput p3, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->GOOGLE_HTTP2:I

    .line 1630
    const/4 p3, 0x2

    iput p3, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->GOOGLE_HTTPS:I

    .line 1633
    iput p2, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->mHttpType:I

    .line 1634
    return-void
.end method


# virtual methods
.method public result()Landroid/net/captiveportal/CaptivePortalProbeResult;
    .registers 2

    .line 1637
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v0
.end method

.method public run()V
    .registers 7

    .line 1642
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->mHttpType:I

    const/4 v1, 0x1

    if-nez v0, :cond_1b

    .line 1643
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->val$httpChinaServers:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;
    invoke-static {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$4700(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$4600(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    goto :goto_41

    .line 1644
    :cond_1b
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->mHttpType:I

    if-ne v0, v1, :cond_34

    .line 1645
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->val$httpChinaServers:[Ljava/lang/String;

    aget-object v4, v4, v1

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;
    invoke-static {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$4700(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$4600(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    goto :goto_41

    .line 1647
    :cond_34
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->val$httpsGoogleChinaUrl:Ljava/net/URL;

    const/4 v3, 0x2

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$4600(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 1649
    :goto_41
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1650
    :goto_49
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5b

    .line 1651
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_49

    .line 1655
    :cond_5b
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1656
    return-void
.end method
