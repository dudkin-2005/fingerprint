.class final Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;
.super Ljava/lang/Thread;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/NetworkMonitor;->sendParallelHttpChinaH2Probes(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;)Landroid/net/captiveportal/CaptivePortalProbeResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProbeThread"
.end annotation


# instance fields
.field private final GOOGLE_HTTP:I

.field private final ONEPLUS_HTTP:I

.field private final PUBLIC_HTTP:I

.field private final mHttpType:I

.field private volatile mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;

.field final synthetic val$httpChinaUrl:Ljava/net/URL;

.field final synthetic val$httpGoogleChinaUrl:Ljava/net/URL;

.field final synthetic val$httpPublicChinaUrl:Ljava/net/URL;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$proxy:Landroid/net/ProxyInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;ILandroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1542
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iput-object p4, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$httpChinaUrl:Ljava/net/URL;

    iput-object p5, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$httpPublicChinaUrl:Ljava/net/URL;

    iput-object p6, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$httpGoogleChinaUrl:Ljava/net/URL;

    iput-object p7, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1537
    sget-object p3, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 1538
    const/4 p3, 0x0

    iput p3, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->ONEPLUS_HTTP:I

    .line 1539
    const/4 p3, 0x1

    iput p3, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->PUBLIC_HTTP:I

    .line 1540
    const/4 p3, 0x2

    iput p3, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->GOOGLE_HTTP:I

    .line 1543
    iput p2, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->mHttpType:I

    .line 1544
    return-void
.end method


# virtual methods
.method public result()Landroid/net/captiveportal/CaptivePortalProbeResult;
    .registers 2

    .line 1547
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v0
.end method

.method public run()V
    .registers 5

    .line 1552
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->mHttpType:I

    const/4 v1, 0x1

    if-nez v0, :cond_12

    .line 1553
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$httpChinaUrl:Ljava/net/URL;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$4600(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    goto :goto_2f

    .line 1554
    :cond_12
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->mHttpType:I

    if-ne v0, v1, :cond_23

    .line 1555
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$httpPublicChinaUrl:Ljava/net/URL;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$4600(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    goto :goto_2f

    .line 1557
    :cond_23
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$proxy:Landroid/net/ProxyInfo;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$httpGoogleChinaUrl:Ljava/net/URL;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-static {v0, v2, v3, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$4600(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 1559
    :goto_2f
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->mResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1560
    :goto_37
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_49

    .line 1561
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_37

    .line 1565
    :cond_49
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1566
    return-void
.end method
