.class final Lcom/android/server/OverHeatingDiagnosis$CamereAvailabilityCallback;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OverHeatingDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CamereAvailabilityCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;


# direct methods
.method constructor <init>(Lcom/android/server/OverHeatingDiagnosis;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/OverHeatingDiagnosis;

    .line 1241
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$CamereAvailabilityCallback;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 1244
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraAvailable(Ljava/lang/String;)V

    .line 1245
    const-string v0, "OverHeatingDiagnosis"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCameraAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$CamereAvailabilityCallback;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/OverHeatingDiagnosis;->access$3300(Lcom/android/server/OverHeatingDiagnosis;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;

    .line 1248
    .local v0, "cameraStat":Lcom/android/server/OverHeatingDiagnosis$CameraStat;
    if-eqz v0, :cond_30

    .line 1249
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->update(Z)V

    .line 1251
    :cond_30
    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 1255
    invoke-super {p0, p1}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;->onCameraUnavailable(Ljava/lang/String;)V

    .line 1256
    const-string v0, "OverHeatingDiagnosis"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCameraUnavailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis$CamereAvailabilityCallback;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    # getter for: Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/OverHeatingDiagnosis;->access$3300(Lcom/android/server/OverHeatingDiagnosis;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;

    .line 1259
    .local v0, "cameraStat":Lcom/android/server/OverHeatingDiagnosis$CameraStat;
    if-eqz v0, :cond_30

    .line 1260
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->update(Z)V

    .line 1262
    :cond_30
    return-void
.end method
