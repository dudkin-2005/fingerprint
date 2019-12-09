.class Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;
.super Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;
.source "TetherInterfaceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalHotspotState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 591
    invoke-super {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->enter()V

    .line 592
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$200(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1500(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)V

    .line 598
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 602
    invoke-super {p0, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->processMessage(Landroid/os/Message;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p0, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$100(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/State;I)V

    .line 605
    iget p1, p1, Landroid/os/Message;->what:I

    const v0, 0x50066

    if-eq p1, v0, :cond_2

    const v0, 0x50070

    if-eq p1, v0, :cond_1

    .line 613
    const/4 p1, 0x0

    return p1

    .line 611
    :cond_1
    goto :goto_0

    .line 607
    :cond_2
    iget-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$LocalHotspotState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$500(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/SharedLog;

    move-result-object p1

    const-string v0, "CMD_TETHER_REQUESTED while in local-only hotspot mode."

    invoke-virtual {p1, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 608
    nop

    .line 615
    :goto_0
    return v1
.end method
