.class Lcom/android/server/display/AutomaticBrightnessController$4;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 978
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 995
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 981
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 982
    .local v0, "time":J
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 983
    .local v2, "distance":F
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-nez v4, :cond_15

    .line 984
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mProximityPositive:Z
    invoke-static {v3, v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$902(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    goto :goto_1a

    .line 986
    :cond_15
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mProximityPositive:Z
    invoke-static {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$902(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    .line 988
    :goto_1a
    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$800()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 989
    const-string v3, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mProximityPositive : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$4;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mProximityPositive:Z
    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$900(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :cond_3d
    return-void
.end method
