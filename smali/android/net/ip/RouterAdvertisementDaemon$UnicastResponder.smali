.class final Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;
.super Ljava/lang/Thread;
.source "RouterAdvertisementDaemon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/RouterAdvertisementDaemon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UnicastResponder"
.end annotation


# instance fields
.field private final mSolication:[B

.field private final solicitor:Ljava/net/InetSocketAddress;

.field final synthetic this$0:Landroid/net/ip/RouterAdvertisementDaemon;


# direct methods
.method private constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon;)V
    .locals 0

    .line 642
    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 643
    new-instance p1, Ljava/net/InetSocketAddress;

    invoke-direct {p1}, Ljava/net/InetSocketAddress;-><init>()V

    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->solicitor:Ljava/net/InetSocketAddress;

    .line 647
    const/16 p1, 0x500

    new-array p1, p1, [B

    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->mSolication:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ip/RouterAdvertisementDaemon;Landroid/net/ip/RouterAdvertisementDaemon$1;)V
    .locals 0

    .line 642
    invoke-direct {p0, p1}, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;-><init>(Landroid/net/ip/RouterAdvertisementDaemon;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 651
    :goto_0
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->access$300(Landroid/net/ip/RouterAdvertisementDaemon;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 654
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    .line 655
    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->access$400(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->mSolication:[B

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->mSolication:[B

    array-length v4, v0

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->solicitor:Ljava/net/InetSocketAddress;

    .line 654
    invoke-static/range {v1 .. v6}, Landroid/system/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    move-result v0

    .line 657
    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->mSolication:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {}, Landroid/net/ip/RouterAdvertisementDaemon;->access$500()B

    move-result v1
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 665
    :cond_0
    nop

    .line 667
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->solicitor:Ljava/net/InetSocketAddress;

    invoke-static {v0, v1}, Landroid/net/ip/RouterAdvertisementDaemon;->access$700(Landroid/net/ip/RouterAdvertisementDaemon;Ljava/net/InetSocketAddress;)V

    goto :goto_0

    .line 658
    :cond_1
    :goto_1
    goto :goto_0

    .line 660
    :catch_0
    move-exception v0

    .line 661
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->this$0:Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->access$300(Landroid/net/ip/RouterAdvertisementDaemon;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 662
    invoke-static {}, Landroid/net/ip/RouterAdvertisementDaemon;->access$600()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recvfrom error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_2
    goto :goto_0

    .line 669
    :cond_3
    return-void
.end method