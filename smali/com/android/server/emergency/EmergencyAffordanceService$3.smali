.class Lcom/android/server/emergency/EmergencyAffordanceService$3;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
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

    .line 131
    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService$3;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService$3;->this$0:Lcom/android/server/emergency/EmergencyAffordanceService;

    # getter for: Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
    invoke-static {v0}, Lcom/android/server/emergency/EmergencyAffordanceService;->access$400(Lcom/android/server/emergency/EmergencyAffordanceService;)Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 135
    return-void
.end method
