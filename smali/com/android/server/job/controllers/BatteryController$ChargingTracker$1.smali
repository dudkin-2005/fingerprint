.class Lcom/android/server/job/controllers/BatteryController$ChargingTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->setMonitorBatteryLocked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/BatteryController$ChargingTracker;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    .line 147
    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker$1;->this$1:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 149
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker$1;->this$1:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 150
    return-void
.end method
