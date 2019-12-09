.class final Lcom/android/server/DeviceIdleController$MotionListener;
.super Landroid/hardware/TriggerEventListener;
.source "DeviceIdleController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MotionListener"
.end annotation


# instance fields
.field active:Z

.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method private constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2

    .line 615
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    .line 618
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DeviceIdleController;Lcom/android/server/DeviceIdleController$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/DeviceIdleController;
    .param p2, "x1"    # Lcom/android/server/DeviceIdleController$1;

    .line 615
    invoke-direct {p0, p1}, Lcom/android/server/DeviceIdleController$MotionListener;-><init>(Lcom/android/server/DeviceIdleController;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 638
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 630
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 631
    :try_start_3
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$1100(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 632
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    .line 633
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->motionLocked()V

    .line 634
    monitor-exit v0

    .line 635
    return-void

    .line 634
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    .line 622
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 623
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    .line 624
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->motionLocked()V

    .line 625
    monitor-exit v0

    .line 626
    return-void

    .line 625
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public registerLocked()Z
    .registers 5

    .line 642
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1100(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 643
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$1300(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MotionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$1100(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    .local v0, "success":Z
    goto :goto_3b

    .line 645
    .end local v0    # "success":Z
    :cond_24
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    .line 646
    # getter for: Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$1300(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MotionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$1100(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    .line 645
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    .line 648
    .restart local v0    # "success":Z
    :goto_3b
    if-eqz v0, :cond_41

    .line 649
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    goto :goto_5d

    .line 651
    :cond_41
    const-string v1, "DeviceIdleController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to register for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;
    invoke-static {v3}, Lcom/android/server/DeviceIdleController;->access$1100(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :goto_5d
    return v0
.end method

.method public unregisterLocked()V
    .registers 4

    .line 657
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1100(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getReportingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_23

    .line 658
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$1300(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MotionListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mMotionSensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lcom/android/server/DeviceIdleController;->access$1100(Lcom/android/server/DeviceIdleController;)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    goto :goto_32

    .line 660
    :cond_23
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$1200(Lcom/android/server/DeviceIdleController;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$MotionListener;->this$0:Lcom/android/server/DeviceIdleController;

    # getter for: Lcom/android/server/DeviceIdleController;->mMotionListener:Lcom/android/server/DeviceIdleController$MotionListener;
    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->access$1300(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$MotionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 662
    :goto_32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$MotionListener;->active:Z

    .line 663
    return-void
.end method
