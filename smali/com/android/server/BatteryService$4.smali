.class Lcom/android/server/BatteryService$4;
.super Lcom/android/server/BatteryService$SettingsObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/BatteryService;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "target"    # Ljava/lang/String;

    .line 335
    iput-object p1, p0, Lcom/android/server/BatteryService$4;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BatteryService$SettingsObserver;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onUpdate(Z)V
    .registers 3
    .param p1, "on"    # Z

    .line 338
    iget-object v0, p0, Lcom/android/server/BatteryService$4;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mChargingHint:Z
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$800(Lcom/android/server/BatteryService;)Z

    move-result v0

    if-eq v0, p1, :cond_16

    .line 339
    iget-object v0, p0, Lcom/android/server/BatteryService$4;->this$0:Lcom/android/server/BatteryService;

    # setter for: Lcom/android/server/BatteryService;->mChargingHint:Z
    invoke-static {v0, p1}, Lcom/android/server/BatteryService;->access$802(Lcom/android/server/BatteryService;Z)Z

    .line 340
    iget-object v0, p0, Lcom/android/server/BatteryService$4;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$700(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    .line 342
    :cond_16
    return-void
.end method
