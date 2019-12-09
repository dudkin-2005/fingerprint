.class Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState$1;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Landroid/net/arp/OPArpPeer$ArpPeerChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;

    .line 847
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState$1;->this$1:Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onArpReponseChanged(I)V
    .registers 6
    .param p1, "arpResponseReceieved"    # I

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "arp_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " arp reponse changed ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    if-lez p1, :cond_3e

    .line 851
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState$1;->this$1:Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x82006

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState$1;->this$1:Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # ++operator for: Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$4204(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(III)V

    .line 853
    :cond_3e
    return-void
.end method
