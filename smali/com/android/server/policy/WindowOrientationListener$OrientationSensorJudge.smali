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
.field private mDesiredRotation:I

.field private mProposedRotation:I

.field private mRotationEvaluationScheduled:Z

.field private mRotationEvaluator:Ljava/lang/Runnable;

.field private mTouchEndedTimestampNanos:J

.field private mTouching:Z

.field final synthetic this$0:Lcom/android/server/policy/WindowOrientationListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/WindowOrientationListener;)V
    .locals 2

    .line 1024
    iput-object p1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-direct {p0, p1}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;-><init>(Lcom/android/server/policy/WindowOrientationListener;)V

    .line 1026
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    .line 1027
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 1028
    iput p1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    .line 1160
    new-instance p1, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;

    invoke-direct {p1, p0}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge$1;-><init>(Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;)V

    iput-object p1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;Z)Z
    .locals 0

    .line 1024
    iput-boolean p1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    return p1
.end method

.method private isDesiredRotationAcceptableLocked(J)Z
    .locals 6

    .line 1111
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1112
    return v1

    .line 1114
    :cond_0
    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    const-wide/32 v4, 0x1dcd6500

    add-long/2addr v2, v4

    cmp-long p1, p1, v2

    if-gez p1, :cond_1

    .line 1115
    return v1

    .line 1117
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private scheduleRotationEvaluationIfNecessaryLocked(J)V
    .locals 4

    .line 1121
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1128
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    if-eqz v0, :cond_2

    .line 1129
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1130
    const-string p1, "WindowOrientationListener"

    const-string/jumbo p2, "scheduleRotationEvaluationLocked: ignoring, user is still touching the screen."

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_1
    return-void

    .line 1135
    :cond_2
    iget-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    const-wide/32 v2, 0x1dcd6500

    add-long/2addr v0, v2

    .line 1137
    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    .line 1138
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1139
    const-string p1, "WindowOrientationListener"

    const-string/jumbo p2, "scheduleRotationEvaluationLocked: ignoring, already past the next possible time of rotation."

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_3
    return-void

    .line 1146
    :cond_4
    sub-long/2addr v0, p1

    long-to-float p1, v0

    const p2, 0x358637bd    # 1.0E-6f

    mul-float/2addr p1, p2

    float-to-double p1, p1

    .line 1147
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-long p1, p1

    .line 1148
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-static {v0}, Lcom/android/server/policy/WindowOrientationListener;->access$400(Lcom/android/server/policy/WindowOrientationListener;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1149
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    .line 1150
    return-void

    .line 1122
    :cond_5
    :goto_0
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1123
    const-string p1, "WindowOrientationListener"

    const-string/jumbo p2, "scheduleRotationEvaluationLocked: ignoring, an evaluation is already scheduled or is unnecessary."

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_6
    return-void
.end method

.method private unscheduleRotationEvaluationLocked()V
    .locals 2

    .line 1153
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    if-nez v0, :cond_0

    .line 1154
    return-void

    .line 1156
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-static {v0}, Lcom/android/server/policy/WindowOrientationListener;->access$400(Lcom/android/server/policy/WindowOrientationListener;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mRotationEvaluationScheduled:Z

    .line 1158
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "OrientationSensorJudge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDesiredRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mProposedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 1079
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1078
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mTouching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mTouchEndedTimestampNanos="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1082
    return-void
.end method

.method public evaluateRotationChangeLocked()I
    .locals 4

    .line 1096
    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->unscheduleRotationEvaluationLocked()V

    .line 1097
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    .line 1098
    return v2

    .line 1100
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 1101
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->isDesiredRotationAcceptableLocked(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1102
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 1103
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    return v0

    .line 1105
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->scheduleRotationEvaluationIfNecessaryLocked(J)V

    .line 1107
    return v2
.end method

.method public getProposedRotationLocked()I
    .locals 1

    .line 1033
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1071
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    .line 1056
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    float-to-int p1, p1

    .line 1057
    if-ltz p1, :cond_2

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-static {v0}, Lcom/android/server/policy/WindowOrientationListener;->access$000(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1062
    :try_start_0
    iput p1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    .line 1063
    invoke-virtual {p0}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->evaluateRotationChangeLocked()I

    move-result p1

    .line 1064
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1065
    if-ltz p1, :cond_1

    .line 1066
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 1068
    :cond_1
    return-void

    .line 1064
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1058
    :cond_2
    :goto_0
    return-void
.end method

.method public onTouchEndLocked(J)V
    .locals 1

    .line 1043
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    .line 1044
    iput-wide p1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    .line 1045
    iget p1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    iget p2, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    if-eq p1, p2, :cond_0

    .line 1046
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    .line 1047
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->scheduleRotationEvaluationIfNecessaryLocked(J)V

    .line 1049
    :cond_0
    return-void
.end method

.method public onTouchStartLocked()V
    .locals 1

    .line 1038
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    .line 1039
    return-void
.end method

.method public resetLocked(Z)V
    .locals 2

    .line 1086
    if-eqz p1, :cond_0

    .line 1087
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mProposedRotation:I

    .line 1088
    iput p1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mDesiredRotation:I

    .line 1090
    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouching:Z

    .line 1091
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->mTouchEndedTimestampNanos:J

    .line 1092
    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;->unscheduleRotationEvaluationLocked()V

    .line 1093
    return-void
.end method
