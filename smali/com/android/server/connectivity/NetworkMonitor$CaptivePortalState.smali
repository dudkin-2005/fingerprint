.class Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptivePortalState"
.end annotation


# static fields
.field private static final ACTION_LAUNCH_CAPTIVE_PORTAL_APP:Ljava/lang/String; = "android.net.netmon.launchCaptivePortalApp"


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    .line 707
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V
    .locals 0

    .line 707
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .line 713
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    .line 714
    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    move-result-object v2

    sget-object v3, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;->CAPTIVE_PORTAL:Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;

    invoke-static {v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$1900(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;)I

    move-result v1

    .line 713
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$2000(Lcom/android/server/connectivity/NetworkMonitor;I)V

    .line 716
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$1200(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    move-result-object v0

    if-nez v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-string v3, "android.net.netmon.launchCaptivePortalApp"

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 723
    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    const v5, 0x8200b

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;II)V

    .line 722
    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$802(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x8200a

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$2100(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    .line 728
    invoke-static {v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    .line 727
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 729
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$2200(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 731
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x8200c

    const/4 v2, 0x0

    const-wide/32 v3, 0x927c0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(IIJ)V

    .line 733
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkMonitor;->access$2308(Lcom/android/server/connectivity/NetworkMonitor;)I

    .line 734
    return-void
.end method

.method public exit()V
    .locals 2

    .line 738
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v1, 0x8200c

    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$3200(Lcom/android/server/connectivity/NetworkMonitor;I)V

    .line 739
    return-void
.end method