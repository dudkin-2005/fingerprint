.class Lcom/android/server/job/controllers/ConnectivityController$2;
.super Landroid/net/NetworkPolicyManager$Listener;
.source "ConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidRulesChanged(II)V
    .locals 2

    .line 325
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->access$000()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 326
    const-string p2, "JobScheduler.Connectivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUidRulesChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Lcom/android/server/job/controllers/ConnectivityController;->access$100(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    .line 329
    return-void
.end method
