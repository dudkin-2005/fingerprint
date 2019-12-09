.class abstract Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;
.super Landroid/net/dhcp/DhcpClient$LoggingState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PacketRetransmittingState"
.end annotation


# instance fields
.field protected mTimeout:I

.field private mTimer:I

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    .line 790
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    .line 793
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimeout:I

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 797
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->enter()V

    .line 798
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->initTimer()V

    .line 799
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->maybeInitTimeout()V

    .line 800
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    const v1, 0x30065

    invoke-virtual {v0, v1}, Landroid/net/dhcp/DhcpClient;->sendMessage(I)V

    .line 801
    return-void
.end method

.method public exit()V
    .registers 2

    .line 824
    invoke-super {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->exit()V

    .line 825
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mKickAlarm:Lcom/android/internal/util/WakeupMessage;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$2400(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 826
    iget-object v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;
    invoke-static {v0}, Landroid/net/dhcp/DhcpClient;->access$2500(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 827
    return-void
.end method

.method protected initTimer()V
    .registers 2

    .line 834
    const/16 v0, 0x7d0

    iput v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    .line 835
    return-void
.end method

.method protected jitterTimer(I)I
    .registers 5
    .param p1, "baseTimer"    # I

    .line 838
    div-int/lit8 v0, p1, 0xa

    .line 839
    .local v0, "maxJitter":I
    iget-object v1, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mRandom:Ljava/util/Random;
    invoke-static {v1}, Landroid/net/dhcp/DhcpClient;->access$2600(Landroid/net/dhcp/DhcpClient;)Ljava/util/Random;

    move-result-object v1

    const/4 v2, 0x2

    mul-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    sub-int/2addr v1, v0

    .line 840
    .local v1, "jitter":I
    add-int v2, p1, v1

    return v2
.end method

.method protected maybeInitTimeout()V
    .registers 5

    .line 855
    iget v0, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimeout:I

    if-lez v0, :cond_15

    .line 856
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimeout:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 857
    .local v0, "alarmTime":J
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;
    invoke-static {v2}, Landroid/net/dhcp/DhcpClient;->access$2500(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 859
    .end local v0    # "alarmTime":J
    :cond_15
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "message"    # Landroid/os/Message;

    .line 805
    invoke-super {p0, p1}, Landroid/net/dhcp/DhcpClient$LoggingState;->processMessage(Landroid/os/Message;)Z

    .line 806
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_1e

    .line 818
    const/4 v0, 0x0

    return v0

    .line 815
    :pswitch_b
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->timeout()V

    .line 816
    return v1

    .line 812
    :pswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/dhcp/DhcpPacket;

    invoke-virtual {p0, v0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->receivePacket(Landroid/net/dhcp/DhcpPacket;)V

    .line 813
    return v1

    .line 808
    :pswitch_17
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->sendPacket()Z

    .line 809
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->scheduleKick()V

    .line 810
    return v1

    :pswitch_data_1e
    .packed-switch 0x30065
        :pswitch_17
        :pswitch_f
        :pswitch_b
    .end packed-switch
.end method

.method protected abstract receivePacket(Landroid/net/dhcp/DhcpPacket;)V
.end method

.method protected scheduleKick()V
    .registers 9

    .line 844
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 845
    .local v0, "now":J
    iget v2, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    invoke-virtual {p0, v2}, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->jitterTimer(I)I

    move-result v2

    int-to-long v2, v2

    .line 846
    .local v2, "timeout":J
    add-long v4, v0, v2

    .line 847
    .local v4, "alarmTime":J
    iget-object v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->this$0:Landroid/net/dhcp/DhcpClient;

    # getter for: Landroid/net/dhcp/DhcpClient;->mKickAlarm:Lcom/android/internal/util/WakeupMessage;
    invoke-static {v6}, Landroid/net/dhcp/DhcpClient;->access$2400(Landroid/net/dhcp/DhcpClient;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 848
    iget v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    .line 849
    iget v6, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    const v7, 0x1f400

    if-le v6, v7, :cond_25

    .line 850
    iput v7, p0, Landroid/net/dhcp/DhcpClient$PacketRetransmittingState;->mTimer:I

    .line 852
    :cond_25
    return-void
.end method

.method protected abstract sendPacket()Z
.end method

.method protected timeout()V
    .registers 1

    .line 831
    return-void
.end method
