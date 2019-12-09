.class Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EvaluatingPrivateDnsState"
.end annotation


# instance fields
.field private mPrivateDnsConfig:Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

.field private mPrivateDnsReevalDelayMs:I

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V
    .locals 0

    .line 742
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method

.method private handlePrivateDnsEvaluationFailure()V
    .locals 4

    .line 820
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1500(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/Object;)V

    .line 827
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsReevalDelayMs:I

    int-to-long v1, v1

    const v3, 0x8200f

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(IJ)V

    .line 828
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsReevalDelayMs:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsReevalDelayMs:I

    .line 829
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsReevalDelayMs:I

    const v1, 0x927c0

    if-le v0, v1, :cond_0

    .line 830
    iput v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsReevalDelayMs:I

    .line 832
    :cond_0
    return-void
.end method

.method private inStrictMode()Z
    .locals 1

    .line 793
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$1700(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isStrictModeHostnameResolved()Z
    .locals 2

    .line 797
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsConfig:Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsConfig:Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    iget-object v0, v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->hostname:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    .line 798
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1700(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsConfig:Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    iget-object v0, v0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 797
    :goto_0
    return v0
.end method

.method private notifyPrivateDnsConfigResolved()V
    .locals 6

    .line 815
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$2200(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    .line 816
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$2100(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsConfig:Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    .line 815
    const v4, 0x8200e

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 817
    return-void
.end method

.method private resolveStrictModeHostname()V
    .locals 3

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    .line 807
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$2500(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/Network;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1700(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 806
    invoke-static {v0, v1, v2}, Landroid/net/dns/ResolvUtil;->blockingResolveAllLocally(Landroid/net/Network;Ljava/lang/String;I)[Ljava/net/InetAddress;

    move-result-object v0

    .line 808
    new-instance v1, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1700(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;-><init>(Ljava/lang/String;[Ljava/net/InetAddress;)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsConfig:Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    goto :goto_0

    .line 809
    :catch_0
    move-exception v0

    .line 810
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsConfig:Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    .line 812
    :goto_0
    return-void
.end method

.method private sendPrivateDnsProbe()Z
    .locals 4

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-dnsotls-ds.metric.gstatic.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 840
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$3300(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->network()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 841
    if-eqz v0, :cond_0

    array-length v0, v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2

    .line 842
    :catch_0
    move-exception v0

    .line 843
    return v2
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 748
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsReevalDelayMs:I

    .line 749
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->mPrivateDnsConfig:Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    .line 750
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x8200f

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(I)V

    .line 751
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1

    .line 755
    iget p1, p1, Landroid/os/Message;->what:I

    const v0, 0x8200f

    if-eq p1, v0, :cond_0

    .line 787
    const/4 p1, 0x0

    return p1

    .line 757
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->inStrictMode()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 758
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->isStrictModeHostnameResolved()Z

    move-result p1

    if-nez p1, :cond_2

    .line 759
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->resolveStrictModeHostname()V

    .line 761
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->isStrictModeHostnameResolved()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 762
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->notifyPrivateDnsConfigResolved()V

    goto :goto_0

    .line 764
    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->handlePrivateDnsEvaluationFailure()V

    .line 765
    goto :goto_1

    .line 777
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->sendPrivateDnsProbe()Z

    move-result p1

    if-nez p1, :cond_3

    .line 778
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->handlePrivateDnsEvaluationFailure()V

    .line 779
    goto :goto_1

    .line 784
    :cond_3
    iget-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$2400(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 785
    nop

    .line 789
    :goto_1
    const/4 p1, 0x1

    return p1
.end method
