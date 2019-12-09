.class final Lcom/android/server/OverHeatingDiagnosis$CameraStat;
.super Ljava/lang/Object;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OverHeatingDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CameraStat"
.end annotation


# instance fields
.field mAvailable:Z

.field mCameraId:I

.field mCanUpdate:Z

.field mIdleTime:J

.field mLastUpdateTime:J

.field mUseTime:J

.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;


# direct methods
.method constructor <init>(Lcom/android/server/OverHeatingDiagnosis;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p2, "cameraId"    # I

    .line 1276
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1277
    iput p2, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mCameraId:I

    .line 1278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mAvailable:Z

    .line 1279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mCanUpdate:Z

    .line 1280
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mLastUpdateTime:J

    .line 1281
    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    .line 1282
    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    .line 1283
    return-void
.end method


# virtual methods
.method getId()I
    .registers 2

    .line 1332
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mCameraId:I

    return v0
.end method

.method getIdleTime()J
    .registers 3

    .line 1353
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    return-wide v0
.end method

.method getState()Z
    .registers 2

    .line 1339
    iget-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mAvailable:Z

    return v0
.end method

.method getUseTime()J
    .registers 3

    .line 1346
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    return-wide v0
.end method

.method init()V
    .registers 3

    .line 1289
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mLastUpdateTime:J

    .line 1290
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    .line 1291
    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    .line 1292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mCanUpdate:Z

    .line 1293
    return-void
.end method

.method stop()V
    .registers 2

    .line 1299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mCanUpdate:Z

    .line 1300
    return-void
.end method

.method update(Z)V
    .registers 8
    .param p1, "available"    # Z

    .line 1306
    iget-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mCanUpdate:Z

    if-eqz v0, :cond_2d

    .line 1307
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1308
    .local v0, "current":J
    iget-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mLastUpdateTime:J

    sub-long v2, v0, v2

    .line 1310
    .local v2, "delta":J
    iget-boolean v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mAvailable:Z

    if-eq v4, p1, :cond_1e

    .line 1311
    if-eqz p1, :cond_18

    .line 1312
    iget-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    goto :goto_2b

    .line 1314
    :cond_18
    iget-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    goto :goto_2b

    .line 1317
    :cond_1e
    if-eqz p1, :cond_26

    .line 1318
    iget-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mIdleTime:J

    goto :goto_2b

    .line 1320
    :cond_26
    iget-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mUseTime:J

    .line 1323
    :goto_2b
    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mLastUpdateTime:J

    .line 1325
    .end local v0    # "current":J
    .end local v2    # "delta":J
    :cond_2d
    iput-boolean p1, p0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->mAvailable:Z

    .line 1326
    return-void
.end method
