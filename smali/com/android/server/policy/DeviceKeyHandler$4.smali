.class Lcom/android/server/policy/DeviceKeyHandler$4;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "DeviceKeyHandler.java"


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

    .line 971
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$4;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 984
    # getter for: Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z
    invoke-static {}, Lcom/android/server/policy/DeviceKeyHandler;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 985
    const-string v0, "DeviceKeyHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTorchModeChanged(): enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_1d
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$4;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    # getter for: Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z
    invoke-static {v0}, Lcom/android/server/policy/DeviceKeyHandler;->access$800(Lcom/android/server/policy/DeviceKeyHandler;)Z

    move-result v0

    if-eq v0, p2, :cond_2a

    .line 989
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$4;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    # setter for: Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z
    invoke-static {v0, p2}, Lcom/android/server/policy/DeviceKeyHandler;->access$802(Lcom/android/server/policy/DeviceKeyHandler;Z)Z

    .line 991
    :cond_2a
    return-void
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .registers 4
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 979
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$4;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->access$802(Lcom/android/server/policy/DeviceKeyHandler;Z)Z

    .line 980
    return-void
.end method
