.class Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;
.super Landroid/hidl/manager/V1_0/IServiceNotification$Stub;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService$HealthServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Notification"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService$HealthServiceWrapper;)V
    .locals 0

    .line 1586
    iput-object p1, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    invoke-direct {p0}, Landroid/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService$HealthServiceWrapper;Lcom/android/server/BatteryService$1;)V
    .locals 0

    .line 1586
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;-><init>(Lcom/android/server/BatteryService$HealthServiceWrapper;)V

    return-void
.end method


# virtual methods
.method public final onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1590
    const-string p3, "android.hardware.health@2.0::IHealth"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1591
    :cond_0
    iget-object p1, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    invoke-static {p1}, Lcom/android/server/BatteryService$HealthServiceWrapper;->access$3200(Lcom/android/server/BatteryService$HealthServiceWrapper;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 1595
    :cond_1
    iget-object p1, p0, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;->this$0:Lcom/android/server/BatteryService$HealthServiceWrapper;

    invoke-static {p1}, Lcom/android/server/BatteryService$HealthServiceWrapper;->access$3600(Lcom/android/server/BatteryService$HealthServiceWrapper;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;

    invoke-direct {p2, p0}, Lcom/android/server/BatteryService$HealthServiceWrapper$Notification$1;-><init>(Lcom/android/server/BatteryService$HealthServiceWrapper$Notification;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1613
    return-void
.end method
