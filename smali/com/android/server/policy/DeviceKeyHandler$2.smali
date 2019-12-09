.class Lcom/android/server/policy/DeviceKeyHandler$2;
.super Ljava/lang/Object;
.source "DeviceKeyHandler.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DeviceKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/DeviceKeyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/DeviceKeyHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .line 523
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$2;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 549
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 527
    # getter for: Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z
    invoke-static {}, Lcom/android/server/policy/DeviceKeyHandler;->access$400()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    .line 528
    const-string v0, "DeviceKeyHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mProximityListener.onSensorChanged(): values[0]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_22
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$2;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    # getter for: Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/policy/DeviceKeyHandler;->access$500(Lcom/android/server/policy/DeviceKeyHandler;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 532
    :try_start_29
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    .line 536
    .local v2, "distance":F
    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler$2;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    const v4, 0x3dcccccd    # 0.1f

    cmpl-float v4, v2, v4

    if-lez v4, :cond_38

    const/4 v1, 0x1

    nop

    :cond_38
    # setter for: Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z
    invoke-static {v3, v1}, Lcom/android/server/policy/DeviceKeyHandler;->access$602(Lcom/android/server/policy/DeviceKeyHandler;Z)Z

    .line 538
    # getter for: Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z
    invoke-static {}, Lcom/android/server/policy/DeviceKeyHandler;->access$400()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 539
    const-string v1, "DeviceKeyHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mProximityListener.onSensorChanged(): active = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler$2;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    .line 540
    # getter for: Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z
    invoke-static {v4}, Lcom/android/server/policy/DeviceKeyHandler;->access$600(Lcom/android/server/policy/DeviceKeyHandler;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 539
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_5e
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler$2;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    # getter for: Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/policy/DeviceKeyHandler;->access$500(Lcom/android/server/policy/DeviceKeyHandler;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 544
    .end local v2    # "distance":F
    monitor-exit v0

    .line 545
    return-void

    .line 544
    :catchall_69
    move-exception v1

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_29 .. :try_end_6b} :catchall_69

    throw v1
.end method
