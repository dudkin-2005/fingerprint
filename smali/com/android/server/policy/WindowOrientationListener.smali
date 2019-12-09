.class public abstract Lcom/android/server/policy/WindowOrientationListener;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;,
        Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;,
        Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;
    }
.end annotation


# static fields
.field private static final DEFAULT_BATCH_LATENCY:I = 0x186a0

.field private static LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "WindowOrientationListener"

.field private static final USE_GRAVITY_SENSOR:Z


# instance fields
.field private mCurrentRotation:I

.field private mDPCSensor:Landroid/hardware/Sensor;

.field private mEnabled:Z

.field private mFlatState:I

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

.field private mRate:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 59
    const-string v0, "debug.orientation.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 92
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 93
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "rate"    # I

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mFlatState:I

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mDPCSensor:Landroid/hardware/Sensor;

    .line 81
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    .line 83
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 108
    iput-object p2, p0, Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 109
    const-string/jumbo v2, "sensor"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 110
    iput p3, p0, Lcom/android/server/policy/WindowOrientationListener;->mRate:I

    .line 111
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x1b

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    .line 112
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v3, 0x0

    .line 113
    .local v3, "wakeUpDeviceOrientationSensor":Landroid/hardware/Sensor;
    const/4 v4, 0x0

    .line 120
    .local v4, "nonWakeUpDeviceOrientationSensor":Landroid/hardware/Sensor;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Sensor;

    .line 121
    .local v6, "s":Landroid/hardware/Sensor;
    invoke-virtual {v6}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v7

    if-eqz v7, :cond_44

    .line 122
    move-object v3, v6

    goto :goto_45

    .line 124
    :cond_44
    move-object v4, v6

    .line 126
    .end local v6    # "s":Landroid/hardware/Sensor;
    :goto_45
    goto :goto_30

    .line 128
    :cond_46
    if-eqz v3, :cond_4b

    .line 129
    iput-object v3, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    goto :goto_4d

    .line 131
    :cond_4b
    iput-object v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 134
    :goto_4d
    iget-object v5, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v5, :cond_b5

    .line 137
    const-string v5, ""

    .line 138
    .local v5, "DPCSensorStrType":Ljava/lang/String;
    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, "product":Ljava/lang/String;
    const-string v7, "cheeseburger"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_67

    const-string v7, "dumpling"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 140
    :cond_67
    iput v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mFlatState:I

    .line 141
    const-string v5, "com.qti.sensor.dpc"

    .line 144
    :cond_6b
    const-string v7, ""

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ae

    .line 145
    iget-object v7, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v7, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 146
    .local v1, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_ae

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Sensor;

    .line 147
    .local v8, "s":Landroid/hardware/Sensor;
    invoke-virtual {v8}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_96

    .line 148
    iput-object v8, p0, Lcom/android/server/policy/WindowOrientationListener;->mDPCSensor:Landroid/hardware/Sensor;

    .line 149
    goto :goto_ae

    .line 151
    :cond_96
    sget-boolean v9, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    if-eqz v9, :cond_ad

    .line 152
    iget-object v9, p0, Lcom/android/server/policy/WindowOrientationListener;->mDPCSensor:Landroid/hardware/Sensor;

    if-eqz v9, :cond_a6

    .line 153
    const-string v9, "WindowOrientationListener"

    const-string v10, "DPC sensor found!"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    .line 155
    :cond_a6
    const-string v9, "WindowOrientationListener"

    const-string v10, "DPC sensor NOT found!!"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v8    # "s":Landroid/hardware/Sensor;
    :cond_ad
    :goto_ad
    goto :goto_7d

    .line 161
    .end local v1    # "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_ae
    :goto_ae
    new-instance v1, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;

    invoke-direct {v1, p0}, Lcom/android/server/policy/WindowOrientationListener$OrientationSensorJudge;-><init>(Lcom/android/server/policy/WindowOrientationListener;)V

    iput-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    .line 164
    .end local v5    # "DPCSensorStrType":Ljava/lang/String;
    .end local v6    # "product":Ljava/lang/String;
    :cond_b5
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    if-nez v1, :cond_cc

    .line 165
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 167
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_cc

    .line 169
    new-instance v0, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;

    invoke-direct {v0, p0, p1}, Lcom/android/server/policy/WindowOrientationListener$AccelSensorJudge;-><init>(Lcom/android/server/policy/WindowOrientationListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    .line 172
    :cond_cc
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/WindowOrientationListener;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;

    .line 50
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 50
    sget-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/WindowOrientationListener;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;

    .line 50
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/WindowOrientationListener;)Landroid/hardware/Sensor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;

    .line 50
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mDPCSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/WindowOrientationListener;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;

    .line 50
    iget v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mFlatState:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/WindowOrientationListener;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/WindowOrientationListener;

    .line 50
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public canDetectOrientation()Z
    .registers 3

    .line 295
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 296
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 297
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public disable()V
    .registers 4

    .line 230
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_10

    .line 232
    const-string v1, "WindowOrientationListener"

    const-string v2, "Cannot detect sensors. Invalid disable"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    monitor-exit v0

    return-void

    .line 235
    :cond_10
    iget-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2a

    .line 236
    sget-boolean v1, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    if-eqz v1, :cond_20

    .line 237
    const-string v1, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener disabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_20
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 240
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    .line 242
    :cond_2a
    monitor-exit v0

    .line 243
    return-void

    .line 242
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WindowOrientationListener"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object p2, v1

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mCurrentRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    invoke-static {v2}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mSensorType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mSensor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    if-eqz v1, :cond_b8

    .line 334
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 336
    :cond_b8
    monitor-exit v0

    .line 337
    return-void

    .line 336
    :catchall_ba
    move-exception v1

    monitor-exit v0
    :try_end_bc
    .catchall {:try_start_3 .. :try_end_bc} :catchall_ba

    throw v1
.end method

.method public enable()V
    .registers 3

    .line 181
    const-string v0, "debug.orientation.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    .line 183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/WindowOrientationListener;->enable(Z)V

    .line 184
    return-void
.end method

.method public enable(Z)V
    .registers 11
    .param p1, "clearCurrentRotation"    # Z

    .line 194
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_10

    .line 196
    const-string v1, "WindowOrientationListener"

    const-string v2, "Cannot detect sensors. Not enabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    monitor-exit v0

    return-void

    .line 199
    :cond_10
    iget-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    if-eqz v1, :cond_16

    .line 200
    monitor-exit v0

    return-void

    .line 202
    :cond_16
    sget-boolean v1, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    if-eqz v1, :cond_30

    .line 203
    const-string v1, "WindowOrientationListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WindowOrientationListener enabled clearCurrentRotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_30
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;->resetLocked(Z)V

    .line 207
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4f

    .line 208
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    iget-object v5, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v6, p0, Lcom/android/server/policy/WindowOrientationListener;->mRate:I

    const v7, 0x186a0

    iget-object v8, p0, Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    goto :goto_78

    .line 211
    :cond_4f
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v5, p0, Lcom/android/server/policy/WindowOrientationListener;->mRate:I

    iget-object v6, p0, Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 214
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mDPCSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_78

    .line 215
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    iget-object v4, p0, Lcom/android/server/policy/WindowOrientationListener;->mDPCSensor:Landroid/hardware/Sensor;

    iget v5, p0, Lcom/android/server/policy/WindowOrientationListener;->mRate:I

    iget-object v6, p0, Lcom/android/server/policy/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 216
    sget-boolean v1, Lcom/android/server/policy/WindowOrientationListener;->LOG:Z

    if-eqz v1, :cond_78

    .line 217
    const-string v1, "WindowOrientationListener"

    const-string v3, "DPC sensor registered!"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_78
    :goto_78
    iput-boolean v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    .line 223
    monitor-exit v0

    .line 224
    return-void

    .line 223
    :catchall_7c
    move-exception v1

    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_3 .. :try_end_7e} :catchall_7c

    throw v1
.end method

.method public getProposedRotation()I
    .registers 3

    .line 283
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    if-eqz v1, :cond_f

    .line 285
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v1}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;->getProposedRotationLocked()I

    move-result v1

    monitor-exit v0

    return v1

    .line 287
    :cond_f
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 288
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public abstract onProposedRotationChanged(I)V
.end method

.method public onTouchEnd()V
    .registers 5

    .line 254
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    .line 256
    .local v0, "whenElapsedNanos":J
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 257
    :try_start_7
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    if-eqz v3, :cond_10

    .line 258
    iget-object v3, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;->onTouchEndLocked(J)V

    .line 260
    :cond_10
    monitor-exit v2

    .line 261
    return-void

    .line 260
    :catchall_12
    move-exception v3

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v3
.end method

.method public onTouchStart()V
    .registers 3

    .line 246
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_3
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    if-eqz v1, :cond_c

    .line 248
    iget-object v1, p0, Lcom/android/server/policy/WindowOrientationListener;->mOrientationJudge:Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;

    invoke-virtual {v1}, Lcom/android/server/policy/WindowOrientationListener$OrientationJudge;->onTouchStartLocked()V

    .line 250
    :cond_c
    monitor-exit v0

    .line 251
    return-void

    .line 250
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public setCurrentRotation(I)V
    .registers 4
    .param p1, "rotation"    # I

    .line 269
    iget-object v0, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_3
    iput p1, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    .line 271
    monitor-exit v0

    .line 272
    return-void

    .line 271
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 315
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 316
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/policy/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 317
    const-wide v3, 0x10800000001L

    :try_start_c
    iget-boolean v5, p0, Lcom/android/server/policy/WindowOrientationListener;->mEnabled:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 318
    const-wide v3, 0x10e00000002L

    iget v5, p0, Lcom/android/server/policy/WindowOrientationListener;->mCurrentRotation:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 319
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_20

    .line 320
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 321
    return-void

    .line 319
    :catchall_20
    move-exception v3

    :try_start_21
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v3
.end method
