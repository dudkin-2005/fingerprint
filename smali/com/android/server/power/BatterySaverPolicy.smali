.class public Lcom/android/server/power/BatterySaverPolicy;
.super Landroid/database/ContentObserver;
.source "BatterySaverPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final KEY_ADJUST_BRIGHTNESS_DISABLED:Ljava/lang/String; = "adjust_brightness_disabled"

.field private static final KEY_ADJUST_BRIGHTNESS_FACTOR:Ljava/lang/String; = "adjust_brightness_factor"

.field private static final KEY_ANIMATION_DISABLED:Ljava/lang/String; = "animation_disabled"

.field private static final KEY_AOD_DISABLED:Ljava/lang/String; = "aod_disabled"

.field private static final KEY_CPU_FREQ_INTERACTIVE:Ljava/lang/String; = "cpufreq-i"

.field private static final KEY_CPU_FREQ_NONINTERACTIVE:Ljava/lang/String; = "cpufreq-n"

.field private static final KEY_DATASAVER_DISABLED:Ljava/lang/String; = "datasaver_disabled"

.field private static final KEY_FIREWALL_DISABLED:Ljava/lang/String; = "firewall_disabled"

.field private static final KEY_FORCE_ALL_APPS_STANDBY:Ljava/lang/String; = "force_all_apps_standby"

.field private static final KEY_FORCE_BACKGROUND_CHECK:Ljava/lang/String; = "force_background_check"

.field private static final KEY_FULLBACKUP_DEFERRED:Ljava/lang/String; = "fullbackup_deferred"

.field private static final KEY_GPS_MODE:Ljava/lang/String; = "gps_mode"

.field private static final KEY_KEYVALUE_DEFERRED:Ljava/lang/String; = "keyvaluebackup_deferred"

.field private static final KEY_LAUNCH_BOOST_DISABLED:Ljava/lang/String; = "launch_boost_disabled"

.field private static final KEY_OPTIONAL_SENSORS_DISABLED:Ljava/lang/String; = "optional_sensors_disabled"

.field private static final KEY_SEND_TRON_LOG:Ljava/lang/String; = "send_tron_log"

.field private static final KEY_SOUNDTRIGGER_DISABLED:Ljava/lang/String; = "soundtrigger_disabled"

.field private static final KEY_VIBRATION_DISABLED:Ljava/lang/String; = "vibration_disabled"

.field public static final SECURE_KEY_GPS_MODE:Ljava/lang/String; = "batterySaverGpsMode"

.field private static final TAG:Ljava/lang/String; = "BatterySaverPolicy"


# instance fields
.field private mAccessibilityEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mAdjustBrightnessDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mAdjustBrightnessFactor:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mAnimationDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mAodDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDataSaverDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDeviceSpecificSettings:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mDeviceSpecificSettingsSource:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mEventLogKeys:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mFilesForInteractive:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilesForNoninteractive:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFireWallDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mForceAllAppsStandby:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mForceBackgroundCheck:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mFullBackupDeferred:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mGpsMode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mKeyValueBackupDeferred:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLaunchBoostDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mOptionalSensorsDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSendTronLog:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSettings:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mSoundTriggerDisabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mVibrationDisabledConfig:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mVibrationDisabledEffective:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/content/Context;Lcom/android/server/power/batterysaver/BatterySavingStats;)V
    .locals 1

    .line 272
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mListeners:Ljava/util/List;

    .line 273
    iput-object p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    .line 274
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mHandler:Landroid/os/Handler;

    .line 275
    iput-object p2, p0, Lcom/android/server/power/BatterySaverPolicy;->mContext:Landroid/content/Context;

    .line 276
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    .line 277
    iput-object p3, p0, Lcom/android/server/power/BatterySaverPolicy;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    .line 278
    return-void
.end method

.method private dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 578
    if-nez p3, :cond_0

    .line 579
    return-void

    .line 581
    :cond_0
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 582
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 583
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 585
    const-string v2, ": \'"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 587
    const-string v2, "\'"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 589
    :cond_1
    return-void
.end method

.method public static synthetic lambda$refreshSettings$1(Lcom/android/server/power/BatterySaverPolicy;[Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;)V
    .locals 3

    .line 355
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 356
    invoke-interface {v2, p0}, Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;->onBatterySaverPolicyChanged(Lcom/android/server/power/BatterySaverPolicy;)V

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 358
    :cond_0
    return-void
.end method

.method public static synthetic lambda$systemReady$0(Lcom/android/server/power/BatterySaverPolicy;Z)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAccessibilityEnabled:Z

    .line 296
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    invoke-direct {p0}, Lcom/android/server/power/BatterySaverPolicy;->refreshSettings()V

    .line 298
    return-void

    .line 296
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private refreshSettings()V
    .locals 4

    .line 329
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_0
    const-string v1, "battery_saver_constants"

    invoke-virtual {p0, v1}, Lcom/android/server/power/BatterySaverPolicy;->getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 336
    const-string v2, "battery_saver_device_specific_constants"

    invoke-virtual {p0, v2}, Lcom/android/server/power/BatterySaverPolicy;->getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 338
    const-string v3, "battery_saver_device_specific_constants"

    iput-object v3, p0, Lcom/android/server/power/BatterySaverPolicy;->mDeviceSpecificSettingsSource:Ljava/lang/String;

    .line 341
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mContext:Landroid/content/Context;

    .line 343
    invoke-virtual {p0}, Lcom/android/server/power/BatterySaverPolicy;->getDeviceSpecificConfigResId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 344
    const-string v3, "(overlay)"

    iput-object v3, p0, Lcom/android/server/power/BatterySaverPolicy;->mDeviceSpecificSettingsSource:Ljava/lang/String;

    .line 348
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/BatterySaverPolicy;->updateConstantsLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mListeners:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;

    .line 351
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/power/-$$Lambda$BatterySaverPolicy$9q6hxnTofoZqK_ebwl_HDCH8A4A;

    invoke-direct {v2, p0, v1}, Lcom/android/server/power/-$$Lambda$BatterySaverPolicy$9q6hxnTofoZqK_ebwl_HDCH8A4A;-><init>(Lcom/android/server/power/BatterySaverPolicy;[Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    return-void

    .line 351
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addListener(Lcom/android/server/power/BatterySaverPolicy$BatterySaverPolicyListener;)V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    monitor-exit v0

    .line 310
    return-void

    .line 309
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 537
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 538
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 539
    iget-object v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 541
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 542
    const-string v1, "Battery saver policy (*NOTE* they only apply when battery saver is ON):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    const-string v1, "  Settings: battery_saver_constants"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mSettings:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mDeviceSpecificSettingsSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mDeviceSpecificSettings:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAccessibilityEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mAccessibilityEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  vibration_disabled:config="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mVibrationDisabledConfig:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  vibration_disabled:effective="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mVibrationDisabledEffective:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  animation_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mAnimationDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  fullbackup_deferred="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mFullBackupDeferred:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  keyvaluebackup_deferred="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mKeyValueBackupDeferred:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  firewall_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mFireWallDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  datasaver_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mDataSaverDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  launch_boost_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mLaunchBoostDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  adjust_brightness_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  adjust_brightness_factor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessFactor:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  gps_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mGpsMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  force_all_apps_standby="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mForceAllAppsStandby:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  force_background_check="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mForceBackgroundCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  optional_sensors_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mOptionalSensorsDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  aod_disabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mAodDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  send_tron_log="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mSendTronLog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 568
    const-string v1, "  Interactive File values:\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 569
    const-string v1, "    "

    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mFilesForInteractive:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/power/BatterySaverPolicy;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArrayMap;)V

    .line 570
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 572
    const-string v1, "  Noninteractive File values:\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 573
    const-string v1, "    "

    iget-object v2, p0, Lcom/android/server/power/BatterySaverPolicy;->mFilesForNoninteractive:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/power/BatterySaverPolicy;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArrayMap;)V

    .line 574
    monitor-exit v0

    .line 575
    return-void

    .line 574
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getBatterySaverPolicy(IZ)Landroid/os/PowerSaveState;
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 457
    :try_start_0
    new-instance v1, Landroid/os/PowerSaveState$Builder;

    invoke-direct {v1}, Landroid/os/PowerSaveState$Builder;-><init>()V

    .line 458
    invoke-virtual {v1, p2}, Landroid/os/PowerSaveState$Builder;->setGlobalBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object v1

    .line 459
    if-nez p2, :cond_0

    .line 460
    invoke-virtual {v1, p2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p1

    .line 461
    invoke-virtual {p1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p1

    monitor-exit v0

    .line 460
    return-object p1

    .line 463
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 506
    :pswitch_0
    invoke-virtual {v1, p2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p1

    goto/16 :goto_0

    .line 503
    :pswitch_1
    iget-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAodDisabled:Z

    invoke-virtual {v1, p1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p1

    .line 504
    invoke-virtual {p1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p1

    monitor-exit v0

    .line 503
    return-object p1

    .line 500
    :pswitch_2
    iget-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mOptionalSensorsDisabled:Z

    invoke-virtual {v1, p1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p1

    .line 501
    invoke-virtual {p1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p1

    monitor-exit v0

    .line 500
    return-object p1

    .line 497
    :pswitch_3
    iget-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mForceBackgroundCheck:Z

    invoke-virtual {v1, p1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p1

    .line 498
    invoke-virtual {p1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p1

    monitor-exit v0

    .line 497
    return-object p1

    .line 494
    :pswitch_4
    iget-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mForceAllAppsStandby:Z

    invoke-virtual {v1, p1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p1

    .line 495
    invoke-virtual {p1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p1

    monitor-exit v0

    .line 494
    return-object p1

    .line 485
    :pswitch_5
    iget-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mDataSaverDisabled:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p1

    .line 486
    invoke-virtual {p1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p1

    monitor-exit v0

    .line 485
    return-object p1

    .line 488
    :pswitch_6
    iget-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mSoundTriggerDisabled:Z

    invoke-virtual {v1, p1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p1

    .line 489
    invoke-virtual {p1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p1

    monitor-exit v0

    .line 488
    return-object p1

    .line 481
    :pswitch_7
    iget-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessDisabled:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p1

    iget p2, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessFactor:F

    .line 482
    invoke-virtual {p1, p2}, Landroid/os/PowerSaveState$Builder;->setBrightnessFactor(F)Landroid/os/PowerSaveState$Builder;

    move-result-object p1

    .line 483
    invoke-virtual {p1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p1

    monitor-exit v0

    .line 481
    return-object p1

    .line 478
    :pswitch_8
    iget-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mFireWallDisabled:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p1

    .line 479
    invoke-virtual {p1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p1

    monitor-exit v0

    .line 478
    return-object p1

    .line 475
    :pswitch_9
    iget-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mKeyValueBackupDeferred:Z

    invoke-virtual {v1, p1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p1

    .line 476
    invoke-virtual {p1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p1

    monitor-exit v0

    .line 475
    return-object p1

    .line 472
    :pswitch_a
    iget-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mFullBackupDeferred:Z

    invoke-virtual {v1, p1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p1

    .line 473
    invoke-virtual {p1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p1

    monitor-exit v0

    .line 472
    return-object p1

    .line 469
    :pswitch_b
    iget-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAnimationDisabled:Z

    invoke-virtual {v1, p1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p1

    .line 470
    invoke-virtual {p1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p1

    monitor-exit v0

    .line 469
    return-object p1

    .line 491
    :pswitch_c
    iget-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mVibrationDisabledEffective:Z

    invoke-virtual {v1, p1}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p1

    .line 492
    invoke-virtual {p1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p1

    monitor-exit v0

    .line 491
    return-object p1

    .line 465
    :pswitch_d
    invoke-virtual {v1, p2}, Landroid/os/PowerSaveState$Builder;->setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;

    move-result-object p1

    iget p2, p0, Lcom/android/server/power/BatterySaverPolicy;->mGpsMode:I

    .line 466
    invoke-virtual {p1, p2}, Landroid/os/PowerSaveState$Builder;->setGpsMode(I)Landroid/os/PowerSaveState$Builder;

    move-result-object p1

    .line 467
    invoke-virtual {p1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p1

    monitor-exit v0

    .line 465
    return-object p1

    .line 507
    :goto_0
    invoke-virtual {p1}, Landroid/os/PowerSaveState$Builder;->build()Landroid/os/PowerSaveState;

    move-result-object p1

    monitor-exit v0

    .line 506
    return-object p1

    .line 509
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method getDeviceSpecificConfigResId()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 319
    const v0, 0x104017a

    return v0
.end method

.method public getFileValues(Z)Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 520
    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mFilesForInteractive:Landroid/util/ArrayMap;

    goto :goto_0

    .line 521
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 520
    :cond_0
    iget-object p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mFilesForNoninteractive:Landroid/util/ArrayMap;

    :goto_0
    monitor-exit v0

    return-object p1

    .line 521
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getGlobalSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGpsMode()I
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 514
    :try_start_0
    iget v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mGpsMode:I

    monitor-exit v0

    return v1

    .line 515
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isLaunchBoostDisabled()Z
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 526
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mLaunchBoostDisabled:Z

    monitor-exit v0

    return v1

    .line 527
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 324
    invoke-direct {p0}, Lcom/android/server/power/BatterySaverPolicy;->refreshSettings()V

    .line 325
    return-void
.end method

.method public setAccessibilityEnabledForTest(Z)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 594
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAccessibilityEnabled:Z

    .line 595
    monitor-exit v0

    .line 596
    return-void

    .line 595
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public systemReady()V
    .locals 3

    .line 284
    const-string v0, "BatterySaverPolicy"

    iget-object v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->wtfIfLockHeld(Ljava/lang/String;Ljava/lang/Object;)V

    .line 286
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "battery_saver_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 288
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "battery_saver_device_specific_constants"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 291
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 293
    new-instance v1, Lcom/android/server/power/-$$Lambda$BatterySaverPolicy$DPeh8xGdH0ye3BQJ8Ozaqeu6Y30;

    invoke-direct {v1, p0}, Lcom/android/server/power/-$$Lambda$BatterySaverPolicy$DPeh8xGdH0ye3BQJ8Ozaqeu6Y30;-><init>(Lcom/android/server/power/BatterySaverPolicy;)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 299
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 300
    iget-object v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 301
    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mAccessibilityEnabled:Z

    .line 302
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/BatterySaverPolicy;->onChange(ZLandroid/net/Uri;)V

    .line 304
    return-void

    .line 302
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toEventLogString()Ljava/lang/String;
    .locals 2

    .line 531
    iget-object v0, p0, Lcom/android/server/power/BatterySaverPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 532
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mEventLogKeys:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 533
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateConstantsLocked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 364
    iput-object p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mSettings:Ljava/lang/String;

    .line 365
    iput-object p2, p0, Lcom/android/server/power/BatterySaverPolicy;->mDeviceSpecificSettings:Ljava/lang/String;

    .line 372
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 376
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    goto :goto_0

    .line 377
    :catch_0
    move-exception v1

    .line 378
    const-string v1, "BatterySaverPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad battery saver constants: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :goto_0
    const-string/jumbo p1, "vibration_disabled"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mVibrationDisabledConfig:Z

    .line 382
    const-string p1, "animation_disabled"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAnimationDisabled:Z

    .line 383
    const-string/jumbo p1, "soundtrigger_disabled"

    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mSoundTriggerDisabled:Z

    .line 384
    const-string p1, "fullbackup_deferred"

    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mFullBackupDeferred:Z

    .line 385
    const-string p1, "keyvaluebackup_deferred"

    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mKeyValueBackupDeferred:Z

    .line 386
    const-string p1, "firewall_disabled"

    invoke-virtual {v0, p1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mFireWallDisabled:Z

    .line 387
    const-string p1, "adjust_brightness_disabled"

    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessDisabled:Z

    .line 388
    const-string p1, "adjust_brightness_factor"

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v0, p1, v3}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessFactor:F

    .line 389
    const-string p1, "datasaver_disabled"

    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mDataSaverDisabled:Z

    .line 390
    const-string p1, "launch_boost_disabled"

    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mLaunchBoostDisabled:Z

    .line 391
    const-string p1, "force_all_apps_standby"

    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mForceAllAppsStandby:Z

    .line 392
    const-string p1, "force_background_check"

    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mForceBackgroundCheck:Z

    .line 393
    const-string/jumbo p1, "optional_sensors_disabled"

    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mOptionalSensorsDisabled:Z

    .line 394
    const-string p1, "aod_disabled"

    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAodDisabled:Z

    .line 395
    const-string/jumbo p1, "send_tron_log"

    invoke-virtual {v0, p1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mSendTronLog:Z

    .line 398
    iget-object p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "batterySaverGpsMode"

    const/4 v4, 0x2

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 400
    const-string v3, "gps_mode"

    invoke-virtual {v0, v3, p1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mGpsMode:I

    .line 404
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 408
    goto :goto_1

    .line 405
    :catch_1
    move-exception p1

    .line 406
    const-string p1, "BatterySaverPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad device specific battery saver constants: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :goto_1
    new-instance p1, Lcom/android/server/power/batterysaver/CpuFrequencies;

    invoke-direct {p1}, Lcom/android/server/power/batterysaver/CpuFrequencies;-><init>()V

    const-string p2, "cpufreq-i"

    const-string v3, ""

    .line 411
    invoke-virtual {v0, p2, v3}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 410
    invoke-virtual {p1, p2}, Lcom/android/server/power/batterysaver/CpuFrequencies;->parseString(Ljava/lang/String;)Lcom/android/server/power/batterysaver/CpuFrequencies;

    move-result-object p1

    .line 411
    invoke-virtual {p1}, Lcom/android/server/power/batterysaver/CpuFrequencies;->toSysFileMap()Landroid/util/ArrayMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mFilesForInteractive:Landroid/util/ArrayMap;

    .line 413
    new-instance p1, Lcom/android/server/power/batterysaver/CpuFrequencies;

    invoke-direct {p1}, Lcom/android/server/power/batterysaver/CpuFrequencies;-><init>()V

    const-string p2, "cpufreq-n"

    const-string v3, ""

    .line 414
    invoke-virtual {v0, p2, v3}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 413
    invoke-virtual {p1, p2}, Lcom/android/server/power/batterysaver/CpuFrequencies;->parseString(Ljava/lang/String;)Lcom/android/server/power/batterysaver/CpuFrequencies;

    move-result-object p1

    .line 414
    invoke-virtual {p1}, Lcom/android/server/power/batterysaver/CpuFrequencies;->toSysFileMap()Landroid/util/ArrayMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mFilesForNoninteractive:Landroid/util/ArrayMap;

    .line 417
    iget-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mVibrationDisabledConfig:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mAccessibilityEnabled:Z

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/power/BatterySaverPolicy;->mVibrationDisabledEffective:Z

    .line 420
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 422
    iget-boolean p2, p0, Lcom/android/server/power/BatterySaverPolicy;->mForceAllAppsStandby:Z

    if-eqz p2, :cond_1

    const-string p2, "A"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :cond_1
    iget-boolean p2, p0, Lcom/android/server/power/BatterySaverPolicy;->mForceBackgroundCheck:Z

    if-eqz p2, :cond_2

    const-string p2, "B"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :cond_2
    iget-boolean p2, p0, Lcom/android/server/power/BatterySaverPolicy;->mVibrationDisabledEffective:Z

    if-eqz p2, :cond_3

    const-string/jumbo p2, "v"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    :cond_3
    iget-boolean p2, p0, Lcom/android/server/power/BatterySaverPolicy;->mAnimationDisabled:Z

    if-eqz p2, :cond_4

    const-string p2, "a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    :cond_4
    iget-boolean p2, p0, Lcom/android/server/power/BatterySaverPolicy;->mSoundTriggerDisabled:Z

    if-eqz p2, :cond_5

    const-string/jumbo p2, "s"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :cond_5
    iget-boolean p2, p0, Lcom/android/server/power/BatterySaverPolicy;->mFullBackupDeferred:Z

    if-eqz p2, :cond_6

    const-string p2, "F"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :cond_6
    iget-boolean p2, p0, Lcom/android/server/power/BatterySaverPolicy;->mKeyValueBackupDeferred:Z

    if-eqz p2, :cond_7

    const-string p2, "K"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_7
    iget-boolean p2, p0, Lcom/android/server/power/BatterySaverPolicy;->mFireWallDisabled:Z

    if-nez p2, :cond_8

    const-string p2, "f"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    :cond_8
    iget-boolean p2, p0, Lcom/android/server/power/BatterySaverPolicy;->mDataSaverDisabled:Z

    if-nez p2, :cond_9

    const-string p2, "d"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    :cond_9
    iget-boolean p2, p0, Lcom/android/server/power/BatterySaverPolicy;->mAdjustBrightnessDisabled:Z

    if-nez p2, :cond_a

    const-string p2, "b"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :cond_a
    iget-boolean p2, p0, Lcom/android/server/power/BatterySaverPolicy;->mLaunchBoostDisabled:Z

    if-eqz p2, :cond_b

    const-string p2, "l"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    :cond_b
    iget-boolean p2, p0, Lcom/android/server/power/BatterySaverPolicy;->mOptionalSensorsDisabled:Z

    if-eqz p2, :cond_c

    const-string p2, "S"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_c
    iget-boolean p2, p0, Lcom/android/server/power/BatterySaverPolicy;->mAodDisabled:Z

    if-eqz p2, :cond_d

    const-string p2, "o"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :cond_d
    iget-boolean p2, p0, Lcom/android/server/power/BatterySaverPolicy;->mSendTronLog:Z

    if-eqz p2, :cond_e

    const-string/jumbo p2, "t"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    :cond_e
    iget p2, p0, Lcom/android/server/power/BatterySaverPolicy;->mGpsMode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mEventLogKeys:Ljava/lang/String;

    .line 443
    iget-object p1, p0, Lcom/android/server/power/BatterySaverPolicy;->mBatterySavingStats:Lcom/android/server/power/batterysaver/BatterySavingStats;

    iget-boolean p2, p0, Lcom/android/server/power/BatterySaverPolicy;->mSendTronLog:Z

    invoke-virtual {p1, p2}, Lcom/android/server/power/batterysaver/BatterySavingStats;->setSendTronLog(Z)V

    .line 444
    return-void
.end method
