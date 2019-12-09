.class final Lcom/android/server/GestureLauncherService$GestureEventListener;
.super Ljava/lang/Object;
.source "GestureLauncherService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureLauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method private constructor <init>(Lcom/android/server/GestureLauncherService;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$1;)V
    .locals 0

    .line 460
    invoke-direct {p0, p1}, Lcom/android/server/GestureLauncherService$GestureEventListener;-><init>(Lcom/android/server/GestureLauncherService;)V

    return-void
.end method

.method private trackCameraLaunchEvent(Landroid/hardware/SensorEvent;)V
    .locals 18

    move-object/from16 v0, p0

    .line 488
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 489
    iget-object v3, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v3}, Lcom/android/server/GestureLauncherService;->access$1000(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 495
    move-object/from16 v5, p1

    iget-object v5, v5, Landroid/hardware/SensorEvent;->values:[F

    .line 497
    long-to-double v3, v3

    const/4 v6, 0x0

    aget v6, v5, v6

    float-to-double v6, v6

    mul-double/2addr v6, v3

    double-to-long v6, v6

    .line 498
    const/4 v8, 0x1

    aget v8, v5, v8

    float-to-double v8, v8

    mul-double/2addr v3, v8

    double-to-long v3, v3

    .line 499
    const/4 v8, 0x2

    aget v5, v5, v8

    float-to-int v5, v5

    .line 502
    iget-object v8, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v8}, Lcom/android/server/GestureLauncherService;->access$1100(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v8

    sub-long v10, v1, v8

    .line 503
    iget-object v8, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v8}, Lcom/android/server/GestureLauncherService;->access$1200(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v8

    sub-long v12, v6, v8

    .line 504
    iget-object v8, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v8}, Lcom/android/server/GestureLauncherService;->access$1300(Lcom/android/server/GestureLauncherService;)J

    move-result-wide v8

    sub-long v14, v3, v8

    .line 505
    iget-object v8, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v8}, Lcom/android/server/GestureLauncherService;->access$1400(Lcom/android/server/GestureLauncherService;)I

    move-result v8

    sub-int v16, v5, v8

    .line 509
    const-wide/16 v8, 0x0

    cmp-long v17, v10, v8

    if-ltz v17, :cond_1

    cmp-long v17, v12, v8

    if-ltz v17, :cond_1

    cmp-long v8, v14, v8

    if-gez v8, :cond_0

    goto :goto_0

    .line 520
    :cond_0
    invoke-static/range {v10 .. v16}, Lcom/android/server/EventLogTags;->writeCameraGestureTriggered(JJJI)V

    .line 526
    iget-object v8, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v8, v1, v2}, Lcom/android/server/GestureLauncherService;->access$1102(Lcom/android/server/GestureLauncherService;J)J

    .line 527
    iget-object v1, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v1, v6, v7}, Lcom/android/server/GestureLauncherService;->access$1202(Lcom/android/server/GestureLauncherService;J)J

    .line 528
    iget-object v1, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v1, v3, v4}, Lcom/android/server/GestureLauncherService;->access$1302(Lcom/android/server/GestureLauncherService;J)J

    .line 529
    iget-object v0, v0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0, v5}, Lcom/android/server/GestureLauncherService;->access$1402(Lcom/android/server/GestureLauncherService;I)I

    .line 530
    return-void

    .line 511
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 485
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->access$700(Lcom/android/server/GestureLauncherService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    return-void

    .line 467
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v1}, Lcom/android/server/GestureLauncherService;->access$800(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 473
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/android/server/GestureLauncherService$GestureEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->access$900(Lcom/android/server/GestureLauncherService;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 476
    invoke-direct {p0, p1}, Lcom/android/server/GestureLauncherService$GestureEventListener;->trackCameraLaunchEvent(Landroid/hardware/SensorEvent;)V

    .line 478
    :cond_1
    return-void

    .line 480
    :cond_2
    return-void
.end method
