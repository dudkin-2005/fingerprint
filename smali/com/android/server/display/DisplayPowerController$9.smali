.class Lcom/android/server/display/DisplayPowerController$9;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    .line 1850
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$9;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1864
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .line 1853
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$9;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1600(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1854
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1855
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget p1, p1, v2

    .line 1856
    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$9;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->access$1700(Lcom/android/server/display/DisplayPowerController;)F

    move-result v3

    cmpg-float p1, p1, v3

    if-gez p1, :cond_0

    const/4 v2, 0x1

    nop

    .line 1857
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$9;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;JZ)V

    .line 1859
    :cond_1
    return-void
.end method
