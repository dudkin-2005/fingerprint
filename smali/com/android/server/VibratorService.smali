.class public Lcom/android/server/VibratorService;
.super Landroid/os/IVibratorService$Stub;
.source "VibratorService.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$VibratorShellCommand;,
        Lcom/android/server/VibratorService$VibrateThread;,
        Lcom/android/server/VibratorService$SettingsObserver;,
        Lcom/android/server/VibratorService$ScaleLevel;,
        Lcom/android/server/VibratorService$VibrationInfo;,
        Lcom/android/server/VibratorService$Vibration;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

.field private static final MAX_HAPTIC_FEEDBACK_DURATION:J = 0x1388L

.field private static final SCALE_HIGH:I = 0x1

.field private static final SCALE_HIGH_GAMMA:F = 0.5f

.field private static final SCALE_LOW:I = -0x1

.field private static final SCALE_LOW_GAMMA:F = 1.5f

.field private static final SCALE_LOW_MAX_AMPLITUDE:I = 0xc0

.field private static final SCALE_NONE:I = 0x0

.field private static final SCALE_NONE_GAMMA:F = 1.0f

.field private static final SCALE_VERY_HIGH:I = 0x2

.field private static final SCALE_VERY_HIGH_GAMMA:F = 0.25f

.field private static final SCALE_VERY_LOW:I = -0x2

.field private static final SCALE_VERY_LOW_GAMMA:F = 2.0f

.field private static final SCALE_VERY_LOW_MAX_AMPLITUDE:I = 0xa8

.field private static final SYSTEM_UI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "VibratorService"


# instance fields
.field private final INTENSITY_MIDDLE:I

.field private final INTENSITY_STRONG:I

.field private final INTENSITY_WEAK:I

.field private VIBRATOR_INTENSITY_PATH:Ljava/lang/String;

.field private final intensityMiddle:I

.field private intensityStrong:I

.field private intensityWeak:I

.field private final mAllowPriorityVibrationsInLowPowerMode:Z

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field private final mContext:Landroid/content/Context;

.field private mCurVibUid:I

.field private mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mDefaultVibrationAmplitude:I

.field private final mFallbackEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final mH:Landroid/os/Handler;

.field private mHapticFeedbackIntensity:I

.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceListenerRegistered:Z

.field private final mInputDeviceVibrators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLidState:I

.field private final mLock:Ljava/lang/Object;

.field private mLowPowerMode:Z

.field private mNotificationIntensity:I

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPreviousVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousVibrationsLimit:I

.field private final mScaleLevels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/VibratorService$ScaleLevel;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private final mSupportsAmplitudeControl:Z

.field private volatile mThread:Lcom/android/server/VibratorService$VibrateThread;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mVibrateInputDevicesSetting:Z

.field private final mVibrationEndRunnable:Ljava/lang/Runnable;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 96
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/VibratorService;->DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

    return-void

    nop

    :array_a
    .array-data 8
        0x0
        0x1e
        0x64
        0x1e
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v0, p0

    .line 315
    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    .line 133
    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    iput-object v2, v0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 134
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, v0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    .line 135
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    .line 150
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    .line 156
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 516
    iput v2, v0, Lcom/android/server/VibratorService;->INTENSITY_WEAK:I

    .line 517
    const/4 v3, -0x2

    iput v3, v0, Lcom/android/server/VibratorService;->INTENSITY_MIDDLE:I

    .line 518
    const/4 v4, -0x3

    iput v4, v0, Lcom/android/server/VibratorService;->INTENSITY_STRONG:I

    .line 519
    const/16 v4, 0x244

    iput v4, v0, Lcom/android/server/VibratorService;->intensityWeak:I

    .line 520
    const/16 v4, 0x5e4

    iput v4, v0, Lcom/android/server/VibratorService;->intensityMiddle:I

    .line 521
    const/16 v4, 0x776

    iput v4, v0, Lcom/android/server/VibratorService;->intensityStrong:I

    .line 522
    const-string v4, "/sys/class/leds/vibrator/vmax_mv"

    iput-object v4, v0, Lcom/android/server/VibratorService;->VIBRATOR_INTENSITY_PATH:Ljava/lang/String;

    .line 686
    new-instance v4, Lcom/android/server/VibratorService$3;

    invoke-direct {v4, v0}, Lcom/android/server/VibratorService$3;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v4, v0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    .line 1319
    const/4 v4, 0x1

    iput v4, v0, Lcom/android/server/VibratorService;->mLidState:I

    .line 1321
    new-instance v5, Lcom/android/server/VibratorService$4;

    invoke-direct {v5, v0}, Lcom/android/server/VibratorService$4;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v5, v0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 316
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorInit()V

    .line 319
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 321
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsAmplitudeControl()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    .line 323
    iput-object v1, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 324
    const-string/jumbo v5, "power"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 325
    .local v5, "pm":Landroid/os/PowerManager;
    const-string v6, "*vibrator*"

    invoke-virtual {v5, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 326
    iget-object v6, v0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 328
    iget-object v6, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/app/AppOpsManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager;

    iput-object v6, v0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    .line 329
    const-string v6, "batterystats"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    .line 332
    iget-object v6, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0088

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, v0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    .line 335
    iget-object v6, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0037

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, v0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    .line 338
    iget-object v6, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x112000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/VibratorService;->mAllowPriorityVibrationsInLowPowerMode:Z

    .line 341
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, v0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    .line 343
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 344
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    const-string v7, "android.intent.action.LID_SWITCH"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    iget-object v7, v0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 351
    const v7, 0x1070054

    invoke-direct {v0, v7}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v7

    .line 353
    .local v7, "clickEffect":Landroid/os/VibrationEffect;
    sget-object v8, Lcom/android/server/VibratorService;->DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

    invoke-static {v8, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v8

    .line 355
    .local v8, "doubleClickEffect":Landroid/os/VibrationEffect;
    const v9, 0x107002f

    invoke-direct {v0, v9}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v9

    .line 357
    .local v9, "heavyClickEffect":Landroid/os/VibrationEffect;
    const v10, 0x107001c

    invoke-direct {v0, v10}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v10

    .line 360
    .local v10, "tickEffect":Landroid/os/VibrationEffect;
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    iput-object v11, v0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    .line 361
    iget-object v11, v0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 362
    iget-object v11, v0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v11, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 363
    iget-object v11, v0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v13, 0x2

    invoke-virtual {v11, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 364
    iget-object v11, v0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v14, 0x5

    invoke-virtual {v11, v14, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 366
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    iput-object v11, v0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    .line 367
    iget-object v11, v0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v14, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v15, 0x40000000    # 2.0f

    const/16 v13, 0xa8

    invoke-direct {v14, v15, v13}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(FI)V

    invoke-virtual {v11, v3, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    iget-object v3, v0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v11, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v13, 0x3fc00000    # 1.5f

    const/16 v14, 0xc0

    invoke-direct {v11, v13, v14}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(FI)V

    invoke-virtual {v3, v2, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 370
    iget-object v2, v0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v3, v11}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {v2, v12, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 371
    iget-object v2, v0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v11, 0x3f000000    # 0.5f

    invoke-direct {v3, v11}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 372
    iget-object v2, v0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v3, v4}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 376
    const-string v2, "dumpling"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16c

    const-string v2, "cheeseburger"

    .line 377
    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_170

    .line 378
    :cond_16c
    const-string v2, "/sys/class/timed_output/vibrator/vmax_mv"

    iput-object v2, v0, Lcom/android/server/VibratorService;->VIBRATOR_INTENSITY_PATH:Ljava/lang/String;

    .line 381
    :cond_170
    return-void
.end method

.method private WriteNodeValue(I)V
    .registers 5
    .param p1, "value"    # I

    .line 526
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/VibratorService;->VIBRATOR_INTENSITY_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    .line 528
    return-void

    .line 530
    :cond_e
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 531
    .local v1, "writer":Ljava/io/FileWriter;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 535
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "writer":Ljava/io/FileWriter;
    goto :goto_22

    .line 533
    :catch_1e
    move-exception v0

    .line 534
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 536
    .end local v0    # "e":Ljava/io/IOException;
    :goto_22
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/VibratorService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 90
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 90
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/VibratorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 90
    iget v0, p0, Lcom/android/server/VibratorService;->mLidState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/VibratorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .line 90
    iput p1, p0, Lcom/android/server/VibratorService;->mLidState:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/VibratorService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 90
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/VibratorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 90
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/VibratorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 90
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 90
    iget-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 90
    iget-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/VibratorService;JIII)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I

    .line 90
    invoke-direct/range {p0 .. p5}, Lcom/android/server/VibratorService;->doVibratorOn(JIII)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/VibratorService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;
    .param p1, "x1"    # I

    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/VibratorService;

    .line 90
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    return-object v0
.end method

.method private addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    .registers 4
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 656
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    if-le v0, v1, :cond_f

    .line 657
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 659
    :cond_f
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 661
    const-string v0, "VibratorService"

    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    return-void
.end method

.method private applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V
    .registers 9
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;
    .param p2, "intensity"    # I

    .line 838
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v0, :cond_12

    .line 841
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    .line 842
    .local v0, "prebaked":Landroid/os/VibrationEffect$Prebaked;
    invoke-static {p2}, Lcom/android/server/VibratorService;->intensityToEffectStrength(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/VibrationEffect$Prebaked;->setEffectStrength(I)V

    .line 843
    return-void

    .line 847
    .end local v0    # "prebaked":Landroid/os/VibrationEffect$Prebaked;
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_2d

    .line 849
    :cond_1f
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isHapticFeedback()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 850
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v0

    goto :goto_33

    .line 854
    :cond_2c
    return-void

    .line 848
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v0

    .line 854
    .local v0, "defaultIntensity":I
    :goto_33
    nop

    .line 857
    iget-object v1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    sub-int v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$ScaleLevel;

    .line 858
    .local v1, "scale":Lcom/android/server/VibratorService$ScaleLevel;
    if-nez v1, :cond_64

    .line 861
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No configured scaling level! (current="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", default= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    return-void

    .line 866
    :cond_64
    const/4 v2, 0x0

    .line 867
    .local v2, "scaledEffect":Landroid/os/VibrationEffect;
    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v3, v3, Landroid/os/VibrationEffect$OneShot;

    if-eqz v3, :cond_7e

    .line 868
    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v3, Landroid/os/VibrationEffect$OneShot;

    .line 869
    .local v3, "oneShot":Landroid/os/VibrationEffect$OneShot;
    iget v4, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    invoke-virtual {v3, v4}, Landroid/os/VibrationEffect$OneShot;->resolve(I)Landroid/os/VibrationEffect$OneShot;

    move-result-object v3

    .line 870
    iget v4, v1, Lcom/android/server/VibratorService$ScaleLevel;->gamma:F

    iget v5, v1, Lcom/android/server/VibratorService$ScaleLevel;->maxAmplitude:I

    invoke-virtual {v3, v4, v5}, Landroid/os/VibrationEffect$OneShot;->scale(FI)Landroid/os/VibrationEffect;

    move-result-object v2

    .line 871
    .end local v3    # "oneShot":Landroid/os/VibrationEffect$OneShot;
    goto :goto_9e

    :cond_7e
    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v3, v3, Landroid/os/VibrationEffect$Waveform;

    if-eqz v3, :cond_97

    .line 872
    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v3, Landroid/os/VibrationEffect$Waveform;

    .line 873
    .local v3, "waveform":Landroid/os/VibrationEffect$Waveform;
    iget v4, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    invoke-virtual {v3, v4}, Landroid/os/VibrationEffect$Waveform;->resolve(I)Landroid/os/VibrationEffect$Waveform;

    move-result-object v3

    .line 874
    iget v4, v1, Lcom/android/server/VibratorService$ScaleLevel;->gamma:F

    iget v5, v1, Lcom/android/server/VibratorService$ScaleLevel;->maxAmplitude:I

    invoke-virtual {v3, v4, v5}, Landroid/os/VibrationEffect$Waveform;->scale(FI)Landroid/os/VibrationEffect;

    move-result-object v2

    .line 875
    .end local v3    # "waveform":Landroid/os/VibrationEffect$Waveform;
    goto :goto_9e

    .line 876
    :cond_97
    const-string v3, "VibratorService"

    const-string v4, "Unable to apply intensity scaling, unknown VibrationEffect type"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :goto_9e
    if-eqz v2, :cond_a6

    .line 880
    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    iput-object v3, p1, Lcom/android/server/VibratorService$Vibration;->originalEffect:Landroid/os/VibrationEffect;

    .line 881
    iput-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    .line 883
    :cond_a6
    return-void
.end method

.method private createEffectFromResource(I)Landroid/os/VibrationEffect;
    .registers 4
    .param p1, "resId"    # I

    .line 384
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    .line 385
    .local v0, "timings":[J
    invoke-static {v0}, Lcom/android/server/VibratorService;->createEffectFromTimings([J)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method private static createEffectFromTimings([J)Landroid/os/VibrationEffect;
    .registers 4
    .param p0, "timings"    # [J

    .line 389
    if-eqz p0, :cond_18

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_18

    .line 391
    :cond_6
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_13

    .line 392
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 394
    :cond_13
    invoke-static {p0, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    .line 390
    :cond_18
    :goto_18
    const/4 v0, 0x0

    return-object v0
.end method

.method private doCancelVibrateLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 695
    const-string/jumbo v0, "vibration"

    const-wide/32 v1, 0x800000

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 696
    const-string v0, "doCancelVibrateLocked"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 698
    :try_start_f
    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 699
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-eqz v0, :cond_22

    .line 700
    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->cancel()V

    .line 701
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 703
    :cond_22
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    .line 704
    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V
    :try_end_28
    .catchall {:try_start_f .. :try_end_28} :catchall_2d

    .line 706
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 707
    nop

    .line 708
    return-void

    .line 706
    :catchall_2d
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private doVibratorExists()Z
    .registers 2

    .line 1036
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorExists()Z

    move-result v0

    return v0
.end method

.method private doVibratorOff()V
    .registers 7

    .line 1078
    const-string v0, "doVibratorOff"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1080
    :try_start_8
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_33

    .line 1084
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/VibratorService;->noteVibratorOffLocked()V

    .line 1085
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1086
    .local v3, "vibratorCount":I
    if-eqz v3, :cond_27

    .line 1087
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_17
    if-ge v4, v3, :cond_2a

    .line 1088
    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->cancel()V

    .line 1087
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 1091
    .end local v4    # "i":I
    :cond_27
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    .line 1093
    .end local v3    # "vibratorCount":I
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_30

    .line 1095
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1096
    nop

    .line 1097
    return-void

    .line 1093
    :catchall_30
    move-exception v3

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    :try_start_32
    throw v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_33

    .line 1095
    :catchall_33
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private doVibratorOn(JIII)V
    .registers 13
    .param p1, "millis"    # J
    .param p3, "amplitude"    # I
    .param p4, "uid"    # I
    .param p5, "usageHint"    # I

    .line 1040
    const-string v0, "doVibratorOn"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1042
    :try_start_8
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_4c

    .line 1043
    const/4 v3, -0x1

    if-ne p3, v3, :cond_14

    .line 1044
    :try_start_e
    iget v3, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    move p3, v3

    goto :goto_14

    .line 1065
    :catchall_12
    move-exception v3

    goto :goto_4a

    .line 1050
    :cond_14
    :goto_14
    invoke-direct {p0, p4, p1, p2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    .line 1051
    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1052
    .local v3, "vibratorCount":I
    if-eqz v3, :cond_3e

    .line 1053
    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1054
    invoke-virtual {v4, p5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 1055
    .local v4, "attributes":Landroid/media/AudioAttributes;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2d
    if-ge v5, v3, :cond_3d

    .line 1056
    iget-object v6, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    invoke-virtual {v6, p1, p2, v4}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 1055
    add-int/lit8 v5, v5, 0x1

    goto :goto_2d

    .line 1058
    .end local v4    # "attributes":Landroid/media/AudioAttributes;
    .end local v5    # "i":I
    :cond_3d
    goto :goto_44

    .line 1062
    :cond_3e
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    .line 1063
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    .line 1065
    .end local v3    # "vibratorCount":I
    :goto_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_e .. :try_end_45} :catchall_12

    .line 1067
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1068
    nop

    .line 1069
    return-void

    .line 1065
    :goto_4a
    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_12

    :try_start_4b
    throw v3
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4c

    .line 1067
    :catchall_4c
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J
    .registers 20
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    move-object/from16 v9, p0

    .line 1101
    move-object/from16 v10, p1

    const-string v0, "doVibratorPrebakedEffectLocked"

    const-wide/32 v11, 0x800000

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1103
    :try_start_c
    iget-object v0, v10, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    move-object v13, v0

    .line 1105
    .local v13, "prebaked":Landroid/os/VibrationEffect$Prebaked;
    iget-object v1, v9, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_8a

    .line 1106
    :try_start_14
    iget-object v0, v9, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1107
    .local v0, "usingInputDeviceVibrators":Z
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_87

    .line 1109
    const-wide/16 v14, 0x0

    if-nez v0, :cond_3d

    .line 1110
    :try_start_21
    invoke-virtual {v13}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    int-to-long v1, v1

    .line 1111
    invoke-virtual {v13}, Landroid/os/VibrationEffect$Prebaked;->getEffectStrength()I

    move-result v3

    int-to-long v3, v3

    .line 1110
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/VibratorService;->vibratorPerformEffect(JJ)J

    move-result-wide v1

    .line 1112
    .local v1, "timeout":J
    cmp-long v3, v1, v14

    if-lez v3, :cond_3d

    .line 1113
    iget v3, v10, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-direct {v9, v3, v1, v2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V
    :try_end_38
    .catchall {:try_start_21 .. :try_end_38} :catchall_8a

    .line 1114
    nop

    .line 1133
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1114
    return-wide v1

    .line 1117
    .end local v1    # "timeout":J
    :cond_3d
    :try_start_3d
    invoke-virtual {v13}, Landroid/os/VibrationEffect$Prebaked;->shouldFallback()Z

    move-result v1
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_8a

    if-nez v1, :cond_48

    .line 1118
    nop

    .line 1133
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1118
    return-wide v14

    .line 1120
    :cond_48
    :try_start_48
    invoke-virtual {v13}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    invoke-direct {v9, v1}, Lcom/android/server/VibratorService;->getFallbackEffect(I)Landroid/os/VibrationEffect;

    move-result-object v1

    move-object/from16 v16, v1

    .line 1121
    .local v16, "effect":Landroid/os/VibrationEffect;
    if-nez v16, :cond_60

    .line 1122
    const-string v1, "VibratorService"

    const-string v2, "Failed to play prebaked effect, no fallback"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_48 .. :try_end_5b} :catchall_8a

    .line 1123
    nop

    .line 1133
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1123
    return-wide v14

    .line 1125
    :cond_60
    :try_start_60
    new-instance v17, Lcom/android/server/VibratorService$Vibration;

    iget-object v3, v10, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    iget v5, v10, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    iget v6, v10, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v7, v10, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v1, v17

    move-object v2, v9

    move-object/from16 v4, v16

    invoke-direct/range {v1 .. v8}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;Lcom/android/server/VibratorService$1;)V

    move-object/from16 v1, v17

    .line 1127
    .local v1, "fallbackVib":Lcom/android/server/VibratorService$Vibration;
    invoke-direct {v9, v1}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    .line 1128
    .local v2, "intensity":I
    invoke-direct {v9, v1}, Lcom/android/server/VibratorService;->linkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 1129
    invoke-direct {v9, v1, v2}, Lcom/android/server/VibratorService;->applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V

    .line 1130
    invoke-direct {v9, v1}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_82
    .catchall {:try_start_60 .. :try_end_82} :catchall_8a

    .line 1131
    nop

    .line 1133
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    .line 1131
    return-wide v14

    .line 1107
    .end local v0    # "usingInputDeviceVibrators":Z
    .end local v1    # "fallbackVib":Lcom/android/server/VibratorService$Vibration;
    .end local v2    # "intensity":I
    .end local v16    # "effect":Landroid/os/VibrationEffect;
    :catchall_87
    move-exception v0

    :try_start_88
    monitor-exit v1
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    :try_start_89
    throw v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_8a

    .line 1133
    .end local v13    # "prebaked":Landroid/os/VibrationEffect$Prebaked;
    :catchall_8a
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private doVibratorSetAmplitude(I)V
    .registers 3
    .param p1, "amplitude"    # I

    .line 1072
    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v0, :cond_7

    .line 1073
    invoke-static {p1}, Lcom/android/server/VibratorService;->vibratorSetAmplitude(I)V

    .line 1075
    :cond_7
    return-void
.end method

.method private getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I
    .registers 7
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 898
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    iget v1, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AppOpsManager;->checkAudioOpNoThrow(IIILjava/lang/String;)I

    move-result v0

    .line 900
    .local v0, "mode":I
    if-nez v0, :cond_19

    .line 901
    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    .line 903
    :cond_19
    return v0
.end method

.method private getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I
    .registers 3
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 825
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_18

    .line 827
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isHapticFeedback()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 828
    iget v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    return v0

    .line 830
    :cond_16
    const/4 v0, 0x2

    return v0

    .line 826
    :cond_18
    :goto_18
    iget v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    return v0
.end method

.method private getFallbackEffect(I)Landroid/os/VibrationEffect;
    .registers 3
    .param p1, "effectId"    # I

    .line 1138
    iget-object v0, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    return-object v0
.end method

.method private static getLongIntArray(Landroid/content/res/Resources;I)[J
    .registers 7
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .line 504
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 505
    .local v0, "ar":[I
    if-nez v0, :cond_8

    .line 506
    const/4 v1, 0x0

    return-object v1

    .line 508
    :cond_8
    array-length v1, v0

    new-array v1, v1, [J

    .line 509
    .local v1, "out":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    array-length v3, v0

    if-ge v2, v3, :cond_17

    .line 510
    aget v3, v0, v2

    int-to-long v3, v3

    aput-wide v3, v1, v2

    .line 509
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 512
    .end local v2    # "i":I
    :cond_17
    return-object v1
.end method

.method private static intensityToEffectStrength(I)I
    .registers 5
    .param p0, "intensity"    # I

    .line 1147
    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_20

    .line 1155
    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got unexpected vibration intensity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    return v0

    .line 1153
    :pswitch_1b
    return v0

    .line 1151
    :pswitch_1c
    const/4 v0, 0x1

    return v0

    .line 1149
    :pswitch_1e
    const/4 v0, 0x0

    return v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1c
        :pswitch_1b
    .end packed-switch
.end method

.method private isAllowedToVibrateLocked(Lcom/android/server/VibratorService$Vibration;)Z
    .registers 7
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 794
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    .line 795
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 794
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_e

    .line 800
    .local v1, "packageContext":Landroid/content/Context;
    goto :goto_2c

    .line 796
    .end local v1    # "packageContext":Landroid/content/Context;
    :catch_e
    move-exception v1

    .line 797
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 798
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create package context fail from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 802
    .local v1, "packageContext":Landroid/content/Context;
    :goto_2c
    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    invoke-static {v1, v2}, Lcom/oneplus/util/OemSceneCallBlocker;->isUsageMutedByCallBlocker(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 803
    const-string v2, "VibratorService"

    const-string v3, "Skip vibrating on gaming mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return v0

    .line 807
    :cond_3c
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    const/4 v3, 0x1

    if-nez v2, :cond_42

    .line 808
    return v3

    .line 811
    :cond_42
    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_48

    .line 812
    return v3

    .line 815
    :cond_48
    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_5a

    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/16 v4, 0xb

    if-eq v2, v4, :cond_5a

    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/4 v4, 0x7

    if-ne v2, v4, :cond_59

    goto :goto_5a

    .line 821
    :cond_59
    return v0

    .line 818
    :cond_5a
    :goto_5a
    return v3
.end method

.method private static isRepeatingVibration(Landroid/os/VibrationEffect;)Z
    .registers 5
    .param p0, "effect"    # Landroid/os/VibrationEffect;

    .line 652
    invoke-virtual {p0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private linkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .registers 4
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 924
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_f

    .line 926
    :try_start_6
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    .line 929
    goto :goto_f

    .line 927
    :catch_d
    move-exception v0

    .line 928
    .local v0, "e":Landroid/os/RemoteException;
    return-void

    .line 931
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_f
    :goto_f
    return-void
.end method

.method private noteVibratorOffLocked()V
    .registers 3

    .line 1169
    iget v0, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    if-ltz v0, :cond_10

    .line 1171
    :try_start_4
    iget-object v0, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    iget v1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 1172
    goto :goto_d

    :catch_c
    move-exception v0

    .line 1173
    :goto_d
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    .line 1175
    :cond_10
    return-void
.end method

.method private noteVibratorOnLocked(IJ)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "millis"    # J

    .line 1162
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    .line 1163
    iput p1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1165
    goto :goto_9

    .line 1164
    :catch_8
    move-exception v0

    .line 1166
    :goto_9
    return-void
.end method

.method private reportFinishVibrationLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 908
    const-string/jumbo v0, "reportFinishVibrationLocked"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 910
    :try_start_9
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_23

    .line 911
    iget-object v0, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget v4, v4, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v5, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v5, v5, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 913
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 914
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_28

    .line 917
    :cond_23
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 918
    nop

    .line 919
    return-void

    .line 917
    :catchall_28
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private shouldVibrateForRingtone()Z
    .registers 6

    .line 886
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 887
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    .line 889
    .local v1, "ringerMode":I
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 890
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vibrate_when_ringing"

    .line 889
    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_24

    .line 891
    if-eqz v1, :cond_22

    goto :goto_23

    :cond_22
    move v3, v4

    :goto_23
    return v3

    .line 893
    :cond_24
    if-ne v1, v3, :cond_27

    goto :goto_28

    :cond_27
    move v3, v4

    :goto_28
    return v3
.end method

.method private startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    .registers 11
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 760
    const-string/jumbo v0, "startVibrationInnerLocked"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 762
    :try_start_9
    iput-object p1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 763
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$OneShot;

    const/4 v3, 0x0

    if-eqz v0, :cond_38

    .line 764
    const-string/jumbo v0, "vibration"

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 765
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$OneShot;

    .line 766
    .local v0, "oneShot":Landroid/os/VibrationEffect$OneShot;
    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v6

    iget v7, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget v8, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/VibratorService;->doVibratorOn(JIII)V

    .line 767
    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 768
    .end local v0    # "oneShot":Landroid/os/VibrationEffect$OneShot;
    goto :goto_7e

    :cond_38
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_59

    .line 771
    const-string/jumbo v0, "vibration"

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 772
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$Waveform;

    .line 773
    .local v0, "waveform":Landroid/os/VibrationEffect$Waveform;
    new-instance v3, Lcom/android/server/VibratorService$VibrateThread;

    iget v4, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget v5, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    invoke-direct {v3, p0, v0, v4, v5}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Landroid/os/VibrationEffect$Waveform;II)V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 774
    iget-object v3, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v3}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    .line 775
    .end local v0    # "waveform":Landroid/os/VibrationEffect$Waveform;
    goto :goto_7e

    :cond_59
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v0, :cond_77

    .line 776
    const-string/jumbo v0, "vibration"

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 777
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v3

    .line 778
    .local v3, "timeout":J
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_76

    .line 779
    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 781
    .end local v3    # "timeout":J
    :cond_76
    goto :goto_7e

    .line 782
    :cond_77
    const-string v0, "VibratorService"

    const-string v3, "Unknown vibration type, ignoring"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_9 .. :try_end_7e} :catchall_83

    .line 785
    :goto_7e
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 786
    nop

    .line 787
    return-void

    .line 785
    :catchall_83
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .registers 9
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 724
    const-string/jumbo v0, "startVibrationLocked"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 726
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->isAllowedToVibrateLocked(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v0
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_5d

    if-nez v0, :cond_13

    .line 754
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 727
    return-void

    .line 730
    :cond_13
    :try_start_13
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_5d

    .line 731
    .local v0, "intensity":I
    if-nez v0, :cond_1d

    .line 754
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 732
    return-void

    .line 735
    :cond_1d
    :try_start_1d
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-direct {p0}, Lcom/android/server/VibratorService;->shouldVibrateForRingtone()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_5d

    if-nez v3, :cond_2d

    .line 754
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 739
    return-void

    .line 742
    :cond_2d
    :try_start_2d
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    .line 743
    .local v3, "mode":I
    if-eqz v3, :cond_52

    .line 744
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4e

    .line 747
    const-string v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Would be an error: vibrate from uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_2d .. :try_end_4e} :catchall_5d

    .line 754
    :cond_4e
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 749
    return-void

    .line 751
    :cond_52
    :try_start_52
    invoke-direct {p0, p1, v0}, Lcom/android/server/VibratorService;->applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V

    .line 752
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_5d

    .line 754
    .end local v0    # "intensity":I
    .end local v3    # "mode":I
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 755
    nop

    .line 756
    return-void

    .line 754
    :catchall_5d
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .registers 4
    .param p1, "vib"    # Lcom/android/server/VibratorService$Vibration;

    .line 934
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_c

    .line 935
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 937
    :cond_c
    return-void
.end method

.method private updateInputDeviceVibratorsLocked()Z
    .registers 9

    .line 953
    const/4 v0, 0x0

    .line 954
    .local v0, "changed":Z
    const/4 v1, 0x0

    move v2, v1

    .line 956
    .local v2, "vibrateInputDevices":Z
    const/4 v3, 0x1

    :try_start_4
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    .line 957
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vibrate_input_devices"

    const/4 v6, -0x2

    .line 956
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4
    :try_end_12
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_12} :catch_19

    if-lez v4, :cond_16

    move v4, v3

    goto :goto_17

    :cond_16
    move v4, v1

    :goto_17
    move v2, v4

    .line 960
    goto :goto_1a

    .line 959
    :catch_19
    move-exception v4

    .line 961
    :goto_1a
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eq v2, v4, :cond_21

    .line 962
    const/4 v0, 0x1

    .line 963
    iput-boolean v2, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    .line 966
    :cond_21
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_33

    .line 967
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-nez v4, :cond_3e

    .line 968
    iput-boolean v3, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 969
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v5, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v4, p0, v5}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    goto :goto_3e

    .line 972
    :cond_33
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-eqz v4, :cond_3e

    .line 973
    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    .line 974
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v4, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 978
    :cond_3e
    :goto_3e
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 979
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_6c

    .line 980
    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v4}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v4

    .line 981
    .local v4, "ids":[I
    nop

    .line 981
    .local v1, "i":I
    :goto_4e
    array-length v5, v4

    if-ge v1, v5, :cond_6b

    .line 982
    iget-object v5, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    aget v6, v4, v1

    invoke-virtual {v5, v6}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    .line 983
    .local v5, "device":Landroid/view/InputDevice;
    invoke-virtual {v5}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v6

    .line 984
    .local v6, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-eqz v7, :cond_68

    .line 985
    iget-object v7, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    .end local v5    # "device":Landroid/view/InputDevice;
    .end local v6    # "vibrator":Landroid/os/Vibrator;
    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 988
    .end local v1    # "i":I
    :cond_6b
    return v3

    .line 990
    .end local v4    # "ids":[I
    :cond_6c
    return v0
.end method

.method private updateLowPowerModeLocked()Z
    .registers 3

    .line 994
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 995
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 996
    .local v0, "lowPowerMode":Z
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    if-eq v0, v1, :cond_11

    .line 997
    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    .line 998
    const/4 v1, 0x1

    return v1

    .line 1000
    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method private updateVibrationIntensityLocked()V
    .registers 5

    .line 1004
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "haptic_feedback_intensity"

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 1006
    invoke-virtual {v2}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v2

    .line 1004
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    .line 1007
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_vibration_intensity"

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 1009
    invoke-virtual {v2}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v2

    .line 1007
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    .line 1010
    return-void
.end method

.method private updateVibrators()V
    .registers 4

    .line 940
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 941
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibratorsLocked()Z

    move-result v1

    .line 942
    .local v1, "devicesUpdated":Z
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateLowPowerModeLocked()Z

    move-result v2

    .line 943
    .local v2, "lowPowerModeUpdated":Z
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrationIntensityLocked()V

    .line 945
    if-nez v1, :cond_12

    if-eqz v2, :cond_15

    .line 947
    :cond_12
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 949
    .end local v1    # "devicesUpdated":Z
    .end local v2    # "lowPowerModeUpdated":Z
    :cond_15
    monitor-exit v0

    .line 950
    return-void

    .line 949
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private verifyIncomingUid(I)V
    .registers 7
    .param p1, "uid"    # I

    .line 470
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 471
    return-void

    .line 473
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 474
    return-void

    .line 476
    :cond_12
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    .line 477
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    .line 476
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 478
    return-void
.end method

.method private static verifyVibrationEffect(Landroid/os/VibrationEffect;)Z
    .registers 5
    .param p0, "effect"    # Landroid/os/VibrationEffect;

    .line 489
    const/4 v0, 0x0

    if-nez p0, :cond_b

    .line 491
    const-string v1, "VibratorService"

    const-string v2, "effect must not be null"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return v0

    .line 495
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/os/VibrationEffect;->validate()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_11

    .line 499
    nop

    .line 500
    const/4 v0, 0x1

    return v0

    .line 496
    :catch_11
    move-exception v1

    .line 497
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "VibratorService"

    const-string v3, "Encountered issue when verifying VibrationEffect."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 498
    return v0
.end method

.method static native vibratorExists()Z
.end method

.method static native vibratorInit()V
.end method

.method static native vibratorOff()V
.end method

.method static native vibratorOn(J)V
.end method

.method static native vibratorPerformEffect(JJ)J
.end method

.method static native vibratorSetAmplitude(I)V
.end method

.method static native vibratorSupportsAmplitudeControl()Z
.end method


# virtual methods
.method public cancelVibrate(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .line 667
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    const-string v2, "cancelVibrate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    :try_start_c
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, v1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    if-ne v1, p1, :cond_26

    .line 676
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_28

    .line 678
    .local v1, "ident":J
    :try_start_1a
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_21

    .line 680
    :try_start_1d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 681
    goto :goto_26

    .line 680
    :catchall_21
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 683
    .end local v1    # "ident":J
    :cond_26
    :goto_26
    monitor-exit v0

    .line 684
    return-void

    .line 683
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_28

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1356
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "VibratorService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1358
    :cond_b
    const-string v0, "Vibrator Service:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1359
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1360
    :try_start_13
    const-string v1, "  mCurrentVibration="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1361
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_2a

    .line 1362
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_30

    .line 1364
    :cond_2a
    const-string/jumbo v1, "null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1366
    :goto_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLowPowerMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHapticFeedbackIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNotificationIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1369
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1370
    const-string v1, "  Previous vibrations:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1371
    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_82
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    .line 1372
    .local v2, "info":Lcom/android/server/VibratorService$VibrationInfo;
    const-string v3, "    "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1373
    invoke-virtual {v2}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1374
    .end local v2    # "info":Lcom/android/server/VibratorService$VibrationInfo;
    goto :goto_82

    .line 1375
    :cond_9b
    monitor-exit v0

    .line 1376
    return-void

    .line 1375
    :catchall_9d
    move-exception v1

    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_13 .. :try_end_9f} :catchall_9d

    throw v1
.end method

.method public hasAmplitudeControl()Z
    .registers 3

    .line 462
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    .line 465
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    monitor-exit v0

    return v1

    .line 466
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public hasVibrator()Z
    .registers 2

    .line 457
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorExists()Z

    move-result v0

    return v0
.end method

.method public onInputDeviceAdded(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .line 1014
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 1015
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .line 1019
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 1020
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 2
    .param p1, "deviceId"    # I

    .line 1024
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    .line 1025
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1382
    new-instance v0, Lcom/android/server/VibratorService$VibratorShellCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/server/VibratorService$VibratorShellCommand;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Lcom/android/server/VibratorService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/VibratorService$VibratorShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 1383
    return-void
.end method

.method public onVibrationFinished()V
    .registers 3

    .line 715
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 718
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 719
    monitor-exit v0

    .line 720
    return-void

    .line 719
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public systemReady()V
    .registers 8

    .line 399
    const-string v0, "VibratorService#systemReady"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 401
    :try_start_8
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    .line 402
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/Vibrator;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    .line 403
    new-instance v0, Lcom/android/server/VibratorService$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-direct {v0, p0, v3}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 405
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 406
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v3, Lcom/android/server/VibratorService$1;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;)V

    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 419
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "vibrate_input_devices"

    .line 420
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 419
    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 423
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "haptic_feedback_intensity"

    .line 424
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 423
    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 427
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "notification_vibration_intensity"

    .line 428
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    .line 427
    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 431
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/VibratorService$2;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 438
    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V
    :try_end_8c
    .catchall {:try_start_8 .. :try_end_8c} :catchall_91

    .line 440
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 441
    nop

    .line 442
    return-void

    .line 440
    :catchall_91
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)V
    .registers 23
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "usageHint"    # I
    .param p5, "token"    # Landroid/os/IBinder;

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v1, p3

    move/from16 v11, p4

    .line 542
    const-string/jumbo v0, "vibrate"

    const-wide/32 v12, 0x800000

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 544
    :try_start_11
    iget-object v0, v9, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_189

    .line 548
    if-nez p5, :cond_29

    .line 549
    const-string v0, "VibratorService"

    const-string/jumbo v2, "token must not be null"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_191

    .line 647
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 550
    return-void

    .line 552
    :cond_29
    :try_start_29
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    .line 553
    invoke-static/range {p3 .. p3}, Lcom/android/server/VibratorService;->verifyVibrationEffect(Landroid/os/VibrationEffect;)Z

    move-result v0
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_191

    if-nez v0, :cond_36

    .line 647
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 554
    return-void

    .line 556
    :cond_36
    :try_start_36
    const-string v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vibrate from \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', usageHint = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v0, v9, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-static {v0, v10}, Lcom/android/server/OemSceneVibrationController;->canVibrationGo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_68

    .line 560
    const-string v0, "VibratorService"

    const-string v2, "Vibrating is ignored by OemSceneVibrationController."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catchall {:try_start_36 .. :try_end_64} :catchall_191

    .line 647
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 561
    return-void

    .line 568
    :cond_68
    :try_start_68
    iget-object v0, v9, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/oneplus/util/OemSceneCallBlocker;->isVibratorUsageMutedByCallBlocker(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 569
    const-string v0, "VibratorService"

    const-string v2, "Vibrating is ignored on gaming mode."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_68 .. :try_end_77} :catchall_191

    .line 647
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 570
    return-void

    .line 574
    :cond_7b
    :try_start_7b
    instance-of v0, v1, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_fc

    .line 575
    const-string v0, "Middle"

    .line 576
    .local v0, "vibrateIntensity":Ljava/lang/String;
    move-object v2, v1

    check-cast v2, Landroid/os/VibrationEffect$Waveform;

    .line 577
    .local v2, "mEffect":Landroid/os/VibrationEffect$Waveform;
    iget-object v3, v2, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    .line 578
    .local v3, "mTimings":[J
    iget v4, v2, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    .line 579
    .local v4, "mRepeat":I
    const/4 v5, 0x0

    aget-wide v6, v3, v5

    const-wide/16 v14, -0x1

    cmp-long v6, v6, v14

    if-nez v6, :cond_a2

    .line 580
    const-string/jumbo v6, "weak"

    move-object v0, v6

    .line 581
    iget v6, v9, Lcom/android/server/VibratorService;->intensityWeak:I

    invoke-direct {v9, v6}, Lcom/android/server/VibratorService;->WriteNodeValue(I)V

    .line 582
    aget-wide v5, v3, v5

    invoke-static {v3, v5, v6}, Lcom/android/internal/util/ArrayUtils;->removeLong([JJ)[J

    move-result-object v5

    move-object v3, v5

    goto :goto_d4

    .line 583
    :cond_a2
    aget-wide v6, v3, v5

    const-wide/16 v14, -0x2

    cmp-long v6, v6, v14

    if-nez v6, :cond_b7

    .line 584
    const/16 v6, 0x5e4

    invoke-direct {v9, v6}, Lcom/android/server/VibratorService;->WriteNodeValue(I)V

    .line 585
    aget-wide v5, v3, v5

    invoke-static {v3, v5, v6}, Lcom/android/internal/util/ArrayUtils;->removeLong([JJ)[J

    move-result-object v5

    move-object v3, v5

    goto :goto_d4

    .line 586
    :cond_b7
    aget-wide v6, v3, v5

    const-wide/16 v14, -0x3

    cmp-long v6, v6, v14

    if-nez v6, :cond_cf

    .line 587
    const-string v6, "Strong"

    move-object v0, v6

    .line 588
    iget v6, v9, Lcom/android/server/VibratorService;->intensityStrong:I

    invoke-direct {v9, v6}, Lcom/android/server/VibratorService;->WriteNodeValue(I)V

    .line 589
    aget-wide v5, v3, v5

    invoke-static {v3, v5, v6}, Lcom/android/internal/util/ArrayUtils;->removeLong([JJ)[J

    move-result-object v5

    move-object v3, v5

    goto :goto_d4

    .line 591
    :cond_cf
    const/16 v5, 0x4fc

    invoke-direct {v9, v5}, Lcom/android/server/VibratorService;->WriteNodeValue(I)V
    :try_end_d4
    .catchall {:try_start_7b .. :try_end_d4} :catchall_191

    .line 594
    .end local v0    # "vibrateIntensity":Ljava/lang/String;
    .local v5, "vibrateIntensity":Ljava/lang/String;
    :goto_d4
    move-object v5, v0

    :try_start_d5
    invoke-static {v3, v4}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0
    :try_end_d9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d5 .. :try_end_d9} :catch_dc
    .catchall {:try_start_d5 .. :try_end_d9} :catchall_191

    .line 599
    .end local p3    # "effect":Landroid/os/VibrationEffect;
    .local v0, "effect":Landroid/os/VibrationEffect;
    nop

    .line 605
    move-object v14, v0

    goto :goto_fd

    .line 595
    .end local v0    # "effect":Landroid/os/VibrationEffect;
    .restart local p3    # "effect":Landroid/os/VibrationEffect;
    :catch_dc
    move-exception v0

    move-object v6, v0

    .line 596
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_de
    const-string v6, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error creating vibration waveform with pattern: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-static {v3}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 596
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catchall {:try_start_de .. :try_end_f8} :catchall_191

    .line 647
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 598
    return-void

    .line 605
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "mEffect":Landroid/os/VibrationEffect$Waveform;
    .end local v3    # "mTimings":[J
    .end local v4    # "mRepeat":I
    .end local v5    # "vibrateIntensity":Ljava/lang/String;
    :cond_fc
    move-object v14, v1

    .line 605
    .end local p3    # "effect":Landroid/os/VibrationEffect;
    .local v14, "effect":Landroid/os/VibrationEffect;
    :goto_fd
    :try_start_fd
    iget-object v8, v9, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_100
    .catchall {:try_start_fd .. :try_end_100} :catchall_186

    .line 606
    :try_start_100
    instance-of v0, v14, Landroid/os/VibrationEffect$OneShot;

    if-eqz v0, :cond_134

    iget-object v0, v9, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_134

    iget-object v0, v9, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v0, v0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$OneShot;

    if-eqz v0, :cond_134

    .line 609
    move-object v0, v14

    check-cast v0, Landroid/os/VibrationEffect$OneShot;

    .line 610
    .local v0, "newOneShot":Landroid/os/VibrationEffect$OneShot;
    iget-object v1, v9, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, v1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v1, Landroid/os/VibrationEffect$OneShot;

    .line 612
    .local v1, "currentOneShot":Landroid/os/VibrationEffect$OneShot;
    iget-object v2, v9, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/VibratorService$Vibration;->hasTimeoutLongerThan(J)Z

    move-result v2

    if-eqz v2, :cond_134

    .line 613
    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v2

    invoke-virtual {v1}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v3

    if-ne v2, v3, :cond_134

    .line 618
    monitor-exit v8
    :try_end_130
    .catchall {:try_start_100 .. :try_end_130} :catchall_17f

    .line 647
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 618
    return-void

    .line 626
    .end local v0    # "newOneShot":Landroid/os/VibrationEffect$OneShot;
    .end local v1    # "currentOneShot":Landroid/os/VibrationEffect$OneShot;
    :cond_134
    :try_start_134
    invoke-static {v14}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v0

    if-nez v0, :cond_14d

    iget-object v0, v9, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_14d

    iget-object v0, v9, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v0, v0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    .line 628
    invoke-static {v0}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 632
    monitor-exit v8
    :try_end_149
    .catchall {:try_start_134 .. :try_end_149} :catchall_17f

    .line 647
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 632
    return-void

    .line 635
    :cond_14d
    :try_start_14d
    new-instance v0, Lcom/android/server/VibratorService$Vibration;
    :try_end_14f
    .catchall {:try_start_14d .. :try_end_14f} :catchall_17f

    const/4 v15, 0x0

    move-object v1, v0

    move-object v2, v9

    move-object/from16 v3, p5

    move-object v4, v14

    move v5, v11

    move/from16 v6, p1

    move-object v7, v10

    move-object/from16 v16, v8

    move-object v8, v15

    :try_start_15c
    invoke-direct/range {v1 .. v8}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;Lcom/android/server/VibratorService$1;)V

    move-object v1, v0

    .line 636
    .local v1, "vib":Lcom/android/server/VibratorService$Vibration;
    invoke-direct {v9, v1}, Lcom/android/server/VibratorService;->linkVibration(Lcom/android/server/VibratorService$Vibration;)V

    .line 637
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_167
    .catchall {:try_start_15c .. :try_end_167} :catchall_184

    .line 639
    .local v2, "ident":J
    :try_start_167
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    .line 640
    invoke-direct {v9, v1}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    .line 641
    invoke-direct {v9, v1}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_170
    .catchall {:try_start_167 .. :try_end_170} :catchall_17a

    .line 643
    :try_start_170
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 644
    nop

    .line 645
    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .end local v2    # "ident":J
    monitor-exit v16
    :try_end_175
    .catchall {:try_start_170 .. :try_end_175} :catchall_184

    .line 647
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 648
    nop

    .line 649
    return-void

    .line 643
    .restart local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .restart local v2    # "ident":J
    :catchall_17a
    move-exception v0

    :try_start_17b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 645
    .end local v1    # "vib":Lcom/android/server/VibratorService$Vibration;
    .end local v2    # "ident":J
    :catchall_17f
    move-exception v0

    move-object/from16 v16, v8

    :goto_182
    monitor-exit v16
    :try_end_183
    .catchall {:try_start_17b .. :try_end_183} :catchall_184

    :try_start_183
    throw v0
    :try_end_184
    .catchall {:try_start_183 .. :try_end_184} :catchall_186

    :catchall_184
    move-exception v0

    goto :goto_182

    .line 647
    :catchall_186
    move-exception v0

    move-object v1, v14

    goto :goto_192

    .line 546
    .end local v14    # "effect":Landroid/os/VibrationEffect;
    .restart local p3    # "effect":Landroid/os/VibrationEffect;
    :cond_189
    :try_start_189
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires VIBRATE permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_191
    .catchall {:try_start_189 .. :try_end_191} :catchall_191

    .line 647
    :catchall_191
    move-exception v0

    .line 647
    .end local p3    # "effect":Landroid/os/VibrationEffect;
    .local v1, "effect":Landroid/os/VibrationEffect;
    :goto_192
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
