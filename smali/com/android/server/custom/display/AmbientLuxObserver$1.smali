.class Lcom/android/server/custom/display/AmbientLuxObserver$1;
.super Ljava/lang/Object;
.source "AmbientLuxObserver.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/custom/display/AmbientLuxObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/custom/display/AmbientLuxObserver;


# direct methods
.method constructor <init>(Lcom/android/server/custom/display/AmbientLuxObserver;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/server/custom/display/AmbientLuxObserver$1;->this$0:Lcom/android/server/custom/display/AmbientLuxObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 146
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/server/custom/display/AmbientLuxObserver$1;->this$0:Lcom/android/server/custom/display/AmbientLuxObserver;

    invoke-static {v0}, Lcom/android/server/custom/display/AmbientLuxObserver;->access$800(Lcom/android/server/custom/display/AmbientLuxObserver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/server/custom/display/AmbientLuxObserver$1;->this$0:Lcom/android/server/custom/display/AmbientLuxObserver;

    invoke-static {v0}, Lcom/android/server/custom/display/AmbientLuxObserver;->access$900(Lcom/android/server/custom/display/AmbientLuxObserver;)Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;

    move-result-object v0

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget p1, p1, v1

    .line 139
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 138
    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 141
    :cond_0
    return-void
.end method
