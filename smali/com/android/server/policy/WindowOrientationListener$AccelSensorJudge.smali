.class final Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;
.super Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AccelSensorJudge"
.end annotation


# static fields
.field private static final ACCELERATION_TOLERANCE:F = 4.0f

.field private static final ACCELEROMETER_DATA_X:I = 0x0

.field private static final ACCELEROMETER_DATA_Y:I = 0x1

.field private static final ACCELEROMETER_DATA_Z:I = 0x2

.field private static final ADJACENT_ORIENTATION_ANGLE_GAP:I = 0x2d

.field private static final FILTER_TIME_CONSTANT_MS:F = 200.0f

.field private static final FLAT_ANGLE:F = 80.0f

.field private static final FLAT_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_ACCELERATION_MAGNITUDE:F = 13.80665f

.field private static final MAX_FILTER_DELTA_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_TILT:I = 0x50

.field private static final MIN_ACCELERATION_MAGNITUDE:F = 5.80665f

.field private static final NEAR_ZERO_MAGNITUDE:F = 1.0f

.field private static final PROPOSAL_MIN_TIME_SINCE_ACCELERATION_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_FLAT_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_SWING_ENDED_NANOS:J = 0x11e1a300L

.field private static final PROPOSAL_SETTLE_TIME_NANOS:J = 0x2625a00L

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final SWING_AWAY_ANGLE_DELTA:F = 20.0f

.field private static final SWING_TIME_NANOS:J = 0x11e1a300L

.field private static final TILT_HISTORY_SIZE:I = 0xc8

.field private static final TILT_OVERHEAD_ENTER:I = -0x28

.field private static final TILT_OVERHEAD_EXIT:I = -0xf


# instance fields
.field private mAccelerating:Z

.field private mAccelerationTimestampNanos:J

.field private mFlat:Z

.field private mFlatTimestampNanos:J

.field private mLastFilteredTimestampNanos:J

.field private mLastFilteredX:F

.field private mLastFilteredY:F

.field private mLastFilteredZ:F

.field private mOverhead:Z

.field private mPredictedRotation:I

.field private mPredictedRotationTimestampNanos:J

.field private mProposedRotation:I

.field private mSwingTimestampNanos:J

.field private mSwinging:Z

.field private mTiltHistory:[F

.field private mTiltHistoryIndex:I

.field private mTiltHistoryTimestampNanos:[J

.field private final mTiltToleranceConfig:[[I

.field private mTouchEndedTimestampNanos:J

.field private mTouched:Z

.field final synthetic this$0:Lcom/android/server/policy/WindowOrientationListener;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/WindowOrientationListener;Landroid/content/Context;)V
    .registers 13
    .param p1, "this$0"    # Lcom/android/server/policy/WindowOrientationListener;
    .param p2, "context"    # Landroid/content/Context;

    .line 615
    iput-object p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-direct {p0, p1}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;-><init>(Lcom/android/server/policy/WindowOrientationListener;)V

    .line 570
    const/4 v0, 0x4

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_94

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_9c

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_a4

    aput-object v3, v1, v2

    new-array v2, v2, [I

    fill-array-data v2, :array_ac

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    .line 603
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    .line 611
    const/16 v1, 0xc8

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    .line 612
    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    .line 617
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 619
    .local v1, "tiltTolerance":[I
    array-length v2, v1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8c

    .line 620
    move v2, v4

    .local v2, "i":I
    :goto_49
    if-ge v2, v0, :cond_93

    .line 621
    mul-int/lit8 v3, v2, 0x2

    aget v3, v1, v3

    .line 622
    .local v3, "min":I
    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v5

    aget v6, v1, v6

    .line 623
    .local v6, "max":I
    const/16 v7, -0x5a

    if-lt v3, v7, :cond_6b

    if-gt v3, v6, :cond_6b

    const/16 v7, 0x5a

    if-gt v6, v7, :cond_6b

    .line 624
    iget-object v7, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v7, v7, v2

    aput v3, v7, v4

    .line 625
    iget-object v7, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v7, v7, v2

    aput v6, v7, v5

    goto :goto_89

    .line 627
    :cond_6b
    const-string v7, "WindowOrientationListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "config_autoRotationTiltTolerance contains invalid range: min="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", max="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    .end local v3    # "min":I
    .end local v6    # "max":I
    :goto_89
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 632
    .end local v2    # "i":I
    :cond_8c
    const-string v0, "WindowOrientationListener"

    const-string v2, "config_autoRotationTiltTolerance should have exactly 8 elements"

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_93
    return-void

    :array_94
    .array-data 4
        -0x19
        0x46
    .end array-data

    :array_9c
    .array-data 4
        -0x19
        0x41
    .end array-data

    :array_a4
    .array-data 4
        -0x19
        0x3c
    .end array-data

    :array_ac
    .array-data 4
        -0x19
        0x41
    .end array-data
.end method

.method private addTiltHistoryEntryLocked(JF)V
    .registers 8
    .param p1, "now"    # J
    .param p3, "tilt"    # F

    .line 1024
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    aput p3, v0, v1

    .line 1025
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    aput-wide p1, v0, v1

    .line 1026
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0xc8

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .line 1027
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    .line 1028
    return-void
.end method

.method private clearPredictedRotationLocked()V
    .registers 3

    .line 1002
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    .line 1003
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    .line 1004
    return-void
.end method

.method private clearTiltHistoryLocked()V
    .registers 5

    .line 1019
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    .line 1020
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .line 1021
    return-void
.end method

.method private getLastTiltLocked()F
    .registers 3

    .line 1062
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    invoke-direct {p0, v0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v0

    .line 1063
    .local v0, "index":I
    if-ltz v0, :cond_d

    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget v1, v1, v0

    goto :goto_f

    :cond_d
    const/high16 v1, 0x7fc00000    # Float.NaN

    :goto_f
    return v1
.end method

.method private isAcceleratingLocked(F)Z
    .registers 3
    .param p1, "magnitude"    # F

    .line 1014
    const v0, 0x40b9d014

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_11

    const v0, 0x415ce80a

    cmpl-float v0, p1, v0

    if-lez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method private isFlatLocked(J)Z
    .registers 8
    .param p1, "now"    # J

    .line 1031
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .local v0, "i":I
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v1

    move v0, v1

    if-ltz v1, :cond_22

    .line 1032
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x42a00000    # 80.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_14

    .line 1033
    goto :goto_22

    .line 1035
    :cond_14
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x3b9aca00

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gtz v1, :cond_2

    .line 1037
    const/4 v1, 0x1

    return v1

    .line 1040
    .end local v0    # "i":I
    :cond_22
    :goto_22
    const/4 v0, 0x0

    return v0
.end method

.method private isOrientationAngleAcceptableLocked(II)Z
    .registers 8
    .param p1, "rotation"    # I
    .param p2, "orientationAngle"    # I

    .line 921
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v0}, Lcom/android/server/policy/WindowOrientationListener;->access$200(Lcom/android/server/policy/WindowOrientationListener;)I

    move-result v0

    .line 922
    .local v0, "currentRotation":I
    if-ltz v0, :cond_3d

    .line 927
    const/16 v1, 0x2d

    const/4 v2, 0x0

    if-eq p1, v0, :cond_13

    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v3, v3, 0x4

    if-ne p1, v3, :cond_26

    .line 929
    :cond_13
    mul-int/lit8 v3, p1, 0x5a

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x16

    .line 931
    .local v3, "lowerBound":I
    if-nez p1, :cond_23

    .line 932
    const/16 v4, 0x13b

    if-lt p2, v4, :cond_26

    add-int/lit16 v4, v3, 0x168

    if-ge p2, v4, :cond_26

    .line 933
    return v2

    .line 936
    :cond_23
    if-ge p2, v3, :cond_26

    .line 937
    return v2

    .line 946
    .end local v3    # "lowerBound":I
    :cond_26
    if-eq p1, v0, :cond_2e

    add-int/lit8 v3, v0, 0x3

    rem-int/lit8 v3, v3, 0x4

    if-ne p1, v3, :cond_3d

    .line 948
    :cond_2e
    mul-int/lit8 v3, p1, 0x5a

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x16

    .line 950
    .local v3, "upperBound":I
    if-nez p1, :cond_3a

    .line 951
    if-gt p2, v1, :cond_3d

    if-le p2, v3, :cond_3d

    .line 952
    return v2

    .line 955
    :cond_3a
    if-le p2, v3, :cond_3d

    .line 956
    return v2

    .line 961
    .end local v3    # "upperBound":I
    :cond_3d
    const/4 v1, 0x1

    return v1
.end method

.method private isPredictedRotationAcceptableLocked(J)Z
    .registers 11
    .param p1, "now"    # J

    .line 970
    iget-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    const-wide/32 v2, 0x2625a00

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_c

    .line 971
    return v1

    .line 975
    :cond_c
    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    const-wide/32 v4, 0x1dcd6500

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_17

    .line 976
    return v1

    .line 981
    :cond_17
    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    const-wide/32 v6, 0x11e1a300

    add-long/2addr v2, v6

    cmp-long v0, p1, v2

    if-gez v0, :cond_22

    .line 982
    return v1

    .line 986
    :cond_22
    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_2a

    .line 988
    return v1

    .line 992
    :cond_2a
    iget-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    if-nez v0, :cond_38

    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_36

    goto :goto_38

    .line 998
    :cond_36
    const/4 v0, 0x1

    return v0

    .line 994
    :cond_38
    :goto_38
    return v1
.end method

.method private isSwingingLocked(JF)Z
    .registers 9
    .param p1, "now"    # J
    .param p3, "tilt"    # F

    .line 1044
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryIndex:I

    .local v0, "i":I
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->nextTiltHistoryIndexLocked(I)I

    move-result v1

    move v0, v1

    if-ltz v1, :cond_23

    .line 1045
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x11e1a300

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gez v1, :cond_16

    .line 1046
    goto :goto_23

    .line 1048
    :cond_16
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x41a00000    # 20.0f

    add-float/2addr v1, v2

    cmpg-float v1, v1, p3

    if-gtz v1, :cond_2

    .line 1050
    const/4 v1, 0x1

    return v1

    .line 1053
    .end local v0    # "i":I
    :cond_23
    :goto_23
    const/4 v0, 0x0

    return v0
.end method

.method private isTiltAngleAcceptableLocked(II)Z
    .registers 6
    .param p1, "rotation"    # I
    .param p2, "tiltAngle"    # I

    .line 907
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x1

    if-lt p2, v0, :cond_14

    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v0, v0, p1

    aget v0, v0, v2

    if-gt p2, v0, :cond_14

    move v1, v2

    nop

    :cond_14
    return v1
.end method

.method private nextTiltHistoryIndexLocked(I)I
    .registers 7
    .param p1, "index"    # I

    .line 1057
    if-nez p1, :cond_5

    const/16 v0, 0xc8

    goto :goto_6

    :cond_5
    move v0, p1

    :goto_6
    add-int/lit8 v0, v0, -0x1

    .line 1058
    .end local p1    # "index":I
    .local v0, "index":I
    iget-object p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, p1, v0

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p1, v1, v3

    if-eqz p1, :cond_14

    move p1, v0

    goto :goto_15

    :cond_14
    const/4 p1, -0x1

    :goto_15
    return p1
.end method

.method private remainingMS(JJ)F
    .registers 7
    .param p1, "now"    # J
    .param p3, "until"    # J

    .line 1067
    cmp-long v0, p1, p3

    if-ltz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_d

    :cond_6
    sub-long v0, p3, p1

    long-to-float v0, v0

    const v1, 0x358637bd    # 1.0E-6f

    mul-float/2addr v0, v1

    :goto_d
    return v0
.end method

.method private updatePredictedRotationLocked(JI)V
    .registers 5
    .param p1, "now"    # J
    .param p3, "rotation"    # I

    .line 1007
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    if-eq v0, p3, :cond_8

    .line 1008
    iput p3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    .line 1009
    iput-wide p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    .line 1011
    :cond_8
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AccelSensorJudge"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mProposedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mPredictedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLastFilteredX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLastFilteredY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mLastFilteredZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    sub-long/2addr v0, v2

    .line 651
    .local v0, "delta":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mLastFilteredTimestampNanos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-float v3, v0

    const v4, 0x358637bd    # 1.0E-6f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms ago)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mTiltHistory={last: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->getLastTiltLocked()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mFlat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mSwinging="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mAccelerating="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mOverhead="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mTouched="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mTiltToleranceConfig=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 660
    const/4 v2, 0x0

    move v3, v2

    .line 660
    .local v3, "i":I
    :goto_196
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1c5

    .line 661
    if-eqz v3, :cond_1a0

    .line 662
    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 664
    :cond_1a0
    const-string v4, "["

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 665
    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v4, v4, v3

    aget v4, v4, v2

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 666
    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 667
    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTiltToleranceConfig:[[I

    aget-object v4, v4, v3

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 668
    const-string v4, "]"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 660
    add-int/lit8 v3, v3, 0x1

    goto :goto_196

    .line 670
    .end local v3    # "i":I
    :cond_1c5
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method public getProposedRotationLocked()I
    .registers 2

    .line 638
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 675
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 35
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    move-object/from16 v1, p0

    .line 682
    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/policy/WindowOrientationListener;->access$000(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 686
    :try_start_b
    iget-object v0, v2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v0, v0, v4

    .line 687
    .local v0, "x":F
    iget-object v5, v2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    .line 688
    .local v5, "y":F
    iget-object v7, v2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    .line 690
    .local v7, "z":F
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 691
    const-string v8, "WindowOrientationListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Raw acceleration vector: x="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", y="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", z="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", magnitude="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v10, v0, v0

    mul-float v11, v5, v5

    add-float/2addr v10, v11

    mul-float v11, v7, v7

    add-float/2addr v10, v11

    float-to-double v10, v10

    .line 693
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 691
    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_5b
    iget-wide v8, v2, Landroid/hardware/SensorEvent;->timestamp:J

    .line 701
    .local v8, "now":J
    iget-wide v10, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    .line 702
    .local v10, "then":J
    sub-long v12, v8, v10

    long-to-float v12, v12

    const v13, 0x358637bd    # 1.0E-6f

    mul-float/2addr v12, v13

    .line 704
    .local v12, "timeDeltaMS":F
    cmp-long v14, v8, v10

    if-ltz v14, :cond_ec

    const-wide/32 v14, 0x3b9aca00

    add-long/2addr v14, v10

    cmp-long v14, v8, v14

    if-gtz v14, :cond_ec

    const/4 v14, 0x0

    cmpl-float v15, v0, v14

    if-nez v15, :cond_80

    cmpl-float v15, v5, v14

    if-nez v15, :cond_80

    cmpl-float v14, v7, v14

    if-nez v14, :cond_80

    goto :goto_ec

    .line 713
    :cond_80
    const/high16 v14, 0x43480000    # 200.0f

    add-float/2addr v14, v12

    div-float v14, v12, v14

    .line 714
    .local v14, "alpha":F
    iget v15, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    sub-float v15, v0, v15

    mul-float/2addr v15, v14

    iget v13, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    add-float v0, v15, v13

    .line 715
    iget v13, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    sub-float v13, v5, v13

    mul-float/2addr v13, v14

    iget v15, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    add-float v5, v13, v15

    .line 716
    iget v13, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    sub-float v13, v7, v13

    mul-float/2addr v13, v14

    iget v15, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    add-float v7, v13, v15

    .line 717
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v13

    if-eqz v13, :cond_e6

    .line 718
    const-string v13, "WindowOrientationListener"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filtered acceleration vector: x="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", y="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", z="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", magnitude="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v4, v0, v0

    mul-float v18, v5, v5

    add-float v4, v4, v18

    mul-float v18, v7, v7

    add-float v4, v4, v18

    move/from16 v20, v7

    float-to-double v6, v4

    .line 720
    .end local v7    # "z":F
    .local v20, "z":F
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 718
    invoke-static {v13, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e8

    .line 722
    .end local v20    # "z":F
    .restart local v7    # "z":F
    :cond_e6
    move/from16 v20, v7

    .end local v7    # "z":F
    .end local v14    # "alpha":F
    .restart local v20    # "z":F
    :goto_e8
    move/from16 v7, v20

    const/4 v4, 0x0

    goto :goto_fe

    .line 707
    .end local v20    # "z":F
    .restart local v7    # "z":F
    :cond_ec
    :goto_ec
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v4

    if-eqz v4, :cond_f9

    .line 708
    const-string v4, "WindowOrientationListener"

    const-string v6, "Resetting orientation listener."

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_f9
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->resetLocked(Z)V

    .line 711
    const/4 v4, 0x1

    .line 722
    .local v4, "skipSample":Z
    :goto_fe
    nop

    .line 724
    iput-wide v8, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    .line 725
    iput v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredX:F

    .line 726
    iput v5, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredY:F

    .line 727
    iput v7, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredZ:F

    .line 729
    const/4 v6, 0x0

    .line 730
    .local v6, "isAccelerating":Z
    const/4 v13, 0x0

    .line 731
    .local v13, "isFlat":Z
    const/4 v14, 0x0

    .line 732
    .local v14, "isSwinging":Z
    if-nez v4, :cond_26d

    .line 734
    mul-float v15, v0, v0

    mul-float v18, v5, v5

    add-float v15, v15, v18

    mul-float v18, v7, v7

    add-float v15, v15, v18

    move-wide/from16 v21, v10

    float-to-double v10, v15

    .end local v10    # "then":J
    .local v21, "then":J
    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    .line 735
    .local v10, "magnitude":F
    const/high16 v11, 0x3f800000    # 1.0f

    cmpg-float v11, v10, v11

    if-gez v11, :cond_138

    .line 736
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v11

    if-eqz v11, :cond_131

    .line 737
    const-string v11, "WindowOrientationListener"

    const-string v15, "Ignoring sensor data, magnitude too close to zero."

    invoke-static {v11, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_131
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    .line 829
    move/from16 v23, v7

    goto/16 :goto_271

    .line 743
    :cond_138
    invoke-direct {v1, v10}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isAcceleratingLocked(F)Z

    move-result v11

    if-eqz v11, :cond_141

    .line 744
    const/4 v6, 0x1

    .line 745
    iput-wide v8, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    .line 754
    :cond_141
    div-float v11, v7, v10

    move/from16 v24, v6

    move/from16 v23, v7

    float-to-double v6, v11

    .line 755
    .end local v6    # "isAccelerating":Z
    .end local v7    # "z":F
    .local v23, "z":F
    .local v24, "isAccelerating":Z
    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    const-wide v25, 0x404ca5dc20000000L    # 57.295780181884766

    mul-double v6, v6, v25

    .line 754
    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v6, v6

    .line 756
    .local v6, "tiltAngle":I
    int-to-float v7, v6

    invoke-direct {v1, v8, v9, v7}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->addTiltHistoryEntryLocked(JF)V

    .line 759
    invoke-direct {v1, v8, v9}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isFlatLocked(J)Z

    move-result v7

    if-eqz v7, :cond_165

    .line 760
    const/4 v13, 0x1

    .line 761
    iput-wide v8, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    .line 763
    :cond_165
    int-to-float v7, v6

    invoke-direct {v1, v8, v9, v7}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isSwingingLocked(JF)Z

    move-result v7

    if-eqz v7, :cond_16f

    .line 764
    const/4 v14, 0x1

    .line 765
    iput-wide v8, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    .line 770
    :cond_16f
    const/16 v7, -0x28

    if-gt v6, v7, :cond_177

    .line 771
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    goto :goto_17e

    .line 772
    :cond_177
    const/16 v7, -0xf

    if-lt v6, v7, :cond_17e

    .line 773
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    .line 775
    :cond_17e
    :goto_17e
    iget-boolean v7, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    if-eqz v7, :cond_1a7

    .line 776
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v7

    if-eqz v7, :cond_19e

    .line 777
    const-string v7, "WindowOrientationListener"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring sensor data, device is overhead: tiltAngle="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_19e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    .line 829
    :goto_1a1
    move/from16 v28, v13

    move/from16 v29, v14

    goto/16 :goto_266

    .line 781
    :cond_1a7
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/16 v11, 0x50

    if-le v7, v11, :cond_1cf

    .line 782
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v7

    if-eqz v7, :cond_1cb

    .line 783
    const-string v7, "WindowOrientationListener"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Ignoring sensor data, tilt angle too high: tiltAngle="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_1cb
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    goto :goto_1a1

    .line 791
    :cond_1cf
    neg-float v7, v0

    move/from16 v27, v10

    float-to-double v10, v7

    .end local v10    # "magnitude":F
    .local v27, "magnitude":F
    move/from16 v28, v13

    move/from16 v29, v14

    float-to-double v13, v5

    .line 792
    .end local v13    # "isFlat":Z
    .end local v14    # "isSwinging":Z
    .local v28, "isFlat":Z
    .local v29, "isSwinging":Z
    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v10

    neg-double v10, v10

    mul-double v10, v10, v25

    .line 791
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v7, v10

    .line 793
    .local v7, "orientationAngle":I
    if-gez v7, :cond_1e8

    .line 795
    add-int/lit16 v7, v7, 0x168

    .line 799
    :cond_1e8
    add-int/lit8 v10, v7, 0x2d

    div-int/lit8 v10, v10, 0x5a

    .line 800
    .local v10, "nearestRotation":I
    const/4 v11, 0x4

    if-ne v10, v11, :cond_1f0

    .line 801
    const/4 v10, 0x0

    .line 805
    :cond_1f0
    invoke-direct {v1, v10, v6}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isTiltAngleAcceptableLocked(II)Z

    move-result v11

    if-eqz v11, :cond_23f

    .line 806
    invoke-direct {v1, v10, v7}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isOrientationAngleAcceptableLocked(II)Z

    move-result v11

    if-eqz v11, :cond_23f

    .line 808
    invoke-direct {v1, v8, v9, v10}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->updatePredictedRotationLocked(JI)V

    .line 809
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v11

    if-eqz v11, :cond_266

    .line 810
    const-string v11, "WindowOrientationListener"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Predicted: tiltAngle="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", orientationAngle="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", predictedRotation="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", predictedRotationAgeMS="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    sub-long v14, v8, v14

    long-to-float v14, v14

    const v15, 0x358637bd    # 1.0E-6f

    mul-float/2addr v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_266

    .line 819
    :cond_23f
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v11

    if-eqz v11, :cond_263

    .line 820
    const-string v11, "WindowOrientationListener"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignoring sensor data, no predicted rotation: tiltAngle="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", orientationAngle="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_263
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    .line 829
    .end local v6    # "tiltAngle":I
    .end local v7    # "orientationAngle":I
    .end local v10    # "nearestRotation":I
    .end local v27    # "magnitude":F
    .end local v28    # "isFlat":Z
    .end local v29    # "isSwinging":Z
    .restart local v13    # "isFlat":Z
    .restart local v14    # "isSwinging":Z
    :cond_266
    :goto_266
    move/from16 v6, v24

    move/from16 v13, v28

    move/from16 v14, v29

    .end local v13    # "isFlat":Z
    .end local v14    # "isSwinging":Z
    .restart local v28    # "isFlat":Z
    .restart local v29    # "isSwinging":Z
    goto :goto_271

    .end local v21    # "then":J
    .end local v23    # "z":F
    .end local v24    # "isAccelerating":Z
    .end local v28    # "isFlat":Z
    .end local v29    # "isSwinging":Z
    .local v6, "isAccelerating":Z
    .local v7, "z":F
    .local v10, "then":J
    .restart local v13    # "isFlat":Z
    .restart local v14    # "isSwinging":Z
    :cond_26d
    move/from16 v23, v7

    move-wide/from16 v21, v10

    .end local v7    # "z":F
    .end local v10    # "then":J
    .restart local v21    # "then":J
    .restart local v23    # "z":F
    :goto_271
    iput-boolean v13, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    .line 830
    iput-boolean v14, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    .line 831
    iput-boolean v6, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    .line 834
    iget v7, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 835
    .local v7, "oldProposedRotation":I
    iget v10, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    if-ltz v10, :cond_283

    invoke-direct {v1, v8, v9}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->isPredictedRotationAcceptableLocked(J)Z

    move-result v10

    if-eqz v10, :cond_287

    .line 836
    :cond_283
    iget v10, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    iput v10, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 838
    :cond_287
    iget v10, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 841
    .local v10, "proposedRotation":I
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v11

    if-eqz v11, :cond_350

    .line 842
    const-string v11, "WindowOrientationListener"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v30, v0

    const-string v0, "Result: currentRotation="

    .end local v0    # "x":F
    .local v30, "x":F
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    # getter for: Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v0}, Lcom/android/server/policy/WindowOrientationListener;->access$200(Lcom/android/server/policy/WindowOrientationListener;)I

    move-result v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", proposedRotation="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", predictedRotation="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotation:I

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", timeDeltaMS="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", isAccelerating="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isFlat="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isSwinging="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isOverhead="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isTouched="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", timeUntilSettledMS="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v32, v4

    move/from16 v31, v5

    iget-wide v4, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mPredictedRotationTimestampNanos:J

    .end local v4    # "skipSample":Z
    .end local v5    # "y":F
    .local v31, "y":F
    .local v32, "skipSample":Z
    const-wide/32 v16, 0x2625a00

    add-long v4, v4, v16

    .line 851
    invoke-direct {v1, v8, v9, v4, v5}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", timeUntilAccelerationDelayExpiredMS="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    const-wide/32 v16, 0x1dcd6500

    add-long v4, v4, v16

    .line 853
    invoke-direct {v1, v8, v9, v4, v5}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", timeUntilFlatDelayExpiredMS="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    add-long v4, v4, v16

    .line 855
    invoke-direct {v1, v8, v9, v4, v5}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", timeUntilSwingDelayExpiredMS="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    const-wide/32 v18, 0x11e1a300

    add-long v4, v4, v18

    .line 857
    invoke-direct {v1, v8, v9, v4, v5}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", timeUntilTouchDelayExpiredMS="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    add-long v4, v4, v16

    .line 859
    invoke-direct {v1, v8, v9, v4, v5}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->remainingMS(JJ)F

    move-result v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 842
    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    .end local v6    # "isAccelerating":Z
    .end local v8    # "now":J
    .end local v12    # "timeDeltaMS":F
    .end local v13    # "isFlat":Z
    .end local v14    # "isSwinging":Z
    .end local v21    # "then":J
    .end local v23    # "z":F
    .end local v30    # "x":F
    .end local v31    # "y":F
    .end local v32    # "skipSample":Z
    :cond_350
    monitor-exit v3
    :try_end_351
    .catchall {:try_start_b .. :try_end_351} :catchall_381

    move v0, v10

    .end local v10    # "proposedRotation":I
    .local v0, "proposedRotation":I
    move v3, v7

    .line 865
    .end local v7    # "oldProposedRotation":I
    .local v3, "oldProposedRotation":I
    if-eq v0, v3, :cond_380

    if-ltz v0, :cond_380

    .line 866
    # getter for: Lcom/android/server/policy/WindowOrientationListener;->LOG:Z
    invoke-static {}, Lcom/android/server/policy/WindowOrientationListener;->access$100()Z

    move-result v4

    if-eqz v4, :cond_37b

    .line 867
    const-string v4, "WindowOrientationListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Proposed rotation changed!  proposedRotation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", oldProposedRotation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_37b
    iget-object v4, v1, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->this$0:Lcom/android/server/policy/WindowOrientationListener;

    invoke-virtual {v4, v0}, Lcom/android/server/policy/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 872
    :cond_380
    return-void

    .line 862
    .end local v0    # "proposedRotation":I
    .end local v3    # "oldProposedRotation":I
    :catchall_381
    move-exception v0

    :try_start_382
    monitor-exit v3
    :try_end_383
    .catchall {:try_start_382 .. :try_end_383} :catchall_381

    throw v0
.end method

.method public onTouchEndLocked(J)V
    .registers 4
    .param p1, "whenElapsedNanos"    # J

    .line 881
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    .line 882
    iput-wide p1, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouchEndedTimestampNanos:J

    .line 883
    return-void
.end method

.method public onTouchStartLocked()V
    .registers 2

    .line 876
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mTouched:Z

    .line 877
    return-void
.end method

.method public resetLocked(Z)V
    .registers 5
    .param p1, "clearCurrentRotation"    # Z

    .line 887
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mLastFilteredTimestampNanos:J

    .line 888
    if-eqz p1, :cond_9

    .line 889
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mProposedRotation:I

    .line 891
    :cond_9
    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlatTimestampNanos:J

    .line 892
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mFlat:Z

    .line 893
    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwingTimestampNanos:J

    .line 894
    iput-boolean v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mSwinging:Z

    .line 895
    iput-wide v0, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerationTimestampNanos:J

    .line 896
    iput-boolean v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mAccelerating:Z

    .line 897
    iput-boolean v2, p0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->mOverhead:Z

    .line 898
    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearPredictedRotationLocked()V

    .line 899
    invoke-direct {p0}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;->clearTiltHistoryLocked()V

    .line 900
    return-void
.end method
