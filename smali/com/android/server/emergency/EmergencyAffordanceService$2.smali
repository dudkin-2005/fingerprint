.class Lcom/android/server/emergency/EmergencyAffordanceService$2;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyAffordanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/emergency/EmergencyAffordanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/emergency/EmergencyAffordanceService;


# direct methods
.method constructor <init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/emergency/EmergencyAffordanceService;

    .line 107
    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService$2;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_32

    .line 112
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$2;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    # invokes: Lcom/android/server/emergency/EmergencyAffordanceService;->startScanning()V
    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$200(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    .line 113
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$2;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    # invokes: Lcom/android/server/emergency/EmergencyAffordanceService;->requestCellScan()V
    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$100(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    .line 115
    const-string v0, "EmergencyAffordanceService"

    const-string/jumbo v1, "reset mPollingComplete, sent INITIALIZE_STATE msg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$2;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    # setter for: Lcom/android/server/emergency/EmergencyAffordanceService;->mPollingComplete:I
    invoke-static {v0, v2}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$302(Lcom/android/server/emergency/EmergencyAffordanceService;I)I

    .line 117
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$2;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    # getter for: Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$400(Lcom/android/server/emergency/EmergencyAffordanceService;)Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 120
    :cond_32
    return-void
.end method
