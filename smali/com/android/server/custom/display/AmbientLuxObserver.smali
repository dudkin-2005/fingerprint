.class public Lcom/android/server/custom/display/AmbientLuxObserver;
.super Ljava/lang/Object;
.source "AmbientLuxObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;,
        Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;,
        Lcom/android/server/custom/display/AmbientLuxObserver$TransitionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final HIGH:I = 0x1

.field private static final LOW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AmbientLuxObserver"


# instance fields
.field private mAmbientLux:F

.field private mCallback:Lcom/android/server/custom/display/AmbientLuxObserver$TransitionListener;

.field private final mHysteresisLux:F

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnabled:Z

.field private mLightSensorRate:I

.field private final mListener:Landroid/hardware/SensorEventListener;

.field private final mLuxHandler:Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;

.field private final mRingBuffer:Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mState:I

.field private final mThresholdDuration:I

.field private final mThresholdLux:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-string v0, "AmbientLuxObserver"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/custom/display/AmbientLuxObserver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;FFI)V
    .locals 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mLightSensorEnabled:Z

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mAmbientLux:F

    .line 52
    iput v0, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mState:I

    .line 134
    new-instance v0, Lcom/android/server/custom/display/AmbientLuxObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/custom/display/AmbientLuxObserver$1;-><init>(Lcom/android/server/custom/display/AmbientLuxObserver;)V

    iput-object v0, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mListener:Landroid/hardware/SensorEventListener;

    .line 66
    new-instance v0, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;-><init>(Lcom/android/server/custom/display/AmbientLuxObserver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mLuxHandler:Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;

    .line 67
    iput p3, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mThresholdLux:F

    .line 68
    iput p4, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mHysteresisLux:F

    .line 69
    iput p5, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mThresholdDuration:I

    .line 70
    new-instance p2, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    invoke-direct {p2, p5}, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mRingBuffer:Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    .line 72
    const-string/jumbo p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mSensorManager:Landroid/hardware/SensorManager;

    .line 73
    iget-object p2, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 p3, 0x5

    invoke-virtual {p2, p3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mLightSensor:Landroid/hardware/Sensor;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e000f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mLightSensorRate:I

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/custom/display/AmbientLuxObserver;)Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mRingBuffer:Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/custom/display/AmbientLuxObserver;)F
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mAmbientLux:F

    return p0
.end method

.method static synthetic access$102(Lcom/android/server/custom/display/AmbientLuxObserver;F)F
    .locals 0

    .line 32
    iput p1, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mAmbientLux:F

    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 32
    sget-boolean v0, Lcom/android/server/custom/display/AmbientLuxObserver;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/custom/display/AmbientLuxObserver;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mState:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/server/custom/display/AmbientLuxObserver;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/custom/display/AmbientLuxObserver;)F
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mThresholdLux:F

    return p0
.end method

.method static synthetic access$500(Lcom/android/server/custom/display/AmbientLuxObserver;)F
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mHysteresisLux:F

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/custom/display/AmbientLuxObserver;)Lcom/android/server/custom/display/AmbientLuxObserver$TransitionListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mCallback:Lcom/android/server/custom/display/AmbientLuxObserver$TransitionListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/custom/display/AmbientLuxObserver;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mThresholdDuration:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/custom/display/AmbientLuxObserver;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mLightSensorEnabled:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/server/custom/display/AmbientLuxObserver;)Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mLuxHandler:Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;

    return-object p0
.end method

.method private enableLightSensor(Z)V
    .locals 4

    .line 159
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mLightSensorEnabled:Z

    if-nez v0, :cond_0

    .line 160
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mLightSensorEnabled:Z

    .line 161
    iget-object p1, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mLightSensor:Landroid/hardware/Sensor;

    iget v2, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mLightSensorRate:I

    mul-int/lit16 v2, v2, 0x3e8

    iget-object v3, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mLuxHandler:Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    .line 163
    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mLightSensorEnabled:Z

    if-eqz p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 165
    iget-object p1, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mLuxHandler:Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;

    invoke-virtual {p1}, Lcom/android/server/custom/display/AmbientLuxObserver$AmbientLuxHandler;->clear()V

    .line 166
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mAmbientLux:F

    .line 167
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mState:I

    .line 168
    iput-boolean p1, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mLightSensorEnabled:Z

    .line 169
    iget-object p1, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mRingBuffer:Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    invoke-virtual {p1}, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->clear()V

    .line 171
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 174
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 175
    const-string v0, "  AmbientLuxObserver State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mRingBuffer:Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;

    invoke-virtual {v1}, Lcom/android/server/custom/display/AmbientLuxObserver$TimedMovingAverageRingBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public declared-synchronized getState()I
    .locals 1

    monitor-enter p0

    .line 150
    :try_start_0
    iget v0, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTransitionListener(Lcom/android/server/custom/display/AmbientLuxObserver$TransitionListener;)V
    .locals 0

    monitor-enter p0

    .line 154
    :try_start_0
    iput-object p1, p0, Lcom/android/server/custom/display/AmbientLuxObserver;->mCallback:Lcom/android/server/custom/display/AmbientLuxObserver$TransitionListener;

    .line 155
    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/custom/display/AmbientLuxObserver;->enableLightSensor(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
