.class public final Lcom/android/server/oneplus/display/ColorBalanceService;
.super Lcom/android/server/SystemService;
.source "ColorBalanceService.java"

# interfaces
.implements Lcom/android/internal/app/ColorDisplayController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;,
        Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;,
        Lcom/android/server/oneplus/display/ColorBalanceService$CMH;,
        Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;,
        Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;,
        Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;
    }
.end annotation


# static fields
.field private static final ADAPTION_ADJUSTMENT_SHADING_TIME:I = 0x12c

.field private static final ADAPTION_INIT_COLOR:I = 0x2b

.field private static final AUTO_ADJUSTMENT_SHADING_TIME:I = 0x0

.field private static COLOR_DELTA:I = 0x0

.field private static final COLOR_MATRIX_EVALUATOR:Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;

.field private static final COLOR_MATRIX_FACTOR_DELTA:F = 0.0125f

.field private static final COLOR_MATRIX_FACTOR_DELTA_SHADING_DELAY:I = 0xf

.field private static final DEBUG:Z = false

.field private static final DEFAULT_COLORBALANCE:I = 0x2b

.field private static final IS_QCOM_SAVE_MODE_USED:Z = false

.field private static final MATRIX_IDENTITY:[F

.field private static final MODE_CREATE_ING:I = 0x1

.field private static final MODE_CREATE_NONE:I = 0x0

.field private static final MODE_NIGHT:I = 0x1

.field private static final MODE_NIGHT_OFF:I = 0x3

.field private static final MODE_NULL:I = 0x0

.field private static final MODE_READING:I = 0x2

.field private static final MODE_READING_OFF:I = 0x4

.field private static final MODE_READING_OFF_AUTO:I = 0x5

.field private static final MSG_ACTIVE_MODE:I = 0x5

.field private static final MSG_AUTOCHANGE_ENVIRONMENT_CHANGED:I = 0x14

.field private static final MSG_CHECK_LIGHT:I = 0x10

.field private static final MSG_CHECK_SRGBSEN:I = 0xf

.field private static final MSG_CLOSEPTOPETIES:I = 0x18

.field private static final MSG_DEFAULT_MODE:I = 0x6

.field private static final MSG_DISABLECOLOR:I = 0x17

.field private static final MSG_NIGHT2READING:I = 0xd

.field private static final MSG_NIGHT2READMODE:I = 0x16

.field private static final MSG_NIGHT_ACTIVATED:I = 0x13

.field private static final MSG_NIGHT_ENVIRONMENT_CHANGED:I = 0x8

.field private static final MSG_NIGHT_SWITCH:I = 0xa

.field private static final MSG_READ2NIGHTMODE:I = 0x15

.field private static final MSG_READING2NIGHT:I = 0xe

.field private static final MSG_READING_ACTIVATED:I = 0x12

.field private static final MSG_READING_ENVIRONMENT_CHANGED:I = 0x9

.field private static final MSG_READING_SWITCH:I = 0xb

.field private static final MSG_REVERT_STATUS:I = 0xc

.field private static final MSG_SAVE_MODE:I = 0x4

.field private static final MSG_SCREEN_AFTER_ON:I = 0x7

.field private static final MSG_SCREEN_OFF:I = 0x2

.field private static final MSG_SCREEN_ON:I = 0x1

.field private static final MSG_SET_COLORBALANCE:I = 0x3

.field private static final NIGHT_MODE_SEEKBAR_DEFAULT:I = 0x67

.field private static NIGHT_MODE_SEEKBAR_MAX:I = 0x0

.field private static final NIGHT_STAGE_CLOSED:I = 0x4

.field private static final NIGHT_STAGE_CLOSING:I = 0x3

.field private static final NIGHT_STAGE_OPENED:I = 0x2

.field private static final NIGHT_STAGE_OPENING:I = 0x1

.field private static final OP_AUTO_COLOR_MODE:I = 0x4

.field private static final OP_DCIP3_MODE:I = 0x2

.field private static final OP_DC_ENABLE:I = 0x16

.field private static final OP_DEFAULT_COLOR_MODE:I = 0x5

.field private static final OP_NIGHT_MODE:I = 0x3

.field private static final OP_SRGB_MODE:I = 0x1

.field private static final OP_SYS_Auto_Color_PROPERTY:Ljava/lang/String; = "sys.automode"

.field private static final OP_SYS_DCIP3_PROPERTY:Ljava/lang/String; = "sys.dci3p"

.field private static final OP_SYS_Default_Color_PROPERTY:Ljava/lang/String; = "sys.default_mode"

.field private static final OP_SYS_NIGHT_MODE:Ljava/lang/String; = "sys.night_mode"

.field private static final OP_SYS_SRGB_PROPERTY:Ljava/lang/String; = "sys.srgb"

.field private static final READING_INIT_COLOR:I = -0x14

.field private static final READING_STAGE_CLOSED:I = 0x8

.field private static final READING_STAGE_CLOSING:I = 0x7

.field private static final READING_STAGE_OPENED:I = 0x6

.field private static final READING_STAGE_OPENING:I = 0x5

.field private static final RESET_NODE_DELAY:I = 0x11

.field private static RGBSENSOR_Dither:I = 0x0

.field private static SENSOR_TYPE_RGB:I = 0x0

.field private static final STAGE_NULL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ColorBalanceService"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static config_colorbalance_oneplus_mode_adaption:[I

.field private static config_colorbalance_reading_mode:[I

.field private static config_colorbalance_reading_mode_SRGB_and_P3:[I


# instance fields
.field colorbalance_stop:Z

.field colortemprature:[I

.field config_autocolortemp:[I

.field config_autoseekbar:[I

.field config_colorbalance:[[I

.field private dtm:Lcom/android/server/display/DisplayTransformManager;

.field flinger:Landroid/os/IBinder;

.field has_fingerprint:Z

.field private mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

.field private mAutoSensor:Ljava/lang/Boolean;

.field private mAutoState:Ljava/lang/Boolean;

.field private mAverageColor:I

.field private mBootColorStatus:Ljava/lang/Boolean;

.field private mBootCompleted:Z

.field private mBootPhase:I

.field private mBootStatus:Ljava/lang/Boolean;

.field private final mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

.field private mColorBalanceThread:Landroid/os/HandlerThread;

.field private mColorDisableStatus:Ljava/lang/Boolean;

.field private mColorMatrix:[F

.field private mColorMatrixAnimator:Landroid/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/internal/app/ColorDisplayController;

.field private mCreateModeState:I

.field private mCurrentAdaptionColorbalance:I

.field private mCurrentColorBalance:I

.field private mCurrentNightColorbalance:I

.field private mCurrentReadingColorbalance:I

.field private mCurrentSrgbSensorAverageColor:I

.field private mCurrentUser:I

.field private mDisableStatus:I

.field private mDozeColorStatus:I

.field private mFactor:F

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private mGeneration:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsAutoModeActivated:Ljava/lang/Boolean;

.field private mIsColorManagerConnected:Ljava/lang/Boolean;

.field private mIsDisableByApp:Ljava/lang/Boolean;

.field private mIsNightModeActivated:Ljava/lang/Boolean;

.field private mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

.field private mIsReadingModeActivated:Ljava/lang/Boolean;

.field private mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

.field private mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

.field private mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

.field private mIsScreenOn:Ljava/lang/Boolean;

.field private mIsSupportReadingMode:Ljava/lang/Boolean;

.field private mIsTimeActivated:Ljava/lang/Boolean;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLightBrightness:I

.field private mLightGeneration:I

.field private mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private final mLock:Ljava/lang/Object;

.field private mLowLightCount:I

.field private mMode:I

.field private mModeEnable:I

.field private mModeId:I

.field private mModeStage:I

.field private mNight2ReadingModeStage:I

.field private mNightDisplayMoede:I

.field private mNightModeAutoStatus:I

.field private mNightModeClosingStage:I

.field private mNightModeOpingStage:I

.field private mNightModeStatus:Ljava/lang/Boolean;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreColorTemp:I

.field private mPretNightColorbalance:I

.field private mReading2NightModeStage:I

.field private mReadingModeClosingStage:I

.field private mReadingModeOpingStage:I

.field private mReadingModeStatus:Ljava/lang/Boolean;

.field private mSDM:Lcom/oneplus/display/SDManager;

.field private mSRGBSensorEnabled:Z

.field private mSRGBSensorListener:Landroid/hardware/SensorEventListener;

.field private mScreenOff_Quick:Ljava/lang/Boolean;

.field private mScreenOn_Quick:Ljava/lang/Boolean;

.field private mSensorColortemperature:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSrgbSensorGeneration:I

.field private mStableColor:I

.field private mStableCount:I

.field private mStartSetCount:I

.field private mStopSetCount:I

.field private mSwitchUser:Ljava/lang/Boolean;

.field private mUserSetupObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 100
    const/16 v0, 0x50

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    .line 101
    const/16 v0, 0x8

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->RGBSENSOR_Dither:I

    .line 102
    const/16 v0, 0x82

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    .line 234
    const v0, 0x1fa2639

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    .line 261
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->MATRIX_IDENTITY:[F

    .line 263
    sget-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->MATRIX_IDENTITY:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 266
    new-instance v0, Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService$1;)V

    sput-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;

    .line 312
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_3c

    sput-object v1, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_reading_mode:[I

    .line 313
    new-array v1, v0, [I

    fill-array-data v1, :array_4c

    sput-object v1, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_reading_mode_SRGB_and_P3:[I

    .line 314
    new-array v0, v0, [I

    fill-array-data v0, :array_5c

    sput-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_oneplus_mode_adaption:[I

    return-void

    :array_3c
    .array-data 4
        0x23
        0x2a
        0x3c
        0x45
        0x4e
        0x55
    .end array-data

    :array_4c
    .array-data 4
        0x36
        0x3d
        0x4e
        0x57
        0x5d
        0x63
    .end array-data

    :array_5c
    .array-data 4
        0x66
        0x70
        0x7a
        0x80
        0x86
        0x8a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;

    .line 324
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I

    .line 156
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 157
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    .line 158
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 159
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 160
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 161
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    .line 162
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 163
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    .line 164
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 165
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSrgbSensorGeneration:I

    .line 166
    const/16 v1, 0x2e

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 167
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    .line 168
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    .line 169
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 170
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 171
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 172
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCreateModeState:I

    .line 173
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightBrightness:I

    .line 174
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    .line 176
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 177
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 178
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 179
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 180
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 181
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 182
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    .line 185
    const/16 v2, -0x2710

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    .line 190
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 191
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 192
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    .line 193
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    .line 194
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    .line 195
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    .line 196
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    .line 197
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    .line 198
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    .line 199
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    .line 202
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    .line 204
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightDisplayMoede:I

    .line 206
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsColorManagerConnected:Ljava/lang/Boolean;

    .line 210
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeId:I

    .line 213
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    .line 214
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSwitchUser:Ljava/lang/Boolean;

    .line 215
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 216
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    .line 217
    const/16 v3, 0xa

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    .line 218
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDozeColorStatus:I

    .line 219
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    .line 220
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    .line 221
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOff_Quick:Ljava/lang/Boolean;

    .line 222
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootStatus:Ljava/lang/Boolean;

    .line 223
    iput-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    .line 224
    iput-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    .line 226
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->flinger:Landroid/os/IBinder;

    .line 249
    const/16 v5, 0x10

    new-array v6, v5, [F

    fill-array-data v6, :array_378

    iput-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    .line 257
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 265
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 269
    const/16 v6, 0x84

    new-array v7, v6, [I

    fill-array-data v7, :array_39c

    iput-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colortemprature:[I

    .line 284
    const/16 v7, 0x36

    new-array v8, v7, [I

    fill-array-data v8, :array_4a8

    iput-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_autocolortemp:[I

    .line 292
    new-array v8, v7, [I

    fill-array-data v8, :array_518

    iput-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_autoseekbar:[I

    .line 299
    new-array v7, v7, [[I

    const/4 v8, 0x7

    new-array v9, v8, [I

    fill-array-data v9, :array_588

    aput-object v9, v7, v0

    new-array v9, v8, [I

    fill-array-data v9, :array_59a

    aput-object v9, v7, v2

    new-array v9, v8, [I

    fill-array-data v9, :array_5ac

    const/4 v10, 0x2

    aput-object v9, v7, v10

    const/4 v9, 0x6

    new-array v10, v9, [I

    fill-array-data v10, :array_5be

    const/4 v11, 0x3

    aput-object v10, v7, v11

    new-array v10, v9, [I

    fill-array-data v10, :array_5ce

    const/4 v11, 0x4

    aput-object v10, v7, v11

    new-array v10, v9, [I

    fill-array-data v10, :array_5de

    const/4 v11, 0x5

    aput-object v10, v7, v11

    new-array v10, v9, [I

    fill-array-data v10, :array_5ee

    aput-object v10, v7, v9

    new-array v10, v9, [I

    fill-array-data v10, :array_5fe

    aput-object v10, v7, v8

    new-array v8, v9, [I

    fill-array-data v8, :array_60e

    const/16 v10, 0x8

    aput-object v8, v7, v10

    new-array v8, v9, [I

    fill-array-data v8, :array_61e

    const/16 v10, 0x9

    aput-object v8, v7, v10

    new-array v8, v9, [I

    fill-array-data v8, :array_62e

    aput-object v8, v7, v3

    new-array v3, v9, [I

    fill-array-data v3, :array_63e

    const/16 v8, 0xb

    aput-object v3, v7, v8

    new-array v3, v9, [I

    fill-array-data v3, :array_64e

    const/16 v8, 0xc

    aput-object v3, v7, v8

    new-array v3, v9, [I

    fill-array-data v3, :array_65e

    const/16 v8, 0xd

    aput-object v3, v7, v8

    new-array v3, v9, [I

    fill-array-data v3, :array_66e

    const/16 v8, 0xe

    aput-object v3, v7, v8

    new-array v3, v9, [I

    fill-array-data v3, :array_67e

    const/16 v8, 0xf

    aput-object v3, v7, v8

    new-array v3, v9, [I

    fill-array-data v3, :array_68e

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_69e

    const/16 v5, 0x11

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_6ae

    const/16 v5, 0x12

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_6be

    const/16 v5, 0x13

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_6ce

    const/16 v5, 0x14

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_6de

    const/16 v5, 0x15

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_6ee

    const/16 v5, 0x16

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_6fe

    const/16 v5, 0x17

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_70e

    const/16 v5, 0x18

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_71e

    const/16 v5, 0x19

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_72e

    const/16 v5, 0x1a

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_73e

    const/16 v5, 0x1b

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_74e

    const/16 v5, 0x1c

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_75e

    const/16 v5, 0x1d

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_76e

    const/16 v5, 0x1e

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_77e

    const/16 v5, 0x1f

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_78e

    const/16 v5, 0x20

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_79e

    const/16 v5, 0x21

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_7ae

    const/16 v5, 0x22

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_7be

    const/16 v5, 0x23

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_7ce

    const/16 v5, 0x24

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_7de

    const/16 v5, 0x25

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_7ee

    const/16 v5, 0x26

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_7fe

    const/16 v5, 0x27

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_80e

    const/16 v5, 0x28

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_81e

    const/16 v5, 0x29

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_82e

    const/16 v5, 0x2a

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_83e

    const/16 v5, 0x2b

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_84e

    const/16 v5, 0x2c

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_85e

    const/16 v5, 0x2d

    aput-object v3, v7, v5

    new-array v3, v9, [I

    fill-array-data v3, :array_86e

    aput-object v3, v7, v1

    new-array v1, v9, [I

    fill-array-data v1, :array_87e

    const/16 v3, 0x2f

    aput-object v1, v7, v3

    new-array v1, v9, [I

    fill-array-data v1, :array_88e

    const/16 v3, 0x30

    aput-object v1, v7, v3

    new-array v1, v9, [I

    fill-array-data v1, :array_89e

    const/16 v3, 0x31

    aput-object v1, v7, v3

    new-array v1, v9, [I

    fill-array-data v1, :array_8ae

    const/16 v5, 0x32

    aput-object v1, v7, v5

    new-array v1, v9, [I

    fill-array-data v1, :array_8be

    const/16 v5, 0x33

    aput-object v1, v7, v5

    new-array v1, v9, [I

    fill-array-data v1, :array_8ce

    const/16 v5, 0x34

    aput-object v1, v7, v5

    new-array v1, v9, [I

    fill-array-data v1, :array_8de

    const/16 v5, 0x35

    aput-object v1, v7, v5

    iput-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance:[[I

    .line 319
    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 322
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    .line 2087
    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$3;

    invoke-direct {v1, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$3;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorListener:Landroid/hardware/SensorEventListener;

    .line 2110
    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$4;

    invoke-direct {v1, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$4;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 325
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    .line 326
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 327
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mHandler:Landroid/os/Handler;

    .line 328
    new-instance v1, Landroid/os/HandlerThread;

    const-string v4, "ColorBalanceThread"

    invoke-direct {v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorBalanceThread:Landroid/os/HandlerThread;

    .line 329
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorBalanceThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 330
    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorBalanceThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    .line 331
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v4, "oem.read_mode.support"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    .line 332
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_335

    .line 333
    const/16 v1, 0x5a

    sput v1, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    .line 334
    sput v6, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    goto :goto_33d

    .line 336
    :cond_335
    const/16 v1, 0x50

    sput v1, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    .line 337
    const/16 v1, 0x82

    sput v1, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    .line 339
    :goto_33d
    new-array v1, v2, [I

    aput v3, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_34e

    .line 340
    const v0, 0x1fa2639

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    .line 341
    sput v9, Lcom/android/server/oneplus/display/ColorBalanceService;->RGBSENSOR_Dither:I

    .line 343
    :cond_34e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootStatus:Ljava/lang/Boolean;

    .line 344
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->flinger:Landroid/os/IBinder;

    .line 345
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 349
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 351
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/oneplus/display/ColorBalanceService$1;

    invoke-direct {v2, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$1;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 372
    return-void

    nop

    nop

    :array_378
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f410625    # 0.754f
        0x0
        0x0
        0x0
        0x0
        0x3f041893    # 0.516f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_39c
    .array-data 4
        0xba3
        0xba5
        0xc20
        0xc20
        0xc64
        0xc64
        0xc63
        0xce1
        0xce0
        0xd4e
        0xd4f
        0xd4d
        0xdd0
        0xdcd
        0xe39
        0xe39
        0xe38
        0xece
        0xecd
        0xf14
        0xf17
        0xf16
        0xfa8
        0xfa9
        0xfd4
        0xfd4
        0xfd4
        0x104d
        0x104d
        0x10af
        0x10af
        0x10af
        0x1111
        0x1110
        0x116d
        0x116c
        0x116c
        0x11c9
        0x11c9
        0x121d
        0x121c
        0x121b
        0x1260
        0x1261
        0x12ba
        0x12ba
        0x12b8
        0x1327
        0x1325
        0x136f
        0x1370
        0x1370
        0x13d7
        0x13d7
        0x1437
        0x1437
        0x1437
        0x149c
        0x149d
        0x14eb
        0x14ea
        0x14e9
        0x1528
        0x1528
        0x15b2
        0x15b2
        0x15b3
        0x15fd
        0x15fd
        0x1657
        0x1656
        0x1656
        0x168c
        0x168b
        0x16ef
        0x16f0
        0x175d
        0x175d
        0x17a9
        0x17a9
        0x17a8
        0x17d1
        0x17c4
        0x1811
        0x1810
        0x1810
        0x1845
        0x1846
        0x18ab
        0x18ab
        0x18aa
        0x18da
        0x18da
        0x192a
        0x1929
        0x1928
        0x196a
        0x1969
        0x19a3
        0x19a3
        0x19a2
        0x19f9
        0x19fa
        0x1a51
        0x1a52
        0x1a51
        0x1aa8
        0x1aa8
        0x1ad6
        0x1ad4
        0x1ad4
        0x1b3f
        0x1b40
        0x1b5e
        0x1b5f
        0x1b5e
        0x1ba0
        0x1ba0
        0x1bc2
        0x1bbf
        0x1bc0
        0x1c00
        0x1c00
        0x1c32
        0x1c2f
        0x1c2e
        0x1c81
        0x1c81
        0x1ce3
        0x1ce6
        0x1ce3
        0x1d08
    .end array-data

    :array_4a8
    .array-data 4
        0xba3
        0xc20
        0xc64
        0xce0
        0xd4f
        0xdd0
        0xe39
        0xece
        0xf17
        0xfa8
        0xfd4
        0x104d
        0x10af
        0x1111
        0x116d
        0x11c9
        0x121c
        0x1260
        0x12ba
        0x1327
        0x136f
        0x13d7
        0x1437
        0x149c
        0x14eb
        0x1528
        0x15b2
        0x15fd
        0x1657
        0x168c
        0x16ef
        0x175d
        0x17a9
        0x17d1
        0x1811
        0x1845
        0x18ab
        0x18da
        0x192a
        0x196a
        0x19a3
        0x19f9
        0x1a51
        0x1aa8
        0x1ad6
        0x1b3f
        0x1b5e
        0x1ba0
        0x1bc2
        0x1c00
        0x1c32
        0x1c81
        0x1ce6
        0x1d08
    .end array-data

    :array_518
    .array-data 4
        0x1
        0x3
        0x5
        0x8
        0xa
        0xd
        0x10
        0x12
        0x15
        0x17
        0x19
        0x1c
        0x1e
        0x21
        0x23
        0x26
        0x28
        0x2b
        0x2d
        0x30
        0x32
        0x35
        0x37
        0x3a
        0x3c
        0x3f
        0x41
        0x44
        0x46
        0x49
        0x4b
        0x4e
        0x50
        0x53
        0x55
        0x58
        0x5a
        0x5d
        0x5f
        0x62
        0x64
        0x67
        0x69
        0x6c
        0x6e
        0x71
        0x73
        0x76
        0x78
        0x7b
        0x7d
        0x80
        0x82
        0x84
    .end array-data

    :array_588
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x3
        0xa
        0xd
    .end array-data

    :array_59a
    .array-data 4
        0x1
        0x3
        0x3
        0x3
        0x8
        0xd
        0x10
    .end array-data

    :array_5ac
    .array-data 4
        0x1
        0x3
        0x5
        0x5
        0xa
        0xd
        0x10
    .end array-data

    :array_5be
    .array-data 4
        0x3
        0x5
        0x8
        0x8
        0xd
        0x12
    .end array-data

    :array_5ce
    .array-data 4
        0x3
        0x5
        0x8
        0xa
        0x10
        0x15
    .end array-data

    :array_5de
    .array-data 4
        0x5
        0x8
        0xa
        0xd
        0x12
        0x17
    .end array-data

    :array_5ee
    .array-data 4
        0x5
        0x8
        0xd
        0x10
        0x15
        0x19
    .end array-data

    :array_5fe
    .array-data 4
        0x8
        0xa
        0x10
        0x12
        0x17
        0x1c
    .end array-data

    :array_60e
    .array-data 4
        0xa
        0xd
        0x12
        0x15
        0x19
        0x1e
    .end array-data

    :array_61e
    .array-data 4
        0xa
        0xd
        0x12
        0x17
        0x1c
        0x21
    .end array-data

    :array_62e
    .array-data 4
        0xd
        0x10
        0x15
        0x19
        0x1e
        0x23
    .end array-data

    :array_63e
    .array-data 4
        0xd
        0x12
        0x17
        0x1c
        0x21
        0x26
    .end array-data

    :array_64e
    .array-data 4
        0xd
        0x15
        0x19
        0x1e
        0x23
        0x28
    .end array-data

    :array_65e
    .array-data 4
        0xd
        0x17
        0x1c
        0x21
        0x26
        0x2b
    .end array-data

    :array_66e
    .array-data 4
        0xd
        0x19
        0x1e
        0x21
        0x28
        0x2d
    .end array-data

    :array_67e
    .array-data 4
        0xd
        0x17
        0x1e
        0x21
        0x2b
        0x30
    .end array-data

    :array_68e
    .array-data 4
        0xd
        0x14
        0x19
        0x23
        0x2d
        0x32
    .end array-data

    :array_69e
    .array-data 4
        0x10
        0x14
        0x1c
        0x26
        0x30
        0x35
    .end array-data

    :array_6ae
    .array-data 4
        0x12
        0x17
        0x1e
        0x28
        0x32
        0x37
    .end array-data

    :array_6be
    .array-data 4
        0x12
        0x19
        0x23
        0x2d
        0x35
        0x3a
    .end array-data

    :array_6ce
    .array-data 4
        0x12
        0x1c
        0x26
        0x30
        0x37
        0x3c
    .end array-data

    :array_6de
    .array-data 4
        0x15
        0x1e
        0x28
        0x32
        0x3a
        0x3f
    .end array-data

    :array_6ee
    .array-data 4
        0x17
        0x21
        0x2b
        0x35
        0x3c
        0x41
    .end array-data

    :array_6fe
    .array-data 4
        0x19
        0x23
        0x2d
        0x37
        0x3f
        0x44
    .end array-data

    :array_70e
    .array-data 4
        0x1c
        0x26
        0x30
        0x3a
        0x41
        0x46
    .end array-data

    :array_71e
    .array-data 4
        0x1e
        0x28
        0x32
        0x3c
        0x44
        0x49
    .end array-data

    :array_72e
    .array-data 4
        0x21
        0x2b
        0x35
        0x3f
        0x46
        0x4b
    .end array-data

    :array_73e
    .array-data 4
        0x23
        0x2d
        0x37
        0x41
        0x49
        0x4e
    .end array-data

    :array_74e
    .array-data 4
        0x26
        0x30
        0x3a
        0x44
        0x4b
        0x50
    .end array-data

    :array_75e
    .array-data 4
        0x28
        0x32
        0x3c
        0x46
        0x4e
        0x53
    .end array-data

    :array_76e
    .array-data 4
        0x2b
        0x35
        0x3f
        0x49
        0x50
        0x55
    .end array-data

    :array_77e
    .array-data 4
        0x2d
        0x37
        0x41
        0x4b
        0x53
        0x58
    .end array-data

    :array_78e
    .array-data 4
        0x30
        0x3a
        0x44
        0x4e
        0x55
        0x5a
    .end array-data

    :array_79e
    .array-data 4
        0x32
        0x3c
        0x46
        0x50
        0x58
        0x5d
    .end array-data

    :array_7ae
    .array-data 4
        0x35
        0x3f
        0x49
        0x53
        0x5a
        0x5f
    .end array-data

    :array_7be
    .array-data 4
        0x2d
        0x3f
        0x49
        0x55
        0x5d
        0x62
    .end array-data

    :array_7ce
    .array-data 4
        0x30
        0x41
        0x4b
        0x58
        0x5f
        0x64
    .end array-data

    :array_7de
    .array-data 4
        0x32
        0x44
        0x4e
        0x5a
        0x62
        0x67
    .end array-data

    :array_7ee
    .array-data 4
        0x35
        0x46
        0x50
        0x5d
        0x64
        0x69
    .end array-data

    :array_7fe
    .array-data 4
        0x37
        0x49
        0x53
        0x5f
        0x67
        0x6c
    .end array-data

    :array_80e
    .array-data 4
        0x3a
        0x4b
        0x55
        0x62
        0x69
        0x6e
    .end array-data

    :array_81e
    .array-data 4
        0x3c
        0x4e
        0x58
        0x64
        0x6c
        0x71
    .end array-data

    :array_82e
    .array-data 4
        0x3f
        0x50
        0x5a
        0x67
        0x6e
        0x73
    .end array-data

    :array_83e
    .array-data 4
        0x41
        0x53
        0x5d
        0x69
        0x71
        0x76
    .end array-data

    :array_84e
    .array-data 4
        0x44
        0x55
        0x5f
        0x6c
        0x73
        0x78
    .end array-data

    :array_85e
    .array-data 4
        0x46
        0x58
        0x62
        0x6e
        0x76
        0x7b
    .end array-data

    :array_86e
    .array-data 4
        0x49
        0x5a
        0x64
        0x71
        0x78
        0x7d
    .end array-data

    :array_87e
    .array-data 4
        0x4b
        0x5d
        0x67
        0x73
        0x7b
        0x80
    .end array-data

    :array_88e
    .array-data 4
        0x4e
        0x5f
        0x69
        0x76
        0x7d
        0x82
    .end array-data

    :array_89e
    .array-data 4
        0x50
        0x5f
        0x6c
        0x78
        0x80
        0x84
    .end array-data

    :array_8ae
    .array-data 4
        0x53
        0x62
        0x6e
        0x7b
        0x80
        0x84
    .end array-data

    :array_8be
    .array-data 4
        0x55
        0x64
        0x71
        0x7d
        0x82
        0x84
    .end array-data

    :array_8ce
    .array-data 4
        0x58
        0x67
        0x73
        0x82
        0x84
        0x84
    .end array-data

    :array_8de
    .array-data 4
        0x5a
        0x69
        0x76
        0x84
        0x84
        0x84
    .end array-data
.end method

.method private ResetNode()V
    .registers 6

    .line 3261
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 3262
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    .line 3263
    const-string v0, "ColorBalanceService"

    const-string v1, "already disable color mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3264
    return-void

    .line 3266
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    if-eqz v0, :cond_1c

    .line 3267
    return-void

    .line 3268
    :cond_1c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    .line 3269
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_67

    .line 3271
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_color_mode_settings_value"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3272
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v4, 0x2

    if-ne v1, v3, :cond_57

    .line 3273
    if-ne v0, v4, :cond_47

    .line 3274
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 3275
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 3277
    :cond_47
    if-ne v0, v2, :cond_4f

    .line 3278
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 3279
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 3281
    :cond_4f
    if-eq v0, v4, :cond_67

    if-eq v0, v2, :cond_67

    .line 3282
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    goto :goto_67

    .line 3285
    :cond_57
    if-ne v0, v4, :cond_5c

    .line 3286
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 3287
    :cond_5c
    if-ne v0, v2, :cond_61

    .line 3288
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 3289
    :cond_61
    const/4 v1, 0x5

    if-ne v0, v1, :cond_67

    .line 3290
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 3293
    .end local v0    # "status":I
    :cond_67
    :goto_67
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setUp()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 95
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 95
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorColortemperature:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 95
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorColortemperature:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 95
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/oneplus/display/ColorBalanceService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightBrightness:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 95
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightBrightness:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->handleSRGBSensorEvent(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 95
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    return p1
.end method

.method static synthetic access$2604(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I

    return v0
.end method

.method static synthetic access$2704(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/oneplus/display/SDManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/oneplus/display/SDManager;)Lcom/oneplus/display/SDManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Lcom/oneplus/display/SDManager;

    .line 95
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 95
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/android/server/oneplus/display/ColorBalanceService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Z

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processScreenOn(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 95
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/oneplus/display/ColorBalanceService;ZI)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->nightModeSwitch(ZI)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/oneplus/display/ColorBalanceService;ZII)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/oneplus/display/ColorBalanceService;->readingModeSwitch(ZII)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/oneplus/display/ColorBalanceService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->changeReading2NightMode(II)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/oneplus/display/ColorBalanceService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->changeNight2ReadingMode(II)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processSetColorBalance(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetDefaultModesId(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Landroid/os/Message;

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentColorChangeAtNightMode(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/ColorDisplayController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Landroid/os/Message;

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentColorChangeAtReadingMode(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Landroid/os/Message;

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentColorChangeAtAdaptionMode(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4202(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 95
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    return v0
.end method

.method static synthetic access$4402(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 95
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentChange()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSrgbSensorGeneration:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->ResetNode()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closePropeties()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 95
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgInternal(I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$5104(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/hardware/fingerprint/FingerprintManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Landroid/hardware/fingerprint/FingerprintManager;

    .line 95
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 95
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOff_Quick:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # I

    .line 95
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    return v0
.end method

.method static synthetic access$700(Landroid/content/ContentResolver;I)Z
    .registers 3
    .param p0, "x0"    # Landroid/content/ContentResolver;
    .param p1, "x1"    # I

    .line 95
    invoke-static {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p1, "x1"    # Landroid/database/ContentObserver;

    .line 95
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/oneplus/display/ColorBalanceService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 95
    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootCompleted:Z

    return v0
.end method

.method private changeNight2ReadingMode(II)V
    .registers 21
    .param p1, "generation"    # I
    .param p2, "arg2"    # I

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 3105
    move/from16 v3, p2

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3106
    :try_start_9
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_29b

    .line 3107
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v5, -0x14

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x6

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v0, :cond_4c

    .line 3108
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 3109
    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3110
    const/16 v0, 0x1a90

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 3111
    invoke-direct {v1, v5, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 3112
    const-string v0, "ColorBalanceService"

    const-string v5, "Screen off,readingModeSwitch ON done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3113
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 3114
    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 3115
    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 3116
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 3117
    invoke-direct {v1, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 3118
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v0, v9

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    goto/16 :goto_29b

    .line 3120
    :cond_4c
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const/16 v11, 0x2710

    const/4 v12, 0x0

    const-wide v13, 0x3f50624dd2f1a9fcL    # 0.001

    const-wide v15, 0x3fefff2e48e8a71eL    # 0.9999

    const/16 v5, 0xf

    const/16 v7, 0xd

    if-nez v0, :cond_11f

    .line 3121
    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 3122
    const-string v0, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "changeNight2ReadingMode mFactor should be 1 :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v9, v0

    cmpl-double v0, v9, v15

    if-lez v0, :cond_8a

    .line 3125
    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 3126
    const/4 v0, 0x4

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_ae

    .line 3127
    :cond_8a
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v9, v0

    cmpg-double v0, v9, v13

    if-gez v0, :cond_ae

    .line 3128
    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3129
    iput v12, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 3130
    const-string v0, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3132
    :cond_ae
    :goto_ae
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 3133
    const-string v0, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeNight2ReadingMode mCurrentNightColorbalance:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3135
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    const/16 v6, 0x1f40

    const/16 v8, 0x7d0

    if-le v0, v8, :cond_dd

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    if-ge v0, v6, :cond_dd

    .line 3136
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v0

    .line 3136
    .local v0, "target":I
    :goto_dc
    goto :goto_ee

    .line 3137
    .end local v0    # "target":I
    :cond_dd
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    if-le v0, v8, :cond_ec

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    if-ge v0, v6, :cond_ec

    .line 3138
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v0

    goto :goto_dc

    .line 3140
    :cond_ec
    const/16 v0, -0x14

    .line 3141
    .restart local v0    # "target":I
    :goto_ee
    const-string v6, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mStableColor:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " mCurrentSrgbSensorAverageColor:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3142
    iput v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 3143
    const-string v6, "ColorBalanceService"

    const-string v8, "changeNight2ReadingMode 0 --> 10000,init"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3144
    invoke-virtual {v1, v7, v2, v0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 3145
    .end local v0    # "target":I
    goto/16 :goto_29b

    :cond_11f
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const/16 v9, 0x3a98

    if-ne v0, v11, :cond_254

    .line 3146
    const/4 v0, 0x0

    .line 3147
    .local v0, "count":I
    move v6, v3

    .line 3148
    .local v6, "target":I
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-eq v11, v6, :cond_142

    .line 3149
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v15, v6, :cond_133

    const/4 v15, -0x1

    goto :goto_134

    :cond_133
    const/4 v15, 0x1

    :goto_134
    add-int/2addr v11, v15

    iput v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 3150
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iput v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 3151
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v11, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 3152
    add-int/lit8 v0, v0, 0x1

    .line 3154
    :cond_142
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3c3c6a7f    # 0.0115f

    cmpl-float v11, v11, v15

    if-lez v11, :cond_216

    .line 3155
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3c4ccccd    # 0.0125f

    sub-float/2addr v11, v15

    iput v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 3156
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3f39930c    # 0.7249f

    cmpl-float v11, v11, v15

    if-lez v11, :cond_187

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3f39a027    # 0.7251f

    cmpg-float v11, v11, v15

    if-gez v11, :cond_187

    .line 3157
    const/4 v8, 0x5

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3158
    const/4 v8, 0x6

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3159
    const-string v8, "ColorBalanceService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20f

    .line 3160
    :cond_187
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3efae148    # 0.49f

    cmpl-float v11, v11, v15

    if-lez v11, :cond_1b6

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3f028f5c    # 0.51f

    cmpg-float v11, v11, v15

    if-gez v11, :cond_1b6

    .line 3161
    const/4 v8, 0x7

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3162
    const-string v8, "ColorBalanceService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20f

    .line 3163
    :cond_1b6
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3e7ef9db    # 0.249f

    cmpl-float v11, v11, v15

    if-lez v11, :cond_1eb

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v15, 0x3e808312    # 0.251f

    cmpg-float v11, v11, v15

    if-gez v11, :cond_1eb

    .line 3164
    const/16 v8, 0x8

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3165
    const/16 v8, 0x9

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3166
    const-string v8, "ColorBalanceService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20f

    .line 3167
    :cond_1eb
    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v10, v11

    cmpg-double v10, v10, v13

    if-gez v10, :cond_20f

    .line 3168
    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3169
    iput v12, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 3170
    const-string v8, "ColorBalanceService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3172
    :cond_20f
    :goto_20f
    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMatrixNight2Reading(F)V

    .line 3173
    add-int/lit8 v0, v0, 0x2

    .line 3175
    :cond_216
    if-lez v0, :cond_21c

    .line 3176
    invoke-virtual {v1, v7, v2, v3, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_253

    .line 3178
    :cond_21c
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 3179
    const-string v5, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changeNight2ReadingMode mCurrentReadingColorbalance:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " target:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "  mFactor:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3180
    const-string v5, "ColorBalanceService"

    const-string v8, "changeNight2ReadingMode 10000 --> 15000,be B & W,and set colorbalance"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3181
    const/4 v5, 0x0

    invoke-virtual {v1, v7, v2, v3, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 3183
    .end local v0    # "count":I
    .end local v6    # "target":I
    :goto_253
    goto :goto_29b

    :cond_254
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    if-ne v0, v9, :cond_28b

    .line 3184
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v8, v0

    cmpl-double v0, v8, v15

    if-lez v0, :cond_276

    .line 3185
    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 3186
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 3187
    const/16 v0, 0x4e20

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 3188
    const-string v0, "ColorBalanceService"

    const-string v5, "changeNight2ReadingMode 15000 --> 20000,turn off Matrix(shading)"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3189
    const/16 v0, 0x20

    const/4 v5, 0x0

    invoke-virtual {v1, v7, v2, v5, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_29b

    .line 3191
    :cond_276
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3ccccccd    # 0.025f

    add-float/2addr v0, v6

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 3192
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 3193
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 3194
    const/4 v0, 0x0

    invoke-virtual {v1, v7, v2, v0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_29b

    .line 3196
    :cond_28b
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const/16 v5, 0x4e20

    if-ne v0, v5, :cond_29b

    .line 3197
    const/4 v0, 0x6

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 3200
    const-string v0, "ColorBalanceService"

    const-string v5, "changeNight2ReadingMode done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    :cond_29b
    :goto_29b
    monitor-exit v4

    .line 3205
    return-void

    .line 3204
    :catchall_29d
    move-exception v0

    monitor-exit v4
    :try_end_29f
    .catchall {:try_start_9 .. :try_end_29f} :catchall_29d

    throw v0
.end method

.method private changeReading2NightMode(II)V
    .registers 19
    .param p1, "generation"    # I
    .param p2, "arg2"    # I

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 2997
    iget-object v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2998
    :try_start_7
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_221

    .line 2999
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x2

    const/16 v6, 0x67

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v0, :cond_53

    .line 3000
    iput v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 3001
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 3002
    const-string v0, "ColorBalanceService"

    const-string v4, "Screen off,changeReading2NightMode done!"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3004
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 3005
    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 3006
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v10, "oem_nightmode_progress_status"

    invoke-static {v4, v10, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    sub-int/2addr v0, v4

    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v0, v4

    .line 3009
    .local v0, "progress":I
    invoke-direct {v1, v0, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 3010
    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 3012
    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 3013
    iget v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v4, v8

    iput v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 3014
    .end local v0    # "progress":I
    goto/16 :goto_221

    .line 3015
    :cond_53
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    const/16 v10, 0x1388

    const-wide v11, 0x3f1a36e2eb1c432dL    # 1.0E-4

    const/16 v13, 0xf

    const/16 v14, 0xe

    if-nez v0, :cond_99

    .line 3016
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v4, v0

    cmpg-double v0, v4, v11

    if-gez v0, :cond_84

    .line 3017
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 3018
    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 3019
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 3020
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 3021
    invoke-virtual {v1, v14, v2, v9, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 3022
    const-string v0, "ColorBalanceService"

    const-string v4, "changeReading2NightMode: 0 --> 5000,be B & W"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_221

    .line 3024
    :cond_84
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v4, 0x3ccccccd    # 0.025f

    sub-float/2addr v0, v4

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 3025
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 3026
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 3027
    invoke-virtual {v1, v14, v2, v9, v13}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_221

    .line 3029
    :cond_99
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    const/16 v15, 0x2710

    if-ne v0, v10, :cond_f5

    .line 3030
    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 3031
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "oem_nightmode_progress_status"

    invoke-static {v4, v7, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    sub-int/2addr v0, v4

    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v0, v4

    .line 3034
    .local v0, "target":I
    iget v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iput v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 3035
    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeReading2NightMode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    iget v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMatrixNight2Reading(F)V

    .line 3038
    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3039
    iget v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v4, v4

    cmpg-double v4, v4, v11

    if-gez v4, :cond_e7

    .line 3040
    const/16 v4, 0x9

    invoke-direct {v1, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3041
    const/16 v4, 0x8

    invoke-direct {v1, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3043
    :cond_e7
    iput v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 3044
    invoke-virtual {v1, v14, v2, v0, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 3045
    const-string v4, "ColorBalanceService"

    const-string v5, "changeReading2NightMode:stage 5000 --> 10000,init target colorbalance"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    .end local v0    # "target":I
    goto/16 :goto_221

    :cond_f5
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    const/16 v10, 0x4e20

    if-ne v0, v15, :cond_20f

    .line 3047
    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 3048
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v11, "oem_nightmode_progress_status"

    invoke-static {v4, v11, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    sub-int/2addr v0, v4

    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v0, v4

    .line 3051
    .restart local v0    # "target":I
    const/4 v4, 0x0

    .line 3052
    .local v4, "count":I
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f7fbe77    # 0.999f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_135

    .line 3053
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-eq v5, v0, :cond_133

    .line 3054
    const/4 v4, 0x1

    .line 3055
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v11, v0, :cond_125

    const/4 v11, -0x1

    goto :goto_126

    :cond_125
    move v11, v8

    :goto_126
    add-int/2addr v5, v11

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 3056
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 3057
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v5, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    goto :goto_136

    .line 3059
    :cond_133
    const/4 v4, 0x0

    goto :goto_136

    .line 3062
    :cond_135
    add-int/2addr v4, v8

    .line 3064
    :goto_136
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1de

    .line 3065
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3e7ef9db    # 0.249f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_16b

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3e808312    # 0.251f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_16b

    .line 3066
    const/4 v5, 0x7

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3067
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "changeReading2NightMode mFactor:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1cf

    .line 3068
    :cond_16b
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3efae148    # 0.49f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_19e

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f028f5c    # 0.51f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_19e

    .line 3069
    const/4 v5, 0x6

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3070
    const/4 v5, 0x5

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3071
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "changeReading2NightMod mFactor:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1cf

    .line 3072
    :cond_19e
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f3fbe77    # 0.749f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1cf

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3f404189    # 0.751f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1cf

    .line 3073
    const/4 v5, 0x4

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3074
    invoke-direct {v1, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3075
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "changeReading2NightMode mFactor:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    :cond_1cf
    :goto_1cf
    add-int/lit8 v4, v4, 0x2

    .line 3078
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3c4ccccd    # 0.0125f

    add-float/2addr v5, v6

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 3079
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMatrixNight2Reading(F)V

    .line 3081
    :cond_1de
    if-lt v4, v7, :cond_1e4

    .line 3082
    invoke-virtual {v1, v14, v2, v0, v13}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_20e

    .line 3083
    :cond_1e4
    if-ne v4, v8, :cond_1ea

    .line 3084
    invoke-virtual {v1, v14, v2, v0, v13}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_20e

    .line 3086
    :cond_1ea
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 3087
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeReading2NightMode mCurrentNightColorbalance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    const-string v5, "ColorBalanceService"

    const-string v6, "changeReading2NightMode:stage 10000 --> 20000,to be colors and set colorbalance"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    invoke-virtual {v1, v14, v2, v0, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 3091
    .end local v0    # "target":I
    .end local v4    # "count":I
    :goto_20e
    goto :goto_221

    :cond_20f
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    if-ne v0, v10, :cond_221

    .line 3092
    iput v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 3093
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 3094
    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 3098
    const-string v0, "ColorBalanceService"

    const-string v4, "changeReading2NightMode done(20000 -> 30000)!"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    :cond_221
    :goto_221
    monitor-exit v3

    .line 3103
    return-void

    .line 3102
    :catchall_223
    move-exception v0

    monitor-exit v3
    :try_end_225
    .catchall {:try_start_7 .. :try_end_225} :catchall_223

    throw v0
.end method

.method private closeMatrix()V
    .registers 6

    .line 668
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer_enabled"

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 670
    .local v0, "dal":I
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_inversion_enabled"

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 673
    .local v1, "rev":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_3c

    if-ne v1, v2, :cond_23

    goto :goto_3c

    .line 678
    :cond_23
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-eqz v2, :cond_34

    .line 679
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 680
    const-string v2, "ColorBalanceService"

    const-string v4, "close matrix!"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_34
    const/16 v2, 0x18

    const/16 v4, 0x20

    invoke-virtual {p0, v2, v3, v3, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 683
    return-void

    .line 674
    :cond_3c
    :goto_3c
    const-string/jumbo v2, "persist.vendor.color.matrix"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 675
    const-string/jumbo v2, "persist.vendor.color.matrix"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :cond_55
    return-void
.end method

.method private closePropeties()V
    .registers 7

    .line 686
    const-string v0, "ColorBalanceService"

    const-string v1, "close Propeties!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const-string/jumbo v0, "persist.vendor.color.matrix"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :try_start_f
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->flinger:Landroid/os/IBinder;

    if-eqz v0, :cond_30

    .line 690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 691
    .local v0, "data":Landroid/os/Parcel;
    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 692
    const/16 v1, 0xb

    .line 693
    .local v1, "showUpdates":I
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->flinger:Landroid/os/IBinder;

    const/16 v3, 0x3f7

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 696
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "showUpdates":I
    goto :goto_37

    .line 697
    :cond_30
    const-string v0, "ColorBalanceService"

    const-string v1, "close Propeties flinger is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_37} :catch_38

    .line 701
    :goto_37
    goto :goto_41

    .line 699
    :catch_38
    move-exception v0

    .line 700
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "read flinger 1015 is fail"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_41
    return-void
.end method

.method private getBalanceByTemprature(I)I
    .registers 19
    .param p1, "CTemp"    # I

    move-object/from16 v0, p0

    .line 2282
    move/from16 v1, p1

    const/4 v2, 0x0

    .line 2283
    .local v2, "elemIndex":I
    const/16 v3, 0x36

    .line 2284
    .local v3, "elementLen":I
    const/4 v4, 0x0

    .line 2285
    .local v4, "enviroment_step":I
    const/4 v5, 0x0

    .line 2286
    .local v5, "balance":I
    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/16 v8, 0x42

    const/4 v9, 0x0

    const/16 v10, 0x39

    const/16 v11, 0x2f

    const/16 v12, 0x24

    const/16 v13, 0x1a

    const/4 v14, 0x1

    if-ne v6, v14, :cond_94

    .line 2287
    const-string v6, "ColorBalanceService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " when open the reading mode the enviroment color temperature         == "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    if-gez v1, :cond_3d

    .line 2289
    const-string v6, "ColorBalanceService"

    const-string v7, " The RGB sensor output negative data this is error !  "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    return v9

    .line 2293
    :cond_3d
    div-int/lit8 v4, v1, 0x64

    .line 2294
    if-ge v4, v13, :cond_43

    .line 2295
    const/4 v4, 0x0

    goto :goto_5c

    .line 2296
    :cond_43
    if-lt v4, v13, :cond_49

    if-ge v4, v12, :cond_49

    .line 2297
    const/4 v4, 0x1

    goto :goto_5c

    .line 2298
    :cond_49
    if-lt v4, v12, :cond_4f

    if-ge v4, v11, :cond_4f

    .line 2299
    const/4 v4, 0x2

    goto :goto_5c

    .line 2300
    :cond_4f
    if-lt v4, v11, :cond_55

    if-ge v4, v10, :cond_55

    .line 2301
    const/4 v4, 0x3

    goto :goto_5c

    .line 2302
    :cond_55
    if-lt v4, v10, :cond_5b

    if-ge v4, v8, :cond_5b

    .line 2303
    const/4 v4, 0x4

    goto :goto_5c

    .line 2305
    :cond_5b
    const/4 v4, 0x5

    .line 2306
    :goto_5c
    const-string v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " when in reading mode the enviroment_step = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "screen_color_mode_settings_value"

    const/4 v8, -0x2

    invoke-static {v6, v7, v14, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 2309
    .local v6, "status":I
    if-eq v6, v14, :cond_8b

    const/4 v7, 0x3

    if-ne v6, v7, :cond_86

    goto :goto_8b

    .line 2313
    :cond_86
    sget-object v7, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_reading_mode_SRGB_and_P3:[I

    aget v5, v7, v4

    goto :goto_8f

    .line 2310
    :cond_8b
    :goto_8b
    sget-object v7, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_reading_mode:[I

    aget v5, v7, v4

    .line 2315
    :goto_8f
    sget v7, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v5, v7

    .line 2316
    .end local v6    # "status":I
    goto/16 :goto_1ac

    .line 2317
    :cond_94
    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_119

    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v6, v14, :cond_119

    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_119

    .line 2319
    const-string v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " when open the adaption mode the enviroment color temperature         == "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    if-gez v1, :cond_cc

    .line 2321
    const-string v6, "ColorBalanceService"

    const-string v7, " The RGB sensor output negative data this is error !  "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    return v9

    .line 2325
    :cond_cc
    div-int/lit8 v4, v1, 0x64

    .line 2326
    if-ge v4, v13, :cond_d2

    .line 2327
    const/4 v4, 0x0

    goto :goto_eb

    .line 2328
    :cond_d2
    if-lt v4, v13, :cond_d8

    if-ge v4, v12, :cond_d8

    .line 2329
    const/4 v4, 0x1

    goto :goto_eb

    .line 2330
    :cond_d8
    if-lt v4, v12, :cond_de

    if-ge v4, v11, :cond_de

    .line 2331
    const/4 v4, 0x2

    goto :goto_eb

    .line 2333
    :cond_de
    if-lt v4, v11, :cond_e4

    if-ge v4, v10, :cond_e4

    .line 2334
    const/4 v4, 0x3

    goto :goto_eb

    .line 2336
    :cond_e4
    if-lt v4, v10, :cond_ea

    if-ge v4, v8, :cond_ea

    .line 2337
    const/4 v4, 0x4

    goto :goto_eb

    .line 2340
    :cond_ea
    const/4 v4, 0x5

    .line 2341
    :goto_eb
    const-string v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " when in adaption mode the enviroment_step = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "screen_color_mode_settings_value"

    const/4 v8, -0x2

    invoke-static {v6, v7, v14, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 2344
    .restart local v6    # "status":I
    sget-object v7, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_oneplus_mode_adaption:[I

    aget v7, v7, v4

    sget v8, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int v5, v7, v8

    .line 2345
    .end local v6    # "status":I
    goto/16 :goto_1ac

    .line 2348
    :cond_119
    sget v6, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v7, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 2349
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v14, "oem_nightmode_progress_status"

    const/16 v15, 0x67

    const/4 v8, -0x2

    invoke-static {v7, v14, v15, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    sub-int/2addr v6, v7

    .line 2351
    .local v6, "manualSeekbarPos":I
    const/4 v2, 0x0

    :goto_12d
    if-ge v2, v3, :cond_144

    .line 2352
    iget-object v7, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_autoseekbar:[I

    aget v7, v7, v2

    if-gt v6, v7, :cond_136

    .line 2353
    goto :goto_144

    .line 2355
    :cond_136
    iget-object v7, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_autoseekbar:[I

    add-int/lit8 v8, v3, -0x1

    aget v7, v7, v8

    if-lt v6, v7, :cond_141

    .line 2356
    add-int/lit8 v2, v3, -0x1

    .line 2357
    goto :goto_144

    .line 2351
    :cond_141
    add-int/lit8 v2, v2, 0x1

    goto :goto_12d

    .line 2360
    :cond_144
    :goto_144
    if-ltz v2, :cond_1c3

    const/16 v7, 0x35

    if-le v2, v7, :cond_14c

    goto/16 :goto_1c3

    .line 2364
    :cond_14c
    const-string v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " when open the night mode the enviroment color temperature         == "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    if-gez v1, :cond_16c

    .line 2366
    const-string v7, "ColorBalanceService"

    const-string v8, " The RGB sensor output negative data this is error !  "

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    return v9

    .line 2370
    :cond_16c
    div-int/lit8 v4, v1, 0x64

    .line 2371
    if-ge v4, v13, :cond_172

    .line 2372
    const/4 v4, 0x0

    goto :goto_18d

    .line 2373
    :cond_172
    if-lt v4, v13, :cond_178

    if-ge v4, v12, :cond_178

    .line 2374
    const/4 v4, 0x1

    goto :goto_18d

    .line 2375
    :cond_178
    if-lt v4, v12, :cond_17e

    if-ge v4, v11, :cond_17e

    .line 2376
    const/4 v4, 0x2

    goto :goto_18d

    .line 2377
    :cond_17e
    if-lt v4, v11, :cond_184

    if-ge v4, v10, :cond_184

    .line 2378
    const/4 v4, 0x3

    goto :goto_18d

    .line 2379
    :cond_184
    if-lt v4, v10, :cond_18c

    const/16 v7, 0x42

    if-ge v4, v7, :cond_18c

    .line 2380
    const/4 v4, 0x4

    goto :goto_18d

    .line 2382
    :cond_18c
    const/4 v4, 0x5

    .line 2383
    :goto_18d
    const-string v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " when in night mode the enviroment_step = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    iget-object v7, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance:[[I

    aget-object v7, v7, v2

    aget v5, v7, v4

    .line 2385
    sget v7, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v5, v7

    .line 2388
    .end local v6    # "manualSeekbarPos":I
    :goto_1ac
    const-string v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBalanceByTemprature:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    return v5

    .line 2361
    .restart local v6    # "manualSeekbarPos":I
    :cond_1c3
    :goto_1c3
    const-string v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Out of range elemIndex: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    return v9
.end method

.method public static getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .registers 7
    .param p0, "localTime"    # Ljava/time/LocalTime;
    .param p1, "compareTime"    # Ljava/time/LocalDateTime;

    .line 1589
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    .line 1590
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    .line 1589
    invoke-static {v0, v1, v2, v3, v4}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1593
    .local v0, "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_26

    :cond_25
    move-object v1, v0

    :goto_26
    return-object v1
.end method

.method public static getDateTimeBefore(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .registers 7
    .param p0, "localTime"    # Ljava/time/LocalTime;
    .param p1, "compareTime"    # Ljava/time/LocalDateTime;

    .line 1581
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    .line 1582
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    .line 1581
    invoke-static {v0, v1, v2, v3, v4}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 1585
    .local v0, "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->minusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_26

    :cond_25
    move-object v1, v0

    :goto_26
    return-object v1
.end method

.method private handleSRGBSensorEvent(I)V
    .registers 7
    .param p1, "colortemperature"    # I

    .line 2216
    const/16 v0, 0x7d0

    if-le p1, v0, :cond_d2

    const/16 v0, 0x1f40

    if-ge p1, v0, :cond_d2

    .line 2217
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 2218
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 2219
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 2220
    return-void

    .line 2222
    :cond_12
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 2223
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    .line 2224
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 2225
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentChange()V

    .line 2227
    :cond_2d
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    sget v2, Lcom/android/server/oneplus/display/ColorBalanceService;->RGBSENSOR_Dither:I

    if-ge v0, v2, :cond_c2

    .line 2228
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2229
    .local v0, "delta":I
    const/16 v2, 0xc8

    if-ge v0, v2, :cond_bd

    .line 2230
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 2231
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    add-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 2232
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    sget v3, Lcom/android/server/oneplus/display/ColorBalanceService;->RGBSENSOR_Dither:I

    if-ne v2, v3, :cond_c1

    .line 2233
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    if-nez v2, :cond_72

    .line 2234
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 2235
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stable color is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c1

    .line 2237
    :cond_72
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2238
    const/16 v2, 0x320

    if-ge v0, v2, :cond_99

    .line 2240
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ignored,Stable color is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c1

    .line 2242
    :cond_99
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 2243
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentChange()V

    .line 2244
    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjusted,Stable color is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 2247
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    goto :goto_c1

    .line 2253
    :cond_bd
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 2254
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 2256
    .end local v0    # "delta":I
    :cond_c1
    :goto_c1
    goto :goto_d2

    .line 2258
    :cond_c2
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 2259
    .restart local v0    # "delta":I
    const/16 v2, 0x64

    if-ge v0, v2, :cond_ce

    .line 2261
    return-void

    .line 2264
    :cond_ce
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 2265
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 2271
    .end local v0    # "delta":I
    :cond_d2
    :goto_d2
    return-void
.end method

.method private isScreenOn()Z
    .registers 3

    .line 379
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_b

    .line 380
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0

    .line 382
    :cond_b
    const-string v0, "ColorBalanceService"

    const-string/jumbo v1, "mPowerManager is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method private static isUserSetupCompleted(Landroid/content/ContentResolver;I)Z
    .registers 5
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I

    .line 470
    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_d

    move v1, v2

    nop

    :cond_d
    return v1
.end method

.method private nightModeSwitch(ZI)V
    .registers 21
    .param p1, "isActivite"    # Z
    .param p2, "generation"    # I

    move-object/from16 v1, p0

    .line 2529
    move/from16 v2, p2

    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 2530
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "oem_nightmode_progress_status"

    const/4 v5, -0x2

    const/16 v6, 0x67

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    sub-int/2addr v0, v3

    sget v3, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int v3, v0, v3

    .line 2535
    .local v3, "progress":I
    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2536
    :try_start_1e
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_8a

    .line 2537
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_2af

    .line 2538
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v0, v10

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 2539
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2540
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 2541
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 2542
    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2543
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2544
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2545
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2546
    invoke-direct {v1, v3, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2547
    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 2548
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 2549
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2550
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 2552
    :cond_6f
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2553
    const-string v0, "ColorBalanceService"

    const-string v5, "Screen off,nightModeSwitch ON done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2af

    .line 2555
    :cond_7a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 2556
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 2557
    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2558
    const-string v0, "ColorBalanceService"

    const-string v5, "Screen off,nightModeSwitch OFF done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2af

    .line 2563
    :cond_8a
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_2af

    .line 2564
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v12, 0x5

    const/16 v13, 0x39

    const/16 v14, 0xf

    const/16 v15, 0x2b

    const/16 v6, 0xa

    if-eqz v0, :cond_1c0

    .line 2565
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eq v0, v8, :cond_2af

    .line 2566
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_194

    .line 2567
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    if-nez v0, :cond_109

    .line 2568
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v7, "screen_color_mode_settings_value"

    invoke-static {v0, v7, v10, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2570
    .local v0, "status":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2571
    if-ne v0, v12, :cond_d0

    .line 2572
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2573
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 2574
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 2576
    :cond_d0
    if-eq v0, v9, :cond_e9

    .line 2577
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2578
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2579
    iput v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2580
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 2581
    const-string v5, "ColorBalanceService"

    const-string/jumbo v7, "nightModeSwitch ON: 0 --> 3,default!"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_104

    .line 2583
    :cond_e9
    iget-object v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "oem_screen_better_value"

    invoke-static {v7, v9, v13, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x64

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2586
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 2587
    const-string v5, "ColorBalanceService"

    const-string/jumbo v7, "nightModeSwitch ON: 0 --> 2,status 3,setting customer to default"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    :goto_104
    invoke-virtual {v1, v6, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 2590
    .end local v0    # "status":I
    goto/16 :goto_2af

    :cond_109
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    if-ne v0, v8, :cond_141

    .line 2591
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v0, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2592
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-ne v0, v15, :cond_12d

    .line 2593
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 2594
    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "nightModeSwitch ON: 2 --> 3,default!"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2596
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2597
    iput v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    goto :goto_13c

    .line 2599
    :cond_12d
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v5, v15, :cond_136

    const/16 v16, -0x1

    goto :goto_138

    :cond_136
    move/from16 v16, v10

    :goto_138
    add-int v0, v0, v16

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2601
    :goto_13c
    invoke-virtual {v1, v6, v2, v11, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_2af

    .line 2602
    :cond_141
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    if-ne v0, v9, :cond_17f

    .line 2604
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-ne v0, v3, :cond_165

    .line 2605
    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 2606
    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "nightModeSwitch ON: 3 --> 4, SET Balance:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_175

    .line 2608
    :cond_165
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v0, v3, :cond_16c

    const/16 v16, -0x1

    goto :goto_16e

    :cond_16c
    move/from16 v16, v10

    :goto_16e
    move/from16 v0, v16

    .line 2609
    .local v0, "delta":I
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v5, v0

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2611
    .end local v0    # "delta":I
    :goto_175
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v0, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2612
    invoke-virtual {v1, v6, v2, v11, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_2af

    .line 2613
    :cond_17f
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    if-ne v0, v7, :cond_2af

    .line 2614
    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 2616
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2617
    invoke-direct {v1, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2618
    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "nightModeSwitch ON done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2af

    .line 2621
    :cond_194
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2622
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2623
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 2624
    const-string v0, "ColorBalanceService"

    const-string v5, "#2 night mode had been opened!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2626
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setProp(Ljava/lang/Boolean;)I

    .line 2627
    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2628
    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 2629
    invoke-direct {v1, v3, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2630
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2632
    invoke-direct {v1, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    goto/16 :goto_2af

    .line 2636
    :cond_1c0
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eq v0, v7, :cond_2af

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eqz v0, :cond_2af

    .line 2637
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    if-nez v0, :cond_1f9

    .line 2638
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-ne v15, v0, :cond_1df

    .line 2639
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 2640
    invoke-virtual {v1, v6, v2, v11, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2641
    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "nightModeSwitch OFF 0 --> 1,colorBalance default!"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2af

    .line 2643
    :cond_1df
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v0, v15, :cond_1e6

    const/16 v16, -0x1

    goto :goto_1e8

    :cond_1e6
    move/from16 v16, v10

    :goto_1e8
    move/from16 v0, v16

    .line 2644
    .restart local v0    # "delta":I
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v5, v0

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2645
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v5, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2646
    invoke-virtual {v1, v6, v2, v11, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2647
    .end local v0    # "delta":I
    goto/16 :goto_2af

    .line 2648
    :cond_1f9
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    if-ne v0, v10, :cond_230

    .line 2649
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    move-result v0

    .line 2650
    .local v0, "status":I
    if-eq v0, v9, :cond_215

    .line 2651
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 2652
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 2653
    const-string v5, "ColorBalanceService"

    const-string/jumbo v7, "nightModeSwitch OFF:1 --> 3, revertStatus"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22b

    .line 2655
    :cond_215
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2656
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2657
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2659
    iput v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2660
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 2661
    const-string v5, "ColorBalanceService"

    const-string/jumbo v7, "nightModeSwitch OFF:1 --> 2,be status 3"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    :goto_22b
    invoke-virtual {v1, v6, v2, v11, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2664
    .end local v0    # "status":I
    goto/16 :goto_2af

    :cond_230
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    if-ne v0, v8, :cond_26e

    .line 2665
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v7, "oem_screen_better_value"

    invoke-static {v0, v7, v13, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x64

    .line 2668
    .local v0, "value":I
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-ne v5, v0, :cond_255

    .line 2669
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 2670
    invoke-virtual {v1, v6, v2, v11, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2671
    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch OFF:2 --> 3,status 3 done!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26d

    .line 2673
    :cond_255
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v5, v0, :cond_25c

    const/16 v16, -0x1

    goto :goto_25e

    :cond_25c
    move/from16 v16, v10

    :goto_25e
    move/from16 v5, v16

    .line 2674
    .local v5, "delta":I
    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v7, v5

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 2675
    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v7, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2676
    invoke-virtual {v1, v6, v2, v11, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2678
    .end local v0    # "value":I
    .end local v5    # "delta":I
    :goto_26d
    goto :goto_2af

    :cond_26e
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    if-ne v0, v9, :cond_2af

    .line 2679
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "screen_color_mode_settings_value"

    invoke-static {v0, v6, v10, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2681
    .local v0, "status":I
    if-eq v0, v12, :cond_285

    .line 2682
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    goto :goto_294

    .line 2684
    :cond_285
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2685
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 2686
    invoke-direct {v1, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 2688
    :goto_294
    const-string v6, "ColorBalanceService"

    const-string/jumbo v8, "nightModeSwitch OFF done!"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2691
    iget-object v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "oem_screen_better_value"

    invoke-static {v6, v7, v13, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x64

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 2699
    .end local v0    # "status":I
    :cond_2af
    :goto_2af
    monitor-exit v4

    .line 2700
    return-void

    .line 2699
    :catchall_2b1
    move-exception v0

    monitor-exit v4
    :try_end_2b3
    .catchall {:try_start_1e .. :try_end_2b3} :catchall_2b1

    throw v0
.end method

.method private onUserChanged(I)V
    .registers 7
    .param p1, "userHandle"    # I

    .line 433
    invoke-virtual {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 434
    .local v0, "cr":Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_22

    .line 435
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1b

    .line 436
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 437
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    goto :goto_22

    .line 438
    :cond_1b
    iget-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootCompleted:Z

    if-eqz v1, :cond_22

    .line 439
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->tearDown()V

    .line 443
    :cond_22
    :goto_22
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    .line 445
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    if-eq v1, v2, :cond_50

    .line 446
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v1

    if-nez v1, :cond_49

    .line 447
    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$2;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$2;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 461
    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_50

    .line 463
    :cond_49
    iget-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootCompleted:Z

    if-eqz v1, :cond_50

    .line 464
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setUp()V

    .line 467
    :cond_50
    :goto_50
    return-void
.end method

.method private oneplusSetColorBalance(II)V
    .registers 53
    .param p1, "iValue"    # I
    .param p2, "delta"    # I

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 3295
    move/from16 v3, p2

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 3296
    .local v11, "r":D
    const-wide/16 v4, 0x0

    .line 3297
    .local v4, "g":D
    const-wide/16 v6, 0x0

    .line 3298
    .local v6, "b":D
    int-to-double v13, v2

    .line 3299
    .local v13, "value":D
    int-to-double v9, v3

    .line 3300
    .local v9, "dDelta":D
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    .line 3301
    .local v15, "factor":D
    iget-object v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3302
    :try_start_13
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_4eb

    move-wide/from16 v17, v4

    .line 3302
    .end local v4    # "g":D
    .local v17, "g":D
    const-wide v21, 0x3fc999999999999aL    # 0.2

    const/4 v4, 0x5

    const-wide v25, 0x4045800000000000L    # 43.0

    if-eqz v0, :cond_28c

    :try_start_28
    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_281

    const v5, 0x1fa264c

    if-eq v0, v5, :cond_4a

    :try_start_2f
    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    const v5, 0x1fa2639

    if-ne v0, v5, :cond_37

    goto :goto_4a

    .line 3381
    :cond_37
    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v46, v11

    const-wide/16 v11, 0xf

    goto/16 :goto_294

    .line 3458
    :catchall_41
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    .line 3458
    .end local v9    # "dDelta":D
    .end local v17    # "g":D
    .restart local v4    # "g":D
    .local v28, "dDelta":D
    :goto_46
    move-wide/from16 v4, v17

    goto/16 :goto_4f4

    .line 3303
    .end local v4    # "g":D
    .end local v28    # "dDelta":D
    .restart local v9    # "dDelta":D
    .restart local v17    # "g":D
    :cond_4a
    :goto_4a
    const/16 v0, 0x64

    if-le v2, v0, :cond_6b

    const/16 v0, -0x64

    if-ge v2, v0, :cond_6b

    .line 3304
    const-string v0, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "oneplusSetColorBalance ERROR:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    monitor-exit v8
    :try_end_6a
    .catchall {:try_start_2f .. :try_end_6a} :catchall_41

    return-void

    .line 3307
    :cond_6b
    cmpg-double v0, v13, v25

    if-ltz v0, :cond_179

    cmpl-double v0, v13, v25

    if-nez v0, :cond_75

    goto/16 :goto_179

    .line 3342
    :cond_75
    const-wide v19, -0x41554c77250726f2L    # -7.9576095929934E-7

    const-wide v25, 0x3ff0958debe66d88L    # 1.0365123

    const-wide v28, -0x40b292b87d9c6930L    # -8.980368773136797E-4

    const-wide v30, 0x3eb315b4cbbda110L    # 1.1375421271279822E-6

    if-nez v3, :cond_f8

    .line 3345
    mul-double v30, v30, v13

    mul-double v30, v30, v13

    mul-double v28, v28, v13

    add-double v30, v30, v28

    add-double v4, v30, v25

    .line 3346
    .end local v11    # "r":D
    .local v4, "r":D
    mul-double v19, v19, v13

    mul-double v19, v19, v13

    const-wide v11, -0x40c1bac3ee4437c5L    # -4.6189037833166733E-4

    mul-double/2addr v11, v13

    add-double v19, v19, v11

    const-wide v11, 0x3ff04461f9f01b86L    # 1.016695

    add-double v11, v19, v11

    .line 3347
    .end local v17    # "g":D
    .local v11, "g":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 3349
    :try_start_aa
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_bb

    .line 3350
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-object/from16 v32, v0

    move-wide/from16 v33, v4

    move-wide/from16 v35, v11

    move-wide/from16 v37, v6

    invoke-virtual/range {v32 .. v38}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_bb
    .catch Ljava/lang/NullPointerException; {:try_start_aa .. :try_end_bb} :catch_cb
    .catchall {:try_start_aa .. :try_end_bb} :catchall_bf

    .line 3353
    :cond_bb
    nop

    .line 3458
    move-wide/from16 v40, v4

    goto :goto_d9

    :catchall_bf
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v48, v4

    move-wide v4, v11

    move-wide/from16 v11, v48

    goto/16 :goto_4f4

    .line 3351
    :catch_cb
    move-exception v0

    .line 3352
    .local v0, "e":Ljava/lang/NullPointerException;
    move-object/from16 v39, v0

    :try_start_ce
    const-string v0, "ColorBalanceService"
    :try_end_d0
    .catchall {:try_start_ce .. :try_end_d0} :catchall_ec

    .line 3352
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .local v39, "e":Ljava/lang/NullPointerException;
    move-wide/from16 v40, v4

    :try_start_d2
    const-string/jumbo v4, "mSDM.SetUsrColorBalanceConfig error!"

    .line 3352
    .end local v4    # "r":D
    .local v40, "r":D
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d8
    .catchall {:try_start_d2 .. :try_end_d8} :catchall_e2

    .line 3353
    .end local v39    # "e":Ljava/lang/NullPointerException;
    nop

    .line 3458
    .end local v40    # "r":D
    .restart local v4    # "r":D
    :goto_d9
    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide v4, v11

    move-wide/from16 v11, v40

    .line 3458
    .end local v4    # "r":D
    .restart local v40    # "r":D
    goto/16 :goto_4e9

    :catchall_e2
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide v4, v11

    move-wide/from16 v11, v40

    goto/16 :goto_4f4

    .line 3458
    .end local v40    # "r":D
    .restart local v4    # "r":D
    :catchall_ec
    move-exception v0

    move-wide/from16 v40, v4

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide v4, v11

    move-wide/from16 v11, v40

    .line 3458
    .end local v4    # "r":D
    .restart local v40    # "r":D
    goto/16 :goto_4f4

    .line 3355
    .end local v40    # "r":D
    .local v11, "r":D
    .restart local v17    # "g":D
    :cond_f8
    const/16 v27, 0x0

    .line 3355
    .local v27, "i":I
    :goto_fa
    move/from16 v5, v27

    .line 3355
    .end local v27    # "i":I
    .local v5, "i":I
    if-ge v5, v4, :cond_171

    .line 3356
    sub-double v15, v15, v21

    .line 3357
    move/from16 v42, v5

    int-to-double v4, v2

    .line 3357
    .end local v5    # "i":I
    .local v42, "i":I
    mul-double v32, v9, v15

    sub-double v13, v4, v32

    .line 3360
    mul-double v4, v30, v13

    mul-double/2addr v4, v13

    mul-double v32, v28, v13

    add-double v4, v4, v32

    add-double v4, v4, v25

    .line 3361
    .end local v11    # "r":D
    .restart local v4    # "r":D
    mul-double v11, v19, v13

    mul-double/2addr v11, v13

    const-wide v32, -0x40c1bac3ee4437c5L    # -4.6189037833166733E-4

    mul-double v32, v32, v13

    add-double v11, v11, v32

    const-wide v32, 0x3ff04461f9f01b86L    # 1.016695

    add-double v11, v11, v32

    .line 3362
    .end local v17    # "g":D
    .local v11, "g":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 3365
    :try_start_125
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_136

    .line 3366
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-object/from16 v32, v0

    move-wide/from16 v33, v4

    move-wide/from16 v35, v11

    move-wide/from16 v37, v6

    invoke-virtual/range {v32 .. v38}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_136
    .catch Ljava/lang/NullPointerException; {:try_start_125 .. :try_end_136} :catch_13a
    .catchall {:try_start_125 .. :try_end_136} :catchall_bf

    .line 3369
    :cond_136
    nop

    .line 3371
    move-wide/from16 v44, v4

    goto :goto_147

    .line 3367
    :catch_13a
    move-exception v0

    .line 3368
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    move-object/from16 v43, v0

    :try_start_13d
    const-string v0, "ColorBalanceService"
    :try_end_13f
    .catchall {:try_start_13d .. :try_end_13f} :catchall_165

    .line 3368
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .local v43, "e":Ljava/lang/NullPointerException;
    move-wide/from16 v44, v4

    :try_start_141
    const-string/jumbo v4, "mSDM.SetUsrColorBalanceConfig error!"

    .line 3368
    .end local v4    # "r":D
    .local v44, "r":D
    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_147
    .catchall {:try_start_141 .. :try_end_147} :catchall_15b

    .line 3371
    .end local v43    # "e":Ljava/lang/NullPointerException;
    :goto_147
    const-wide/16 v4, 0xf

    :try_start_149
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_14c
    .catch Ljava/lang/InterruptedException; {:try_start_149 .. :try_end_14c} :catch_14d
    .catchall {:try_start_149 .. :try_end_14c} :catchall_15b

    .line 3374
    goto :goto_153

    .line 3372
    :catch_14d
    move-exception v0

    move-object/from16 v17, v0

    .line 3373
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_150
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_153
    .catchall {:try_start_150 .. :try_end_153} :catchall_15b

    .line 3355
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_153
    add-int/lit8 v27, v42, 0x1

    .line 3355
    .end local v42    # "i":I
    .restart local v27    # "i":I
    move-wide/from16 v17, v11

    move-wide/from16 v11, v44

    const/4 v4, 0x5

    goto :goto_fa

    .line 3458
    .end local v27    # "i":I
    :catchall_15b
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide v4, v11

    move-wide/from16 v11, v44

    goto/16 :goto_4f4

    .line 3458
    .end local v44    # "r":D
    .restart local v4    # "r":D
    :catchall_165
    move-exception v0

    move-wide/from16 v44, v4

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide v4, v11

    move-wide/from16 v11, v44

    .line 3458
    .end local v4    # "r":D
    .restart local v44    # "r":D
    goto/16 :goto_4f4

    .line 3458
    .end local v44    # "r":D
    .local v11, "r":D
    .restart local v17    # "g":D
    :cond_171
    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v4, v17

    goto/16 :goto_4e9

    .line 3308
    :cond_179
    :goto_179
    const-wide/16 v4, 0xf

    if-nez v3, :cond_1eb

    .line 3311
    const-wide v4, -0x410fdff91c3781e2L    # -1.5378098611516543E-5

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    const-wide v19, 0x3f56bea8aee1b08aL    # 0.001388230065937387

    mul-double v19, v19, v13

    add-double v4, v4, v19

    const-wide v19, 0x3feec8d01dba252aL    # 0.9620133

    add-double v17, v4, v19

    .line 3312
    const-wide v4, -0x4104f970a5924d0aL    # -2.577364434890296E-5

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    const-wide v19, 0x3f68eb30a5a8effeL    # 0.0030418348444793955

    mul-double v19, v19, v13

    add-double v4, v4, v19

    const-wide v19, 0x3feca2ef9e88eca3L    # 0.89488965

    add-double v19, v4, v19

    .line 3314
    .end local v6    # "b":D
    .local v19, "b":D
    :try_start_1ab
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_1c0

    .line 3315
    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;
    :try_end_1b1
    .catch Ljava/lang/NullPointerException; {:try_start_1ab .. :try_end_1b1} :catch_1d0
    .catchall {:try_start_1ab .. :try_end_1b1} :catchall_1c5

    move-wide v5, v11

    move-object/from16 v23, v8

    move-wide/from16 v7, v17

    move-wide/from16 v28, v9

    move-wide/from16 v9, v19

    .line 3315
    .end local v9    # "dDelta":D
    .restart local v28    # "dDelta":D
    :try_start_1ba
    invoke-virtual/range {v4 .. v10}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_1bd
    .catch Ljava/lang/NullPointerException; {:try_start_1ba .. :try_end_1bd} :catch_1be
    .catchall {:try_start_1ba .. :try_end_1bd} :catchall_1e4

    goto :goto_1c4

    .line 3316
    :catch_1be
    move-exception v0

    goto :goto_1d5

    .line 3318
    .end local v28    # "dDelta":D
    .restart local v9    # "dDelta":D
    :cond_1c0
    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    .line 3318
    .end local v9    # "dDelta":D
    .restart local v28    # "dDelta":D
    :goto_1c4
    goto :goto_1de

    .line 3458
    .end local v28    # "dDelta":D
    .restart local v9    # "dDelta":D
    :catchall_1c5
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    .line 3458
    .end local v9    # "dDelta":D
    .restart local v28    # "dDelta":D
    goto/16 :goto_4f4

    .line 3316
    .end local v28    # "dDelta":D
    .restart local v9    # "dDelta":D
    :catch_1d0
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    .line 3317
    .end local v9    # "dDelta":D
    .local v0, "e":Ljava/lang/NullPointerException;
    .restart local v28    # "dDelta":D
    :goto_1d5
    :try_start_1d5
    const-string v4, "ColorBalanceService"

    const-string/jumbo v5, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1dd
    .catchall {:try_start_1d5 .. :try_end_1dd} :catchall_1e4

    .line 3317
    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_1c4

    .line 3458
    :goto_1de
    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    goto/16 :goto_4e9

    :catchall_1e4
    move-exception v0

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    goto/16 :goto_4f4

    .line 3321
    .end local v19    # "b":D
    .end local v28    # "dDelta":D
    .restart local v6    # "b":D
    .restart local v9    # "dDelta":D
    :cond_1eb
    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    .line 3321
    .end local v9    # "dDelta":D
    .restart local v28    # "dDelta":D
    const/16 v27, 0x0

    .line 3321
    .restart local v27    # "i":I
    :goto_1f1
    move/from16 v9, v27

    .line 3321
    .end local v27    # "i":I
    .local v9, "i":I
    const/4 v8, 0x5

    if-ge v9, v8, :cond_27b

    .line 3322
    sub-double v15, v15, v21

    .line 3323
    int-to-double v4, v2

    mul-double v19, v28, v15

    sub-double v13, v4, v19

    .line 3326
    const-wide v4, -0x410fdff91c3781e2L    # -1.5378098611516543E-5

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    const-wide v19, 0x3f56bea8aee1b08aL    # 0.001388230065937387

    mul-double v19, v19, v13

    add-double v4, v4, v19

    const-wide v19, 0x3feec8d01dba252aL    # 0.9620133

    add-double v17, v4, v19

    .line 3327
    const-wide v4, -0x4104f970a5924d0aL    # -2.577364434890296E-5

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    const-wide v19, 0x3f68eb30a5a8effeL    # 0.0030418348444793955

    mul-double v19, v19, v13

    add-double v4, v4, v19

    const-wide v19, 0x3feca2ef9e88eca3L    # 0.89488965

    add-double v19, v4, v19

    .line 3329
    .end local v6    # "b":D
    .restart local v19    # "b":D
    :try_start_22b
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_244

    .line 3330
    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;
    :try_end_231
    .catch Ljava/lang/NullPointerException; {:try_start_22b .. :try_end_231} :catch_254
    .catchall {:try_start_22b .. :try_end_231} :catchall_24b

    move v10, v8

    const-wide/16 v7, 0xf

    move-wide v5, v11

    move-wide/from16 v46, v11

    move-wide v11, v7

    move-wide/from16 v7, v17

    .line 3330
    .end local v11    # "r":D
    .local v46, "r":D
    move/from16 v24, v9

    move-wide/from16 v9, v19

    .line 3330
    .end local v9    # "i":I
    .local v24, "i":I
    :try_start_23e
    invoke-virtual/range {v4 .. v10}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_241
    .catch Ljava/lang/NullPointerException; {:try_start_23e .. :try_end_241} :catch_242
    .catchall {:try_start_23e .. :try_end_241} :catchall_275

    goto :goto_24a

    .line 3331
    :catch_242
    move-exception v0

    goto :goto_25b

    .line 3333
    .end local v24    # "i":I
    .end local v46    # "r":D
    .restart local v9    # "i":I
    .restart local v11    # "r":D
    :cond_244
    move/from16 v24, v9

    move-wide/from16 v46, v11

    const-wide/16 v11, 0xf

    .line 3333
    .end local v9    # "i":I
    .end local v11    # "r":D
    .restart local v24    # "i":I
    .restart local v46    # "r":D
    :goto_24a
    goto :goto_263

    .line 3458
    .end local v24    # "i":I
    .end local v46    # "r":D
    .restart local v11    # "r":D
    :catchall_24b
    move-exception v0

    move-wide/from16 v46, v11

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    .line 3458
    .end local v11    # "r":D
    .restart local v46    # "r":D
    goto/16 :goto_4f4

    .line 3331
    .end local v46    # "r":D
    .restart local v9    # "i":I
    .restart local v11    # "r":D
    :catch_254
    move-exception v0

    move/from16 v24, v9

    move-wide/from16 v46, v11

    const-wide/16 v11, 0xf

    .line 3332
    .end local v9    # "i":I
    .end local v11    # "r":D
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v24    # "i":I
    .restart local v46    # "r":D
    :goto_25b
    :try_start_25b
    const-string v4, "ColorBalanceService"

    const-string/jumbo v5, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_263
    .catchall {:try_start_25b .. :try_end_263} :catchall_275

    .line 3335
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_263
    :try_start_263
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_266
    .catch Ljava/lang/InterruptedException; {:try_start_263 .. :try_end_266} :catch_267
    .catchall {:try_start_263 .. :try_end_266} :catchall_275

    .line 3338
    goto :goto_26c

    .line 3336
    :catch_267
    move-exception v0

    move-object v4, v0

    .line 3337
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_269
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_26c
    .catchall {:try_start_269 .. :try_end_26c} :catchall_275

    .line 3321
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_26c
    add-int/lit8 v27, v24, 0x1

    .line 3321
    .end local v24    # "i":I
    .restart local v27    # "i":I
    move-wide v4, v11

    move-wide/from16 v6, v19

    move-wide/from16 v11, v46

    goto/16 :goto_1f1

    .line 3458
    .end local v27    # "i":I
    :catchall_275
    move-exception v0

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    goto :goto_2b8

    .line 3458
    .end local v19    # "b":D
    .end local v46    # "r":D
    .restart local v6    # "b":D
    .restart local v11    # "r":D
    :cond_27b
    move-wide/from16 v46, v11

    move-wide/from16 v4, v17

    .line 3458
    .end local v11    # "r":D
    .restart local v46    # "r":D
    goto/16 :goto_4e9

    .line 3458
    .end local v28    # "dDelta":D
    .end local v46    # "r":D
    .local v9, "dDelta":D
    .restart local v11    # "r":D
    :catchall_281
    move-exception v0

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v46, v11

    move-wide/from16 v4, v17

    .line 3458
    .end local v9    # "dDelta":D
    .end local v11    # "r":D
    .restart local v28    # "dDelta":D
    .restart local v46    # "r":D
    goto/16 :goto_4f4

    .line 3381
    .end local v28    # "dDelta":D
    .end local v46    # "r":D
    .restart local v9    # "dDelta":D
    .restart local v11    # "r":D
    :cond_28c
    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v46, v11

    const-wide/16 v11, 0xf

    .line 3381
    .end local v9    # "dDelta":D
    .end local v11    # "r":D
    .restart local v28    # "dDelta":D
    .restart local v46    # "r":D
    :goto_294
    const/16 v0, 0x64

    if-le v2, v0, :cond_2bc

    const/16 v0, -0x64

    if-ge v2, v0, :cond_2bc

    .line 3382
    :try_start_29c
    const-string v0, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "oneplusSetColorBalance ERROR:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    monitor-exit v23
    :try_end_2b4
    .catchall {:try_start_29c .. :try_end_2b4} :catchall_2b5

    return-void

    .line 3458
    :catchall_2b5
    move-exception v0

    move-wide/from16 v4, v17

    .line 3458
    .end local v17    # "g":D
    .end local v46    # "r":D
    .local v4, "g":D
    .restart local v11    # "r":D
    :goto_2b8
    move-wide/from16 v11, v46

    goto/16 :goto_4f4

    .line 3385
    .end local v4    # "g":D
    .end local v11    # "r":D
    .restart local v17    # "g":D
    .restart local v46    # "r":D
    :cond_2bc
    cmpg-double v0, v13, v25

    const-wide v19, 0x3e7ad7f2a0000000L    # 1.0000000116860974E-7

    if-ltz v0, :cond_3df

    cmpl-double v0, v13, v25

    if-nez v0, :cond_2cb

    goto/16 :goto_3df

    .line 3422
    :cond_2cb
    const-wide v4, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    if-nez v3, :cond_340

    .line 3425
    const-wide v8, -0x3ff6978d4fdf3b64L    # -3.176

    mul-double/2addr v8, v13

    mul-double/2addr v8, v13

    mul-double/2addr v8, v13

    mul-double v8, v8, v19

    const-wide v10, 0x3ff02d0e56041893L    # 1.011

    mul-double/2addr v10, v13

    mul-double/2addr v10, v13

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    const-wide v10, -0x4075bea0ba1f4b1fL    # -0.01282

    mul-double/2addr v10, v13

    add-double/2addr v8, v10

    const-wide v10, 0x3ff63126e978d4feL    # 1.387

    add-double/2addr v8, v10

    .line 3426
    .end local v46    # "r":D
    .local v8, "r":D
    const-wide v10, 0x3ff553f7ced91687L    # 1.333

    mul-double/2addr v10, v13

    mul-double/2addr v10, v13

    mul-double/2addr v10, v13

    const-wide v19, 0x3eb0c6f7a0000000L    # 9.999999974752427E-7

    mul-double v10, v10, v19

    const-wide v19, -0x3fffeb851eb851ecL    # -2.01

    mul-double v19, v19, v13

    mul-double v19, v19, v13

    mul-double v19, v19, v4

    add-double v10, v10, v19

    const-wide v4, 0x3f7c0767d34df04eL    # 0.006843

    mul-double/2addr v4, v13

    add-double/2addr v10, v4

    const-wide v4, 0x3feef765fd8adabaL    # 0.9677

    add-double/2addr v4, v10

    .line 3427
    .end local v17    # "g":D
    .restart local v4    # "g":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 3429
    :try_start_31d
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_32e

    .line 3430
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-object/from16 v30, v0

    move-wide/from16 v31, v8

    move-wide/from16 v33, v4

    move-wide/from16 v35, v6

    invoke-virtual/range {v30 .. v36}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_32e
    .catch Ljava/lang/NullPointerException; {:try_start_31d .. :try_end_32e} :catch_333
    .catchall {:try_start_31d .. :try_end_32e} :catchall_32f

    .line 3433
    :cond_32e
    :goto_32e
    goto :goto_33d

    .line 3458
    :catchall_32f
    move-exception v0

    move-wide v11, v8

    goto/16 :goto_4f4

    .line 3431
    :catch_333
    move-exception v0

    .line 3432
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_334
    const-string v10, "ColorBalanceService"

    const-string/jumbo v11, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33c
    .catchall {:try_start_334 .. :try_end_33c} :catchall_32f

    .line 3432
    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_32e

    .line 3458
    :goto_33d
    move-wide v11, v8

    goto/16 :goto_4e9

    .line 3435
    .end local v4    # "g":D
    .end local v8    # "r":D
    .restart local v17    # "g":D
    .restart local v46    # "r":D
    :cond_340
    const/16 v27, 0x0

    .line 3435
    .restart local v27    # "i":I
    :goto_342
    move/from16 v8, v27

    .line 3435
    .end local v27    # "i":I
    .local v8, "i":I
    const/4 v9, 0x5

    if-ge v8, v9, :cond_3d9

    .line 3436
    sub-double v15, v15, v21

    .line 3437
    int-to-double v9, v2

    mul-double v24, v28, v15

    sub-double v13, v9, v24

    .line 3440
    const-wide v9, -0x3ff6978d4fdf3b64L    # -3.176

    mul-double/2addr v9, v13

    mul-double/2addr v9, v13

    mul-double/2addr v9, v13

    mul-double v9, v9, v19

    const-wide v24, 0x3ff02d0e56041893L    # 1.011

    mul-double v24, v24, v13

    mul-double v24, v24, v13

    mul-double v24, v24, v4

    add-double v9, v9, v24

    const-wide v24, -0x4075bea0ba1f4b1fL    # -0.01282

    mul-double v24, v24, v13

    add-double v9, v9, v24

    const-wide v24, 0x3ff63126e978d4feL    # 1.387

    add-double v9, v9, v24

    .line 3441
    .end local v46    # "r":D
    .local v9, "r":D
    const-wide v24, 0x3ff553f7ced91687L    # 1.333

    mul-double v24, v24, v13

    mul-double v24, v24, v13

    mul-double v24, v24, v13

    const-wide v26, 0x3eb0c6f7a0000000L    # 9.999999974752427E-7

    mul-double v24, v24, v26

    const-wide v26, -0x3fffeb851eb851ecL    # -2.01

    mul-double v26, v26, v13

    mul-double v26, v26, v13

    mul-double v26, v26, v4

    add-double v24, v24, v26

    const-wide v26, 0x3f7c0767d34df04eL    # 0.006843

    mul-double v26, v26, v13

    add-double v24, v24, v26

    const-wide v26, 0x3feef765fd8adabaL    # 0.9677

    add-double v17, v24, v26

    .line 3442
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 3444
    :try_start_3a6
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_3b7

    .line 3445
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-object/from16 v30, v0

    move-wide/from16 v31, v9

    move-wide/from16 v33, v17

    move-wide/from16 v35, v6

    invoke-virtual/range {v30 .. v36}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_3b7
    .catch Ljava/lang/NullPointerException; {:try_start_3a6 .. :try_end_3b7} :catch_3bc
    .catchall {:try_start_3a6 .. :try_end_3b7} :catchall_3b8

    .line 3448
    :cond_3b7
    goto :goto_3c5

    .line 3458
    .end local v8    # "i":I
    :catchall_3b8
    move-exception v0

    move-wide v11, v9

    goto/16 :goto_46

    .line 3446
    .restart local v8    # "i":I
    :catch_3bc
    move-exception v0

    .line 3447
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    :try_start_3bd
    const-string v4, "ColorBalanceService"

    const-string/jumbo v5, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c5
    .catchall {:try_start_3bd .. :try_end_3c5} :catchall_3b8

    .line 3450
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_3c5
    :try_start_3c5
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3c8
    .catch Ljava/lang/InterruptedException; {:try_start_3c5 .. :try_end_3c8} :catch_3c9
    .catchall {:try_start_3c5 .. :try_end_3c8} :catchall_3b8

    .line 3453
    goto :goto_3ce

    .line 3451
    :catch_3c9
    move-exception v0

    move-object v4, v0

    .line 3452
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3cb
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3ce
    .catchall {:try_start_3cb .. :try_end_3ce} :catchall_3b8

    .line 3435
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_3ce
    add-int/lit8 v27, v8, 0x1

    .line 3435
    .end local v8    # "i":I
    .restart local v27    # "i":I
    move-wide/from16 v46, v9

    const-wide v4, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    goto/16 :goto_342

    .line 3458
    .end local v9    # "r":D
    .end local v27    # "i":I
    .restart local v46    # "r":D
    :cond_3d9
    move-wide/from16 v4, v17

    .line 3458
    .end local v17    # "g":D
    .end local v46    # "r":D
    .restart local v4    # "g":D
    .restart local v11    # "r":D
    :goto_3db
    move-wide/from16 v11, v46

    goto/16 :goto_4e9

    .line 3386
    .end local v4    # "g":D
    .end local v11    # "r":D
    .restart local v17    # "g":D
    .restart local v46    # "r":D
    :cond_3df
    :goto_3df
    const-wide v24, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    if-nez v3, :cond_44d

    .line 3389
    const-wide v4, 0x3ff072b020c49ba6L    # 1.028

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    mul-double v4, v4, v19

    const-wide v8, -0x400522d0e5604189L    # -1.679

    mul-double/2addr v8, v13

    mul-double/2addr v8, v13

    mul-double v8, v8, v24

    add-double/2addr v4, v8

    const-wide v8, 0x3f66feb4a66559f7L    # 0.002807

    mul-double/2addr v8, v13

    add-double/2addr v4, v8

    const-wide v8, 0x3fecb6ae7d566cf4L    # 0.8973

    add-double v11, v4, v8

    .line 3390
    .end local v17    # "g":D
    .local v11, "g":D
    const-wide v4, -0x4009b22d0e560419L    # -1.394

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    mul-double v4, v4, v19

    const-wide v8, -0x3fff9db22d0e5604L    # -2.048

    mul-double/2addr v8, v13

    mul-double/2addr v8, v13

    mul-double v8, v8, v24

    add-double/2addr v4, v8

    const-wide v8, 0x3f7a5fc7e6b3fea0L    # 0.006439

    mul-double/2addr v8, v13

    add-double/2addr v4, v8

    const-wide v8, 0x3fe81a36e2eb1c43L    # 0.7532

    add-double v17, v4, v8

    .line 3393
    .end local v6    # "b":D
    .local v17, "b":D
    :try_start_42a
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_438

    .line 3394
    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-wide/from16 v5, v46

    move-wide v7, v11

    move-wide/from16 v9, v17

    invoke-virtual/range {v4 .. v10}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_438
    .catch Ljava/lang/NullPointerException; {:try_start_42a .. :try_end_438} :catch_43f
    .catchall {:try_start_42a .. :try_end_438} :catchall_439

    .line 3397
    :cond_438
    :goto_438
    goto :goto_449

    .line 3458
    :catchall_439
    move-exception v0

    move-wide v4, v11

    move-wide/from16 v6, v17

    goto/16 :goto_2b8

    .line 3395
    :catch_43f
    move-exception v0

    .line 3396
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_440
    const-string v4, "ColorBalanceService"

    const-string/jumbo v5, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_448
    .catchall {:try_start_440 .. :try_end_448} :catchall_439

    .line 3396
    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_438

    .line 3458
    :goto_449
    move-wide v4, v11

    move-wide/from16 v6, v17

    goto :goto_3db

    .line 3400
    .end local v11    # "g":D
    .restart local v6    # "b":D
    .local v17, "g":D
    :cond_44d
    const/16 v27, 0x0

    .line 3400
    .restart local v27    # "i":I
    :goto_44f
    move/from16 v9, v27

    .line 3400
    .end local v27    # "i":I
    .local v9, "i":I
    const/4 v10, 0x5

    if-ge v9, v10, :cond_3d9

    .line 3401
    sub-double v15, v15, v21

    .line 3402
    int-to-double v4, v2

    mul-double v26, v28, v15

    sub-double v13, v4, v26

    .line 3405
    const-wide v4, 0x3ff072b020c49ba6L    # 1.028

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    mul-double v4, v4, v19

    const-wide v26, -0x400522d0e5604189L    # -1.679

    mul-double v26, v26, v13

    mul-double v26, v26, v13

    mul-double v26, v26, v24

    add-double v4, v4, v26

    const-wide v26, 0x3f66feb4a66559f7L    # 0.002807

    mul-double v26, v26, v13

    add-double v4, v4, v26

    const-wide v26, 0x3fecb6ae7d566cf4L    # 0.8973

    add-double v17, v4, v26

    .line 3406
    const-wide v4, -0x4009b22d0e560419L    # -1.394

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    mul-double/2addr v4, v13

    mul-double v4, v4, v19

    const-wide v26, -0x3fff9db22d0e5604L    # -2.048

    mul-double v26, v26, v13

    mul-double v26, v26, v13

    mul-double v26, v26, v24

    add-double v4, v4, v26

    const-wide v26, 0x3f7a5fc7e6b3fea0L    # 0.006439

    mul-double v26, v26, v13

    add-double v4, v4, v26

    const-wide v26, 0x3fe81a36e2eb1c43L    # 0.7532

    add-double v26, v4, v26

    .line 3409
    .end local v6    # "b":D
    .local v26, "b":D
    :try_start_4a9
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_4bf

    .line 3410
    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;
    :try_end_4af
    .catch Ljava/lang/NullPointerException; {:try_start_4a9 .. :try_end_4af} :catch_4cb
    .catchall {:try_start_4a9 .. :try_end_4af} :catchall_4c4

    move-wide/from16 v5, v46

    move-wide/from16 v7, v17

    move/from16 v30, v9

    move/from16 v31, v10

    move-wide/from16 v9, v26

    .line 3410
    .end local v9    # "i":I
    .local v30, "i":I
    :try_start_4b9
    invoke-virtual/range {v4 .. v10}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_4bc
    .catch Ljava/lang/NullPointerException; {:try_start_4b9 .. :try_end_4bc} :catch_4bd
    .catchall {:try_start_4b9 .. :try_end_4bc} :catchall_4c4

    goto :goto_4c3

    .line 3411
    :catch_4bd
    move-exception v0

    goto :goto_4d0

    .line 3413
    .end local v30    # "i":I
    .restart local v9    # "i":I
    :cond_4bf
    move/from16 v30, v9

    move/from16 v31, v10

    .line 3413
    .end local v9    # "i":I
    .restart local v30    # "i":I
    :goto_4c3
    goto :goto_4d8

    .line 3458
    .end local v30    # "i":I
    :catchall_4c4
    move-exception v0

    move-wide/from16 v4, v17

    move-wide/from16 v6, v26

    goto/16 :goto_2b8

    .line 3411
    .restart local v9    # "i":I
    :catch_4cb
    move-exception v0

    move/from16 v30, v9

    move/from16 v31, v10

    .line 3412
    .end local v9    # "i":I
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    .restart local v30    # "i":I
    :goto_4d0
    :try_start_4d0
    const-string v4, "ColorBalanceService"

    const-string/jumbo v5, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d8
    .catchall {:try_start_4d0 .. :try_end_4d8} :catchall_4c4

    .line 3415
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_4d8
    :try_start_4d8
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4db
    .catch Ljava/lang/InterruptedException; {:try_start_4d8 .. :try_end_4db} :catch_4dc
    .catchall {:try_start_4d8 .. :try_end_4db} :catchall_4c4

    .line 3418
    goto :goto_4e1

    .line 3416
    :catch_4dc
    move-exception v0

    move-object v4, v0

    .line 3417
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4de
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4e1
    .catchall {:try_start_4de .. :try_end_4e1} :catchall_4c4

    .line 3400
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_4e1
    add-int/lit8 v0, v30, 0x1

    .line 3400
    .end local v30    # "i":I
    .local v0, "i":I
    move-wide/from16 v6, v26

    move/from16 v27, v0

    goto/16 :goto_44f

    .line 3458
    .end local v0    # "i":I
    .end local v17    # "g":D
    .end local v26    # "b":D
    .end local v46    # "r":D
    .restart local v4    # "g":D
    .restart local v6    # "b":D
    .local v11, "r":D
    :goto_4e9
    :try_start_4e9
    monitor-exit v23

    .line 3459
    return-void

    .line 3458
    .end local v28    # "dDelta":D
    .local v9, "dDelta":D
    :catchall_4eb
    move-exception v0

    move-wide/from16 v17, v4

    move-object/from16 v23, v8

    move-wide/from16 v28, v9

    move-wide/from16 v46, v11

    .line 3458
    .end local v9    # "dDelta":D
    .restart local v28    # "dDelta":D
    :goto_4f4
    monitor-exit v23
    :try_end_4f5
    .catchall {:try_start_4e9 .. :try_end_4f5} :catchall_4f6

    throw v0

    :catchall_4f6
    move-exception v0

    goto :goto_4f4
.end method

.method private opSetActiveModesId(I)V
    .registers 5
    .param p1, "mode"    # I

    .line 713
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "opSetActiveModesId: mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_24

    .line 715
    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    if-nez v0, :cond_24

    .line 716
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/display/SDManager;->SetActiveModesId(I)V

    .line 718
    :cond_24
    return-void
.end method

.method private opSetColorBalance(II)V
    .registers 4
    .param p1, "value"    # I
    .param p2, "delta"    # I

    .line 708
    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    if-nez v0, :cond_7

    .line 709
    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->oneplusSetColorBalance(II)V

    .line 710
    :cond_7
    return-void
.end method

.method private opSetDefaultModesId(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 721
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_9

    .line 722
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/display/SDManager;->SetDefaultModesId(I)V

    .line 723
    :cond_9
    return-void
.end method

.method private processEnvironmentChange()V
    .registers 8

    .line 2159
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 2160
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 2161
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2162
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x8

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2163
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2164
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 2165
    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NightMode mCurrentNightColorbalance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " target:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eq v2, v3, :cond_92

    .line 2167
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/2addr v1, v2

    int-to-long v1, v1

    .line 2168
    .local v1, "delay":J
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2169
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "delay"

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2170
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2171
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v4, :cond_92

    .line 2172
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2173
    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NightMode mCurrentNightColorbalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "delay":J
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_92
    goto/16 :goto_1ca

    :cond_94
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_133

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_133

    .line 2177
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 2178
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2179
    .restart local v0    # "msg":Landroid/os/Message;
    const/16 v2, 0x9

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2180
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2181
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 2182
    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReadingMode mCurrentReadingColorbalance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " target:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eq v2, v3, :cond_131

    .line 2184
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/2addr v1, v2

    int-to-long v1, v1

    .line 2185
    .restart local v1    # "delay":J
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2186
    .restart local v3    # "bundle":Landroid/os/Bundle;
    const-string v4, "delay"

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2187
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2188
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v4, :cond_131

    .line 2189
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2190
    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReadingMode mCurrentReadingColorbalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " delay:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "delay":J
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_131
    goto/16 :goto_1ca

    :cond_133
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1ca

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1ca

    .line 2194
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 2195
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2196
    .restart local v0    # "msg":Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2197
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2198
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 2199
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoMode mCurrenAdaptionColorbalance:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " target:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eq v1, v2, :cond_1ca

    .line 2201
    const/16 v1, 0x12c

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/2addr v1, v2

    int-to-long v1, v1

    .line 2202
    .restart local v1    # "delay":J
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2203
    .restart local v3    # "bundle":Landroid/os/Bundle;
    const-string v4, "delay"

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2204
    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2205
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v4, :cond_1ca

    .line 2206
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2207
    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoMode mCurrentAdaptionColorbalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "delay":J
    .end local v3    # "bundle":Landroid/os/Bundle;
    :cond_1ca
    :goto_1ca
    return-void
.end method

.method private processEnvironmentColorChangeAtAdaptionMode(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 3518
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "delay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3519
    .local v0, "delay":J
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 3520
    .local v2, "generation":I
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3523
    .local v3, "target":I
    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processEnvironmentColorChangeAtAdaptionMode:++++mIsAutoModeActivated = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3524
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_color_mode_settings_value"

    const/4 v6, 0x1

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 3527
    .local v4, "status":I
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_49

    if-ne v4, v6, :cond_49

    .line 3529
    const/16 v5, 0x2b

    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 3530
    invoke-direct {p0, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 3532
    :cond_49
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3534
    :try_start_4c
    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v2, v7, :cond_cd

    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_cd

    .line 3535
    const-string v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AdaptionMode mCurrentAdaptionColorbalance: == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3536
    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    if-le v7, v3, :cond_76

    const/4 v6, -0x1

    nop

    .line 3537
    .local v6, "delta":I
    :cond_76
    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    .line 3538
    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-direct {p0, v7, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 3540
    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    if-eq v7, v3, :cond_ab

    .line 3541
    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v7, :cond_cd

    .line 3542
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 3543
    .local v7, "msg2":Landroid/os/Message;
    iget v8, p1, Landroid/os/Message;->what:I

    iput v8, v7, Landroid/os/Message;->what:I

    .line 3544
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 3545
    .local v8, "bundle":Landroid/os/Bundle;
    iget v9, p1, Landroid/os/Message;->arg1:I

    iput v9, v7, Landroid/os/Message;->arg1:I

    .line 3546
    iget v9, p1, Landroid/os/Message;->arg2:I

    iput v9, v7, Landroid/os/Message;->arg2:I

    .line 3547
    const-string v9, "delay"

    invoke-virtual {v8, v9, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3548
    invoke-virtual {v7, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3549
    iget-object v9, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v9, v7, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3550
    .end local v7    # "msg2":Landroid/os/Message;
    .end local v8    # "bundle":Landroid/os/Bundle;
    goto :goto_cd

    .line 3552
    :cond_ab
    const-string v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AdaptionMode shading done,mCurrentaAdaptionColorbalance:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " target:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    .end local v6    # "delta":I
    :cond_cd
    :goto_cd
    monitor-exit v5

    .line 3556
    return-void

    .line 3555
    :catchall_cf
    move-exception v6

    monitor-exit v5
    :try_end_d1
    .catchall {:try_start_4c .. :try_end_d1} :catchall_cf

    throw v6
.end method

.method private processEnvironmentColorChangeAtNightMode(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 3462
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "delay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3463
    .local v0, "delay":J
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 3464
    .local v2, "generation":I
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3465
    .local v3, "target":I
    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 3466
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "oem_nightmode_progress_status"

    const/16 v7, 0x67

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    sub-int/2addr v4, v5

    sget v5, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v4, v5

    .line 3469
    .local v4, "currentSeekBar":I
    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v2, v5, :cond_8f

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    if-ne v4, v5, :cond_8f

    .line 3470
    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v5, v3, :cond_32

    const/4 v5, -0x1

    goto :goto_33

    :cond_32
    const/4 v5, 0x1

    .line 3471
    .local v5, "delta":I
    :goto_33
    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 3472
    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {p0, v6, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 3473
    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eq v6, v7, :cond_6c

    .line 3474
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v6, :cond_8f

    .line 3475
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 3476
    .local v6, "msg2":Landroid/os/Message;
    iget v7, p1, Landroid/os/Message;->what:I

    iput v7, v6, Landroid/os/Message;->what:I

    .line 3477
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 3478
    .local v7, "bundle":Landroid/os/Bundle;
    iget v8, p1, Landroid/os/Message;->arg1:I

    iput v8, v6, Landroid/os/Message;->arg1:I

    .line 3479
    iget v8, p1, Landroid/os/Message;->arg2:I

    iput v8, v6, Landroid/os/Message;->arg2:I

    .line 3480
    const-string v8, "delay"

    invoke-virtual {v7, v8, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3481
    invoke-virtual {v6, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3482
    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v8, v6, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3483
    .end local v6    # "msg2":Landroid/os/Message;
    .end local v7    # "bundle":Landroid/os/Bundle;
    goto :goto_8f

    .line 3485
    :cond_6c
    const-string v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "shading done,mCurrentNightColorbalance:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " target:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3488
    .end local v5    # "delta":I
    :cond_8f
    :goto_8f
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    .line 3490
    return-void
.end method

.method private processEnvironmentColorChangeAtReadingMode(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 3492
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "delay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 3493
    .local v0, "delay":J
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 3494
    .local v2, "generation":I
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 3496
    .local v3, "target":I
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v2, v4, :cond_71

    .line 3497
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v4, v3, :cond_18

    const/4 v4, -0x1

    goto :goto_19

    :cond_18
    const/4 v4, 0x1

    .line 3498
    .local v4, "delta":I
    :goto_19
    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 3499
    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {p0, v5, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 3501
    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-eq v5, v3, :cond_4e

    .line 3502
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v5, :cond_71

    .line 3503
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 3504
    .local v5, "msg2":Landroid/os/Message;
    iget v6, p1, Landroid/os/Message;->what:I

    iput v6, v5, Landroid/os/Message;->what:I

    .line 3505
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 3506
    .local v6, "bundle":Landroid/os/Bundle;
    iget v7, p1, Landroid/os/Message;->arg1:I

    iput v7, v5, Landroid/os/Message;->arg1:I

    .line 3507
    iget v7, p1, Landroid/os/Message;->arg2:I

    iput v7, v5, Landroid/os/Message;->arg2:I

    .line 3508
    const-string v7, "delay"

    invoke-virtual {v6, v7, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3509
    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3510
    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v7, v5, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3511
    .end local v5    # "msg2":Landroid/os/Message;
    .end local v6    # "bundle":Landroid/os/Bundle;
    goto :goto_71

    .line 3513
    :cond_4e
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shading done,mCurrentReadingColorbalance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " target:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3516
    .end local v4    # "delta":I
    :cond_71
    :goto_71
    return-void
.end method

.method private processScreenOn(Z)V
    .registers 10
    .param p1, "on"    # Z

    .line 3207
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3208
    :try_start_3
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v1, :cond_28

    .line 3209
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processScreenOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/power/PowerManagerService;->mGo_to_sleep_Reason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3210
    :cond_28
    const/4 v1, 0x0

    if-eqz p1, :cond_156

    .line 3211
    const/4 v2, 0x1

    .line 3212
    .local v2, "isKeyguard":Z
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "keyguard"

    .line 3213
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 3214
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v3, :cond_46

    .line 3215
    const-string v3, "ColorBalanceService"

    const-string/jumbo v4, "mKeyguardManager is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 3217
    :cond_46
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    move v2, v3

    .line 3218
    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isKeyguard =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    :goto_64
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.fingerprint"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 3221
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    const-string v4, "fingerprint"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 3223
    :cond_7e
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v3, :cond_ba

    .line 3224
    new-array v3, v5, [I

    const/16 v6, 0x47

    aput v6, v3, v1

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_b6

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v3

    if-eqz v3, :cond_b6

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 3225
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_b6

    sget v3, Lcom/android/server/power/PowerManagerService;->mGo_to_sleep_Reason:I

    const/16 v6, 0x8

    if-eq v3, v6, :cond_b6

    sget v3, Lcom/android/server/power/PowerManagerService;->mGo_to_sleep_Reason:I

    if-eq v3, v4, :cond_b6

    if-eqz v2, :cond_b6

    move v3, v5

    goto :goto_b7

    :cond_b6
    move v3, v1

    :goto_b7
    iput-boolean v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    goto :goto_c2

    .line 3228
    :cond_ba
    const-string v3, "ColorBalanceService"

    const-string/jumbo v6, "mFpm == null"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    :goto_c2
    sput v4, Lcom/android/server/power/PowerManagerService;->mGo_to_sleep_Reason:I

    .line 3231
    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "has_fingerprint = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3232
    iget-boolean v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    const/4 v4, 0x2

    if-nez v3, :cond_f6

    .line 3233
    const-string v3, "ColorDisable"

    invoke-static {v3}, Lcom/oneplus/oimc/OIMCManager;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_fb

    .line 3234
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    .line 3235
    const-string v3, "FingerPrintMode"

    invoke-static {v3, v4, v1}, Lcom/oneplus/oimc/OIMCManager;->notifyModeChange(Ljava/lang/String;II)V

    goto :goto_fb

    .line 3238
    :cond_f6
    const-string v3, "FingerPrintMode"

    invoke-static {v3, v5, v1}, Lcom/oneplus/oimc/OIMCManager;->notifyModeChange(Ljava/lang/String;II)V

    .line 3240
    :cond_fb
    :goto_fb
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v3, :cond_107

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_146

    :cond_107
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_146

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_120

    goto :goto_146

    .line 3244
    :cond_120
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_149

    .line 3245
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "screen_color_mode_settings_value"

    const/4 v7, -0x2

    invoke-static {v3, v6, v5, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 3247
    .local v3, "status_new":I
    if-eq v3, v4, :cond_13b

    const/4 v4, 0x4

    if-ne v3, v4, :cond_149

    :cond_13b
    iget-boolean v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    if-nez v4, :cond_149

    .line 3248
    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 3249
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 3249
    .end local v3    # "status_new":I
    goto :goto_149

    .line 3242
    :cond_146
    :goto_146
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 3253
    :cond_149
    :goto_149
    sget v1, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    const v3, 0x1fa2639

    if-ne v1, v3, :cond_155

    .line 3254
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsg(I)V

    .line 3255
    .end local v2    # "isKeyguard":Z
    :cond_155
    goto :goto_159

    .line 3256
    :cond_156
    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 3258
    :goto_159
    monitor-exit v0

    .line 3259
    return-void

    .line 3258
    :catchall_15b
    move-exception v1

    monitor-exit v0
    :try_end_15d
    .catchall {:try_start_3 .. :try_end_15d} :catchall_15b

    throw v1
.end method

.method private processSetColorBalance(I)V
    .registers 6
    .param p1, "setColorBalance"    # I

    .line 3585
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    .line 3586
    const-string v0, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_SET_COLORBALANCE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mStartSetCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3587
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 3588
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eq v0, v1, :cond_4a

    .line 3589
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->shading(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 3592
    :cond_4a
    return-void
.end method

.method private readingModeSwitch(ZII)V
    .registers 21
    .param p1, "isActivite"    # Z
    .param p2, "generation"    # I
    .param p3, "arg2"    # I

    move-object/from16 v1, p0

    move/from16 v2, p2

    .line 2703
    move/from16 v3, p3

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2704
    :try_start_9
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const v5, 0x9c40

    const/4 v6, 0x3

    const/16 v7, 0x8

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x6

    const/16 v10, 0x4e20

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v0, :cond_8f

    .line 2705
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_643

    .line 2706
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v0, v11

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 2707
    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2708
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 2709
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2710
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2711
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_71

    .line 2712
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2713
    invoke-direct {v1, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2714
    const/16 v0, 0x1a90

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 2715
    const/16 v0, -0x14

    invoke-direct {v1, v0, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2716
    const-string v0, "ColorBalanceService"

    const-string v6, "Screen off,readingModeSwitch ON done!"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2718
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 2719
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2720
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 2722
    :cond_6d
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    goto/16 :goto_643

    .line 2725
    :cond_71
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 2726
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2727
    :cond_7f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 2728
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2729
    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2730
    const-string v0, "ColorBalanceService"

    const-string v5, "Screen off,readingModeSwitch OFF done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_643

    .line 2734
    :cond_8f
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_643

    .line 2735
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v7, 0x5

    const/4 v13, -0x2

    const/16 v15, 0xb

    if-eqz v0, :cond_376

    .line 2736
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v14, 0x1f4

    if-ne v0, v14, :cond_ba

    .line 2737
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2738
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2739
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2740
    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2741
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2742
    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "readingModeSwitch ON, mReadingModeClosingStage 500,to be on done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    monitor-exit v4

    return-void

    .line 2745
    :cond_ba
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eq v0, v9, :cond_643

    .line 2746
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_347

    .line 2747
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    if-nez v0, :cond_127

    .line 2748
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2749
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "screen_color_mode_settings_value"

    invoke-static {v0, v5, v11, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2751
    .local v0, "status":I
    if-ne v0, v7, :cond_eb

    .line 2752
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2753
    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 2754
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 2756
    :cond_eb
    if-eq v0, v6, :cond_fe

    .line 2757
    const/16 v5, 0x3a98

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2758
    invoke-virtual {v1, v15, v2, v12, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2759
    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch ON:stage 0 --> 15000,colorBalance default"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_643

    .line 2761
    :cond_fe
    iget-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "oem_screen_better_value"

    const/16 v8, 0x39

    invoke-static {v5, v6, v8, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x64

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2764
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v5, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2765
    const/16 v5, 0x2710

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2766
    invoke-virtual {v1, v15, v2, v12, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2767
    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch ON:stage 0 --> 10000,status 3,to be default"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_643

    .line 2769
    .end local v0    # "status":I
    :cond_127
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v13, 0x2710

    if-ne v0, v13, :cond_15c

    .line 2770
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_144

    .line 2771
    const/16 v0, 0x3a98

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2772
    invoke-virtual {v1, v15, v2, v12, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2773
    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "readingModeSwitch ON:,10000 --> 15000, default now"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_643

    .line 2775
    :cond_144
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/16 v6, 0x2b

    if-le v5, v6, :cond_14e

    const/4 v11, -0x1

    nop

    :cond_14e
    add-int/2addr v0, v11

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2776
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v0, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2777
    const/4 v0, 0x7

    invoke-virtual {v1, v15, v2, v12, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_643

    .line 2780
    :cond_15c
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v13, 0x3a98

    if-ne v0, v13, :cond_2ba

    .line 2781
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_1d5

    .line 2782
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2783
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2784
    invoke-direct {v1, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2785
    const/16 v0, 0x2b

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2787
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    const/16 v5, 0x7d0

    if-le v0, v5, :cond_18e

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    const/16 v5, 0x1f40

    if-ge v0, v5, :cond_18e

    .line 2788
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v0

    .line 2788
    .local v0, "target":I
    :goto_18d
    goto :goto_1a3

    .line 2789
    .end local v0    # "target":I
    :cond_18e
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    const/16 v5, 0x7d0

    if-le v0, v5, :cond_1a1

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    const/16 v5, 0x1f40

    if-ge v0, v5, :cond_1a1

    .line 2790
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v0

    goto :goto_18d

    .line 2792
    :cond_1a1
    const/16 v0, -0x14

    .line 2793
    .restart local v0    # "target":I
    :goto_1a3
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mStableColor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mCurrentSrgbSensorAverageColor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    const/16 v5, 0x96

    invoke-virtual {v1, v15, v2, v0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2795
    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch ON:,15000 --> 20000, B & W now!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    .end local v0    # "target":I
    goto/16 :goto_643

    .line 2797
    :cond_1d5
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v5, v0

    const-wide v10, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v0, v5, v10

    if-lez v0, :cond_200

    .line 2798
    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch ON:mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2800
    const/4 v0, 0x4

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto/16 :goto_297

    .line 2802
    :cond_200
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3f39930c    # 0.7249f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_232

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3f39a027    # 0.7251f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_232

    .line 2803
    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch ON:mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    invoke-direct {v1, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2805
    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_297

    .line 2807
    :cond_232
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3efae148    # 0.49f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_262

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3f028f5c    # 0.51f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_262

    .line 2808
    const/4 v0, 0x7

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2809
    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch ON:mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_297

    .line 2810
    :cond_262
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3e7ef9db    # 0.249f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_297

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3e808312    # 0.251f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_297

    .line 2811
    const/16 v0, 0x8

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2812
    const/16 v0, 0x9

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2814
    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch ON:mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    :cond_297
    :goto_297
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3c4ccccd    # 0.0125f

    sub-float/2addr v0, v5

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2817
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3cf5c28f    # 0.03f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_2ab

    .line 2818
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2820
    :cond_2ab
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 2821
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 2822
    const/16 v0, 0x10

    invoke-virtual {v1, v15, v2, v12, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_643

    .line 2824
    :cond_2ba
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    if-ne v0, v10, :cond_2ff

    .line 2825
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-ne v0, v3, :cond_2e9

    .line 2827
    const/16 v0, 0x7530

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2828
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2829
    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2831
    invoke-virtual {v1, v15, v2, v3, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2832
    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch ON:,2000 --> 30000  reading colorBalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_643

    .line 2834
    :cond_2e9
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v5, v3, :cond_2f1

    const/4 v11, -0x1

    nop

    :cond_2f1
    add-int/2addr v0, v11

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2835
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v0, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2836
    const/4 v0, 0x7

    invoke-virtual {v1, v15, v2, v3, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_643

    .line 2838
    :cond_2ff
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v6, 0x7530

    if-ne v0, v6, :cond_643

    .line 2839
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v6, v0

    const-wide v10, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v0, v6, v10

    if-lez v0, :cond_321

    .line 2840
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2842
    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2843
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2846
    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "readingModeSwitch ON Done(30000 -> 40000)"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_643

    .line 2848
    :cond_321
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3ccccccd    # 0.025f

    add-float/2addr v0, v5

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2849
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 2850
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 2851
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v5, v0

    const-wide v7, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v0, v5, v7

    if-lez v0, :cond_340

    .line 2852
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2853
    :cond_340
    const/16 v0, 0x10

    invoke-virtual {v1, v15, v2, v12, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_643

    .line 2857
    :cond_347
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2858
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2859
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setProp(Ljava/lang/Boolean;)I

    .line 2860
    invoke-direct {v1, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2861
    const/16 v0, 0x1a90

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 2862
    const/16 v0, -0x14

    invoke-direct {v1, v0, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2863
    const-string v0, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch ON done!"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2864
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 2865
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2866
    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 2867
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    goto/16 :goto_643

    .line 2871
    :cond_376
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const/16 v14, 0x8

    if-eq v0, v14, :cond_643

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eqz v0, :cond_643

    .line 2872
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    if-eqz v0, :cond_5d8

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v14, 0x1f4

    if-ne v0, v14, :cond_38c

    goto/16 :goto_5d8

    .line 2893
    :cond_38c
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v14, 0x3e8

    if-ne v0, v14, :cond_3e8

    .line 2894
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-ne v0, v3, :cond_3bf

    .line 2895
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 2896
    const/16 v0, 0x9c4

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2897
    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF:stage 1000 --> 2500,colorBalance default:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    invoke-virtual {v1, v15, v2, v12, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_643

    .line 2900
    :cond_3bf
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v6, v3, :cond_3c7

    const/4 v6, -0x1

    goto :goto_3c8

    :cond_3c7
    move v6, v11

    :goto_3c8
    add-int/2addr v0, v6

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2901
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-eq v0, v3, :cond_3da

    .line 2902
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v6, v3, :cond_3d7

    const/4 v11, -0x1

    nop

    :cond_3d7
    add-int/2addr v0, v11

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2903
    :cond_3da
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    if-ne v0, v5, :cond_3e3

    .line 2904
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v0, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2907
    :cond_3e3
    invoke-virtual {v1, v15, v2, v3, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_643

    .line 2909
    :cond_3e8
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v5, 0x9c4

    if-ne v0, v5, :cond_4f0

    .line 2910
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v5, v0

    const-wide v10, 0x3feff7ced916872bL    # 0.999

    cmpl-double v0, v5, v10

    if-lez v0, :cond_40d

    .line 2911
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2912
    const/16 v0, 0x1388

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2913
    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "readingModeSwitch OFF:stage 2500 --> 5000,be Colors"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    invoke-virtual {v1, v15, v2, v12, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_643

    .line 2916
    :cond_40d
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3d48b439    # 0.049f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_43f

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3d50e560    # 0.051f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_43f

    .line 2917
    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF:stage 2500,mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    const/16 v0, 0x9

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto/16 :goto_4d9

    .line 2919
    :cond_43f
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3e7ef9db    # 0.249f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_474

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3e808312    # 0.251f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_474

    .line 2920
    const/16 v0, 0x8

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2921
    const/4 v0, 0x7

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2922
    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF:stage 2500,mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d9

    .line 2923
    :cond_474
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3efae148    # 0.49f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4a6

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3f028f5c    # 0.51f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_4a6

    .line 2924
    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2925
    invoke-direct {v1, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2926
    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF:stage 2500,mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d9

    .line 2927
    :cond_4a6
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3f3fbe77    # 0.749f

    cmpl-float v0, v0, v5

    if-lez v0, :cond_4d9

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3f404189    # 0.751f

    cmpg-float v0, v0, v5

    if-gez v0, :cond_4d9

    .line 2928
    const/4 v0, 0x4

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2929
    const/4 v0, 0x2

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2930
    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF:stage 2500,mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    :cond_4d9
    :goto_4d9
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3c4ccccd    # 0.0125f

    add-float/2addr v0, v5

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2933
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 2934
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 2935
    const/16 v0, 0xf

    invoke-virtual {v1, v15, v2, v12, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_643

    .line 2937
    :cond_4f0
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v5, 0x1388

    if-ne v0, v5, :cond_557

    .line 2938
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "screen_color_mode_settings_value"

    invoke-static {v0, v5, v11, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2940
    .local v0, "status":I
    if-ne v0, v11, :cond_516

    .line 2941
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 2942
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2943
    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 2944
    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch OFF:stage:5000 --> 20000,reverstatus"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_552

    .line 2945
    :cond_516
    const/4 v5, 0x2

    if-eq v0, v5, :cond_536

    const/4 v5, 0x4

    if-ne v0, v5, :cond_51d

    goto :goto_536

    .line 2951
    :cond_51d
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2952
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 2953
    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2954
    const/16 v5, 0x2b

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2955
    const/16 v5, 0x2710

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2956
    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch OFF:stage:5000 --> 10000,status 3"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_552

    .line 2946
    :cond_536
    :goto_536
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 2947
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2949
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readingModeSwitch OFF: srgb stage:5000 --> 20000,status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    :goto_552
    invoke-virtual {v1, v15, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_643

    .line 2959
    .end local v0    # "status":I
    :cond_557
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v5, 0x2710

    if-ne v0, v5, :cond_5a5

    .line 2960
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "screen_color_mode_settings_value"

    invoke-static {v0, v5, v11, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2962
    .restart local v0    # "status":I
    const/16 v5, 0x2b

    .line 2963
    .local v5, "value":I
    if-ne v0, v6, :cond_57f

    .line 2964
    iget-object v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "oem_screen_better_value"

    const/16 v8, 0x2b

    invoke-static {v6, v7, v8, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    rsub-int/lit8 v5, v6, 0x64

    .line 2967
    :cond_57f
    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-ne v6, v5, :cond_58e

    .line 2968
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2969
    const-string v6, "ColorBalanceService"

    const-string/jumbo v7, "readingModeSwitch OFF:stage:10000 -> 20000,status 3,be customer colorbalance"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59e

    .line 2971
    :cond_58e
    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v7, v5, :cond_596

    const/4 v11, -0x1

    nop

    :cond_596
    add-int/2addr v6, v11

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 2972
    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v6, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2974
    :goto_59e
    const/16 v6, 0xa

    invoke-virtual {v1, v15, v2, v12, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2975
    .end local v5    # "value":I
    goto/16 :goto_643

    .line 2975
    .end local v0    # "status":I
    :cond_5a5
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    if-ne v0, v10, :cond_643

    .line 2976
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "screen_color_mode_settings_value"

    invoke-static {v0, v5, v11, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2979
    .restart local v0    # "status":I
    if-eq v0, v7, :cond_5bc

    .line 2980
    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    goto :goto_5cb

    .line 2982
    :cond_5bc
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 2983
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 2984
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 2986
    :goto_5cb
    const/16 v5, 0x8

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 2988
    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch OFF done(-->2000)!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2988
    .end local v0    # "status":I
    goto :goto_643

    .line 2873
    :cond_5d8
    :goto_5d8
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v5, v0

    const-wide v7, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, v5, v7

    if-gez v0, :cond_611

    .line 2874
    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 2875
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2876
    const/16 v0, 0x3e8

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2877
    const/16 v0, 0x2b

    .line 2878
    .local v0, "target":I
    iget-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_color_mode_settings_value"

    invoke-static {v5, v6, v11, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 2880
    .local v5, "status":I
    const/4 v6, 0x2

    if-eq v5, v6, :cond_603

    const/4 v6, 0x4

    if-ne v5, v6, :cond_605

    .line 2881
    :cond_603
    const/16 v0, 0x2d

    .line 2883
    :cond_605
    invoke-virtual {v1, v15, v2, v0, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2884
    const-string v6, "ColorBalanceService"

    const-string/jumbo v7, "readingModeSwitch OFF:stage 0 --> 1000,Matrix be B & W"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    .end local v0    # "target":I
    goto :goto_643

    .line 2886
    .end local v5    # "status":I
    :cond_611
    const/16 v0, 0x1f4

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 2887
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3ccccccd    # 0.025f

    sub-float/2addr v0, v5

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 2888
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 2889
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    .line 2890
    const/16 v0, 0x8

    invoke-virtual {v1, v15, v2, v12, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    .line 2891
    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readingModeSwitch OFF: mReadingModeClosingStage:-->500,mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    :cond_643
    :goto_643
    monitor-exit v4

    .line 2995
    return-void

    .line 2994
    :catchall_645
    move-exception v0

    monitor-exit v4
    :try_end_647
    .catchall {:try_start_9 .. :try_end_647} :catchall_645

    throw v0
.end method

.method private revertStatus()V
    .registers 7

    .line 726
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 727
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 732
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_color_mode_settings_value"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 734
    .local v0, "status":I
    const-string v1, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "revertStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/16 v1, 0x2b

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_11a

    goto/16 :goto_117

    .line 796
    :pswitch_35
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 797
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 798
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 799
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 800
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 801
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 802
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 803
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetDefaultModesId(I)V

    goto/16 :goto_117

    .line 783
    :pswitch_52
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 784
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 785
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 786
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 787
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 788
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    .line 789
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 790
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 791
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 792
    :cond_71
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 793
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    .line 794
    goto/16 :goto_117

    .line 775
    :pswitch_7f
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 776
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 777
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 778
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 779
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 780
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 781
    goto/16 :goto_117

    .line 759
    :pswitch_95
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 760
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 761
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 762
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 763
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 764
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 765
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 766
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "oem_screen_better_value"

    const/16 v5, 0x39

    invoke-static {v1, v3, v5, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    .line 769
    .local v1, "value":I
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 770
    invoke-direct {p0, v1, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 771
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 772
    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "customer value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    goto :goto_117

    .line 750
    .end local v1    # "value":I
    :pswitch_dd
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 751
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 752
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 754
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 755
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 756
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 757
    goto :goto_117

    .line 738
    :pswitch_f2
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->removeMessages(I)V

    .line 739
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    .line 740
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 741
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 742
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 743
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 744
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 745
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 746
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 747
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 748
    nop

    .line 807
    :goto_117
    return-void

    nop

    nop

    :pswitch_data_11a
    .packed-switch 0x0
        :pswitch_f2
        :pswitch_f2
        :pswitch_dd
        :pswitch_95
        :pswitch_7f
        :pswitch_52
        :pswitch_35
    .end packed-switch
.end method

.method private sendMsgInternal(I)V
    .registers 2
    .param p1, "v"    # I

    .line 3725
    invoke-virtual {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsg(I)V

    .line 3726
    return-void
.end method

.method private setAdaptitionColorMode(Z)V
    .registers 5
    .param p1, "b"    # Z

    .line 601
    const/4 v0, 0x4

    if-eqz p1, :cond_15

    .line 602
    const-string v1, "ColorBalanceService"

    const-string v2, "AdaptitionColorMode,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_26

    .line 605
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_26

    .line 607
    :cond_15
    const-string v1, "ColorBalanceService"

    const-string v2, "AdaptitionColorMode,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_26

    .line 610
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    .line 612
    :cond_26
    :goto_26
    return-void
.end method

.method private setColorMartix(F)V
    .registers 8
    .param p1, "factor"    # F

    .line 3903
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p1

    const v3, 0x3e9e00d2    # 0.3086f

    mul-float/2addr v2, v3

    add-float/2addr v2, p1

    const/4 v4, 0x0

    aput v2, v0, v4

    .line 3904
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v2, v1, p1

    mul-float/2addr v2, v3

    const/4 v4, 0x1

    aput v2, v0, v4

    .line 3905
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v2, v1, p1

    mul-float/2addr v3, v2

    const/4 v2, 0x2

    aput v3, v0, v2

    .line 3906
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x3

    aput v2, v0, v3

    .line 3907
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    const v4, 0x3f1c01a3    # 0.6094f

    mul-float/2addr v3, v4

    const/4 v5, 0x4

    aput v3, v0, v5

    .line 3908
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    mul-float/2addr v3, v4

    add-float/2addr v3, p1

    const/4 v5, 0x5

    aput v3, v0, v5

    .line 3909
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    mul-float/2addr v4, v3

    const/4 v3, 0x6

    aput v4, v0, v3

    .line 3910
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v3, 0x7

    aput v2, v0, v3

    .line 3911
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    const v4, 0x3da7ef9e    # 0.082f

    mul-float/2addr v3, v4

    const/16 v5, 0x8

    aput v3, v0, v5

    .line 3912
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    mul-float/2addr v3, v4

    const/16 v5, 0x9

    aput v3, v0, v5

    .line 3913
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    mul-float/2addr v4, v3

    add-float/2addr v4, p1

    const/16 v3, 0xa

    aput v4, v0, v3

    .line 3914
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v3, 0xb

    aput v2, v0, v3

    .line 3915
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v3, 0xc

    aput v2, v0, v3

    .line 3916
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v3, 0xd

    aput v2, v0, v3

    .line 3917
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v3, 0xe

    aput v2, v0, v3

    .line 3918
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 3919
    return-void
.end method

.method private setColorMartixNight2ReadingBW(FFFFF)V
    .registers 13
    .param p1, "RED"    # F
    .param p2, "Green"    # F
    .param p3, "Blue"    # F
    .param p4, "factor"    # F
    .param p5, "factor2"    # F

    .line 3921
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v2, p1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, p4

    mul-float/2addr v2, v4

    add-float/2addr v2, p4

    const v4, 0x3e9e00d2    # 0.3086f

    mul-float/2addr v2, v4

    sub-float v5, v3, p5

    mul-float/2addr v2, v5

    add-float/2addr v2, p5

    const/4 v5, 0x0

    aput v2, v0, v5

    .line 3922
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v2, p1, v1

    sub-float v5, v3, p4

    mul-float/2addr v2, v5

    add-float/2addr v2, p4

    mul-float/2addr v2, v4

    sub-float v5, v3, p5

    mul-float/2addr v2, v5

    const/4 v5, 0x1

    aput v2, v0, v5

    .line 3923
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v2, p1, v1

    sub-float v5, v3, p4

    mul-float/2addr v2, v5

    add-float/2addr v2, p4

    mul-float/2addr v4, v2

    sub-float v2, v3, p5

    mul-float/2addr v4, v2

    const/4 v2, 0x2

    aput v4, v0, v2

    .line 3924
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v2, 0x0

    const/4 v4, 0x3

    aput v2, v0, v4

    .line 3925
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v4, p2, v1

    sub-float v5, v3, p4

    mul-float/2addr v4, v5

    add-float/2addr v4, p4

    const v5, 0x3f1c01a3    # 0.6094f

    mul-float/2addr v4, v5

    sub-float v6, v3, p5

    mul-float/2addr v4, v6

    const/4 v6, 0x4

    aput v4, v0, v6

    .line 3926
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v4, p2, v1

    sub-float v6, v3, p4

    mul-float/2addr v4, v6

    add-float/2addr v4, p4

    mul-float/2addr v4, v5

    sub-float v6, v3, p5

    mul-float/2addr v4, v6

    add-float/2addr v4, p5

    const/4 v6, 0x5

    aput v4, v0, v6

    .line 3927
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v4, p2, v1

    sub-float v6, v3, p4

    mul-float/2addr v4, v6

    add-float/2addr v4, p4

    mul-float/2addr v5, v4

    sub-float v4, v3, p5

    mul-float/2addr v5, v4

    const/4 v4, 0x6

    aput v5, v0, v4

    .line 3928
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v4, 0x7

    aput v2, v0, v4

    .line 3929
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v4, p3, v1

    sub-float v5, v3, p4

    mul-float/2addr v4, v5

    add-float/2addr v4, p4

    const v5, 0x3da7ef9e    # 0.082f

    mul-float/2addr v4, v5

    sub-float v6, v3, p5

    mul-float/2addr v4, v6

    const/16 v6, 0x8

    aput v4, v0, v6

    .line 3930
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v4, p3, v1

    sub-float v6, v3, p4

    mul-float/2addr v4, v6

    add-float/2addr v4, p4

    mul-float/2addr v4, v5

    sub-float v6, v3, p5

    mul-float/2addr v4, v6

    const/16 v6, 0x9

    aput v4, v0, v6

    .line 3931
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v1, p3, v1

    sub-float v4, v3, p4

    mul-float/2addr v1, v4

    add-float/2addr v1, p4

    mul-float/2addr v5, v1

    sub-float v1, v3, p5

    mul-float/2addr v5, v1

    add-float/2addr v5, p5

    const/16 v1, 0xa

    aput v5, v0, v1

    .line 3932
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    .line 3933
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    .line 3934
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xd

    aput v2, v0, v1

    .line 3935
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    .line 3936
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 3937
    return-void
.end method

.method private setColorMatrixNight2Reading(F)V
    .registers 7
    .param p1, "factor"    # F

    .line 3939
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer_enabled"

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3941
    .local v0, "dal":I
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_inversion_enabled"

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 3943
    .local v1, "rev":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_32

    if-ne v1, v2, :cond_23

    goto :goto_32

    .line 3946
    :cond_23
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    .line 3947
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-eqz v2, :cond_31

    .line 3948
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 3949
    :cond_31
    return-void

    .line 3944
    :cond_32
    :goto_32
    return-void
.end method

.method private setDTMColorMatrix()V
    .registers 6

    .line 657
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer_enabled"

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 659
    .local v0, "dal":I
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_inversion_enabled"

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 662
    .local v1, "rev":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2f

    if-ne v1, v2, :cond_23

    goto :goto_2f

    .line 664
    :cond_23
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-eqz v2, :cond_2e

    .line 665
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 666
    :cond_2e
    return-void

    .line 663
    :cond_2f
    :goto_2f
    return-void
.end method

.method private setDciP3(Z)V
    .registers 5
    .param p1, "b"    # Z

    .line 588
    const/4 v0, 0x2

    if-eqz p1, :cond_15

    .line 589
    const-string v1, "ColorBalanceService"

    const-string v2, "DCIP3,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_26

    .line 592
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_26

    .line 594
    :cond_15
    const-string v1, "ColorBalanceService"

    const-string v2, "DCIP3,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_26

    .line 597
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    .line 599
    :cond_26
    :goto_26
    return-void
.end method

.method private setDefaultMode(Z)V
    .registers 5
    .param p1, "b"    # Z

    .line 642
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 643
    const/4 v0, 0x5

    if-eqz p1, :cond_1d

    .line 644
    const-string v1, "ColorBalanceService"

    const-string v2, "default mode node,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_2e

    .line 647
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_2e

    .line 649
    :cond_1d
    const-string v1, "ColorBalanceService"

    const-string v2, "default mode node,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_2e

    .line 652
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    .line 655
    :cond_2e
    :goto_2e
    return-void
.end method

.method private setNightMode(Z)V
    .registers 5
    .param p1, "b"    # Z

    .line 628
    const/4 v0, 0x3

    if-eqz p1, :cond_16

    .line 629
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "night mode node,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_28

    .line 632
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_28

    .line 634
    :cond_16
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "night mode node,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_28

    .line 637
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    .line 640
    :cond_28
    :goto_28
    return-void
.end method

.method private setNightModeProp(Ljava/lang/Boolean;)I
    .registers 6
    .param p1, "b"    # Ljava/lang/Boolean;

    .line 485
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_color_mode_settings_value"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 488
    .local v0, "status":I
    if-eqz v0, :cond_1c

    if-eq v0, v2, :cond_1c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x6

    if-ne v0, v1, :cond_23

    .line 489
    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 491
    :cond_23
    return v0
.end method

.method private setProp(Ljava/lang/Boolean;)I
    .registers 6
    .param p1, "b"    # Ljava/lang/Boolean;

    .line 473
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_color_mode_settings_value"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 475
    .local v0, "status":I
    if-eqz v0, :cond_30

    if-eq v0, v2, :cond_30

    const/4 v1, 0x3

    if-eq v0, v1, :cond_30

    const/4 v1, 0x5

    if-eq v0, v1, :cond_30

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1d

    goto :goto_30

    .line 477
    :cond_1d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_28

    .line 478
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    goto :goto_37

    .line 480
    :cond_28
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    goto :goto_37

    .line 476
    :cond_30
    :goto_30
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 482
    :goto_37
    return v0
.end method

.method private setSRGB(Z)V
    .registers 5
    .param p1, "b"    # Z

    .line 615
    const/4 v0, 0x1

    if-eqz p1, :cond_14

    .line 616
    const-string v1, "ColorBalanceService"

    const-string v2, "SRGB,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_25

    .line 619
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual {v1, v0, v0}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_25

    .line 621
    :cond_14
    const-string v1, "ColorBalanceService"

    const-string v2, "SRGB,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_25

    .line 624
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    .line 626
    :cond_25
    :goto_25
    return-void
.end method

.method private setSRGBSensorEnabled(Z)Z
    .registers 8
    .param p1, "enable"    # Z

    .line 2059
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSRGBSensorEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_60

    .line 2061
    iget-boolean v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    if-nez v2, :cond_80

    .line 2062
    iput-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    .line 2064
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v2, :cond_32

    .line 2065
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 2067
    :cond_32
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_80

    .line 2068
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x3

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2069
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 2070
    const-string v0, "ColorBalanceService"

    const-string v2, "SRGB & LIGHT SENSOR ENABLE!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    return v1

    .line 2075
    :cond_60
    iget-boolean v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    if-eqz v2, :cond_80

    .line 2076
    iput-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    .line 2077
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_80

    .line 2078
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2079
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2080
    const-string v0, "ColorBalanceService"

    const-string v2, "SRGB & LIGHT SENSOR DISABLE!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    return v1

    .line 2085
    :cond_80
    return v0
.end method

.method private setUp()V
    .registers 12

    .line 495
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 497
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "colorbalanceservice-night-reading-mode"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 499
    .local v0, "mode":I
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    if-nez v1, :cond_2a

    .line 500
    new-instance v1, Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-direct {v1, v4, v5}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 501
    const-string v1, "ColorBalanceService"

    const-string v4, "ColorDisplayController is NULL"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_2a
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1, p0}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 506
    const-string v1, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUp: currentUser="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "accessibility_display_inversion_enabled"

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 514
    .local v1, "I_Status":I
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_display_daltonizer_enabled"

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    .line 516
    .local v4, "D_Status":I
    const/4 v5, 0x1

    if-eq v1, v5, :cond_71

    if-ne v4, v5, :cond_6a

    goto :goto_71

    .line 518
    :cond_6a
    if-nez v1, :cond_73

    if-nez v4, :cond_73

    .line 519
    iput-boolean v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    goto :goto_73

    .line 517
    :cond_71
    :goto_71
    iput-boolean v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    .line 523
    :cond_73
    :goto_73
    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v6}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 524
    .local v6, "isNightOn":Ljava/lang/Boolean;
    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v7}, Lcom/android/internal/app/ColorDisplayController;->isReadingModeActivated()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 525
    .local v7, "isReadon":Ljava/lang/Boolean;
    const-string v8, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#0 reading mode isReadingModeActivated isReadon = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " colorbalance_stop = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v8}, Lcom/android/internal/app/ColorDisplayController;->isReadingModeActivated()Z

    move-result v8

    if-eqz v8, :cond_fd

    .line 527
    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    if-nez v8, :cond_c1

    .line 528
    const-string v8, "ColorBalanceService"

    const-string v9, "#1 reading mode had been opened!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    goto :goto_ce

    .line 531
    :cond_c1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 532
    const-string v8, "ColorBalanceService"

    const-string v9, "#1 reading mode had been close!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :goto_ce
    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootStatus:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_e2

    .line 535
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    .line 536
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootStatus:Ljava/lang/Boolean;

    .line 538
    :cond_e2
    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "screen_color_mode_settings_value"

    invoke-static {v8, v9, v5, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    .line 540
    .local v8, "status":I
    const/4 v9, 0x2

    if-ne v8, v9, :cond_f6

    .line 541
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    goto :goto_fc

    .line 542
    :cond_f6
    const/4 v9, 0x4

    if-ne v8, v9, :cond_fc

    .line 543
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 545
    .end local v8    # "status":I
    :cond_fc
    :goto_fc
    goto :goto_109

    .line 546
    :cond_fd
    sget-object v8, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_GrayColor:Lcom/oneplus/oimc/OIMCRule;

    invoke-static {v8}, Lcom/oneplus/oimc/OIMCManager;->removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 547
    const-string v8, "ColorBalanceService"

    const-string v9, "#2 reading mode had been close!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :goto_109
    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v8}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v8

    if-eqz v8, :cond_133

    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-nez v8, :cond_133

    .line 550
    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    if-nez v8, :cond_127

    .line 551
    const-string v8, "ColorBalanceService"

    const-string v9, "#1 night mode had been opened!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    goto :goto_12d

    .line 554
    :cond_127
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 557
    :goto_12d
    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v8, v5}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    goto :goto_164

    .line 559
    :cond_133
    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v8}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v8

    if-nez v8, :cond_164

    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-nez v8, :cond_164

    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v8}, Lcom/android/internal/app/ColorDisplayController;->isReadingModeActivated()Z

    move-result v8

    if-nez v8, :cond_164

    .line 560
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    .line 561
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 562
    const/16 v8, 0xc

    invoke-virtual {p0, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsg(I)V

    .line 563
    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v8, v3}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 564
    const-string v8, "ColorBalanceService"

    const-string v9, "#3 night mode have to  closed!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_164
    :goto_164
    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v8}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->onAutoModeChanged(I)V

    .line 567
    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "oneplus_dc_dimming_value"

    invoke-static {v8, v9, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v5, :cond_17f

    .line 569
    invoke-virtual {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->onDCEnable(Z)V

    .line 571
    :cond_17f
    return-void
.end method

.method private shading(II)I
    .registers 11
    .param p1, "base"    # I
    .param p2, "obj"    # I

    .line 2446
    move v0, p1

    .line 2447
    .local v0, "i":I
    const/4 v1, 0x1

    .line 2448
    .local v1, "delta":I
    const-wide/16 v2, 0x8

    const/4 v4, 0x0

    if-le p2, p1, :cond_31

    .line 2449
    :goto_7
    if-ge v0, p2, :cond_5b

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v5, :cond_5b

    .line 2450
    add-int/2addr v0, v1

    .line 2451
    invoke-direct {p0, v0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2452
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setColorBalance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    :try_start_28
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 2457
    :goto_2b
    goto :goto_7

    .line 2455
    :catch_2c
    move-exception v5

    .line 2456
    .local v5, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2456
    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_2b

    .line 2461
    :cond_31
    :goto_31
    if-le v0, p2, :cond_5b

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v5, :cond_5b

    .line 2462
    sub-int/2addr v0, v1

    .line 2463
    invoke-direct {p0, v0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2464
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setColorBalance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    :try_start_52
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_52 .. :try_end_55} :catch_56

    .line 2469
    :goto_55
    goto :goto_31

    .line 2467
    :catch_56
    move-exception v5

    .line 2468
    .restart local v5    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2468
    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_55

    .line 2472
    :cond_5b
    return v0
.end method

.method private shadingSeekBar(II)I
    .registers 14
    .param p1, "base"    # I
    .param p2, "obj"    # I

    .line 2393
    move v0, p1

    .line 2394
    .local v0, "i":I
    const/4 v1, 0x1

    .line 2395
    .local v1, "delta":I
    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le p2, p1, :cond_66

    .line 2398
    :goto_a
    if-gt v0, p2, :cond_37

    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v8, :cond_37

    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-nez v8, :cond_37

    .line 2399
    invoke-direct {p0, v0, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2400
    const-string v8, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SeekBar setColorBalance:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    :try_start_2d
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_30} :catch_31

    .line 2405
    goto :goto_35

    .line 2403
    :catch_31
    move-exception v8

    .line 2404
    .local v8, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2398
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :goto_35
    add-int/2addr v0, v1

    goto :goto_a

    .line 2407
    :cond_37
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-ne v4, v7, :cond_c1

    .line 2408
    :goto_3b
    if-gt v0, p2, :cond_5d

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-ne v4, v7, :cond_5d

    .line 2409
    invoke-direct {p0, v0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2410
    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SeekBar next,setColorBalance:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    add-int/lit8 v0, v0, 0x3

    goto :goto_3b

    .line 2413
    :cond_5d
    :try_start_5d
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_60
    .catch Ljava/lang/InterruptedException; {:try_start_5d .. :try_end_60} :catch_61

    .line 2416
    :goto_60
    goto :goto_c1

    .line 2414
    :catch_61
    move-exception v2

    .line 2415
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2415
    .end local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_60

    .line 2421
    :cond_66
    :goto_66
    if-lt v0, p2, :cond_93

    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v8, :cond_93

    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-nez v8, :cond_93

    .line 2422
    invoke-direct {p0, v0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2423
    const-string v8, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SeekBar setColorBalance:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    :try_start_89
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8c
    .catch Ljava/lang/InterruptedException; {:try_start_89 .. :try_end_8c} :catch_8d

    .line 2428
    goto :goto_91

    .line 2426
    :catch_8d
    move-exception v8

    .line 2427
    .restart local v8    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2421
    .end local v8    # "e":Ljava/lang/InterruptedException;
    :goto_91
    sub-int/2addr v0, v1

    goto :goto_66

    .line 2430
    :cond_93
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-ne v4, v7, :cond_c1

    .line 2431
    :goto_97
    if-lt v0, p2, :cond_b9

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-ne v4, v7, :cond_b9

    .line 2432
    invoke-direct {p0, v0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 2433
    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SeekBar next,setColorBalance:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    add-int/lit8 v0, v0, -0x3

    goto :goto_97

    .line 2436
    :cond_b9
    :try_start_b9
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_bc
    .catch Ljava/lang/InterruptedException; {:try_start_b9 .. :try_end_bc} :catch_bd

    .line 2439
    goto :goto_c1

    .line 2437
    :catch_bd
    move-exception v2

    .line 2438
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2442
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_c1
    :goto_c1
    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mStartSetCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mStopSetCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    return v0
.end method

.method private tearDown()V
    .registers 5

    .line 574
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 575
    :try_start_3
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tearDown: currentUser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 578
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v1}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onStop()V

    .line 579
    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    .line 581
    :cond_28
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    if-eqz v1, :cond_33

    .line 582
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 583
    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 585
    :cond_33
    monitor-exit v0

    .line 586
    return-void

    .line 585
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method private triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "on"    # Ljava/lang/Boolean;
    .param p2, "isIgnore"    # Ljava/lang/Boolean;

    .line 1088
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    if-eqz v0, :cond_5d

    .line 1089
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1090
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    if-nez v0, :cond_5d

    .line 1091
    iput-object p2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    .line 1092
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 1093
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "night mdoe trigger button is on,Is from user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 1096
    :cond_34
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1097
    iput-object p2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    .line 1098
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 1099
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "night mdoe trigger button is off,Is from user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_5d
    :goto_5d
    return-void
.end method

.method private triggerReadingButton(Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "on"    # Ljava/lang/Boolean;

    .line 843
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "reading_mode_status_manual"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 846
    .local v0, "status":I
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2c

    if-nez v0, :cond_2c

    .line 847
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    .line 848
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "reading_mode_status_manual"

    const-string v4, "force-on"

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_49

    .line 851
    :cond_2c
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_49

    const/4 v1, 0x1

    if-ne v0, v1, :cond_49

    .line 852
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    .line 853
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "reading_mode_status_manual"

    const-string v4, "force-off"

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 857
    :cond_49
    :goto_49
    return-void
.end method


# virtual methods
.method public Night2ReadMode()V
    .registers 5

    .line 1351
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Night2ReadMode changing night to reading mode mScreenOn_Quick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    .line 1353
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    .line 1354
    invoke-virtual {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->onResetStatus(I)V

    goto :goto_5c

    .line 1356
    :cond_2c
    const-string/jumbo v0, "persist.vendor.color.matrix"

    const-string v3, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    .line 1358
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1359
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1360
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 1361
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1362
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 1363
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1364
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1365
    const/16 v0, 0xd

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1367
    :goto_5c
    return-void
.end method

.method public NightModeActivated(Z)V
    .registers 10
    .param p1, "activated"    # Z

    .line 1400
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 1401
    const-string v0, "ColorBalanceService"

    const-string v2, "Gray color is on..."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    .line 1403
    return-void

    .line 1406
    :cond_17
    const/16 v0, 0xa

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_87

    .line 1407
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_color_mode_settings_value"

    invoke-static {v4, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 1409
    .local v2, "status":I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_31

    .line 1410
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    goto :goto_37

    .line 1411
    :cond_31
    const/4 v5, 0x4

    if-ne v2, v5, :cond_37

    .line 1412
    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 1414
    :cond_37
    :goto_37
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    .line 1415
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NightModeActivated: turn on night mode! mScreenOn_Quick = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_67

    .line 1417
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    .line 1418
    invoke-virtual {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->onResetStatus(I)V

    goto :goto_86

    .line 1420
    :cond_67
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1421
    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1422
    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v5, v3

    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1423
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1424
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 1425
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1426
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1427
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    .line 1428
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1430
    .end local v2    # "status":I
    :goto_86
    goto :goto_b4

    .line 1431
    :cond_87
    const-string v4, "ColorBalanceService"

    const-string v5, "NightModeActivated: turn off night mode!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1433
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1434
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1435
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    .line 1436
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    .line 1437
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1438
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 1439
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1440
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1442
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1444
    :goto_b4
    return-void
.end method

.method public Read2NightMode()V
    .registers 7

    .line 1370
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read2NightMode changing read to nighting mode mScreenOn_Quick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 1372
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    .line 1374
    :cond_27
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3a

    .line 1375
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    .line 1376
    invoke-virtual {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->onResetStatus(I)V

    goto :goto_97

    .line 1377
    :cond_3a
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOff_Quick:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1378
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOff_Quick:Ljava/lang/Boolean;

    .line 1379
    invoke-virtual {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->onResetStatus(I)V

    goto :goto_97

    .line 1381
    :cond_4c
    const-string/jumbo v0, "persist.vendor.color.matrix"

    const-string v3, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    .line 1383
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1384
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1385
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1386
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1387
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 1388
    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 1389
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "oem_nightmode_progress_status"

    const/16 v4, 0x67

    const/4 v5, -0x2

    invoke-static {v1, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 1392
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1393
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1394
    const/16 v0, 0xe

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1397
    :goto_97
    return-void
.end method

.method public ReadModeActivated(Z)V
    .registers 8
    .param p1, "activated"    # Z

    .line 1311
    const-string/jumbo v0, "persist.vendor.color.matrix"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    const/16 v0, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_6f

    .line 1313
    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReadingModeActivated Turning on reading mode mScreenOn_Quick = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_3a

    .line 1315
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    .line 1316
    invoke-virtual {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->onResetStatus(I)V

    goto :goto_a5

    .line 1318
    :cond_3a
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    .line 1319
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 1320
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 1321
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    .line 1322
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1323
    const/16 v3, -0x14

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 1324
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1325
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1326
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 1327
    const/16 v3, 0x4e20

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 1328
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1329
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1330
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1331
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    .line 1332
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_a5

    .line 1335
    :cond_6f
    const-string v3, "ColorBalanceService"

    const-string/jumbo v4, "onReadingModeActivated Turning off reading mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 1337
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    .line 1339
    :cond_85
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1340
    const/4 v3, 0x7

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1341
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1342
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1343
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1344
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 1345
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1346
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1348
    :goto_a5
    return-void
.end method

.method public getAutoTime()Z
    .registers 2

    .line 2004
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onActivated(Z)V
    .registers 2
    .param p1, "activated"    # Z

    .line 954
    return-void
.end method

.method public onAutoModeChanged(I)V
    .registers 4
    .param p1, "autoMode"    # I

    .line 1535
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightDisplayMoede:I

    .line 1536
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_e

    .line 1537
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onStop()V

    .line 1538
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    .line 1541
    :cond_e
    const/4 v0, 0x1

    if-ne p1, v0, :cond_19

    .line 1542
    new-instance v0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    goto :goto_2d

    .line 1543
    :cond_19
    const/4 v0, 0x2

    if-ne p1, v0, :cond_24

    .line 1544
    new-instance v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    goto :goto_2d

    .line 1546
    :cond_24
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    .line 1547
    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    .line 1552
    :goto_2d
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_36

    .line 1553
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onStart()V

    .line 1555
    :cond_36
    return-void
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 388
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootPhase:I

    .line 389
    const/16 v0, 0x258

    if-ne p1, v0, :cond_52

    .line 393
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    .line 394
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    .line 395
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_23

    .line 396
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    .line 397
    :cond_23
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-nez v0, :cond_31

    .line 398
    const-class v0, Lcom/android/server/display/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayTransformManager;

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    .line 399
    :cond_31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootCompleted:Z

    .line 401
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_49

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_49

    .line 402
    const-string v0, "ColorBalanceService"

    const-string/jumbo v1, "onBootPhase Call the function setUp "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setUp()V

    .line 406
    :cond_49
    new-instance v0, Lcom/oneplus/display/SDManager;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/display/SDManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    .line 408
    :cond_52
    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .registers 5
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .line 1568
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomEndTimeChanged: endTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_20

    .line 1571
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    .line 1573
    :cond_20
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .registers 5
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .line 1559
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomStartTimeChanged: startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_20

    .line 1562
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    .line 1564
    :cond_20
    return-void
.end method

.method public onDCEnable(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 860
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DC brightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const/16 v0, 0x16

    if-eqz p1, :cond_2d

    .line 862
    const-string/jumbo v1, "persist.vendor.dc.enable"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_3f

    .line 864
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_3f

    .line 867
    :cond_2d
    const-string/jumbo v1, "persist.vendor.dc.enable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_3f

    .line 869
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    .line 872
    :cond_3f
    :goto_3f
    return-void
.end method

.method public onDisplayInversionChange(Z)V
    .registers 9
    .param p1, "activated"    # Z

    .line 1491
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDisplayInversionChange activated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsReadingModeActivated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mIsReadingModeActivated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    iput-boolean p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    .line 1493
    if-nez p1, :cond_8d

    .line 1495
    const-wide/16 v0, 0x20

    :try_start_31
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_31 .. :try_end_34} :catch_35

    .line 1498
    goto :goto_39

    .line 1496
    :catch_35
    move-exception v0

    .line 1497
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1499
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_39
    const-string/jumbo v0, "persist.vendor.color.matrix"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1500
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_54

    .line 1501
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {p0, v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 1502
    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_95

    .line 1503
    :cond_54
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1505
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {p0, v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    goto :goto_95

    .line 1507
    :cond_66
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "screen_color_mode_settings_value"

    const/4 v4, 0x1

    const/4 v5, -0x2

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1509
    .local v0, "status":I
    const/4 v3, 0x0

    .line 1510
    .local v3, "value":I
    if-ne v0, v1, :cond_8c

    .line 1511
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "oem_screen_better_value"

    const/16 v6, 0x39

    invoke-static {v1, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    .line 1514
    .end local v3    # "value":I
    .local v1, "value":I
    invoke-direct {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 1517
    .end local v0    # "status":I
    .end local v1    # "value":I
    :cond_8c
    goto :goto_95

    .line 1520
    :cond_8d
    const-string/jumbo v0, "persist.vendor.color.matrix"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    :goto_95
    return-void
.end method

.method public onModeSettingChange()V
    .registers 2

    .line 1528
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 1529
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 1530
    return-void
.end method

.method public onNightModeActivated(Z)V
    .registers 12
    .param p1, "activated"    # Z

    .line 957
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNightModeActivated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 959
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_33

    .line 960
    const-string v1, "ColorBalanceService"

    const-string/jumbo v3, "onNightModeActivated ignore being invoked "

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    .line 962
    monitor-exit v0

    return-void

    .line 971
    :cond_33
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    .line 972
    const/4 v1, -0x2

    if-eqz p1, :cond_42

    .line 973
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    goto :goto_47

    .line 976
    :cond_42
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 979
    :goto_47
    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNightModeActivated,save mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "colorbalanceservice-night-reading-mode"

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    invoke-static {v3, v4, v5, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 982
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 983
    const-string v3, "ColorBalanceService"

    const-string/jumbo v4, "onNightModeActivated: reading mode disable App!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :cond_7d
    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNightModeActivated:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " current-status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v3, :cond_aa

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, p1, :cond_1d1

    .line 992
    :cond_aa
    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNightModeActivated:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightDisplayMoede:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 993
    if-eqz p1, :cond_c1

    const-string v5, " Turning on night display"

    goto :goto_c3

    :cond_c1
    const-string v5, " Turning off night display"

    :goto_c3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 992
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 996
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    .line 997
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v4, :cond_de

    .line 998
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v4, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onActivated(Z)V

    .line 1000
    :cond_de
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1002
    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/16 v5, 0xa

    if-eqz v4, :cond_161

    .line 1003
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 1004
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 1005
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    .line 1007
    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 1008
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "oem_nightmode_progress_status"

    const/16 v8, 0x67

    invoke-static {v6, v7, v8, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    sub-int/2addr v4, v1

    sget v1, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 1011
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_132

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_11e

    goto :goto_132

    .line 1027
    :cond_11e
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1028
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1029
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    .line 1030
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1031
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1032
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v5, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_1d1

    .line 1012
    :cond_132
    :goto_132
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_142

    .line 1013
    const-string v1, "ColorBalanceService"

    const-string/jumbo v4, "turn off reading mode button!"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_142
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1019
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    .line 1021
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1022
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1023
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 1024
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1025
    const/16 v1, 0xe

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_1d1

    .line 1036
    :cond_161
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1037
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    .line 1038
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    .line 1039
    const-string v1, "ColorBalanceService"

    const-string/jumbo v4, "onNightModeActivated:Night mode is off,set mIsTimeActivated false!"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1041
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    const/16 v6, 0xd

    const/4 v7, 0x5

    const/4 v8, 0x2

    if-eqz v4, :cond_1a3

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1a3

    .line 1042
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1043
    iput v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1044
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "onNightModeActivated:Night mode is off, revert to reading mode!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 1046
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1047
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v6, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_1d1

    .line 1050
    :cond_1a3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1067
    .local v4, "isAutoReadingModeOn":Ljava/lang/Boolean;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1c6

    .line 1068
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1070
    iput v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1071
    const-string v1, "ColorBalanceService"

    const-string v2, "Auto Reading mode is on,turn on Reading mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 1073
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1074
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v6, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_1d1

    .line 1076
    :cond_1c6
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 1077
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1078
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1080
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v5, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1085
    .end local v4    # "isAutoReadingModeOn":Ljava/lang/Boolean;
    :cond_1d1
    :goto_1d1
    monitor-exit v0

    .line 1086
    return-void

    .line 1085
    :catchall_1d3
    move-exception v1

    monitor-exit v0
    :try_end_1d5
    .catchall {:try_start_1a .. :try_end_1d5} :catchall_1d3

    throw v1
.end method

.method public onNightOrReadingModeDisableByApp(Z)V
    .registers 8
    .param p1, "on"    # Z

    .line 1448
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1449
    :try_start_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    .line 1450
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    .line 1451
    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNightOrReadingModeChangeByApp,on:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mModeEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mReadingModeStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x5

    if-eq v2, v4, :cond_50

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    if-ne v2, v5, :cond_44

    if-eqz p1, :cond_50

    :cond_44
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b5

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    if-eq v2, v3, :cond_b5

    .line 1470
    :cond_50
    if-eqz p1, :cond_54

    move v2, v1

    goto :goto_5a

    :cond_54
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_5a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1471
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 1472
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 1473
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1474
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    goto :goto_71

    .line 1476
    :cond_6f
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1478
    :goto_71
    const/16 v1, -0x14

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 1479
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNightOrReadingModeChangeByApp,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8e

    const-string/jumbo v4, "turn on reading mode!"

    goto :goto_91

    :cond_8e
    const-string/jumbo v4, "turn off reading mode!"

    :goto_91
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 1481
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    goto :goto_a9

    .line 1483
    :cond_a6
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1484
    :goto_a9
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1485
    const/16 v1, 0xb

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1487
    :cond_b5
    monitor-exit v0

    .line 1488
    return-void

    .line 1487
    :catchall_b7
    move-exception v1

    monitor-exit v0
    :try_end_b9
    .catchall {:try_start_3 .. :try_end_b9} :catchall_b7

    throw v1
.end method

.method public onReadingModeActivatedAuto(Z)V
    .registers 9
    .param p1, "activated"    # Z

    .line 1106
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReadingModeActivatedAuto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " bootPhase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootPhase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1108
    :try_start_24
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootPhase:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_2c

    .line 1109
    monitor-exit v0

    return-void

    .line 1111
    :cond_2c
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReadingModeActivatedAuto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, p1, :cond_57

    .line 1113
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedAuto ignore same status!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    monitor-exit v0

    return-void

    .line 1116
    :cond_57
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    .line 1117
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    .line 1118
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/16 v3, 0xb

    const/4 v4, 0x1

    if-eqz v2, :cond_e4

    .line 1120
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 1121
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 1122
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    .line 1123
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 1125
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    const/4 v5, 0x5

    const/4 v6, 0x2

    if-eqz v2, :cond_b8

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b8

    .line 1126
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1127
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1128
    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1129
    const-string v2, "ColorBalanceService"

    const-string/jumbo v3, "onReadingModeActivatedAuto:switch night into reading mode!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 1132
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1133
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1134
    const/16 v2, 0xd

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1135
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_188

    .line 1137
    :cond_b8
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1138
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1139
    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1140
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 1141
    const/16 v2, -0x14

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 1142
    const-string v2, "ColorBalanceService"

    const-string/jumbo v6, "onReadingModeActivatedAuto:turning reading mode!"

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1144
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1145
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1146
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v3, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_188

    .line 1150
    :cond_e4
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v5, -0x2

    if-nez v2, :cond_146

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    if-ne v2, v4, :cond_f2

    goto :goto_146

    .line 1165
    :cond_f2
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_11a

    .line 1166
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1167
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1168
    const-string v2, "ColorBalanceService"

    const-string/jumbo v6, "onReadingModeActivatedAuto Turning off reading mode"

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 1170
    const/4 v2, 0x7

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1171
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1172
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v3, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1174
    :cond_11a
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_188

    .line 1175
    const-string v2, "ColorBalanceService"

    const-string/jumbo v3, "onReadingModeActivatedAuto: night mode should be off status!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    .line 1177
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/2addr v2, v5

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1179
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1180
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    .line 1181
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_188

    .line 1151
    :cond_146
    :goto_146
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1152
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1153
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1154
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 1156
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1157
    sget v1, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 1158
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_nightmode_progress_status"

    const/16 v6, 0x67

    invoke-static {v2, v3, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 1161
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1162
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1163
    const/16 v1, 0xe

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1185
    :cond_188
    :goto_188
    monitor-exit v0

    .line 1186
    return-void

    .line 1185
    :catchall_18a
    move-exception v1

    monitor-exit v0
    :try_end_18c
    .catchall {:try_start_24 .. :try_end_18c} :catchall_18a

    throw v1
.end method

.method public onReadingModeActivatedManual(Z)V
    .registers 12
    .param p1, "activated"    # Z

    .line 1189
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1190
    :try_start_3
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1c

    .line 1191
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    .line 1192
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedManual ignore being invoked!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    monitor-exit v0

    return-void

    .line 1196
    :cond_1c
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    .line 1197
    const/4 v1, 0x2

    if-eqz p1, :cond_2b

    .line 1198
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    goto :goto_31

    .line 1201
    :cond_2b
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1204
    :goto_31
    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReadingModeActivatedManual,save mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "colorbalanceservice-night-reading-mode"

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1207
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v7, 0x0

    if-eqz v3, :cond_b1

    .line 1208
    const-string v1, "ColorBalanceService"

    const-string/jumbo v3, "reaing disable app,ignore!"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    if-eqz p1, :cond_93

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 1210
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1211
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 1212
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1213
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1215
    const/16 v1, 0xa

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_a8

    .line 1216
    :cond_93
    if-nez p1, :cond_a8

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 1217
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1219
    :cond_a8
    :goto_a8
    if-eqz p1, :cond_ad

    .line 1220
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    goto :goto_af

    .line 1222
    :cond_ad
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1224
    :goto_af
    monitor-exit v0

    return-void

    .line 1226
    :cond_b1
    const-string v3, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReadingModeActivatedManual:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " current-status:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, p1, :cond_1ce

    .line 1249
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1250
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/16 v8, 0xb

    if-eqz v3, :cond_154

    .line 1251
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    .line 1252
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    .line 1253
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    .line 1255
    const/16 v3, -0x14

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    .line 1256
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1257
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v3, :cond_134

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_134

    .line 1258
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1259
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1260
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    .line 1261
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1262
    const-string v1, "ColorBalanceService"

    const-string/jumbo v3, "onReadingModeActivatedManual changing night to reading mode"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    .line 1264
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1265
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1266
    const/16 v1, 0xd

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_1ce

    .line 1268
    :cond_134
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1269
    const-string v1, "ColorBalanceService"

    const-string/jumbo v3, "onReadingModeActivatedManual Turning on reading mode"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    .line 1271
    const/16 v1, 0x4e20

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 1272
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1273
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1274
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1275
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v8, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_1ce

    .line 1279
    :cond_154
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1280
    const-string v1, "ColorBalanceService"

    const-string/jumbo v3, "onReadingModeActivatedManual Turning off reading mode"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    if-eq v1, v2, :cond_17f

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    if-eqz v1, :cond_16b

    goto :goto_17f

    .line 1298
    :cond_16b
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1299
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    .line 1300
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1301
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1302
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 1303
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v8, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_1ce

    .line 1283
    :cond_17f
    :goto_17f
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    .line 1284
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 1285
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 1286
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    .line 1287
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    .line 1288
    sget v1, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 1289
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "oem_nightmode_progress_status"

    const/16 v5, 0x67

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    sub-int/2addr v1, v3

    sget v3, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    .line 1292
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 1293
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    .line 1294
    const/16 v1, 0xe

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 1295
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 1296
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedManual Revert to night mode!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_1ce
    :goto_1ce
    monitor-exit v0

    .line 1308
    return-void

    .line 1307
    :catchall_1d0
    move-exception v1

    monitor-exit v0
    :try_end_1d2
    .catchall {:try_start_3 .. :try_end_1d2} :catchall_1d0

    throw v1
.end method

.method public onResetStatus(I)V
    .registers 11
    .param p1, "enable"    # I

    .line 874
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mDisableStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    if-ne v0, p1, :cond_26

    .line 876
    return-void

    .line 877
    :cond_26
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    .line 878
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 879
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_color_mode_settings_value"

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 881
    .local v1, "status":I
    const/4 v2, 0x4

    const/4 v5, 0x0

    if-nez p1, :cond_81

    .line 882
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    .line 883
    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 884
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 885
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 886
    const/16 v2, 0x4e20

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    .line 887
    const/16 v2, 0x8

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    .line 888
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    .line 889
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 890
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 891
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 892
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 893
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 894
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 895
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 896
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 897
    const-string v2, "ColorBalanceService"

    const-string v3, "close all color"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_155

    .line 898
    :cond_81
    if-ne p1, v4, :cond_db

    .line 899
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v2, :cond_155

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_155

    .line 901
    if-eq v1, v4, :cond_94

    .line 902
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 903
    :cond_94
    sget v2, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    .line 904
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "oem_nightmode_progress_status"

    const/16 v8, 0x67

    invoke-static {v6, v7, v8, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v2, v3

    .line 907
    .local v2, "progress":I
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    .line 910
    invoke-direct {p0, v2, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 912
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 913
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 914
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 916
    :cond_c4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 917
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    .line 918
    const-string v3, "ColorBalanceService"

    const-string/jumbo v4, "resume colorbalance"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    .end local v2    # "progress":I
    goto/16 :goto_155

    .line 920
    :cond_db
    const/4 v3, 0x2

    const/4 v6, 0x3

    if-ne p1, v3, :cond_124

    .line 921
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_155

    .line 922
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    .line 923
    if-eq v1, v4, :cond_f2

    .line 924
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 925
    :cond_f2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    .line 926
    invoke-direct {p0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    .line 927
    const/16 v2, -0x14

    invoke-direct {p0, v2, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    .line 928
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    .line 929
    const-string v2, "ColorBalanceService"

    const-string/jumbo v3, "resume gary color!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_155

    .line 931
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    .line 932
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    goto :goto_155

    .line 935
    :cond_124
    if-ne p1, v6, :cond_148

    .line 936
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    .line 937
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    .line 938
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    .line 939
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    .line 940
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    .line 941
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    .line 942
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    .line 943
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    .line 944
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_155

    .line 945
    :cond_148
    if-ne p1, v2, :cond_155

    .line 946
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    .line 947
    if-eq v1, v4, :cond_155

    .line 948
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    .line 950
    .end local v1    # "status":I
    :cond_155
    :goto_155
    monitor-exit v0

    .line 951
    return-void

    .line 950
    :catchall_157
    move-exception v1

    monitor-exit v0
    :try_end_159
    .catchall {:try_start_2b .. :try_end_159} :catchall_157

    throw v1
.end method

.method public onStart()V
    .registers 4

    .line 375
    const-string/jumbo v0, "nightdisplay"

    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/android/server/oneplus/display/ColorBalanceService$1;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 377
    return-void
.end method

.method public onStartUser(I)V
    .registers 4
    .param p1, "userHandle"    # I

    .line 411
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStartUser(I)V

    .line 412
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_c

    .line 413
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->onUserChanged(I)V

    .line 415
    :cond_c
    return-void
.end method

.method public onStopUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 426
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStopUser(I)V

    .line 427
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    if-ne v0, p1, :cond_c

    .line 428
    const/16 v0, -0x2710

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->onUserChanged(I)V

    .line 430
    :cond_c
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3
    .param p1, "userHandle"    # I

    .line 419
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSwitchUser:Ljava/lang/Boolean;

    .line 420
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    .line 421
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->onUserChanged(I)V

    .line 422
    return-void
.end method

.method public sendMsg(I)V
    .registers 6
    .param p1, "v"    # I

    .line 2008
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2009
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2010
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v1, :cond_22

    .line 2011
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->removeMessages(I)V

    .line 2012
    const/16 v1, 0x11

    if-ne p1, v1, :cond_1d

    .line 2013
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_22

    .line 2015
    :cond_1d
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessage(Landroid/os/Message;)Z

    .line 2017
    :cond_22
    :goto_22
    return-void
.end method

.method public sendMsgWithValue(II)V
    .registers 6
    .param p1, "Msg"    # I
    .param p2, "value"    # I

    .line 2019
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2020
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2024
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2025
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v1, :cond_1d

    .line 2026
    iget v1, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_18

    .line 2027
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->removeMessages(I)V

    .line 2029
    :cond_18
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessage(Landroid/os/Message;)Z

    .line 2031
    :cond_1d
    return-void
.end method

.method public sendMsgWithValueDelayed(IIII)V
    .registers 9
    .param p1, "Msg"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "delay"    # I

    .line 2033
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2034
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2035
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2036
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 2037
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v1, :cond_14

    .line 2041
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    int-to-long v2, p4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2043
    :cond_14
    return-void
.end method
