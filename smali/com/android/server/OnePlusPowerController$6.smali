.class Lcom/android/server/OnePlusPowerController$6;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;

    .line 1733
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$6;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .registers 7

    .line 1737
    # getter for: Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "OnePlusPowerController"

    const-string/jumbo v1, "subscription changed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    :cond_e
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$6;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;
    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$3300(Lcom/android/server/OnePlusPowerController;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 1741
    .local v0, "subInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    # getter for: Lcom/android/server/OnePlusPowerController;->mFirstChange:Z
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$4400()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_54

    .line 1743
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_50

    .line 1744
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 1745
    .local v1, "subinfo":Landroid/telephony/SubscriptionInfo;
    const-string v3, "OnePlusPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SubscriptionId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$6;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3, v4}, Lcom/android/server/OnePlusPowerController;->setMccMncValue(Landroid/telephony/SubscriptionInfo;)V

    .line 1749
    .end local v1    # "subinfo":Landroid/telephony/SubscriptionInfo;
    :cond_50
    # setter for: Lcom/android/server/OnePlusPowerController;->mFirstChange:Z
    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$4402(Z)Z

    goto :goto_79

    .line 1751
    :cond_54
    # getter for: Lcom/android/server/OnePlusPowerController;->mFirstMcc:I
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$4500()I

    move-result v1

    if-gtz v1, :cond_79

    .line 1753
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_79

    .line 1754
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$6;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1, v3}, Lcom/android/server/OnePlusPowerController;->setMccMncValue(Landroid/telephony/SubscriptionInfo;)V

    .line 1757
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$6;->this$0:Lcom/android/server/OnePlusPowerController;

    # getter for: Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;
    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$800(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1762
    :cond_79
    :goto_79
    # getter for: Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 1763
    const-string v1, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "First subInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_95

    const-string/jumbo v2, "null"

    goto :goto_9f

    :cond_95
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_9f
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mFirstMcc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/OnePlusPowerController;->mFirstMcc:I
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$4500()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mFirstMnc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/OnePlusPowerController;->mFirstMnc:I
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$4600()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    :cond_d0
    return-void
.end method
