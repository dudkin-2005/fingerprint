.class Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidatedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .registers 2

    .line 561
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p2, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$1;

    .line 561
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 8

    .line 564
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    .line 565
    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->validationStage()Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$2100(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    move-result-object v2

    sget-object v3, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;->VALIDATED:Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->networkEventType(Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;)I
    invoke-static {v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$2200(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;)I

    move-result v1

    .line 564
    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->maybeLogEvaluationResult(I)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$2300(Lcom/android/server/connectivity/NetworkMonitor;I)V

    .line 566
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$2500(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    .line 567
    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$2400(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v2

    .line 566
    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x82002

    invoke-virtual {v1, v5, v4, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 568
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # operator++ for: Lcom/android/server/connectivity/NetworkMonitor;->mValidations:I
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$2608(Lcom/android/server/connectivity/NetworkMonitor;)I

    .line 570
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->shallAccountForDupGateway()Z
    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$2700(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 571
    const/4 v0, 0x1

    .line 572
    .local v0, "isWifiReachable":Z
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->isCountryChinaLocal()Z
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$2800(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v1

    const/16 v2, 0x7d0

    const/16 v5, 0x1bb

    if-eqz v1, :cond_51

    .line 573
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v6, "www.baidu.com"

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->isNetworkReachable(Ljava/lang/String;II)Z
    invoke-static {v1, v6, v5, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$2900(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;II)Z

    move-result v0

    goto :goto_5a

    .line 575
    :cond_51
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string/jumbo v6, "www.google.com"

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->isNetworkReachable(Ljava/lang/String;II)Z
    invoke-static {v1, v6, v5, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$2900(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;II)Z

    move-result v0

    .line 577
    :goto_5a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in validatestate, the network reachable is: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    if-eqz v0, :cond_bc

    .line 579
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mGatewayDetector:Landroid/net/arp/OPGatewayDetector;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1200(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/arp/OPGatewayDetector;

    move-result-object v1

    if-eqz v1, :cond_e2

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "current network is OK now, stop checking it "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mIsChecked:Z
    invoke-static {v1, v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$3002(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 582
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mGatewayDetector:Landroid/net/arp/OPGatewayDetector;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1200(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/arp/OPGatewayDetector;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/arp/OPGatewayDetector;->close()V

    .line 583
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mGatewayDetector:Landroid/net/arp/OPGatewayDetector;
    invoke-static {v1, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$1202(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/arp/OPGatewayDetector;)Landroid/net/arp/OPGatewayDetector;

    goto :goto_e2

    .line 586
    :cond_bc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "in validateState current network is not ok, retry"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mIsChecked:Z
    invoke-static {v1, v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$3002(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    .line 588
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->checkDupMAC()V
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$3100(Lcom/android/server/connectivity/NetworkMonitor;)V

    .line 590
    .end local v0    # "isWifiReachable":Z
    :cond_e2
    :goto_e2
    goto :goto_ed

    .line 591
    :cond_e3
    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "no double mac for gateway, ignore the test"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :goto_ed
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "message"    # Landroid/os/Message;

    .line 598
    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->smToString(Landroid/os/Message;)Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/android/server/connectivity/NetworkMonitor;->access$700(Lcom/android/server/connectivity/NetworkMonitor;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x82001

    if-eq v0, v1, :cond_48

    const v1, 0x8200f

    if-eq v0, v1, :cond_3c

    .line 608
    const/4 v0, 0x0

    return v0

    .line 605
    :cond_3c
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1600(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 606
    goto :goto_54

    .line 602
    :cond_48
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$3200(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 603
    nop

    .line 610
    :goto_54
    const/4 v0, 0x1

    return v0
.end method
