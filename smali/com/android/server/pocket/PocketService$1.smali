.class Lcom/android/server/pocket/PocketService$1;
.super Ljava/lang/Object;
.source "PocketService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pocket/PocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pocket/PocketService;


# direct methods
.method constructor <init>(Lcom/android/server/pocket/PocketService;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/android/server/pocket/PocketService$1;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 399
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 392
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 393
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 394
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 395
    iget-object p1, p0, Lcom/android/server/pocket/PocketService$1;->this$0:Lcom/android/server/pocket/PocketService;

    invoke-static {p1}, Lcom/android/server/pocket/PocketService;->access$1500(Lcom/android/server/pocket/PocketService;)Lcom/android/server/pocket/PocketService$PocketHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/pocket/PocketService$PocketHandler;->sendMessage(Landroid/os/Message;)Z

    .line 396
    return-void
.end method
