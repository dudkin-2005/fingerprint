.class public Lcom/android/server/policy/DeviceKeyHandler;
.super Ljava/lang/Object;
.source "DeviceKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/DeviceKeyHandler$EventHandler;,
        Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;,
        Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_FRONT_CAMERA:Ljava/lang/String; = "FrontCamera"

.field private static final ACTION_OPEN_APP:Ljava/lang/String; = "OpenApp"

.field private static final ACTION_OPEN_CAMERA:Ljava/lang/String; = "OpenCamera"

.field private static final ACTION_OPEN_SHELF:Ljava/lang/String; = "OpenShelf"

.field private static final ACTION_OPEN_SHORTCUT:Ljava/lang/String; = "OpenShortcut"

.field private static final ACTION_OPEN_TORCH:Ljava/lang/String; = "OpenTorch"

.field private static final ACTION_TAKE_VIDEO:Ljava/lang/String; = "TakeVideo"

.field private static final BLACK_ENBALE_PATH:Ljava/lang/String; = "/proc/touchpanel/gesture_enable"

.field private static final BLACK_VALUE_PATH:Ljava/lang/String; = "/proc/touchpanel/coordinate"

.field private static final CAMERA_ID:Ljava/lang/String; = "0"

.field private static final DEBUG:Z

.field private static final GESTURE_DOUBLE_TAP:Ljava/lang/String; = "1"

.field private static final GESTURE_GTR_SCANCODE:Ljava/lang/String; = "4"

.field private static final GESTURE_LTR_SCANCODE:Ljava/lang/String; = "5"

.field private static final GESTURE_NEW_M_SCANCODE:Ljava/lang/String; = "12"

.field private static final GESTURE_NEW_O_SCANCODE:Ljava/lang/String; = "6"

.field private static final GESTURE_NEW_S_SCANCODE:Ljava/lang/String; = "14"

.field private static final GESTURE_NEW_V_SCANCODE:Ljava/lang/String; = "2"

.field private static final GESTURE_NEW_W_SCANCODE:Ljava/lang/String; = "13"

.field private static final GESTURE_SINGLE_TAP:Ljava/lang/String; = "15"

.field private static final GESTURE_SWIPE_DOWN_SCANCODE:Ljava/lang/String; = "7"

.field private static final GESTURE_SWITCH:Ljava/lang/String; = "/proc/touchpanel/gesture_switch"

.field private static final GESTURE_WAKELOCK_DURATION:I = 0xbb8

.field private static final MAX_WAIT_TIME:I = 0x3e8

.field private static final PROXIMITY_THRESHOLD:F = 0.1f

.field private static final TAG:Ljava/lang/String; = "DeviceKeyHandler"

.field private static final VIBRATE_DURATION_LONG:J = 0x96L

.field private static final VIBRATE_DURATION_SHORT:J = 0x4bL

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private gesture_switch_exist:Z

.field mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mActionInfo:Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mBlackEnableState:Z

.field private mBlackKeySettingState:I

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private final mContext:Landroid/content/Context;

.field private mDoubleScreenOn:Z

.field private mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

.field private mFlashlightEnabled:Z

.field final mGestureMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field private mKeyguardOcclude:Z

.field mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mListenKeyguard:Z

.field private mMusic_control:Z

.field private mMusic_next:Z

.field private mMusic_pause:Z

.field private mMusic_play:Z

.field private mMusic_prev:Z

.field private final mObject:Ljava/lang/Object;

.field private mObserver:Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

.field private mOld_O:Z

.field private mOld_V:Z

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPocketListener:Landroid/hardware/SensorEventListener;

.field private mPocketmodeEnabled:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorActive:Z

.field private mProximitySensorEnabled:Z

.field mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSensorEnabled:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSleeping:Z

.field private mSystemReady:Z

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private final mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 87
    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    .line 126
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 127
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 128
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/DeviceKeyHandler;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mGestureMap:Ljava/util/HashMap;

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    .line 145
    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackEnableState:Z

    .line 147
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_control:Z

    .line 148
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_prev:Z

    .line 149
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_next:Z

    .line 150
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_pause:Z

    .line 151
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_play:Z

    .line 152
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mDoubleScreenOn:Z

    .line 153
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mOld_O:Z

    .line 154
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mOld_V:Z

    .line 169
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    .line 175
    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z

    .line 176
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    .line 179
    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->gesture_switch_exist:Z

    .line 180
    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorEnabled:Z

    .line 182
    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mListenKeyguard:Z

    .line 185
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketmodeEnabled:Z

    .line 194
    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSleeping:Z

    .line 477
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DeviceKeyHandler$1;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketListener:Landroid/hardware/SensorEventListener;

    .line 523
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DeviceKeyHandler$2;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 970
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/DeviceKeyHandler$4;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    .line 204
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    .line 205
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 206
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;-><init>(Lcom/android/server/policy/DeviceKeyHandler;Lcom/android/server/policy/DeviceKeyHandler$1;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    .line 207
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    .line 209
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x1fa2651

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    .line 210
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mVibrator:Landroid/os/Vibrator;

    .line 211
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActivityManager:Landroid/app/ActivityManager;

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 213
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "ProximityWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 215
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "PartialGestureWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 217
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "AcquireCauseWakeUpGestureWakeLock"

    const v2, 0x10000001

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 221
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;-><init>(Lcom/android/server/policy/DeviceKeyHandler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObserver:Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

    .line 223
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 224
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DeviceKeyHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 225
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 226
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandler:Landroid/os/Handler;

    .line 227
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceKeyHandler;->registerCameraManagerCallbacks()V

    .line 229
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/touchpanel/gesture_switch"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->gesture_switch_exist:Z

    .line 230
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 232
    return-void
.end method

.method private SensorProcessMessage()V
    .registers 6

    .line 589
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 590
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 592
    :try_start_8
    iget-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->gesture_switch_exist:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    .line 593
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 594
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 595
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_42

    .line 596
    :cond_19
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->enableProximitySensor()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_49

    .line 598
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_23} :catch_24
    .catchall {:try_start_1c .. :try_end_23} :catchall_49

    .line 601
    goto :goto_25

    .line 599
    :catch_24
    move-exception v1

    .line 602
    :goto_25
    :try_start_25
    iget-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    if-nez v1, :cond_3f

    .line 603
    sget-boolean v1, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v1, :cond_34

    .line 604
    const-string v1, "DeviceKeyHandler"

    const-string v3, "SensorProcessMessage(): sensor value change."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_34
    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 607
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 609
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3f
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->disableProximitySensor()V

    .line 612
    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_25 .. :try_end_43} :catchall_49

    .line 613
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 614
    return-void

    .line 612
    :catchall_49
    move-exception v1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v1
.end method

.method static synthetic access$100(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .line 84
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/DeviceKeyHandler;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .line 84
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Z
    .registers 1

    .line 84
    sget-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/DeviceKeyHandler;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .line 84
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/DeviceKeyHandler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .line 84
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/policy/DeviceKeyHandler;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;
    .param p1, "x1"    # Z

    .line 84
    iput-boolean p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorActive:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/policy/DeviceKeyHandler;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .line 84
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->processKeyEvent()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/policy/DeviceKeyHandler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;

    .line 84
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/policy/DeviceKeyHandler;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/DeviceKeyHandler;
    .param p1, "x1"    # Z

    .line 84
    iput-boolean p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    return p1
.end method

.method private acquireGestureWakeLock(Ljava/lang/String;)V
    .registers 5
    .param p1, "gesture"    # Ljava/lang/String;

    .line 632
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 633
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 634
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 636
    :cond_11
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 637
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 638
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 640
    :cond_22
    invoke-direct {p0, p1}, Lcom/android/server/policy/DeviceKeyHandler;->isAWakeUpGesture(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0xbb8

    if-eqz v0, :cond_34

    .line 641
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3d

    .line 642
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mAcquireCauseWakeUpGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_3d

    .line 645
    :cond_34
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3d

    .line 646
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPartialGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 649
    :cond_3d
    :goto_3d
    return-void
.end method

.method private disableProximitySensor()V
    .registers 5

    .line 572
    sget-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 573
    const-string v0, "DeviceKeyHandler"

    const-string v1, "disableProximitySensor() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_26

    .line 578
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 580
    .local v0, "identity":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 581
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_21

    .line 583
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 584
    goto :goto_26

    .line 583
    :catchall_21
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 586
    .end local v0    # "identity":J
    :cond_26
    :goto_26
    return-void
.end method

.method private dispatchMediaKeyWithWakeLockToAudioService(I)V
    .registers 12
    .param p1, "keycode"    # I

    .line 1006
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSystemReady:Z

    if-eqz v0, :cond_34

    .line 1007
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 1008
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    if-eqz v0, :cond_29

    .line 1009
    new-instance v9, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1010
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move v7, p1

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 1011
    .local v1, "event":Landroid/view/KeyEvent;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 1012
    invoke-static {v1, v2}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 1013
    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 1014
    .end local v1    # "event":Landroid/view/KeyEvent;
    goto :goto_34

    .line 1015
    :cond_29
    sget-boolean v1, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v1, :cond_34

    .line 1016
    const-string v1, "DeviceKeyHandler"

    const-string v2, "MediaSessionLegacyHelper instance is null."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    .end local v0    # "helper":Landroid/media/session/MediaSessionLegacyHelper;
    :cond_34
    :goto_34
    return-void
.end method

.method private enableProximitySensor()V
    .registers 7

    .line 553
    sget-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 554
    const-string v0, "DeviceKeyHandler"

    const-string v1, "enableProximitySensor() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z

    if-nez v0, :cond_29

    .line 559
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 561
    .local v0, "identity":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 564
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensorEnabled:Z
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_24

    .line 566
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 567
    goto :goto_29

    .line 566
    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 569
    .end local v0    # "identity":J
    :cond_29
    :goto_29
    return-void
.end method

.method private getCameraId()Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 951
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    .line 952
    .local v0, "ids":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    const/4 v3, 0x0

    if-ge v2, v1, :cond_42

    aget-object v4, v0, v2

    .line 954
    .local v4, "id":Ljava/lang/String;
    :try_start_d
    iget-object v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v5, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    .line 955
    .local v5, "c":Landroid/hardware/camera2/CameraCharacteristics;
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 956
    .local v6, "flashAvailable":Ljava/lang/Boolean;
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 957
    .local v7, "lensFacing":Ljava/lang/Integer;
    if-eqz v6, :cond_35

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_35

    if-eqz v7, :cond_35

    .line 959
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_31
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_31} :catch_39

    const/4 v3, 0x1

    if-ne v8, v3, :cond_35

    .line 960
    return-object v4

    .line 965
    .end local v5    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v6    # "flashAvailable":Ljava/lang/Boolean;
    .end local v7    # "lensFacing":Ljava/lang/Integer;
    :cond_35
    nop

    .line 952
    .end local v4    # "id":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 962
    .restart local v4    # "id":Ljava/lang/String;
    :catch_39
    move-exception v1

    .line 963
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "DeviceKeyHandler"

    const-string v5, "Couldn\'t get torch mode characteristics."

    invoke-static {v2, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 964
    return-object v3

    .line 967
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v4    # "id":Ljava/lang/String;
    :cond_42
    return-object v3
.end method

.method private getCameraType(Ljava/lang/String;)I
    .registers 4
    .param p1, "keyValue"    # Ljava/lang/String;

    .line 826
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x2fb833ec

    if-eq v0, v1, :cond_28

    const v1, -0x2423cd72

    if-eq v0, v1, :cond_1e

    const v1, 0x6f3d522f

    if-eq v0, v1, :cond_14

    goto :goto_32

    :cond_14
    const-string v0, "OpenCamera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    goto :goto_33

    :cond_1e
    const-string v0, "FrontCamera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_28
    const-string v0, "TakeVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x2

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v0, -0x1

    :goto_33
    packed-switch v0, :pswitch_data_48

    .line 837
    const v0, 0x10000100

    goto :goto_46

    .line 834
    :pswitch_3a
    const v0, 0x10000400

    .line 835
    .local v0, "param":I
    goto :goto_46

    .line 831
    .end local v0    # "param":I
    :pswitch_3e
    const v0, 0x10000200

    .line 832
    .restart local v0    # "param":I
    goto :goto_46

    .line 828
    .end local v0    # "param":I
    :pswitch_42
    const v0, 0x10000100

    .line 829
    .restart local v0    # "param":I
    nop

    .line 837
    :goto_46
    nop

    .line 840
    return v0

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_42
        :pswitch_3e
        :pswitch_3a
    .end packed-switch
.end method

.method private getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 859
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 860
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 861
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_1d

    .line 862
    const-string v2, "DeviceKeyHandler"

    const-string v3, "getDefaultHomePackageName: could not get package manager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const-string v2, ""

    return-object v2

    .line 865
    :cond_1d
    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 866
    .local v2, "res":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_2f

    .line 867
    const-string v3, "DeviceKeyHandler"

    const-string v4, "getDefaultHomePackageName: could not get ResolveInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const-string v3, ""

    return-object v3

    .line 870
    :cond_2f
    const-string v3, "DeviceKeyHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isDefaultHome] default home: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_50

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_52

    :cond_50
    const-string v3, ""

    :goto_52
    return-object v3
.end method

.method public static getOffset(II)I
    .registers 3
    .param p0, "num"    # I
    .param p1, "index"    # I

    .line 667
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    and-int/2addr v0, p0

    shr-int/2addr v0, p1

    return v0
.end method

.method private isAWakeUpGesture(Ljava/lang/String;)Z
    .registers 5
    .param p1, "gesture"    # Ljava/lang/String;

    .line 617
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_56

    goto :goto_50

    :sswitch_a
    const-string v0, "OpenCamera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    move v0, v2

    goto :goto_51

    :sswitch_14
    const-string v0, "OpenApp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x5

    goto :goto_51

    :sswitch_1e
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    move v0, v1

    goto :goto_51

    :sswitch_28
    const-string v0, "FrontCamera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x2

    goto :goto_51

    :sswitch_32
    const-string v0, "OpenShelf"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x4

    goto :goto_51

    :sswitch_3c
    const-string v0, "TakeVideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x3

    goto :goto_51

    :sswitch_46
    const-string v0, "OpenShortcut"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    const/4 v0, 0x6

    goto :goto_51

    :cond_50
    :goto_50
    const/4 v0, -0x1

    :goto_51
    packed-switch v0, :pswitch_data_74

    .line 627
    return v1

    .line 625
    :pswitch_55
    return v2

    :sswitch_data_56
    .sparse-switch
        -0x764e2f30 -> :sswitch_46
        -0x2fb833ec -> :sswitch_3c
        -0x2d113a20 -> :sswitch_32
        -0x2423cd72 -> :sswitch_28
        0x31 -> :sswitch_1e
        0x17ed5757 -> :sswitch_14
        0x6f3d522f -> :sswitch_a
    .end sparse-switch

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
    .end packed-switch
.end method

.method private performVibration()V
    .registers 2

    .line 995
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration(Z)V

    .line 996
    return-void
.end method

.method private performVibration(Z)V
    .registers 6
    .param p1, "success"    # Z

    .line 999
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_12

    .line 1000
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mVibrator:Landroid/os/Vibrator;

    if-eqz p1, :cond_b

    const-wide/16 v1, 0x4b

    goto :goto_d

    :cond_b
    const-wide/16 v1, 0x96

    :goto_d
    sget-object v3, Lcom/android/server/policy/DeviceKeyHandler;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 1003
    :cond_12
    return-void
.end method

.method private processKeyEvent()V
    .registers 14

    .line 673
    invoke-static {}, Lcom/oneplus/scene/OimcBrickModeObserver;->getInstance()Lcom/oneplus/scene/OimcBrickModeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/scene/OimcBrickModeObserver;->isOn()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 674
    sget-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v0, :cond_15

    const-string v0, "DeviceKeyHandler"

    const-string v1, "black screen guesture blocked by brick mode!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_15
    return-void

    .line 678
    :cond_16
    const-string v0, "/proc/touchpanel/coordinate"

    invoke-static {v0}, Lcom/android/server/policy/FileUtils;->readOneLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 680
    return-void

    .line 683
    :cond_23
    const/16 v1, 0x2c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 684
    .local v1, "at":I
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 686
    .local v3, "keyValue":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    if-eqz v4, :cond_3f

    .line 688
    const-string v4, "15"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3f

    .line 689
    return-void

    .line 694
    :cond_3f
    const-string v4, "DeviceKeyHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receive gesture "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-virtual {p0}, Lcom/android/server/policy/DeviceKeyHandler;->isInCall()Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-nez v4, :cond_fa

    .line 696
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v10, 0x31

    if-eq v4, v10, :cond_9c

    const/16 v10, 0x37

    if-eq v4, v10, :cond_92

    const/16 v10, 0x624

    if-eq v4, v10, :cond_88

    packed-switch v4, :pswitch_data_1fa

    goto :goto_a6

    :pswitch_74
    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a6

    move v4, v9

    goto :goto_a7

    :pswitch_7e
    const-string v4, "4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a6

    move v4, v7

    goto :goto_a7

    :cond_88
    const-string v4, "15"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a6

    move v4, v6

    goto :goto_a7

    :cond_92
    const-string v4, "7"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a6

    move v4, v2

    goto :goto_a7

    :cond_9c
    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a6

    move v4, v5

    goto :goto_a7

    :cond_a6
    :goto_a6
    move v4, v8

    :goto_a7
    packed-switch v4, :pswitch_data_202

    goto :goto_fa

    .line 723
    :pswitch_ab
    iget-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSleeping:Z

    if-eqz v4, :cond_fa

    .line 724
    invoke-direct {p0, v3}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 725
    const-class v4, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/dreams/DreamManagerInternal;

    .line 726
    .local v4, "dreamService":Landroid/service/dreams/DreamManagerInternal;
    invoke-virtual {v4}, Landroid/service/dreams/DreamManagerInternal;->onSingleTap()V

    .line 727
    .end local v4    # "dreamService":Landroid/service/dreams/DreamManagerInternal;
    goto :goto_fa

    .line 715
    :pswitch_be
    iget-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSleeping:Z

    if-nez v4, :cond_c6

    iget-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mDoubleScreenOn:Z

    if-eqz v4, :cond_fa

    .line 716
    :cond_c6
    invoke-direct {p0, v3}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 717
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 718
    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_fa

    .line 708
    :pswitch_d6
    invoke-direct {p0, v3}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 709
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 710
    const/16 v4, 0x57

    invoke-direct {p0, v4}, Lcom/android/server/policy/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    .line 711
    goto :goto_fa

    .line 703
    :pswitch_e2
    invoke-direct {p0, v3}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 704
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 705
    const/16 v4, 0x58

    invoke-direct {p0, v4}, Lcom/android/server/policy/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    .line 706
    goto :goto_fa

    .line 698
    :pswitch_ee
    invoke-direct {p0, v3}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 699
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 700
    const/16 v4, 0x55

    invoke-direct {p0, v4}, Lcom/android/server/policy/DeviceKeyHandler;->dispatchMediaKeyWithWakeLockToAudioService(I)V

    .line 701
    nop

    .line 735
    :cond_fa
    :goto_fa
    iget-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mGestureMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    .line 736
    .local v4, "actionInfo":Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;
    if-eqz v4, :cond_1f8

    .line 737
    const-string v10, "DeviceKeyHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Corresponding action is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-virtual {v4}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 739
    .local v10, "actionName":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_210

    goto :goto_16f

    :sswitch_12a
    const-string v5, "OpenCamera"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16f

    move v5, v9

    goto :goto_170

    :sswitch_134
    const-string v5, "OpenApp"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16f

    const/4 v5, 0x5

    goto :goto_170

    :sswitch_13e
    const-string v5, "FrontCamera"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16f

    move v5, v7

    goto :goto_170

    :sswitch_148
    const-string v5, "OpenTorch"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16f

    move v5, v2

    goto :goto_170

    :sswitch_152
    const-string v5, "OpenShelf"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16f

    move v5, v6

    goto :goto_170

    :sswitch_15c
    const-string v6, "TakeVideo"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16f

    goto :goto_170

    :sswitch_165
    const-string v5, "OpenShortcut"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16f

    const/4 v5, 0x6

    goto :goto_170

    :cond_16f
    :goto_16f
    move v5, v8

    :goto_170
    packed-switch v5, :pswitch_data_22e

    .end local v10    # "actionName":Ljava/lang/String;
    goto/16 :goto_1f8

    .line 756
    .restart local v10    # "actionName":Ljava/lang/String;
    :pswitch_175
    invoke-direct {p0, v10}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 757
    const/4 v5, 0x0

    .line 758
    .local v5, "success":Z
    iget-object v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v6, :cond_1f8

    .line 760
    const-string v6, "com.oneplus.soundrecorder"

    invoke-virtual {v4}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19e

    iget-object v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 761
    invoke-virtual {v6, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v6

    if-eqz v6, :cond_19e

    iget-boolean v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardOcclude:Z

    if-nez v6, :cond_19e

    .line 764
    invoke-virtual {p0, v4, v9}, Lcom/android/server/policy/DeviceKeyHandler;->startWithKeyguardUnlocked(Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;Z)Z

    move-result v5

    .line 765
    if-eqz v5, :cond_1a2

    .line 766
    iput-object v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActionInfo:Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    goto :goto_1a2

    .line 770
    :cond_19e
    invoke-virtual {p0, v4, v2}, Lcom/android/server/policy/DeviceKeyHandler;->startWithKeyguardUnlocked(Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;Z)Z

    move-result v5

    .line 772
    :cond_1a2
    :goto_1a2
    if-eqz v5, :cond_1f8

    .line 773
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 774
    iget-object v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 776
    iget-object v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v6, :cond_1f8

    const-string v6, "com.oneplus.soundrecorder"

    .line 777
    invoke-virtual {v4}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c8

    iget-object v6, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 778
    invoke-virtual {v6, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_1f8

    .line 779
    :cond_1c8
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v6, Lcom/android/server/policy/DeviceKeyHandler$3;

    invoke-direct {v6, p0}, Lcom/android/server/policy/DeviceKeyHandler$3;-><init>(Lcom/android/server/policy/DeviceKeyHandler;)V

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_1f8

    .line 747
    .end local v5    # "success":Z
    :pswitch_1d4
    invoke-direct {p0, v10}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 748
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration()V

    .line 749
    const-class v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 751
    .local v2, "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    invoke-direct {p0, v10}, Lcom/android/server/policy/DeviceKeyHandler;->getCameraType(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V

    .line 752
    goto :goto_1f8

    .line 741
    .end local v2    # "service":Lcom/android/server/statusbar/StatusBarManagerInternal;
    :pswitch_1ea
    invoke-direct {p0, v10}, Lcom/android/server/policy/DeviceKeyHandler;->acquireGestureWakeLock(Ljava/lang/String;)V

    .line 742
    iget-boolean v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    xor-int/2addr v2, v9

    invoke-virtual {p0, v2}, Lcom/android/server/policy/DeviceKeyHandler;->setFlashlight(Z)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/policy/DeviceKeyHandler;->performVibration(Z)V

    .line 743
    nop

    .line 804
    .end local v10    # "actionName":Ljava/lang/String;
    :cond_1f8
    :goto_1f8
    return-void

    nop

    :pswitch_data_1fa
    .packed-switch 0x34
        :pswitch_7e
        :pswitch_74
    .end packed-switch

    :pswitch_data_202
    .packed-switch 0x0
        :pswitch_ee
        :pswitch_e2
        :pswitch_d6
        :pswitch_be
        :pswitch_ab
    .end packed-switch

    :sswitch_data_210
    .sparse-switch
        -0x764e2f30 -> :sswitch_165
        -0x2fb833ec -> :sswitch_15c
        -0x2d113a20 -> :sswitch_152
        -0x2cffc44e -> :sswitch_148
        -0x2423cd72 -> :sswitch_13e
        0x17ed5757 -> :sswitch_134
        0x6f3d522f -> :sswitch_12a
    .end sparse-switch

    :pswitch_data_22e
    .packed-switch 0x0
        :pswitch_1ea
        :pswitch_1d4
        :pswitch_1d4
        :pswitch_1d4
        :pswitch_175
        :pswitch_175
        :pswitch_175
    .end packed-switch
.end method

.method private startApp(Ljava/lang/String;IZ)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "test"    # Z

    .line 875
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 876
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1b

    .line 877
    const/4 v1, 0x1

    if-eqz p3, :cond_c

    .line 878
    return v1

    .line 880
    :cond_c
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 881
    return v1

    .line 883
    :cond_1b
    const-string v1, "DeviceKeyHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed because intent is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const/4 v1, 0x0

    return v1
.end method

.method private startShelf(Z)Z
    .registers 6
    .param p1, "test"    # Z

    .line 844
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    return v0

    .line 846
    :cond_4
    const-string/jumbo v1, "net.oneplus.h2launcher"

    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/policy/DeviceKeyHandler;->getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 847
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "net.oneplus.h2launcher.action.OPEN_QUICK_PAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 848
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "net.oneplus.h2launcher"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_30

    .line 850
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_22
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "net.oneplus.launcher.action.OPEN_QUICK_PAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 851
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "net.oneplus.launcher"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 853
    :goto_30
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 854
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 855
    return v0
.end method

.method private startShortcut(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "test"    # Z

    move-object v1, p0

    move-object v8, p1

    .line 888
    iget-object v0, v1, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "launcherapps"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, v1, Lcom/android/server/policy/DeviceKeyHandler;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 890
    iget-object v0, v1, Lcom/android/server/policy/DeviceKeyHandler;->mLauncherApps:Landroid/content/pm/LauncherApps;

    const/4 v9, 0x0

    if-eqz v0, :cond_6c

    .line 891
    const/4 v0, 0x1

    if-eqz p4, :cond_4f

    .line 892
    new-instance v2, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v2}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 893
    .local v2, "query":Landroid/content/pm/LauncherApps$ShortcutQuery;
    invoke-virtual {v2, v8}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 894
    new-array v3, v0, [Ljava/lang/String;

    aput-object p2, v3, v9

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 895
    iget-object v3, v1, Lcom/android/server/policy/DeviceKeyHandler;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 897
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_4d

    :try_start_32
    iget-object v4, v1, Lcom/android/server/policy/DeviceKeyHandler;->mLauncherApps:Landroid/content/pm/LauncherApps;

    new-instance v5, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4
    :try_end_41
    .catch Ljava/lang/IllegalStateException; {:try_start_32 .. :try_end_41} :catch_44

    if-eqz v4, :cond_4d

    .line 898
    return v0

    .line 899
    :catch_44
    move-exception v0

    .line 900
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v4, "DeviceKeyHandler"

    const-string v5, "get shortcuts failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    return v9

    .line 902
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_4d
    nop

    .line 903
    .end local v2    # "query":Landroid/content/pm/LauncherApps$ShortcutQuery;
    .end local v3    # "intent":Landroid/content/Intent;
    goto :goto_6c

    .line 905
    :cond_4f
    :try_start_4f
    iget-object v2, v1, Lcom/android/server/policy/DeviceKeyHandler;->mLauncherApps:Landroid/content/pm/LauncherApps;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v7, v3}, Landroid/os/UserHandle;-><init>(I)V

    move-object v3, v8

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_61
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4f .. :try_end_61} :catch_62

    .line 906
    return v0

    .line 907
    :catch_62
    move-exception v0

    .line 908
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "DeviceKeyHandler"

    const-string/jumbo v3, "start shortcut failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    return v9

    .line 913
    .end local v0    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_6c
    :goto_6c
    const-string v0, "DeviceKeyHandler"

    const-string/jumbo v2, "shortcut service is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    return v9
.end method


# virtual methods
.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 506
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 507
    .local v0, "repeatCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    move v1, v3

    goto :goto_f

    :cond_e
    move v1, v2

    .line 508
    .local v1, "actionUp":Z
    :goto_f
    if-eqz v1, :cond_15

    if-nez v0, :cond_15

    move v2, v3

    nop

    .line 509
    .local v2, "shouldHandleEvent":Z
    :cond_15
    move v4, v2

    .line 510
    .local v4, "handled":Z
    if-eqz v4, :cond_2b

    .line 511
    iget-object v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v5, v3}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 513
    .local v3, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v5, :cond_26

    .line 514
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->SensorProcessMessage()V

    goto :goto_2b

    .line 516
    :cond_26
    iget-object v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mEventHandler:Lcom/android/server/policy/DeviceKeyHandler$EventHandler;

    invoke-virtual {v5, v3}, Lcom/android/server/policy/DeviceKeyHandler$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 520
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2b
    :goto_2b
    return v4
.end method

.method isInCall()Z
    .registers 2

    .line 1024
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    return v0
.end method

.method makeGestureMap(Landroid/content/ContentResolver;)V
    .registers 8
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 303
    const-string/jumbo v0, "oem_acc_blackscreen_gesture_o"

    const/4 v1, -0x2

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "gestureActionO":Ljava/lang/String;
    const-string/jumbo v2, "oem_acc_blackscreen_gesture_v"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "gestureActionV":Ljava/lang/String;
    const-string/jumbo v3, "oem_acc_blackscreen_gesture_s"

    invoke-static {p1, v3, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 312
    .local v3, "gestureActionS":Ljava/lang/String;
    const-string/jumbo v4, "oem_acc_blackscreen_gesture_w"

    invoke-static {p1, v4, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 315
    .local v4, "gestureActionW":Ljava/lang/String;
    const-string/jumbo v5, "oem_acc_blackscreen_gesture_m"

    invoke-static {p1, v5, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 318
    .local v1, "gestureActionM":Ljava/lang/String;
    if-nez v2, :cond_2c

    iget-boolean v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mOld_V:Z

    if-eqz v5, :cond_2c

    .line 319
    const-string v2, "OpenTorch"

    .line 321
    :cond_2c
    if-nez v0, :cond_34

    iget-boolean v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mOld_O:Z

    if-eqz v5, :cond_34

    .line 322
    const-string v0, "OpenCamera"

    .line 324
    :cond_34
    const-string v5, "6"

    invoke-virtual {p0, v5, v0}, Lcom/android/server/policy/DeviceKeyHandler;->parseSettingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v5, "2"

    invoke-virtual {p0, v5, v2}, Lcom/android/server/policy/DeviceKeyHandler;->parseSettingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v5, "14"

    invoke-virtual {p0, v5, v3}, Lcom/android/server/policy/DeviceKeyHandler;->parseSettingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v5, "13"

    invoke-virtual {p0, v5, v4}, Lcom/android/server/policy/DeviceKeyHandler;->parseSettingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v5, "12"

    invoke-virtual {p0, v5, v1}, Lcom/android/server/policy/DeviceKeyHandler;->parseSettingData(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method public onKeyguardDone()V
    .registers 3

    .line 469
    const-string v0, "DeviceKeyHandler"

    const-string/jumbo v1, "receive keyguard done, process gesture action"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActionInfo:Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    if-eqz v0, :cond_15

    .line 471
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActionInfo:Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/DeviceKeyHandler;->startWithKeyguardUnlocked(Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;Z)Z

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActionInfo:Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    .line 474
    :cond_15
    return-void
.end method

.method public onKeyguardOccludedChangedLw(Z)V
    .registers 5
    .param p1, "occluded"    # Z

    .line 1029
    const-string v0, "DeviceKeyHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onKeyguardOccludedChangedLw "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iput-boolean p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardOcclude:Z

    .line 1031
    return-void
.end method

.method onScreenTurnedOff()V
    .registers 6

    .line 445
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->gesture_switch_exist:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1d

    iget v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorEnabled:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketmodeEnabled:Z

    if-eqz v0, :cond_1d

    .line 446
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorEnabled:Z

    .line 447
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 450
    :cond_1d
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSleeping:Z

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mActionInfo:Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    .line 452
    return-void
.end method

.method onScreenTurnedOn()V
    .registers 2

    .line 455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSleeping:Z

    .line 456
    return-void
.end method

.method onStartedWakingUp()V
    .registers 3

    .line 461
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorEnabled:Z

    if-eqz v0, :cond_e

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorEnabled:Z

    .line 463
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 465
    :cond_e
    return-void
.end method

.method parseSettingData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "gesture"    # Ljava/lang/String;
    .param p2, "settingsValue"    # Ljava/lang/String;

    .line 332
    if-nez p2, :cond_3

    .line 333
    return-void

    .line 334
    :cond_3
    new-instance v0, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;-><init>(Lcom/android/server/policy/DeviceKeyHandler;Lcom/android/server/policy/DeviceKeyHandler$1;)V

    .line 335
    .local v0, "actionInfo":Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;
    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 337
    .local v1, "colonIndex":I
    if-gez v1, :cond_15

    .line 339
    invoke-virtual {v0, p2}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->setActionName(Ljava/lang/String;)V

    goto :goto_60

    .line 342
    :cond_15
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    .line 343
    .local v2, "parts":[Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 344
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 345
    .local v4, "tmp":[Ljava/lang/String;
    array-length v5, v4

    const/4 v7, 0x1

    invoke-static {v4, v3, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    aget-object v5, v2, v3

    invoke-virtual {v0, v5}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->setActionName(Ljava/lang/String;)V

    .line 347
    aget-object v5, v2, v7

    invoke-virtual {v0, v5}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->setPackage(Ljava/lang/String;)V

    .line 348
    const-string v5, "OpenApp"

    aget-object v7, v2, v3

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x2

    if-eqz v5, :cond_4c

    .line 349
    aget-object v3, v2, v7

    invoke-virtual {v0, v3}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->setUid(Ljava/lang/String;)V

    goto :goto_60

    .line 350
    :cond_4c
    const-string v5, "OpenShortcut"

    aget-object v3, v2, v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 351
    aget-object v3, v2, v7

    invoke-virtual {v0, v3}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->setShortcutId(Ljava/lang/String;)V

    .line 352
    aget-object v3, v2, v6

    invoke-virtual {v0, v3}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->setUid(Ljava/lang/String;)V

    .line 355
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v4    # "tmp":[Ljava/lang/String;
    :cond_60
    :goto_60
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mGestureMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    return-void
.end method

.method public registerCameraManagerCallbacks()V
    .registers 4

    .line 922
    sget-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v0, :cond_c

    .line 923
    const-string v0, "DeviceKeyHandler"

    const-string/jumbo v1, "registerCameraManagerCallbacks() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    .line 926
    return-void
.end method

.method public setFlashlight(Z)Z
    .registers 6
    .param p1, "enabled"    # Z

    .line 929
    sget-boolean v0, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 930
    const-string v0, "DeviceKeyHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTorchMode() called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_1b
    monitor-enter p0

    .line 934
    :try_start_1c
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_41

    .line 935
    iput-boolean p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_43

    .line 937
    :try_start_23
    invoke-direct {p0}, Lcom/android/server/policy/DeviceKeyHandler;->getCameraId()Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, "cameraId":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_2d

    move-object v3, v0

    goto :goto_2f

    :cond_2d
    const-string v3, "0"

    :goto_2f
    invoke-virtual {v2, v3, p1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_32
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_23 .. :try_end_32} :catch_35
    .catchall {:try_start_23 .. :try_end_32} :catchall_43

    .line 939
    const/4 v1, 0x1

    :try_start_33
    monitor-exit p0

    return v1

    .line 940
    .end local v0    # "cameraId":Ljava/lang/String;
    :catch_35
    move-exception v0

    .line 941
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "DeviceKeyHandler"

    const-string v3, "CameraAccessException: Couldn\'t set torch mode."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 942
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mFlashlightEnabled:Z

    .line 943
    monitor-exit p0

    return v1

    .line 946
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_41
    monitor-exit p0

    .line 947
    return v1

    .line 946
    :catchall_43
    move-exception v0

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_33 .. :try_end_45} :catchall_43

    throw v0
.end method

.method setKeyguardDelegate(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
    .registers 2
    .param p1, "keyguard"    # Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 918
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 919
    return-void
.end method

.method startWithKeyguardUnlocked(Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;Z)Z
    .registers 8
    .param p1, "actionInfo"    # Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;
    .param p2, "test"    # Z

    .line 812
    invoke-virtual {p1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, "actionName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 814
    .local v1, "success":Z
    const-string v2, "OpenShelf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 815
    invoke-direct {p0, p2}, Lcom/android/server/policy/DeviceKeyHandler;->startShelf(Z)Z

    move-result v1

    goto :goto_3f

    .line 816
    :cond_12
    const-string v2, "OpenApp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 817
    invoke-virtual {p1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getUid()I

    move-result v3

    invoke-direct {p0, v2, v3, p2}, Lcom/android/server/policy/DeviceKeyHandler;->startApp(Ljava/lang/String;IZ)Z

    move-result v1

    goto :goto_3f

    .line 818
    :cond_27
    const-string v2, "OpenShortcut"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 819
    invoke-virtual {p1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getShortcutId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/policy/DeviceKeyHandler$ActionInfo;->getUid()I

    move-result v4

    invoke-direct {p0, v2, v3, v4, p2}, Lcom/android/server/policy/DeviceKeyHandler;->startShortcut(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v1

    .line 821
    :cond_3f
    :goto_3f
    return v1
.end method

.method public systemReady()V
    .registers 5

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mSystemReady:Z

    .line 238
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mObserver:Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/policy/DeviceKeyHandler$SettingsObserver;->observe()V

    .line 241
    const/4 v0, 0x0

    .line 243
    .local v0, "info":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    :try_start_a
    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.netease.cloudmusic"

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_16} :catch_18

    move-object v0, v2

    .line 248
    goto :goto_1d

    .line 245
    :catch_18
    move-exception v2

    .line 246
    .local v2, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .line 247
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 249
    .end local v2    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1d
    if-eqz v0, :cond_2d

    .line 251
    :try_start_1f
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string v3, "com.netease.cloudmusic"

    invoke-interface {v2, v3, v1, v1}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_28} :catch_29

    .line 255
    goto :goto_2d

    .line 253
    :catch_29
    move-exception v1

    .line 254
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 258
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2d
    :goto_2d
    return-void
.end method

.method public updateOemSettings()V
    .registers 8

    .line 407
    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 408
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "oem_acc_blackscreen_gestrue_enable"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    .line 412
    sget-boolean v1, Lcom/android/server/policy/DeviceKeyHandler;->DEBUG:Z

    if-eqz v1, :cond_32

    .line 413
    const-string v1, "DeviceKeyHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateH2OemSettings(): mBlackKeySettingState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_32
    iget v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v4, 0x7

    invoke-static {v1, v4}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3e

    move v1, v4

    goto :goto_3f

    :cond_3e
    move v1, v3

    :goto_3f
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mDoubleScreenOn:Z

    .line 417
    iget v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v5, 0x5

    invoke-static {v1, v5}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v4, :cond_4c

    move v1, v4

    goto :goto_4d

    :cond_4c
    move v1, v3

    :goto_4d
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_control:Z

    .line 418
    iget v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v5, 0x4

    invoke-static {v1, v5}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v4, :cond_5a

    move v1, v4

    goto :goto_5b

    :cond_5a
    move v1, v3

    :goto_5b
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_prev:Z

    .line 419
    iget v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v5, 0x3

    invoke-static {v1, v5}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v4, :cond_68

    move v1, v4

    goto :goto_69

    :cond_68
    move v1, v3

    :goto_69
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_next:Z

    .line 420
    iget v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v5, 0x2

    invoke-static {v1, v5}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v4, :cond_76

    move v1, v4

    goto :goto_77

    :cond_76
    move v1, v3

    :goto_77
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_pause:Z

    .line 421
    iget v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v1, v4}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v4, :cond_83

    move v1, v4

    goto :goto_84

    :cond_83
    move v1, v3

    :goto_84
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_play:Z

    .line 422
    iget v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    const/4 v6, 0x6

    invoke-static {v1, v6}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v4, :cond_91

    move v1, v4

    goto :goto_92

    :cond_91
    move v1, v3

    :goto_92
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mOld_O:Z

    .line 423
    iget v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    invoke-static {v1, v3}, Lcom/android/server/policy/DeviceKeyHandler;->getOffset(II)I

    move-result v1

    if-ne v1, v4, :cond_9e

    move v1, v4

    goto :goto_9f

    :cond_9e
    move v1, v3

    :goto_9f
    iput-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mOld_V:Z

    .line 427
    iget-boolean v1, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_play:Z

    if-ne v1, v4, :cond_a7

    .line 428
    iput-boolean v4, p0, Lcom/android/server/policy/DeviceKeyHandler;->mMusic_pause:Z

    .line 432
    :cond_a7
    invoke-virtual {p0, v0}, Lcom/android/server/policy/DeviceKeyHandler;->makeGestureMap(Landroid/content/ContentResolver;)V

    .line 435
    new-array v1, v5, [B

    iget v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    iget v5, p0, Lcom/android/server/policy/DeviceKeyHandler;->mBlackKeySettingState:I

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 436
    .local v1, "enableByte":[B
    const-string v5, "/proc/touchpanel/gesture_enable"

    invoke-static {v5, v1}, Lcom/android/server/policy/FileUtils;->writeByteArray(Ljava/lang/String;[B)Z

    .line 438
    const-string/jumbo v5, "oem_acc_anti_misoperation_screen"

    invoke-static {v0, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v4, :cond_cc

    move v3, v4

    nop

    :cond_cc
    iput-boolean v3, p0, Lcom/android/server/policy/DeviceKeyHandler;->mPocketmodeEnabled:Z

    .line 441
    return-void
.end method
