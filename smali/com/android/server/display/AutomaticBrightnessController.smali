.class Lcom/android/server/display/AutomaticBrightnessController;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;,
        Lcom/android/server/display/AutomaticBrightnessController$Callbacks;,
        Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    }
.end annotation


# static fields
.field private static final AMBIENT_LIGHT_LONG_HORIZON_MILLIS:I = 0x2710

.field private static final AMBIENT_LIGHT_PREDICTION_TIME_MILLIS:J = 0x64L

.field private static final AMBIENT_LIGHT_SHORT_HORIZON_MILLIS:I = 0x7d0

.field private static final BRIGHTNESS_ADJUSTMENT_SAMPLE_DEBOUNCE_MILLIS:I = 0x2710

.field static DEBUG:Z = false

.field private static DEBUG_BACKLIGHT:Z = false

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final MSG_BRIGHTNESS_ADJUSTMENT_SAMPLE:I = 0x2

.field private static final MSG_INVALIDATE_SHORT_TERM_MODEL:I = 0x3

.field private static final MSG_UPDATE_AMBIENT_LUX:I = 0x1

.field private static final SHORT_TERM_MODEL_TIMEOUT_MILLIS:I = 0x7530

.field private static final TAG:Ljava/lang/String; = "AutomaticBrightnessController"

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z = true


# instance fields
.field private SHORT_TERM_MODEL_THRESHOLD_RATIO:F

.field private mAdjustBrightness:Z

.field private final mAmbientLightHorizon:I

.field private mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private final mBrighteningLightDebounceConfig:J

.field private mBrighteningLuxThreshold:F

.field private mBrightnessAdjustmentSampleOldBrightness:I

.field private mBrightnessAdjustmentSampleOldLux:F

.field private mBrightnessAdjustmentSamplePending:Z

.field private final mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private mCall_UpdateFast:Z

.field private final mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

.field private mCurrentLightSensorRate:I

.field private final mDarkeningLightDebounceConfig:J

.field private mDarkeningLuxThreshold:F

.field private mDisplayPolicy:I

.field private final mDozeScaleFactor:F

.field private mEnableAutoBrightness:Z

.field private final mFirstLuxDebounceConfig:J

.field private mFirst_PickupState:Z

.field private mFirst_lux:Z

.field private mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

.field private final mHysteresisLevels:Lcom/android/server/display/HysteresisLevels;

.field private final mInitialLightSensorRate:I

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorWarmUpTimeConfig:I

.field private final mNormalLightSensorRate:I

.field private final mPickUpSensor:Landroid/hardware/Sensor;

.field private final mPickUpSensorListener:Landroid/hardware/SensorEventListener;

.field private mPickupState:Z

.field private mProximityPositive:Z

.field private final mProximitySensor:Landroid/hardware/Sensor;

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mRecentLightSamples:I

.field private final mResetAmbientLuxAfterWarmUpConfig:Z

.field private mScreenAutoBrightness:I

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mShortTermModelAnchor:F

.field private mShortTermModelValid:Z

.field public mUpdate_Fast:Z

.field private final mWeightingIntercept:I

.field private mZeroStartTime:J

.field private mZeroTask:Ljava/util/TimerTask;

.field private mZeroTimer:Ljava/util/Timer;

.field private mbStartTimer:Z

.field private zeroHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    .line 56
    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Lcom/android/server/display/BrightnessMappingStrategy;IIIFIIJJZLcom/android/server/display/HysteresisLevels;)V
    .registers 34
    .param p1, "callbacks"    # Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p4, "mapper"    # Lcom/android/server/display/BrightnessMappingStrategy;
    .param p5, "lightSensorWarmUpTime"    # I
    .param p6, "brightnessMin"    # I
    .param p7, "brightnessMax"    # I
    .param p8, "dozeScaleFactor"    # F
    .param p9, "lightSensorRate"    # I
    .param p10, "initialLightSensorRate"    # I
    .param p11, "brighteningLightDebounceConfig"    # J
    .param p13, "darkeningLightDebounceConfig"    # J
    .param p15, "resetAmbientLuxAfterWarmUpConfig"    # Z
    .param p16, "hysteresisLevels"    # Lcom/android/server/display/HysteresisLevels;

    move-object/from16 v0, p0

    .line 284
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    .line 182
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 186
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    .line 200
    const v3, 0x3f19999a    # 0.6f

    iput v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->SHORT_TERM_MODEL_THRESHOLD_RATIO:F

    .line 202
    const-wide/16 v3, 0x3e8

    iput-wide v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFirstLuxDebounceConfig:J

    .line 207
    iput-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    .line 208
    iput-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAdjustBrightness:Z

    .line 209
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroStartTime:J

    .line 210
    iput-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_lux:Z

    .line 211
    iput-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCall_UpdateFast:Z

    .line 216
    iput-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPickupState:Z

    .line 217
    iput-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_PickupState:Z

    .line 218
    iput-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mUpdate_Fast:Z

    .line 219
    iput-boolean v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mEnableAutoBrightness:Z

    .line 267
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$2;

    invoke-direct {v2, v0}, Lcom/android/server/display/AutomaticBrightnessController$2;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->zeroHandler:Landroid/os/Handler;

    .line 923
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$3;

    invoke-direct {v2, v0}, Lcom/android/server/display/AutomaticBrightnessController$3;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 978
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$4;

    invoke-direct {v2, v0}, Lcom/android/server/display/AutomaticBrightnessController$4;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 1000
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$5;

    invoke-direct {v2, v0}, Lcom/android/server/display/AutomaticBrightnessController$5;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPickUpSensorListener:Landroid/hardware/SensorEventListener;

    .line 285
    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    .line 286
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 287
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 288
    move/from16 v5, p6

    iput v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    .line 289
    move/from16 v6, p7

    iput v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    .line 290
    move/from16 v7, p5

    iput v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    .line 291
    move/from16 v8, p8

    iput v8, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    .line 292
    move/from16 v9, p9

    iput v9, v0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    .line 293
    move/from16 v10, p10

    iput v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    .line 294
    iput v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 295
    move-wide/from16 v11, p11

    iput-wide v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    .line 296
    move-wide/from16 v13, p13

    iput-wide v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    .line 297
    move/from16 v1, p15

    iput-boolean v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    .line 298
    const/16 v15, 0x2710

    iput v15, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    .line 299
    iput v15, v0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    .line 300
    move-object/from16 v15, p16

    iput-object v15, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHysteresisLevels:Lcom/android/server/display/HysteresisLevels;

    .line 301
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    .line 302
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    .line 304
    new-instance v1, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    move-object/from16 v2, p2

    invoke-direct {v1, v0, v2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 305
    new-instance v1, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    int-to-long v2, v2

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>(JI)V

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 309
    iget-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 311
    iget-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 314
    iget-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x1fa2652

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPickUpSensor:Landroid/hardware/Sensor;

    .line 316
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 52
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->zeroHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/AutomaticBrightnessController;JF)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # J
    .param p3, "x2"    # F

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 52
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 52
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPickupState:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPickupState:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 52
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_PickupState:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_PickupState:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/display/AutomaticBrightnessController;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 52
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_lux:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/display/AutomaticBrightnessController;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 52
    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroStartTime:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/android/server/display/AutomaticBrightnessController;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # J

    .line 52
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroStartTime:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 52
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->startZeroTimer()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 52
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 52
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->stopZeroTimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 52
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 52
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->collectBrightnessAdjustmentSample()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 52
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->invalidateShortTermModel()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 52
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$800()Z
    .registers 1

    .line 52
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .line 52
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityPositive:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityPositive:Z

    return p1
.end method

.method private adjustLightSensorRate(I)V
    .registers 7
    .param p1, "lightSensorRate"    # I

    .line 566
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    if-eq p1, v0, :cond_3e

    .line 567
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 568
    const-string v0, "AutomaticBrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustLightSensorRate: previousRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_28
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 573
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 574
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    mul-int/lit16 v3, p1, 0x3e8

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 577
    :cond_3e
    return-void
.end method

.method private applyLightSensorMeasurement(JF)V
    .registers 7
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .line 555
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 556
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    int-to-long v1, v1

    sub-long v1, p1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 557
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->push(JF)V

    .line 560
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    .line 561
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    .line 562
    return-void
.end method

.method private calculateAmbientLux(JJ)F
    .registers 24
    .param p1, "now"    # J
    .param p3, "horizon"    # J

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 627
    move-wide/from16 v3, p3

    sget-boolean v5, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v5, :cond_2d

    .line 628
    const-string v5, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calculateAmbientLux("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_2d
    iget-object v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v5

    .line 631
    .local v5, "N":I
    if-nez v5, :cond_3f

    .line 632
    const-string v6, "AutomaticBrightnessController"

    const-string v7, "calculateAmbientLux: No ambient light readings available"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/high16 v6, -0x40800000    # -1.0f

    return v6

    .line 637
    :cond_3f
    const/4 v6, 0x0

    .line 638
    .local v6, "endIndex":I
    sub-long v7, v1, v3

    .line 639
    .local v7, "horizonStartTime":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_43
    add-int/lit8 v10, v5, -0x1

    if-ge v9, v10, :cond_58

    .line 640
    iget-object v10, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v10

    cmp-long v10, v10, v7

    if-gtz v10, :cond_58

    .line 641
    add-int/lit8 v6, v6, 0x1

    .line 639
    add-int/lit8 v9, v9, 0x1

    goto :goto_43

    .line 646
    .end local v9    # "i":I
    :cond_58
    sget-boolean v9, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v9, :cond_93

    .line 647
    const-string v9, "AutomaticBrightnessController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calculateAmbientLux: selected endIndex="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", point=("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 648
    invoke-virtual {v11, v6}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 649
    invoke-virtual {v11, v6}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 647
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_93
    const/4 v9, 0x0

    .line 652
    .local v9, "sum":F
    const/4 v10, 0x0

    .line 653
    .local v10, "totalWeight":F
    const-wide/16 v11, 0x64

    .line 654
    .local v11, "endTime":J
    add-int/lit8 v13, v5, -0x1

    .local v13, "i":I
    :goto_99
    if-lt v13, v6, :cond_101

    .line 655
    iget-object v14, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v14, v13}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v14

    .line 656
    .local v14, "eventTime":J
    if-ne v13, v6, :cond_a8

    cmp-long v16, v14, v7

    if-gez v16, :cond_a8

    .line 659
    move-wide v14, v7

    .line 661
    :cond_a8
    sub-long v3, v14, v1

    .line 662
    .local v3, "startTime":J
    invoke-direct {v0, v3, v4, v11, v12}, Lcom/android/server/display/AutomaticBrightnessController;->calculateWeight(JJ)F

    move-result v1

    .line 663
    .local v1, "weight":F
    iget-object v2, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v2, v13}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v2

    .line 664
    .local v2, "lux":F
    sget-boolean v16, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v16, :cond_eb

    .line 665
    const-string v0, "AutomaticBrightnessController"

    move/from16 v17, v5

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "N":I
    .local v17, "N":I
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v6

    const-string v6, "calculateAmbientLux: ["

    .end local v6    # "endIndex":I
    .local v18, "endIndex":I
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "]: lux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", weight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ef

    .line 669
    .end local v17    # "N":I
    .end local v18    # "endIndex":I
    .restart local v5    # "N":I
    .restart local v6    # "endIndex":I
    :cond_eb
    move/from16 v17, v5

    move/from16 v18, v6

    .end local v5    # "N":I
    .end local v6    # "endIndex":I
    .restart local v17    # "N":I
    .restart local v18    # "endIndex":I
    :goto_ef
    add-float/2addr v10, v1

    .line 670
    mul-float v0, v2, v1

    add-float/2addr v9, v0

    .line 671
    move-wide v11, v3

    .line 654
    .end local v1    # "weight":F
    .end local v2    # "lux":F
    .end local v3    # "startTime":J
    .end local v14    # "eventTime":J
    add-int/lit8 v13, v13, -0x1

    move/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    goto :goto_99

    .line 673
    .end local v13    # "i":I
    .end local v17    # "N":I
    .end local v18    # "endIndex":I
    .restart local v5    # "N":I
    .restart local v6    # "endIndex":I
    :cond_101
    move/from16 v17, v5

    move/from16 v18, v6

    .end local v5    # "N":I
    .end local v6    # "endIndex":I
    .restart local v17    # "N":I
    .restart local v18    # "endIndex":I
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z

    if-eqz v0, :cond_129

    .line 674
    const-string v0, "AutomaticBrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateAmbientLux: totalWeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", newAmbientLux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-float v2, v9, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_129
    div-float v0, v9, v10

    return v0
.end method

.method private calculateWeight(JJ)F
    .registers 7
    .param p1, "startDelta"    # J
    .param p3, "endDelta"    # J

    .line 682
    invoke-direct {p0, p3, p4}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private cancelBrightnessAdjustmentSample()V
    .registers 3

    .line 874
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_d

    .line 875
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 876
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 878
    :cond_d
    return-void
.end method

.method private clampScreenBrightness(I)I
    .registers 4
    .param p1, "value"    # I

    .line 856
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private collectBrightnessAdjustmentSample()V
    .registers 5

    .line 881
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_6b

    .line 882
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 883
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v1, :cond_6b

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-ltz v1, :cond_6b

    .line 884
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v1, :cond_3f

    .line 885
    const-string v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto-brightness adjustment changed by user: lux="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", brightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", ring="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_3f
    const v1, 0x88b8

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    .line 892
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    .line 893
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 894
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 895
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 891
    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 898
    :cond_6b
    return-void
.end method

.method private handleLightSensorEvent(JF)V
    .registers 8
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .line 543
    const-string v0, "ALS"

    float-to-int v1, p3

    const-wide/32 v2, 0x20000

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 544
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 546
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    if-nez v0, :cond_1c

    .line 548
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->adjustLightSensorRate(I)V

    .line 550
    :cond_1c
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->applyLightSensorMeasurement(JF)V

    .line 551
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    .line 552
    return-void
.end method

.method private invalidateShortTermModel()V
    .registers 3

    .line 438
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 439
    const-string v0, "AutomaticBrightnessController"

    const-string v1, "ShortTermModel: invalidate user data"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    .line 442
    return-void
.end method

.method private static isInteractivePolicy(I)Z
    .registers 2
    .param p0, "policy"    # I

    .line 412
    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const/4 v0, 0x4

    if-ne p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method private nextAmbientLightBrighteningTransition(J)J
    .registers 9
    .param p1, "time"    # J

    .line 692
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 693
    .local v0, "N":I
    move-wide v1, p1

    .line 694
    .local v1, "earliestValidTime":J
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_9
    if-ltz v3, :cond_21

    .line 695
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_18

    .line 696
    goto :goto_21

    .line 698
    :cond_18
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v1

    .line 694
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 700
    .end local v3    # "i":I
    :cond_21
    :goto_21
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_lux:Z

    if-eqz v3, :cond_29

    .line 701
    const-wide/16 v3, 0x3e8

    add-long/2addr v3, v1

    return-wide v3

    .line 703
    :cond_29
    iget-wide v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    add-long/2addr v3, v1

    return-wide v3
.end method

.method private nextAmbientLightDarkeningTransition(J)J
    .registers 9
    .param p1, "time"    # J

    .line 707
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 708
    .local v0, "N":I
    move-wide v1, p1

    .line 709
    .local v1, "earliestValidTime":J
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_9
    if-ltz v3, :cond_21

    .line 710
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_18

    .line 711
    goto :goto_21

    .line 713
    :cond_18
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v1

    .line 709
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    .line 715
    .end local v3    # "i":I
    :cond_21
    :goto_21
    iget-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_lux:Z

    if-eqz v3, :cond_29

    .line 716
    const-wide/16 v3, 0x3e8

    add-long/2addr v3, v1

    return-wide v3

    .line 718
    :cond_29
    iget-wide v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    add-long/2addr v3, v1

    return-wide v3
.end method

.method private prepareBrightnessAdjustmentSample()V
    .registers 5

    .line 861
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    const/4 v1, 0x2

    if-nez v0, :cond_18

    .line 862
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 863
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    goto :goto_11

    :cond_f
    const/high16 v0, -0x40800000    # -1.0f

    :goto_11
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    .line 864
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    goto :goto_1d

    .line 866
    :cond_18
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 869
    :goto_1d
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 871
    return-void
.end method

.method private setAmbientLux(F)V
    .registers 7
    .param p1, "lux"    # F

    .line 596
    const-string v0, "AutomaticBrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAmbientLux("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_29

    .line 598
    const-string v0, "AutomaticBrightnessController"

    const-string v1, "Ambient lux was negative, ignoring and setting to 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    const/4 p1, 0x0

    .line 602
    :cond_29
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 603
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHysteresisLevels:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HysteresisLevels;->getBrighteningThreshold(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    .line 604
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHysteresisLevels:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HysteresisLevels;->getDarkeningThreshold(F)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    .line 607
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    if-nez v0, :cond_c3

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c3

    .line 608
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->SHORT_TERM_MODEL_THRESHOLD_RATIO:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 610
    .local v0, "minAmbientLux":F
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->SHORT_TERM_MODEL_THRESHOLD_RATIO:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 612
    .local v1, "maxAmbientLux":F
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_93

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_93

    .line 613
    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v2, :cond_8f

    .line 614
    const-string v2, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShortTermModel: re-validate user data, ambient lux is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_8f
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    goto :goto_c3

    .line 619
    :cond_93
    const-string v2, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ShortTermModel: reset data, ambient lux is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 624
    .end local v0    # "minAmbientLux":F
    .end local v1    # "maxAmbientLux":F
    :cond_c3
    :goto_c3
    return-void
.end method

.method private setAutoBrightnessAdjustment(F)Z
    .registers 3
    .param p1, "adjustment"    # F

    .line 592
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->setAutoBrightnessAdjustment(F)Z

    move-result v0

    return v0
.end method

.method private setBrightnessAdjustment(F)Z
    .registers 5
    .param p1, "adjustment"    # F

    .line 580
    const v0, 0x42c8aa7f    # 100.333f

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_b

    .line 581
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAdjustBrightness:Z

    .line 582
    return v1

    .line 584
    :cond_b
    const v0, 0x42c91c29    # 100.555f

    cmpl-float v0, p1, v0

    const/4 v2, 0x0

    if-nez v0, :cond_16

    .line 585
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAdjustBrightness:Z

    .line 586
    return v1

    .line 588
    :cond_16
    return v2
.end method

.method private setDisplayPolicy(I)Z
    .registers 7
    .param p1, "policy"    # I

    .line 394
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    if-ne v0, p1, :cond_6

    .line 395
    const/4 v0, 0x0

    return v0

    .line 397
    :cond_6
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    .line 398
    .local v0, "oldPolicy":I
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    .line 399
    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v1, :cond_2c

    .line 400
    const-string v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display policy transitioning from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_2c
    invoke-static {p1}, Lcom/android/server/display/AutomaticBrightnessController;->isInteractivePolicy(I)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_41

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isInteractivePolicy(I)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 403
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_52

    .line 405
    :cond_41
    invoke-static {p1}, Lcom/android/server/display/AutomaticBrightnessController;->isInteractivePolicy(I)Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isInteractivePolicy(I)Z

    move-result v1

    if-nez v1, :cond_52

    .line 406
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 408
    :cond_52
    :goto_52
    const/4 v1, 0x1

    return v1
.end method

.method private setLightSensorEnabled(Z)Z
    .registers 9
    .param p1, "enable"    # Z

    .line 499
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4e

    .line 500
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-nez v2, :cond_8a

    .line 501
    sget-boolean v2, Lcom/android/server/display/DisplayPowerController;->DEBUG_ONEPLUS:Z

    sput-boolean v2, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z

    .line 502
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 503
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEnableAutoBrightness:Z

    .line 504
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    .line 505
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 506
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    mul-int/lit16 v5, v5, 0x3e8

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 510
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPickUpSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPickUpSensor:Landroid/hardware/Sensor;

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    mul-int/lit16 v5, v5, 0x3e8

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 513
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensor:Landroid/hardware/Sensor;

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    mul-int/lit16 v5, v5, 0x3e8

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 515
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_lux:Z

    .line 516
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPickupState:Z

    .line 517
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_PickupState:Z

    .line 518
    return v0

    .line 520
    :cond_4e
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v2, :cond_8a

    .line 521
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    if-eqz v2, :cond_59

    .line 522
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->stopZeroTimer()V

    .line 523
    :cond_59
    sput-boolean v1, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z

    .line 524
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 525
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    xor-int/2addr v2, v0

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 526
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 527
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    .line 528
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    .line 529
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 530
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 531
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 532
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mProximityPositive:Z

    .line 535
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPickUpSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 536
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_PickupState:Z

    .line 539
    :cond_8a
    return v1
.end method

.method private setScreenBrightnessByUser(F)Z
    .registers 6
    .param p1, "brightness"    # F

    .line 418
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v0, :cond_6

    .line 421
    const/4 v0, 0x0

    return v0

    .line 423
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->addUserDataPoint(FF)V

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    .line 425
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    .line 426
    const-string v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShortTermModel: anchor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",UserSetBrightness ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return v0
.end method

.method private startZeroTimer()V
    .registers 8

    .line 222
    monitor-enter p0

    .line 223
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    if-nez v0, :cond_c

    .line 224
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    .line 227
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;

    if-nez v0, :cond_17

    .line 228
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessController$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/AutomaticBrightnessController$1;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;

    .line 238
    :cond_17
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_2a

    .line 239
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x1388

    iget-wide v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 241
    :cond_2a
    monitor-exit p0

    .line 242
    return-void

    .line 241
    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method private stopZeroTimer()V
    .registers 5

    .line 245
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    if-nez v0, :cond_5

    .line 246
    return-void

    .line 248
    :cond_5
    monitor-enter p0

    .line 250
    const/4 v0, 0x0

    :try_start_7
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    .line 252
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 253
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 254
    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTimer:Ljava/util/Timer;

    .line 257
    :cond_15
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_20

    .line 258
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 259
    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mZeroTask:Ljava/util/TimerTask;
    :try_end_20
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_20} :catch_23
    .catchall {:try_start_7 .. :try_end_20} :catchall_21

    .line 263
    :cond_20
    goto :goto_3b

    .line 264
    :catchall_21
    move-exception v0

    goto :goto_3d

    .line 261
    :catch_23
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_24
    const-string v1, "AutomaticBrightnessController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopZeroTimer null pointer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_3b
    monitor-exit p0

    .line 265
    return-void

    .line 264
    :goto_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_24 .. :try_end_3e} :catchall_21

    throw v0
.end method

.method private updateAmbientLux()V
    .registers 6

    .line 722
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 723
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    int-to-long v3, v3

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 724
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    .line 725
    return-void
.end method

.method private updateAmbientLux(J)V
    .registers 15
    .param p1, "time"    # J

    .line 730
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    const-wide/16 v1, 0x7d0

    const/4 v3, 0x1

    if-nez v0, :cond_6f

    .line 731
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v4, v0

    iget-wide v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    add-long/2addr v4, v6

    .line 733
    .local v4, "timeWhenSensorWarmedUp":J
    cmp-long v0, p1, v4

    if-gez v0, :cond_3a

    .line 734
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v0, :cond_34

    .line 735
    const-string v0, "AutomaticBrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAmbientLux: Sensor not  ready yet: time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", timeWhenSensorWarmedUp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_34
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 741
    return-void

    .line 743
    :cond_3a
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_lux:Z

    .line 744
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 745
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 746
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v0, :cond_6c

    .line 747
    const-string v0, "AutomaticBrightnessController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateAmbientLux: Initializing: mAmbientLightRingBuffer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", mAmbientLux="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_6c
    invoke-direct {p0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 754
    .end local v4    # "timeWhenSensorWarmedUp":J
    :cond_6f
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v4

    .line 755
    .local v4, "nextBrightenTransition":J
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v6

    .line 764
    .local v6, "nextDarkenTransition":J
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_lux:Z

    if-eqz v0, :cond_7e

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    goto :goto_84

    :cond_7e
    const-wide/16 v8, 0x2710

    invoke-direct {p0, p1, p2, v8, v9}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v0

    .line 765
    .local v0, "slowAmbientLux":F
    :goto_84
    iget-boolean v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_lux:Z

    if-eqz v8, :cond_8b

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    goto :goto_8f

    :cond_8b
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JJ)F

    move-result v1

    .line 767
    .local v1, "fastAmbientLux":F
    :goto_8f
    const/4 v2, 0x0

    cmpl-float v8, v1, v2

    if-eqz v8, :cond_b2

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v8, v1, v8

    const/high16 v9, 0x40a00000    # 5.0f

    if-lez v8, :cond_a3

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    add-float/2addr v8, v9

    cmpg-float v8, v1, v8

    if-ltz v8, :cond_b0

    :cond_a3
    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpg-float v8, v1, v8

    if-gez v8, :cond_b2

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    sub-float/2addr v8, v9

    cmpl-float v8, v1, v8

    if-lez v8, :cond_b2

    .line 768
    :cond_b0
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 769
    :cond_b2
    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpl-float v8, v0, v8

    if-ltz v8, :cond_c2

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpl-float v8, v1, v8

    if-ltz v8, :cond_c2

    cmp-long v8, v4, p1

    if-lez v8, :cond_de

    :cond_c2
    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpg-float v8, v0, v8

    if-gtz v8, :cond_d2

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpg-float v8, v1, v8

    if-gtz v8, :cond_d2

    cmp-long v8, v6, p1

    if-lez v8, :cond_de

    :cond_d2
    iget-boolean v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUpdate_Fast:Z

    if-nez v8, :cond_de

    cmpl-float v2, v1, v2

    if-nez v2, :cond_142

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mbStartTimer:Z

    if-eqz v2, :cond_142

    .line 776
    :cond_de
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_lux:Z

    if-eqz v2, :cond_e7

    .line 777
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_lux:Z

    .line 778
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCall_UpdateFast:Z

    .line 780
    :cond_e7
    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 781
    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-nez v2, :cond_f2

    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z

    if-eqz v2, :cond_132

    .line 782
    :cond_f2
    const-string v2, "AutomaticBrightnessController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateAmbientLux: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    iget v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v9, v1, v9

    if-lez v9, :cond_108

    const-string v9, "Brightened"

    goto :goto_10a

    :cond_108
    const-string v9, "Darkened"

    :goto_10a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": mBrighteningLuxThreshold="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", mAmbientLightRingBuffer="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", mAmbientLux="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 782
    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_132
    invoke-direct {p0, v3}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 789
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v2, :cond_13a

    .line 790
    return-void

    .line 791
    :cond_13a
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v4

    .line 792
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v6

    .line 794
    :cond_142
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 802
    .local v8, "nextTransitionTime":J
    cmp-long v2, v8, p1

    if-lez v2, :cond_14c

    move-wide v10, v8

    goto :goto_150

    :cond_14c
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    int-to-long v10, v2

    add-long/2addr v10, p1

    :goto_150
    move-wide v8, v10

    .line 803
    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG_BACKLIGHT:Z

    if-eqz v2, :cond_173

    .line 804
    const-string v2, "AutomaticBrightnessController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateAmbientLux: Scheduling ambient lux update for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 805
    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 804
    invoke-static {v2, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_173
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v2, v3, v8, v9}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 808
    return-void
.end method

.method private updateAutoBrightness(Z)V
    .registers 8
    .param p1, "sendUpdate"    # Z

    .line 811
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v0, :cond_5

    .line 812
    return-void

    .line 815
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightness(F)F

    move-result v0

    .line 816
    .local v0, "value":F
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAdjustBrightness:Z

    if-eqz v1, :cond_65

    .line 819
    const v1, 0x3d1fbe77    # 0.039f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1b

    .line 820
    const v0, 0x3d1fbe77    # 0.039f

    .line 821
    :cond_1b
    cmpl-float v1, v0, v1

    const v2, 0x3d9fbe77    # 0.078f

    if-lez v1, :cond_29

    cmpg-float v1, v0, v2

    if-gez v1, :cond_29

    .line 822
    const v0, 0x3d9fbe77    # 0.078f

    .line 823
    :cond_29
    cmpl-float v1, v0, v2

    const v2, 0x3e3851ec    # 0.18f

    if-lez v1, :cond_37

    cmpg-float v1, v0, v2

    if-gez v1, :cond_37

    .line 824
    const v0, 0x3e3851ec    # 0.18f

    .line 825
    :cond_37
    cmpl-float v1, v0, v2

    const v2, 0x3eb43958    # 0.352f

    if-lez v1, :cond_45

    cmpg-float v1, v0, v2

    if-gez v1, :cond_45

    .line 826
    const v0, 0x3eb43958    # 0.352f

    .line 827
    :cond_45
    cmpl-float v1, v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    if-lez v1, :cond_51

    cmpg-float v1, v0, v2

    if-gez v1, :cond_51

    .line 828
    const/high16 v0, 0x3f000000    # 0.5f

    .line 829
    :cond_51
    cmpl-float v1, v0, v2

    const v2, 0x3f5c28f6    # 0.86f

    if-lez v1, :cond_5f

    cmpg-float v1, v0, v2

    if-gez v1, :cond_5f

    .line 830
    const v0, 0x3f5c28f6    # 0.86f

    .line 831
    :cond_5f
    cmpl-float v1, v0, v2

    if-lez v1, :cond_65

    .line 832
    const/high16 v0, 0x3f800000    # 1.0f

    .line 835
    :cond_65
    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    .line 836
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    move-result v1

    .line 837
    .local v1, "newScreenAutoBrightness":I
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_7a

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEnableAutoBrightness:Z

    if-eqz v2, :cond_c7

    .line 838
    :cond_7a
    const-string v2, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAutoBrightness: value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", mScreenAutoBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", newScreenAutoBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEnableAutoBrightness:Z

    if-eqz v2, :cond_a9

    .line 843
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mEnableAutoBrightness:Z

    .line 844
    :cond_a9
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCall_UpdateFast:Z

    if-eqz v2, :cond_be

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    sub-int v2, v1, v2

    const/16 v4, 0xc8

    if-le v2, v4, :cond_be

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    const/16 v4, 0x96

    if-ge v2, v4, :cond_be

    .line 845
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mUpdate_Fast:Z

    .line 846
    :cond_be
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 847
    if-eqz p1, :cond_c7

    .line 848
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    invoke-interface {v2}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness()V

    .line 851
    :cond_c7
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCall_UpdateFast:Z

    if-eqz v2, :cond_cd

    .line 852
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCall_UpdateFast:Z

    .line 853
    :cond_cd
    return-void
.end method

.method private weightIntegral(J)F
    .registers 6
    .param p1, "x"    # J

    .line 688
    long-to-float v0, p1

    long-to-float v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public configure(ZLandroid/hardware/display/BrightnessConfiguration;FZFZI)V
    .registers 25
    .param p1, "enable"    # Z
    .param p2, "configuration"    # Landroid/hardware/display/BrightnessConfiguration;
    .param p3, "brightness"    # F
    .param p4, "userChangedBrightness"    # Z
    .param p5, "adjustment"    # F
    .param p6, "userChangedAutoBrightnessAdjustment"    # Z
    .param p7, "displayPolicy"    # I

    move-object/from16 v1, p0

    move/from16 v3, p5

    .line 340
    move/from16 v4, p7

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v4, v5, :cond_c

    move v0, v5

    goto :goto_d

    :cond_c
    move v0, v6

    :goto_d
    move v7, v0

    .line 341
    .local v7, "dozing":Z
    move-object/from16 v8, p2

    invoke-virtual {v1, v8}, Lcom/android/server/display/AutomaticBrightnessController;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z

    move-result v0

    .line 342
    .local v0, "changed":Z
    invoke-direct {v1, v4}, Lcom/android/server/display/AutomaticBrightnessController;->setDisplayPolicy(I)Z

    move-result v9

    or-int/2addr v0, v9

    .line 343
    invoke-direct {v1, v3}, Lcom/android/server/display/AutomaticBrightnessController;->setBrightnessAdjustment(F)Z

    move-result v9

    or-int/2addr v0, v9

    .line 344
    if-eqz p6, :cond_33

    .line 345
    const v9, 0x42c8aa7f    # 100.333f

    cmpl-float v9, v3, v9

    if-eqz v9, :cond_33

    const v9, 0x42c91c29    # 100.555f

    cmpl-float v9, v3, v9

    if-eqz v9, :cond_33

    .line 346
    invoke-direct {v1, v3}, Lcom/android/server/display/AutomaticBrightnessController;->setAutoBrightnessAdjustment(F)Z

    move-result v9

    or-int/2addr v0, v9

    .line 348
    :cond_33
    if-eqz p4, :cond_3f

    if-eqz p1, :cond_3f

    .line 351
    move/from16 v9, p3

    invoke-direct {v1, v9}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenBrightnessByUser(F)Z

    move-result v10

    or-int/2addr v0, v10

    goto :goto_41

    .line 353
    :cond_3f
    move/from16 v9, p3

    .end local v0    # "changed":Z
    .local v10, "changed":Z
    :goto_41
    move v10, v0

    if-nez p4, :cond_49

    if-eqz p6, :cond_47

    goto :goto_49

    :cond_47
    move v0, v6

    goto :goto_4a

    :cond_49
    :goto_49
    move v0, v5

    :goto_4a
    move v11, v0

    .line 355
    .local v11, "userInitiatedChange":Z
    if-eqz v11, :cond_54

    if-eqz p1, :cond_54

    if-nez v7, :cond_54

    .line 356
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/AutomaticBrightnessController;->prepareBrightnessAdjustmentSample()V

    .line 360
    :cond_54
    const-string v0, "fingerprint"

    .line 361
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v12

    .line 363
    .local v12, "ifp":Landroid/hardware/fingerprint/IFingerprintService;
    const-string v13, ""

    .line 364
    .local v13, "pkg":Ljava/lang/String;
    move v14, v6

    .line 367
    .local v14, "forceLightSensorEnabled":Z
    :try_start_61
    invoke-interface {v12}, Landroid/hardware/fingerprint/IFingerprintService;->getAuthenticatedPackage()Ljava/lang/String;

    move-result-object v0
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_65} :catch_67

    move-object v13, v0

    .line 370
    goto :goto_83

    .line 368
    :catch_67
    move-exception v0

    move-object v15, v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception e = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_83
    const/4 v2, 0x1

    new-array v0, v2, [I

    const/16 v5, 0x47

    const/4 v6, 0x0

    aput v5, v0, v6

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_9d

    if-eqz v7, :cond_9d

    const-string v0, "com.android.systemui"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    move v0, v2

    goto :goto_9e

    :cond_9d
    const/4 v0, 0x0

    .line 374
    .end local v14    # "forceLightSensorEnabled":Z
    .local v0, "forceLightSensorEnabled":Z
    :goto_9e
    if-eqz p1, :cond_a2

    if-eqz v7, :cond_a6

    :cond_a2
    if-eqz p1, :cond_a7

    if-eqz v0, :cond_a7

    :cond_a6
    goto :goto_a8

    :cond_a7
    const/4 v2, 0x0

    :goto_a8
    invoke-direct {v1, v2}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    move-result v2

    or-int/2addr v2, v10

    .line 376
    .end local v10    # "changed":Z
    .local v2, "changed":Z
    if-eqz v2, :cond_b3

    .line 377
    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 379
    :cond_b3
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 453
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 454
    const-string v0, "Automatic Brightness Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozeScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInitialLightSensorRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mInitialLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNormalLightSensorRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mNormalLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrighteningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkeningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mResetAmbientLuxAfterWarmUpConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLightHorizon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightHorizon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWeightingIntercept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mWeightingIntercept:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 468
    const-string v0, "Automatic Brightness Controller State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentLightSensorRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCurrentLightSensorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLuxValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrighteningLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkeningLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLightRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    invoke-static {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelAnchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessAdjustmentSamplePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessAdjustmentSampleOldLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessAdjustmentSampleOldBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mShortTermModelValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 492
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->dump(Ljava/io/PrintWriter;)V

    .line 494
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 495
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHysteresisLevels:Lcom/android/server/display/HysteresisLevels;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HysteresisLevels;->dump(Ljava/io/PrintWriter;)V

    .line 496
    return-void
.end method

.method public getAutomaticScreenBrightness()I
    .registers 3

    .line 319
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v0, :cond_6

    .line 320
    const/4 v0, -0x1

    return v0

    .line 322
    :cond_6
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDisplayPolicy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 323
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    .line 325
    :cond_13
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    return v0
.end method

.method public getAutomaticScreenBrightnessAdjustment()F
    .registers 2

    .line 329
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getAutoBrightnessAdjustment()F

    move-result v0

    return v0
.end method

.method public getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    .line 390
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public hasUserDataPoints()Z
    .registers 2

    .line 382
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->hasUserDataPoints()Z

    move-result v0

    return v0
.end method

.method public isDefaultConfig()Z
    .registers 2

    .line 386
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->isDefaultConfig()Z

    move-result v0

    return v0
.end method

.method public resetShortTermModel()V
    .registers 2

    .line 432
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->clearUserDataPoints()V

    .line 433
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelValid:Z

    .line 434
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mShortTermModelAnchor:F

    .line 435
    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z
    .registers 3
    .param p1, "configuration"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 445
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 446
    invoke-virtual {p0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 447
    const/4 v0, 0x1

    return v0

    .line 449
    :cond_d
    const/4 v0, 0x0

    return v0
.end method
