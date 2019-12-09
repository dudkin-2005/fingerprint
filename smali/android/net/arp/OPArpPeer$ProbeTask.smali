.class Landroid/net/arp/OPArpPeer$ProbeTask;
.super Ljava/lang/Object;
.source "OPArpPeer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/arp/OPArpPeer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProbeTask"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/arp/OPArpPeer;


# direct methods
.method private constructor <init>(Landroid/net/arp/OPArpPeer;)V
    .registers 2

    .line 95
    iput-object p1, p0, Landroid/net/arp/OPArpPeer$ProbeTask;->this$0:Landroid/net/arp/OPArpPeer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/arp/OPArpPeer;Landroid/net/arp/OPArpPeer$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/net/arp/OPArpPeer;
    .param p2, "x1"    # Landroid/net/arp/OPArpPeer$1;

    .line 95
    invoke-direct {p0, p1}, Landroid/net/arp/OPArpPeer$ProbeTask;-><init>(Landroid/net/arp/OPArpPeer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 98
    :try_start_0
    const-string v0, "arp_OPArpPeer"

    const-string v1, "begin to findDumpTarget"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Landroid/net/arp/OPArpPeer$ProbeTask;->this$0:Landroid/net/arp/OPArpPeer;

    const/16 v1, 0x7d0

    # invokes: Landroid/net/arp/OPArpPeer;->findDupTarget(I)I
    invoke-static {v0, v1}, Landroid/net/arp/OPArpPeer;->access$000(Landroid/net/arp/OPArpPeer;I)I

    .line 100
    const-string v0, "arp_OPArpPeer"

    const-string v1, "find dumTarget finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Landroid/net/arp/OPArpPeer$ProbeTask;->this$0:Landroid/net/arp/OPArpPeer;

    invoke-virtual {v0}, Landroid/net/arp/OPArpPeer;->onProbeFinished()V
    :try_end_1a
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 103
    goto :goto_1c

    .line 102
    :catch_1b
    move-exception v0

    .line 104
    :goto_1c
    return-void
.end method
