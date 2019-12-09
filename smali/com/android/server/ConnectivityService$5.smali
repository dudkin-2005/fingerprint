.class Lcom/android/server/ConnectivityService$5;
.super Landroid/net/NetworkPolicyManager$Listener;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0

    .line 1635
    iput-object p1, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRestrictBackgroundChanged(Z)V
    .locals 0

    .line 1643
    if-eqz p1, :cond_0

    .line 1644
    const-string/jumbo p1, "onRestrictBackgroundChanged(true): disabling tethering"

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$000(Ljava/lang/String;)V

    .line 1645
    iget-object p1, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/connectivity/Tethering;->untetherAll()V

    .line 1647
    :cond_0
    return-void
.end method

.method public onUidRulesChanged(II)V
    .locals 0

    .line 1639
    return-void
.end method
