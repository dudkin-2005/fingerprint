.class public Lcom/android/server/AnyMotionDetector;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AnyMotionDetector$RunningSignalStats;,
        Lcom/android/server/AnyMotionDetector$Vector3;,
        Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;
    }
.end annotation


# static fields
.field private static final ACCELEROMETER_DATA_TIMEOUT_MILLIS:J = 0xbb8L

.field private static final DEBUG:Z = false

.field private static final ORIENTATION_MEASUREMENT_DURATION_MILLIS:J = 0x9c4L

.field private static final ORIENTATION_MEASUREMENT_INTERVAL_MILLIS:J = 0x1388L

.field public static final RESULT_MOVED:I = 0x1

.field public static final RESULT_STATIONARY:I = 0x0

.field public static final RESULT_UNKNOWN:I = -0x1

.field private static final SAMPLING_INTERVAL_MILLIS:I = 0x28

.field private static final STALE_MEASUREMENT_TIMEOUT_MILLIS:I = 0x1d4c0

.field private static final STATE_ACTIVE:I = 0x1

.field private static final STATE_INACTIVE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AnyMotionDetector"

.field private static final WAKELOCK_TIMEOUT_MILLIS:J = 0x7530L


# instance fields
.field private final THRESHOLD_ENERGY:F

.field private mAccelSensor:Landroid/hardware/Sensor;

.field private mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

.field private mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/hardware/SensorEventListener;

.field private final mLock:Ljava/lang/Object;

.field private mMeasurementInProgress:Z

.field private final mMeasurementTimeout:Ljava/lang/Runnable;

.field private mMeasurementTimeoutIsActive:Z

.field private mNumSufficientSamples:I

.field private mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

.field private mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mSensorRestart:Ljava/lang/Runnable;

.field private mSensorRestartIsActive:Z

.field private mState:I

.field private final mThresholdAngle:F

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakelockTimeout:Ljava/lang/Runnable;

.field private mWakelockTimeoutIsActive:Z


# direct methods
.method public constructor <init>(Landroid/os/PowerManager;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;F)V
    .locals 3

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/android/server/AnyMotionDetector;->THRESHOLD_ENERGY:F

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 113
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 118
    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    .line 290
    new-instance v0, Lcom/android/server/AnyMotionDetector$1;

    invoke-direct {v0, p0}, Lcom/android/server/AnyMotionDetector$1;-><init>(Lcom/android/server/AnyMotionDetector;)V

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mListener:Landroid/hardware/SensorEventListener;

    .line 316
    new-instance v0, Lcom/android/server/AnyMotionDetector$2;

    invoke-direct {v0, p0}, Lcom/android/server/AnyMotionDetector$2;-><init>(Lcom/android/server/AnyMotionDetector;)V

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestart:Ljava/lang/Runnable;

    .line 328
    new-instance v0, Lcom/android/server/AnyMotionDetector$3;

    invoke-direct {v0, p0}, Lcom/android/server/AnyMotionDetector$3;-><init>(Lcom/android/server/AnyMotionDetector;)V

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Ljava/lang/Runnable;

    .line 349
    new-instance v0, Lcom/android/server/AnyMotionDetector$4;

    invoke-direct {v0, p0}, Lcom/android/server/AnyMotionDetector$4;-><init>(Lcom/android/server/AnyMotionDetector;)V

    iput-object v0, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Ljava/lang/Runnable;

    .line 123
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    const-string v1, "AnyMotionDetector"

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 125
    iget-object p1, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 126
    iput-object p2, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    .line 127
    iput-object p3, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    .line 128
    iget-object p1, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    .line 129
    iput-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    .line 130
    iput-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    .line 131
    iput-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    .line 132
    iput-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestartIsActive:Z

    .line 133
    iput v1, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    .line 134
    iput-object p4, p0, Lcom/android/server/AnyMotionDetector;->mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    .line 135
    iput p5, p0, Lcom/android/server/AnyMotionDetector;->mThresholdAngle:F

    .line 136
    new-instance p1, Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-direct {p1}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;-><init>()V

    iput-object p1, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    .line 137
    const-wide p1, 0x404f400000000000L    # 62.5

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/android/server/AnyMotionDetector;->mNumSufficientSamples:I

    .line 140
    monitor-exit v0

    .line 141
    return-void

    .line 140
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic access$000(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Object;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$RunningSignalStats;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/server/AnyMotionDetector;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/android/server/AnyMotionDetector;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/AnyMotionDetector;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/android/server/AnyMotionDetector;->mNumSufficientSamples:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/AnyMotionDetector;)I
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/server/AnyMotionDetector;->stopOrientationMeasurementLocked()I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Runnable;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/AnyMotionDetector;)Landroid/os/Handler;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/AnyMotionDetector;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    return p0
.end method

.method static synthetic access$602(Lcom/android/server/AnyMotionDetector;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/server/AnyMotionDetector;->mCallback:Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/AnyMotionDetector;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestartIsActive:Z

    return p0
.end method

.method static synthetic access$802(Lcom/android/server/AnyMotionDetector;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestartIsActive:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/AnyMotionDetector;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/server/AnyMotionDetector;->startOrientationMeasurementLocked()V

    return-void
.end method

.method private startOrientationMeasurementLocked()V
    .locals 5

    .line 194
    iget-boolean v0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mAccelSensor:Landroid/hardware/Sensor;

    const v3, 0x9c40

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 197
    iput-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    .line 198
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->reset()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Ljava/lang/Runnable;

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 201
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 202
    iput-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    .line 204
    :cond_1
    return-void
.end method

.method private stopOrientationMeasurementLocked()I
    .locals 5

    .line 209
    nop

    .line 210
    iget-boolean v0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    .line 213
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 214
    iput-boolean v0, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    .line 215
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 216
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->getRunningAverage()Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 217
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->getSampleCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 218
    const-string v2, "AnyMotionDetector"

    const-string v3, "No accelerometer data acquired for orientation measurement."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->reset()V

    .line 230
    invoke-virtual {p0}, Lcom/android/server/AnyMotionDetector;->getStationaryStatus()I

    move-result v2

    .line 232
    if-eq v2, v1, :cond_2

    .line 233
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    iput-boolean v0, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    .line 236
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 241
    :cond_1
    iput v0, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    goto :goto_0

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestart:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestartIsActive:Z

    .line 255
    :goto_0
    move v1, v2

    :cond_3
    return v1
.end method


# virtual methods
.method public checkForAnyMotion()V
    .locals 6

    .line 150
    iget v0, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    iput v1, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    .line 156
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 157
    iput-object v2, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 158
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 159
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    .line 160
    iget-object v3, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 161
    iput-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    .line 162
    invoke-direct {p0}, Lcom/android/server/AnyMotionDetector;->startOrientationMeasurementLocked()V

    .line 163
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 165
    :cond_0
    :goto_0
    return-void
.end method

.method public getStationaryStatus()I
    .locals 7

    .line 262
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    if-nez v0, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    invoke-virtual {v0}, Lcom/android/server/AnyMotionDetector$Vector3;->normalized()Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v0

    .line 266
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector$Vector3;->normalized()Lcom/android/server/AnyMotionDetector$Vector3;

    move-result-object v2

    .line 267
    invoke-virtual {v0, v2}, Lcom/android/server/AnyMotionDetector$Vector3;->angleBetween(Lcom/android/server/AnyMotionDetector$Vector3;)F

    move-result v0

    .line 270
    iget v2, p0, Lcom/android/server/AnyMotionDetector;->mThresholdAngle:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mRunningStats:Lcom/android/server/AnyMotionDetector$RunningSignalStats;

    invoke-virtual {v2}, Lcom/android/server/AnyMotionDetector$RunningSignalStats;->getEnergy()F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 271
    const/4 v0, 0x0

    return v0

    .line 272
    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 278
    return v2

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v3, v0, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    iget-wide v5, v0, Lcom/android/server/AnyMotionDetector$Vector3;->timeMillisSinceBoot:J

    sub-long/2addr v3, v5

    .line 282
    const-wide/32 v5, 0x1d4c0

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    .line 285
    return v1

    .line 287
    :cond_3
    return v2

    .line 263
    :cond_4
    :goto_0
    return v1
.end method

.method public stop()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_0
    iget v1, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 170
    iput v3, p0, Lcom/android/server/AnyMotionDetector;->mState:I

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 174
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestart:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementTimeoutIsActive:Z

    .line 176
    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mSensorRestartIsActive:Z

    .line 177
    iget-boolean v1, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    if-eqz v1, :cond_1

    .line 178
    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mMeasurementInProgress:Z

    .line 179
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 181
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mCurrentGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 182
    iput-object v1, p0, Lcom/android/server/AnyMotionDetector;->mPreviousGravityVector:Lcom/android/server/AnyMotionDetector$Vector3;

    .line 183
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    iput-boolean v3, p0, Lcom/android/server/AnyMotionDetector;->mWakelockTimeoutIsActive:Z

    .line 186
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 188
    :cond_2
    monitor-exit v0

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
