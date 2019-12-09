.class final Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;
.super Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OrientationSensorJudge"
.end annotation


# instance fields
.field private mDPCState:I

.field private mDesiredRotation:I

.field private mProposedRotation:I

.field private mRotationEvaluationScheduled:Z

.field private mRotationEvaluator:Ljava/lang/Runnable;

.field private mTouchEndedTimestampNanos:J

.field private mTouching:Z

.field final synthetic this$0:Lcom/android/server/policy/WindowOrientationListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/WindowOrientationListener;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/policy/WindowOrientationListener;

    .line 1071
    iput-object p1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-direct {p0, p1}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;-><init>(Lcom/android/server/policy/WindowOrientationListener;)V

    .line 1073
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    .line 1074
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 1075
    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    .line 1077
    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDPCState:I

    .line 1258
    new-instance v0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;-><init>(Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;)V

    iput-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;
    .param p1, "x1"    # Z

    .line 1071
    iput-boolean p1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    return p1
.end method

.method private isDesiredRotationAcceptableLocked(J)Z
    .registers 9
    .param p1, "now"    # J

    .line 1209
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1210
    return v1

    .line 1212
    :cond_6
    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    const-wide/32 v4, 0x1dcd6500

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_11

    .line 1213
    return v1

    .line 1215
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method private scheduleRotationEvaluationIfNecessaryLocked(J)V
    .registers 9
    .param p1, "now"    # J

    .line 1219
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    if-nez v0, :cond_53

    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    if-ne v0, v1, :cond_b

    goto :goto_53

    .line 1226
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    if-eqz v0, :cond_1e

    .line 1227
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1228
    const-string v0, "WindowOrientationListener"

    const-string/jumbo v1, "scheduleRotationEvaluationLocked: ignoring, user is still touching the screen."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    :cond_1d
    return-void

    .line 1233
    :cond_1e
    iget-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    const-wide/32 v2, 0x1dcd6500

    add-long/2addr v0, v2

    .line 1235
    .local v0, "timeOfNextPossibleRotationNanos":J
    cmp-long v2, p1, v0

    if-ltz v2, :cond_37

    .line 1236
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1237
    const-string v2, "WindowOrientationListener"

    const-string/jumbo v3, "scheduleRotationEvaluationLocked: ignoring, already past the next possible time of rotation."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_36
    return-void

    .line 1244
    :cond_37
    sub-long v2, v0, p1

    long-to-float v2, v2

    const v3, 0x358637bd    # 1.0E-6f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    .line 1245
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    .line 1246
    .local v2, "delayMs":J
    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/policy/WindowOrientationListener;->access$500(Lcom/android/server/policy/WindowOrientationListener;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Ljava/lang/Runnable;

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1247
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    .line 1248
    return-void

    .line 1220
    .end local v0    # "timeOfNextPossibleRotationNanos":J
    .end local v2    # "delayMs":J
    :cond_53
    :goto_53
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1221
    const-string v0, "WindowOrientationListener"

    const-string/jumbo v1, "scheduleRotationEvaluationLocked: ignoring, an evaluation is already scheduled or is unnecessary."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_61
    return-void
.end method

.method private unscheduleRotationEvaluationLocked()V
    .registers 3

    .line 1251
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    if-nez v0, :cond_5

    .line 1252
    return-void

    .line 1254
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/policy/WindowOrientationListener;->access$500(Lcom/android/server/policy/WindowOrientationListener;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    .line 1256
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "OrientationSensorJudge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mDesiredRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mProposedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 1164
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1163
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mTouching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mTouchEndedTimestampNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1167
    return-void
.end method

.method public evaluateRotationChangeLocked()I
    .registers 5

    .line 1184
    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->unscheduleRotationEvaluationLocked()V

    .line 1186
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDPCState:I

    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mFlatState:I
    invoke-static {v1}, Lcom/android/server/policy/WindowOrientationListener;->access$400(Lcom/android/server/policy/WindowOrientationListener;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_31

    .line 1187
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1188
    const-string v0, "WindowOrientationListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device in Flat, reset proposed rotation, Desired="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_2c
    iput v2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 1192
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    return v0

    .line 1195
    :cond_31
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    if-ne v0, v1, :cond_38

    .line 1196
    return v2

    .line 1198
    :cond_38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 1199
    .local v0, "now":J
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->isDesiredRotationAcceptableLocked(J)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 1200
    iget v2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iput v2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 1201
    iget v2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    return v2

    .line 1203
    :cond_49
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->scheduleRotationEvaluationIfNecessaryLocked(J)V

    .line 1205
    return v2
.end method

.method public getProposedRotationLocked()I
    .registers 2

    .line 1083
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 1156
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 1108
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/policy/WindowOrientationListener;->access$000(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1109
    :try_start_7
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_46

    .line 1110
    const-string v1, "WindowOrientationListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSensorChanged Name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", event:="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v2

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_46
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mDPCSensor:Landroid/hardware/Sensor;
    invoke-static {v1}, Lcom/android/server/policy/WindowOrientationListener;->access$300(Lcom/android/server/policy/WindowOrientationListener;)Landroid/hardware/Sensor;

    move-result-object v1

    const/16 v3, 0x1b

    if-nez v1, :cond_7a

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v1, v3, :cond_7a

    .line 1114
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    float-to-int v1, v1

    .line 1115
    .local v1, "rawData":I
    if-gez v1, :cond_69

    .line 1116
    const-string v2, "WindowOrientationListener"

    const-string/jumbo v3, "rawData < 0"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    monitor-exit v0

    return-void

    .line 1119
    :cond_69
    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ge v1, v3, :cond_6f

    move v3, v4

    goto :goto_70

    :cond_6f
    move v3, v2

    .line 1120
    .local v3, "isDevOri":I
    :goto_70
    if-ne v3, v4, :cond_77

    .line 1121
    iput v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    .line 1122
    iput v2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDPCState:I

    goto :goto_a1

    .line 1125
    :cond_77
    iput v4, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDPCState:I

    goto :goto_a1

    .line 1127
    .end local v1    # "rawData":I
    .end local v3    # "isDevOri":I
    :cond_7a
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mDPCSensor:Landroid/hardware/Sensor;
    invoke-static {v1}, Lcom/android/server/policy/WindowOrientationListener;->access$300(Lcom/android/server/policy/WindowOrientationListener;)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_92

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    if-ne v1, v3, :cond_92

    .line 1129
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    goto :goto_a1

    .line 1130
    :cond_92
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mDPCSensor:Landroid/hardware/Sensor;
    invoke-static {v1}, Lcom/android/server/policy/WindowOrientationListener;->access$300(Lcom/android/server/policy/WindowOrientationListener;)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_101

    .line 1132
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDPCState:I

    .line 1138
    :goto_a1
    invoke-virtual {p0}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->evaluateRotationChangeLocked()I

    move-result v1

    .line 1139
    .local v1, "newRotation":I
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 1140
    const-string v2, "WindowOrientationListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result: currentRotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v4}, Lcom/android/server/policy/WindowOrientationListener;->access$200(Lcom/android/server/policy/WindowOrientationListener;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mProposedRotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mDesiredRotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", newRotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mDPCState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDPCState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mTouching="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_f7
    monitor-exit v0
    :try_end_f8
    .catchall {:try_start_7 .. :try_end_f8} :catchall_10a

    move v0, v1

    .line 1150
    .end local v1    # "newRotation":I
    .local v0, "newRotation":I
    if-ltz v0, :cond_100

    .line 1151
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 1153
    :cond_100
    return-void

    .line 1134
    .end local v0    # "newRotation":I
    :cond_101
    :try_start_101
    const-string v1, "WindowOrientationListener"

    const-string v2, "event.sensor.getType() != Sensor.TYPE_DEVICE_ORIENTATION"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    monitor-exit v0

    return-void

    .line 1147
    :catchall_10a
    move-exception v1

    monitor-exit v0
    :try_end_10c
    .catchall {:try_start_101 .. :try_end_10c} :catchall_10a

    throw v1
.end method

.method public onTouchEndLocked(J)V
    .registers 5
    .param p1, "whenElapsedNanos"    # J

    .line 1093
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    .line 1094
    iput-wide p1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    .line 1095
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    if-eq v0, v1, :cond_12

    .line 1096
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 1097
    .local v0, "now":J
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->scheduleRotationEvaluationIfNecessaryLocked(J)V

    .line 1099
    .end local v0    # "now":J
    :cond_12
    return-void
.end method

.method public onTouchStartLocked()V
    .registers 2

    .line 1088
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    .line 1089
    return-void
.end method

.method public resetLocked(Z)V
    .registers 4
    .param p1, "clearCurrentRotation"    # Z

    .line 1171
    const/4 v0, -0x1

    if-eqz p1, :cond_7

    .line 1172
    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 1173
    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    .line 1176
    :cond_7
    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDPCState:I

    .line 1178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    .line 1179
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    .line 1180
    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->unscheduleRotationEvaluationLocked()V

    .line 1181
    return-void
.end method
