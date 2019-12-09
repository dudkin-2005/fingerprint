.class public Lcom/android/server/audio/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/AudioService$AsdProxy;,
        Lcom/android/server/audio/AudioService$AudioPolicyProxy;,
        Lcom/android/server/audio/AudioService$AudioServiceInternal;,
        Lcom/android/server/audio/AudioService$VolumeController;,
        Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;,
        Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;,
        Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;,
        Lcom/android/server/audio/AudioService$SettingsObserver;,
        Lcom/android/server/audio/AudioService$AudioHandler;,
        Lcom/android/server/audio/AudioService$AudioSystemThread;,
        Lcom/android/server/audio/AudioService$VolumeStreamState;,
        Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;,
        Lcom/android/server/audio/AudioService$ScoClient;,
        Lcom/android/server/audio/AudioService$SoundPoolCallback;,
        Lcom/android/server/audio/AudioService$SoundPoolListenerThread;,
        Lcom/android/server/audio/AudioService$LoadSoundEffectReply;,
        Lcom/android/server/audio/AudioService$SetModeDeathHandler;,
        Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;,
        Lcom/android/server/audio/AudioService$ForceControlStreamClient;,
        Lcom/android/server/audio/AudioService$StreamVolumeCommand;,
        Lcom/android/server/audio/AudioService$playSilentBufferThread;,
        Lcom/android/server/audio/AudioService$Lifecycle;,
        Lcom/android/server/audio/AudioService$DeviceListSpec;
    }
.end annotation


# static fields
.field public static final ACTION_SHUTDOWN_MUTE_MUSIC:Ljava/lang/String; = "com.oem.intent.action.ACTION_SHUTDOWN_MUTE_MUSIC"

.field private static final ASSET_FILE_VERSION:Ljava/lang/String; = "1.0"

.field private static final ATTR_ASSET_FILE:Ljava/lang/String; = "file"

.field private static final ATTR_ASSET_ID:Ljava/lang/String; = "id"

.field private static final ATTR_GROUP_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field private static final BT_HEARING_AID_GAIN_MIN:I = -0x80

.field public static final CONNECT_INTENT_KEY_ADDRESS:Ljava/lang/String; = "address"

.field public static final CONNECT_INTENT_KEY_DEVICE_CLASS:Ljava/lang/String; = "class"

.field public static final CONNECT_INTENT_KEY_HAS_CAPTURE:Ljava/lang/String; = "hasCapture"

.field public static final CONNECT_INTENT_KEY_HAS_MIDI:Ljava/lang/String; = "hasMIDI"

.field public static final CONNECT_INTENT_KEY_HAS_PLAYBACK:Ljava/lang/String; = "hasPlayback"

.field public static final CONNECT_INTENT_KEY_PORT_NAME:Ljava/lang/String; = "portName"

.field public static final CONNECT_INTENT_KEY_STATE:Ljava/lang/String; = "state"

.field protected static final DEBUG_AP:Z

.field protected static final DEBUG_DEVICES:Z

.field protected static final DEBUG_MODE:Z

.field protected static final DEBUG_VOL:Z = true

.field private static final DEFAULT_STREAM_TYPE_OVERRIDE_DELAY_MS:I = 0x0

.field protected static final DEFAULT_VOL_STREAM_NO_PLAYBACK:I = 0x3

.field private static final DEVICE_MEDIA_UNMUTED_ON_PLUG:I = 0x402678c

.field private static final DEVICE_OVERRIDE_A2DP_ROUTE_ON_PLUG:I = 0x402600c

.field private static final FLAG_ADJUST_VOLUME:I = 0x1

.field private static final GROUP_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final INDICATE_SYSTEM_READY_RETRY_DELAY_MS:I = 0x3e8

.field protected static MAX_STREAM_VOLUME:[I = null

.field protected static MIN_STREAM_VOLUME:[I = null

.field private static final MSG_A2DP_DEVICE_CONFIG_CHANGE:I = 0x67

.field private static final MSG_ACCESSORY_PLUG_MEDIA_UNMUTE:I = 0x1b

.field private static final MSG_AUDIO_SERVER_DIED:I = 0x4

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY:I = 0xf

.field private static final MSG_BROADCAST_BT_CONNECTION_STATE:I = 0x13

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x6a

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field private static final MSG_CHECK_MUSIC_ACTIVE:I = 0xe

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME:I = 0x10

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME_FORCED:I = 0x11

.field private static final MSG_DISABLE_AUDIO_FOR_UID:I = 0x68

.field private static final MSG_DISPATCH_AUDIO_SERVER_STATE:I = 0x1d

.field private static final MSG_DYN_POLICY_MIX_STATE_UPDATE:I = 0x19

.field private static final MSG_ENABLE_SURROUND_FORMATS:I = 0x1e

.field private static final MSG_INDICATE_SYSTEM_READY:I = 0x1a

.field private static final MSG_LISTEN_AREA_STATUS:I = 0x21

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x7

.field private static final MSG_MUTE_MUSIC:I = 0x24

.field private static final MSG_NOTIFY_VOL_EVENT:I = 0x1c

.field private static final MSG_PERSIST_MUSIC_ACTIVE_MS:I = 0x16

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_SAFE_VOLUME_STATE:I = 0x12

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PER_SPEAKER_MUSIC_VOLUME:I = 0x20

.field private static final MSG_PLAY_SLIENT_BUFFER:I = 0x1f

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x5

.field private static final MSG_REPORT_NEW_ROUTES:I = 0xc

.field private static final MSG_SEND_GRADIENTVOL:I = 0x23

.field private static final MSG_SEND_HEADSETHOOK:I = 0x22

.field private static final MSG_SET_A2DP_SINK_CONNECTION_STATE:I = 0x66

.field private static final MSG_SET_A2DP_SRC_CONNECTION_STATE:I = 0x65

.field private static final MSG_SET_ALL_VOLUMES:I = 0xa

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final MSG_SET_FORCE_BT_A2DP_USE:I = 0xd

.field private static final MSG_SET_FORCE_USE:I = 0x8

.field private static final MSG_SET_HEARING_AID_CONNECTION_STATE:I = 0x69

.field private static final MSG_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x64

.field private static final MSG_SYSTEM_READY:I = 0x15

.field private static final MSG_UNLOAD_SOUND_EFFECTS:I = 0x14

.field private static final MSG_UNMUTE_STREAM:I = 0x18

.field private static final MUSIC_ACTIVE_POLL_PERIOD_MS:I = 0xea60

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_DELAY:I = 0x1f4

.field private static final RINGER_MODE_NAMES:[Ljava/lang/String;

.field private static final SAFE_MEDIA_VOLUME_ACTIVE:I = 0x3

.field private static final SAFE_MEDIA_VOLUME_DISABLED:I = 0x1

.field private static final SAFE_MEDIA_VOLUME_INACTIVE:I = 0x2

.field private static final SAFE_MEDIA_VOLUME_NOT_CONFIGURED:I = 0x0

.field private static final SAFE_VOLUME_CONFIGURE_TIMEOUT_MS:I = 0x7530

.field private static final SCO_MODE_MAX:I = 0x2

.field private static final SCO_MODE_RAW:I = 0x1

.field private static final SCO_MODE_UNDEFINED:I = -0x1

.field private static final SCO_MODE_VIRTUAL_CALL:I = 0x0

.field private static final SCO_MODE_VR:I = 0x2

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATING:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SOUND_EFFECTS_LOAD_TIMEOUT_MS:I = 0x1388

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STREAM_VOLUME_OPS:[I

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final TAG_ASSET:Ljava/lang/String; = "asset"

.field private static final TAG_AUDIO_ASSETS:Ljava/lang/String; = "audio_assets"

.field private static final TAG_GROUP:Ljava/lang/String; = "group"

.field public static final TEL_PACKAGE_NAME:Ljava/lang/String; = "com.android.server.telecom"

.field private static final TOUCH_EXPLORE_STREAM_TYPE_OVERRIDE_DELAY_MS:I = 0x3e8

.field private static final UNMUTE_STREAM_DELAY:I = 0x15e

.field private static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX:I = 0x44aa200

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static mLastDeviceConnectMsgTime:Ljava/lang/Long;

.field protected static mStreamVolumeAlias:[I

.field private static sIndependentA11yVolume:Z

.field private static sSoundEffectVolumeDb:I

.field private static sStreamOverrideDelayMs:I


# instance fields
.field final LOG_NB_EVENTS_DYN_POLICY:I

.field final LOG_NB_EVENTS_FORCE_USE:I

.field final LOG_NB_EVENTS_PHONE_STATE:I

.field final LOG_NB_EVENTS_VOLUME:I

.field final LOG_NB_EVENTS_WIRED_DEV_CONNECTION:I

.field private final SOUND_EFFECT_FILES_MAP:[[I

.field private final STREAM_VOLUME_ALIAS_DEFAULT:[I

.field private final STREAM_VOLUME_ALIAS_TELEVISION:[I

.field private final STREAM_VOLUME_ALIAS_VOICE:[I

.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mA2dpAvrcpLock:Ljava/lang/Object;

.field private mAccessibilityServiceUids:[I

.field private final mAccessibilityServiceUidsLock:Ljava/lang/Object;

.field private final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

.field private mAudioMonitor:Lcom/android/server/audio/AudioMonitor;

.field private final mAudioPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/audio/AudioService$AudioPolicyProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioPolicyCounter:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAudioPolicies"
    .end annotation
.end field

.field private mAudioServerStateListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/audio/AudioService$AsdProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

.field private mAutoPlayMusic:I

.field private mAvrcpAbsVolSupported:Z

.field mBecomingNoisyIntentDevices:I

.field private mBluetoothA2dpEnabled:Z

.field private final mBluetoothA2dpEnabledLock:Ljava/lang/Object;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBootCompelet:Z

.field private mBtScoVolChange:Z

.field private mCallInfoBroadcast:I

.field private mCameraSoundForced:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSettingsLock"
    .end annotation
.end field

.field private final mConnectedDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/audio/AudioService$DeviceListSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field private mDockAddress:Ljava/lang/String;

.field private mDockAudioMediaEnabled:Z

.field private mDockState:I

.field private final mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

.field private final mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

.field private mEnabledSurroundFormats:Ljava/lang/String;

.field private mEncodedSurroundMode:I

.field private mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

.field private final mExtVolumeControllerLock:Ljava/lang/Object;

.field mFixedVolumeDevices:I

.field private mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

.field private final mForceControlStreamLock:Ljava/lang/Object;

.field private final mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

.field private mForcedUseForComm:I

.field private mForcedUseForCommExt:I

.field mFullVolumeDevices:I

.field private mGradientVol:I

.field private mGradientingMusicDev:I

.field private mGradientingVol:Z

.field private final mHasVibrator:Z

.field private mHdmiCecSink:Z

.field private mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

.field private mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

.field private mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

.field private mHdmiSystemAudioSupported:Z

.field private mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

.field private mHeadsetNotication:I

.field private mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

.field private final mHearingAidLock:Ljava/lang/Object;

.field private final mIsSingleVolume:Z

.field private mListeningarea:Ljava/lang/String;

.field private mLoweredFromNormalToVibrateTime:J

.field private mMcc:I

.field private final mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

.field private mMode:I

.field private final mModeLogger:Lcom/android/server/audio/AudioEventLogger;

.field private final mMonitorRotation:Z

.field private mMusicActiveMs:I

.field private mMuteAffectedStreams:I

.field private mNm:Landroid/app/NotificationManager;

.field private mOnePlusFixedRingerMode:I

.field public mOnePlusMaxRingVolumeIndex:I

.field public mOnePlusMinRingVolumeIndex:I

.field private mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

.field private mPerScoMediaVolume:I

.field private mPerSpeakerMediaVolume:I

.field private final mPlatformType:I

.field private final mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

.field private mPreDelay:I

.field private mPrevVolDirection:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

.field private mRingerAndZenModeMutedStreams:I

.field private mRingerMode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSettingsLock"
    .end annotation
.end field

.field private mRingerModeAffectedStreams:I

.field private mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

.field private mRingerModeExternal:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSettingsLock"
    .end annotation
.end field

.field private volatile mRingtonePlayer:Landroid/media/IRingtonePlayer;

.field private mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mRmtSbmxFullVolRefCount:I

.field final mRoutesObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/media/IAudioRoutesObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSafeMediaVolumeDevices:I

.field private mSafeMediaVolumeIndex:I

.field private mSafeMediaVolumeState:Ljava/lang/Integer;

.field private mSafeUsbMediaVolumeDbfs:F

.field private mSafeUsbMediaVolumeIndex:I

.field private mScoAudioMode:I

.field private mScoAudioState:I

.field private mScoClientDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I

.field private final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

.field private final mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

.field private mSurroundModeChanged:Z

.field private mSystemReady:Z

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private final mUseFixedVolume:Z

.field private final mUserManagerInternal:Landroid/os/UserManagerInternal;

.field private final mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

.field private mUserSelectedVolumeControlStream:Z

.field private mUserSwitchedReceived:Z

.field private mVibrateSetting:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mVolBeforeGradienting:I

.field private mVolumeControlStream:I

.field private final mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

.field private final mVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

.field private mVolumePolicy:Landroid/media/VolumePolicy;

.field private final mWiredDevLogger:Lcom/android/server/audio/AudioEventLogger;

.field private mZenModeAffectedStreams:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 197
    const-string v0, "AudioService.MOD"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    .line 200
    const-string v0, "AudioService.AP"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    .line 207
    const-string v0, "AudioService.DEVICES"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    .line 383
    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_66

    sput-object v1, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    .line 398
    new-array v1, v0, [I

    fill-array-data v1, :array_80

    sput-object v1, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    .line 466
    new-array v0, v0, [I

    fill-array-data v0, :array_9a

    sput-object v0, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    .line 537
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 538
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 539
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 705
    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 8388
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    .line 8455
    const-string v0, "SILENT"

    const-string v1, "VIBRATE"

    const-string v2, "NORMAL"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    return-void

    :array_66
    .array-data 4
        0x6
        0x7
        0x7
        0x1e
        0x7
        0x7
        0xf
        0x7
        0xf
        0xf
        0xf
    .end array-data

    :array_80
    .array-data 4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_9a
    .array-data 4
        0x22
        0x24
        0x23
        0x24
        0x25
        0x26
        0x27
        0x24
        0x24
        0x24
        0x47
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 29
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v1, p0

    .line 799
    move-object/from16 v8, p1

    invoke-direct/range {p0 .. p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 242
    new-instance v0, Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {v0}, Lcom/android/server/audio/AudioService$VolumeController;-><init>()V

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    .line 333
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/server/audio/AudioService;->mMode:I

    .line 335
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 338
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 348
    const/4 v9, 0x2

    const/16 v0, 0xa

    filled-new-array {v0, v9}, [I

    move-result-object v3

    const-class v4, I

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 353
    iput v2, v1, Lcom/android/server/audio/AudioService;->mPreDelay:I

    .line 355
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/AudioMonitor;

    .line 360
    iput-boolean v2, v1, Lcom/android/server/audio/AudioService;->mBootCompelet:Z

    .line 365
    iput v2, v1, Lcom/android/server/audio/AudioService;->mGradientVol:I

    .line 366
    iput v2, v1, Lcom/android/server/audio/AudioService;->mVolBeforeGradienting:I

    .line 367
    iput v2, v1, Lcom/android/server/audio/AudioService;->mGradientingMusicDev:I

    .line 368
    iput-boolean v2, v1, Lcom/android/server/audio/AudioService;->mGradientingVol:Z

    .line 373
    const/4 v10, -0x1

    iput v10, v1, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    .line 374
    iput v10, v1, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    .line 379
    const-string v4, ""

    iput-object v4, v1, Lcom/android/server/audio/AudioService;->mListeningarea:Ljava/lang/String;

    .line 421
    const/16 v4, 0xb

    new-array v5, v4, [I

    fill-array-data v5, :array_416

    iput-object v5, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    .line 434
    new-array v5, v4, [I

    fill-array-data v5, :array_430

    iput-object v5, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    .line 447
    new-array v5, v4, [I

    fill-array-data v5, :array_44a

    iput-object v5, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    .line 489
    new-instance v5, Lcom/android/server/audio/AudioService$1;

    invoke-direct {v5, v1}, Lcom/android/server/audio/AudioService$1;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v5, v1, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 511
    iput v10, v1, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 515
    iput v2, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 517
    iput v2, v1, Lcom/android/server/audio/AudioService;->mZenModeAffectedStreams:I

    .line 543
    new-instance v5, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;

    invoke-direct {v5, v1, v3}, Lcom/android/server/audio/AudioService$AudioServiceBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v5, v1, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 549
    new-instance v5, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;

    invoke-direct {v5, v1, v3}, Lcom/android/server/audio/AudioService$AudioServiceUserRestrictionsListener;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v5, v1, Lcom/android/server/audio/AudioService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    .line 577
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v1, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 586
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 589
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    .line 641
    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 645
    iput v2, v1, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    .line 648
    iput v10, v1, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 652
    iput-boolean v2, v1, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    .line 653
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v1, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    .line 657
    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 663
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v1, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    .line 666
    new-instance v5, Landroid/media/AudioRoutesInfo;

    invoke-direct {v5}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v5, v1, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 667
    new-instance v5, Landroid/os/RemoteCallbackList;

    invoke-direct {v5}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v5, v1, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 671
    const v5, 0x2c1c00

    iput v5, v1, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 677
    iput v2, v1, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 681
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    .line 683
    iput v2, v1, Lcom/android/server/audio/AudioService;->mDockState:I

    .line 697
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v1, Lcom/android/server/audio/AudioService;->mHearingAidLock:Ljava/lang/Object;

    .line 701
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v1, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    .line 703
    iput-boolean v2, v1, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    .line 709
    sget-object v6, Landroid/media/VolumePolicy;->DEFAULT:Landroid/media/VolumePolicy;

    iput-object v6, v1, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 714
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v1, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    .line 717
    iput v10, v1, Lcom/android/server/audio/AudioService;->mAutoPlayMusic:I

    .line 721
    iput v2, v1, Lcom/android/server/audio/AudioService;->mHeadsetNotication:I

    .line 725
    iput v2, v1, Lcom/android/server/audio/AudioService;->mCallInfoBroadcast:I

    .line 726
    iput-boolean v2, v1, Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z

    .line 768
    new-instance v6, Lcom/android/server/audio/AudioService$2;

    invoke-direct {v6, v1}, Lcom/android/server/audio/AudioService$2;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v6, v1, Lcom/android/server/audio/AudioService;->mUidObserver:Landroid/app/IUidObserver;

    .line 2668
    iput v2, v1, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 2669
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    .line 4528
    new-instance v6, Lcom/android/server/audio/AudioService$3;

    invoke-direct {v6, v1}, Lcom/android/server/audio/AudioService$3;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v6, v1, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 7222
    const v6, 0xc027f8c

    iput v6, v1, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    .line 7549
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v1, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    .line 8164
    iput v2, v1, Lcom/android/server/audio/AudioService;->mMcc:I

    .line 8179
    const v6, 0x400000c

    iput v6, v1, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeDevices:I

    .line 8299
    iput-boolean v2, v1, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    .line 8310
    new-instance v6, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    invoke-direct {v6, v1, v3}, Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    iput-object v6, v1, Lcom/android/server/audio/AudioService;->mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    .line 8431
    const/16 v3, 0x14

    iput v3, v1, Lcom/android/server/audio/AudioService;->LOG_NB_EVENTS_PHONE_STATE:I

    .line 8432
    const/16 v6, 0x1e

    iput v6, v1, Lcom/android/server/audio/AudioService;->LOG_NB_EVENTS_WIRED_DEV_CONNECTION:I

    .line 8433
    iput v3, v1, Lcom/android/server/audio/AudioService;->LOG_NB_EVENTS_FORCE_USE:I

    .line 8434
    const/16 v7, 0x28

    iput v7, v1, Lcom/android/server/audio/AudioService;->LOG_NB_EVENTS_VOLUME:I

    .line 8435
    iput v0, v1, Lcom/android/server/audio/AudioService;->LOG_NB_EVENTS_DYN_POLICY:I

    .line 8437
    new-instance v11, Lcom/android/server/audio/AudioEventLogger;

    const-string/jumbo v12, "phone state (logged after successfull call to AudioSystem.setPhoneState(int))"

    invoke-direct {v11, v3, v12}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v11, v1, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 8440
    new-instance v11, Lcom/android/server/audio/AudioEventLogger;

    const-string/jumbo v12, "wired device connection (logged before onSetWiredDeviceConnectionState() is executed)"

    invoke-direct {v11, v6, v12}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v11, v1, Lcom/android/server/audio/AudioService;->mWiredDevLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 8445
    new-instance v6, Lcom/android/server/audio/AudioEventLogger;

    const-string v11, "force use (logged before setForceUse() is executed)"

    invoke-direct {v6, v3, v11}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v6, v1, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 8449
    new-instance v3, Lcom/android/server/audio/AudioEventLogger;

    const-string/jumbo v6, "volume changes (logged when command received by AudioService)"

    invoke-direct {v3, v7, v6}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 8452
    new-instance v3, Lcom/android/server/audio/AudioEventLogger;

    const-string v6, "dynamic policy events (logged when command received by AudioService)"

    invoke-direct {v3, v0, v6}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 8987
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    .line 9016
    new-instance v3, Lcom/android/server/audio/AudioService$5;

    invoke-direct {v3, v1}, Lcom/android/server/audio/AudioService$5;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    .line 9311
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    .line 9364
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    .line 9366
    iput v2, v1, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    .line 9370
    iput v2, v1, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    .line 9371
    const/16 v3, 0x3e8

    iput v3, v1, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    .line 9381
    iput v2, v1, Lcom/android/server/audio/AudioService;->mOnePlusFixedRingerMode:I

    .line 800
    iput-object v8, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 801
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 802
    const-string v3, "appops"

    invoke-virtual {v8, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    .line 804
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v3

    iput v3, v1, Lcom/android/server/audio/AudioService;->mPlatformType:I

    .line 806
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->isSingleVolume(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    .line 808
    const-class v3, Landroid/os/UserManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManagerInternal;

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    .line 809
    const-class v3, Landroid/app/ActivityManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManagerInternal;

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 811
    const-string/jumbo v3, "power"

    invoke-virtual {v8, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Landroid/os/PowerManager;

    .line 812
    .local v11, "pm":Landroid/os/PowerManager;
    const-string/jumbo v3, "handleAudioEvent"

    invoke-virtual {v11, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 814
    const-string/jumbo v3, "vibrator"

    invoke-virtual {v8, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    .line 815
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    if-nez v3, :cond_1d3

    move v3, v2

    goto :goto_1d9

    :cond_1d3
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    :goto_1d9
    iput-boolean v3, v1, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    .line 818
    const-string/jumbo v3, "ro.config.vc_call_vol_steps"

    invoke-static {v3, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 819
    .local v12, "maxCallVolume":I
    const/4 v3, 0x4

    if-eq v12, v10, :cond_1f0

    .line 820
    sget-object v6, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v12, v6, v2

    .line 821
    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    mul-int/lit8 v7, v12, 0x3

    div-int/2addr v7, v3

    aput v7, v6, v2

    .line 825
    :cond_1f0
    const-string/jumbo v6, "ro.config.media_vol_steps"

    invoke-static {v6, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 826
    .local v13, "maxMusicVolume":I
    const/4 v14, 0x3

    if-eq v13, v10, :cond_1fe

    .line 827
    sget-object v6, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v13, v6, v14

    .line 830
    :cond_1fe
    const-string/jumbo v6, "ro.config.media_vol_default"

    invoke-static {v6, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 831
    .local v15, "defaultMusicVolume":I
    if-eq v15, v10, :cond_212

    sget-object v6, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v6, v6, v14

    if-gt v15, v6, :cond_212

    .line 833
    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v15, v6, v14

    goto :goto_22b

    .line 835
    :cond_212
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v6

    if-eqz v6, :cond_222

    .line 836
    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v7, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v7, v7, v14

    div-int/2addr v7, v3

    aput v7, v6, v14

    goto :goto_22b

    .line 841
    :cond_222
    sget-object v6, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v7, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v7, v7, v14

    div-int/2addr v7, v9

    aput v7, v6, v14

    .line 851
    :goto_22b
    const-string/jumbo v6, "ro.config.alarm_vol_steps"

    invoke-static {v6, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 852
    .local v7, "maxAlarmVolume":I
    if-eq v7, v10, :cond_238

    .line 853
    sget-object v6, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v7, v6, v3

    .line 856
    :cond_238
    const-string/jumbo v6, "ro.config.alarm_vol_default"

    invoke-static {v6, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 857
    .local v6, "defaultAlarmVolume":I
    if-eq v6, v10, :cond_24c

    sget-object v16, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v4, v16, v3

    if-gt v6, v4, :cond_24c

    .line 859
    sget-object v4, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v6, v4, v3

    goto :goto_25a

    .line 862
    :cond_24c
    sget-object v4, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    const/16 v16, 0x6

    sget-object v18, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v18, v18, v3

    mul-int v16, v16, v18

    div-int/lit8 v16, v16, 0x7

    aput v16, v4, v3

    .line 866
    :goto_25a
    const-string/jumbo v4, "ro.config.system_vol_steps"

    invoke-static {v4, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 867
    .local v4, "maxSystemVolume":I
    if-eq v4, v10, :cond_267

    .line 868
    sget-object v16, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aput v4, v16, v5

    .line 871
    :cond_267
    const-string/jumbo v9, "ro.config.system_vol_default"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 872
    .local v9, "defaultSystemVolume":I
    if-eq v9, v10, :cond_27b

    sget-object v16, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v14, v16, v5

    if-gt v9, v14, :cond_27b

    .line 874
    sget-object v14, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    aput v9, v14, v5

    goto :goto_283

    .line 877
    :cond_27b
    sget-object v14, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v16, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v16, v16, v5

    aput v16, v14, v5

    .line 881
    :goto_283
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v14, 0x10e009e

    invoke-virtual {v5, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    sput v5, Lcom/android/server/audio/AudioService;->sSoundEffectVolumeDb:I

    .line 884
    iput v2, v1, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    .line 886
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->createAudioSystemThread()V

    .line 890
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/audio/AudioService;->mListeningarea:Ljava/lang/String;

    .line 893
    iget-object v5, v1, Lcom/android/server/audio/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v5}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 895
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v14

    .line 896
    .local v14, "cameraSoundForced":Z
    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, v14}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    .line 897
    iget-object v5, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v20, 0x8

    const/16 v21, 0x2

    const/16 v22, 0x4

    .line 901
    if-eqz v14, :cond_2c0

    .line 902
    const/16 v23, 0xb

    goto :goto_2c2

    :cond_2c0
    move/from16 v23, v2

    :goto_2c2
    new-instance v10, Ljava/lang/String;

    const-string v3, "AudioService ctor"

    invoke-direct {v10, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x0

    .line 897
    move-object/from16 v19, v5

    move-object/from16 v24, v10

    invoke-static/range {v19 .. v25}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 906
    new-instance v3, Ljava/lang/Integer;

    iget-object v5, v1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v10, "audio_safe_volume_state"

    invoke-static {v5, v10, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/Integer;-><init>(I)V

    iput-object v3, v1, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 911
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x10e008a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    mul-int/2addr v3, v0

    iput v3, v1, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    .line 914
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x11200c9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    .line 919
    const-string v0, "AudioService"

    invoke-direct {v1, v2, v0}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 920
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    .line 921
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readUserRestrictions()V

    .line 922
    new-instance v0, Lcom/android/server/audio/AudioService$SettingsObserver;

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioService$SettingsObserver;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mSettingsObserver:Lcom/android/server/audio/AudioService$SettingsObserver;

    .line 923
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->createStreamStates()V

    .line 927
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getSafeUsbMediaVolumeIndex()I

    move-result v0

    iput v0, v1, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    .line 929
    new-instance v0, Lcom/android/server/audio/PlaybackActivityMonitor;

    sget-object v3, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v5, 0x4

    aget v3, v3, v5

    invoke-direct {v0, v8, v3}, Lcom/android/server/audio/PlaybackActivityMonitor;-><init>(Landroid/content/Context;I)V

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    .line 932
    new-instance v0, Lcom/android/server/audio/MediaFocusControl;

    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-direct {v0, v3, v5}, Lcom/android/server/audio/MediaFocusControl;-><init>(Landroid/content/Context;Lcom/android/server/audio/PlayerFocusEnforcer;)V

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 934
    new-instance v0, Lcom/android/server/audio/RecordingActivityMonitor;

    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/server/audio/RecordingActivityMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 939
    :try_start_33b
    new-instance v0, Lcom/android/server/audio/AudioMonitor;

    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/AudioMonitor;

    .line 940
    const-string v0, "AudioService"

    const-string/jumbo v3, "mAudioMonitor new success!"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34c
    .catch Ljava/lang/Throwable; {:try_start_33b .. :try_end_34c} :catch_34d

    .line 943
    goto :goto_356

    .line 941
    :catch_34d
    move-exception v0

    .line 942
    .local v0, "t":Ljava/lang/Throwable;
    const-string v3, "AudioService"

    const-string/jumbo v5, "mAudioMonitor new ERROR!"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_356
    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    .line 949
    iput v2, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    .line 950
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {v1, v0, v2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 953
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 955
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 956
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 957
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 958
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 959
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 960
    const-string v3, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 961
    const-string v3, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 962
    const-string v3, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 963
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 965
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 969
    const-string v3, "com.oem.intent.action.ACTION_SHUTDOWN_MUTE_MUSIC"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 971
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 974
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 977
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 979
    const-string/jumbo v3, "ro.audio.monitorRotation"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    .line 980
    iget-boolean v2, v1, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    if-eqz v2, :cond_3c3

    .line 981
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-static {v2, v3}, Lcom/android/server/audio/RotationHelper;->init(Landroid/content/Context;Landroid/os/Handler;)V

    .line 984
    :cond_3c3
    const-string v2, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 985
    const-string v2, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 987
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object v2, v8

    move/from16 v17, v4

    move-object v4, v5

    .line 987
    .end local v4    # "maxSystemVolume":I
    .local v17, "maxSystemVolume":I
    move-object v5, v0

    move/from16 v18, v6

    move-object v6, v10

    .line 987
    .end local v6    # "defaultAlarmVolume":I
    .local v18, "defaultAlarmVolume":I
    move v10, v7

    move-object/from16 v7, v16

    .line 987
    .end local v7    # "maxAlarmVolume":I
    .local v10, "maxAlarmVolume":I
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 989
    const-class v2, Landroid/media/AudioManagerInternal;

    new-instance v3, Lcom/android/server/audio/AudioService$AudioServiceInternal;

    invoke-direct {v3, v1}, Lcom/android/server/audio/AudioService$AudioServiceInternal;-><init>(Lcom/android/server/audio/AudioService;)V

    invoke-static {v2, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 991
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mUserRestrictionsListener:Landroid/os/UserManagerInternal$UserRestrictionsListener;

    invoke-virtual {v2, v3}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    .line 993
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor;->initMonitor()V

    .line 997
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "per_speaker_music_volume"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    .line 999
    iget v2, v1, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    if-ne v2, v4, :cond_414

    .line 1000
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    iput v2, v1, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    .line 1003
    :cond_414
    return-void

    nop

    :array_416
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_430
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_44a
    .array-data 4
        0x0
        0x2
        0x2
        0x3
        0x4
        0x2
        0x6
        0x2
        0x2
        0x3
        0x3
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$AudioHandler;)Lcom/android/server/audio/AudioService$AudioHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$AudioHandler;

    .line 190
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 7
    .param p0, "x0"    # Landroid/os/Handler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .line 190
    invoke-static/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$10000(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerAndZenModeAffectedStreams()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10100(Lcom/android/server/audio/AudioService;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$10200(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSurroundModeChanged:Z

    return v0
.end method

.method static synthetic access$10402(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 190
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mSurroundModeChanged:Z

    return p1
.end method

.method static synthetic access$10500(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/ContentResolver;
    .param p2, "x2"    # Z

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/server/audio/AudioService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$10700(Lcom/android/server/audio/AudioService;ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10800(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget v0, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    return v0
.end method

.method static synthetic access$10802(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 190
    iput p1, p0, Lcom/android/server/audio/AudioService;->mDockState:I

    return p1
.end method

.method static synthetic access$10900(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioEventLogger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z

    return v0
.end method

.method static synthetic access$11002(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 190
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z

    return p1
.end method

.method static synthetic access$11100(Lcom/android/server/audio/AudioService;Landroid/content/Intent;Ljava/lang/Integer;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Ljava/lang/Integer;

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->checkAndUpdatTwsPlusScoState(Landroid/content/Intent;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11200(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$11300(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    return v0
.end method

.method static synthetic access$11400(Lcom/android/server/audio/AudioService;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Context;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$11500(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    return v0
.end method

.method static synthetic access$11502(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 190
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mUserSwitchedReceived:Z

    return p1
.end method

.method static synthetic access$11600(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    return-object v0
.end method

.method static synthetic access$11700(Lcom/android/server/audio/AudioService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    return-void
.end method

.method static synthetic access$11800(Lcom/android/server/audio/AudioService;Landroid/content/pm/UserInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/pm/UserInfo;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method static synthetic access$11900(Lcom/android/server/audio/AudioService;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->handleAudioEffectBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$12002(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 190
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mBootCompelet:Z

    return p1
.end method

.method static synthetic access$12100(Lcom/android/server/audio/AudioService;ZI)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(ZI)V

    return-void
.end method

.method static synthetic access$12200(Lcom/android/server/audio/AudioService;ZII)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 190
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->setMasterMuteInternalNoCallerCheck(ZII)V

    return-void
.end method

.method static synthetic access$12300(Lcom/android/server/audio/AudioService;)Landroid/hardware/hdmi/HdmiControlManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    return-object v0
.end method

.method static synthetic access$12400(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    return v0
.end method

.method static synthetic access$12402(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 190
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    return p1
.end method

.method static synthetic access$12500(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    return v0
.end method

.method static synthetic access$12600(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    return-void
.end method

.method static synthetic access$12800(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$VolumeController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    return-object v0
.end method

.method static synthetic access$12900(Lcom/android/server/audio/AudioService;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object v0
.end method

.method static synthetic access$12902(Lcom/android/server/audio/AudioService;Landroid/media/AudioManagerInternal$RingerModeDelegate;)Landroid/media/AudioManagerInternal$RingerModeDelegate;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 190
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    return-object p1
.end method

.method static synthetic access$13000(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I

    .line 190
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$13100(Lcom/android/server/audio/AudioService;IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # I

    .line 190
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$13200(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13300(Lcom/android/server/audio/AudioService;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    return-object v0
.end method

.method static synthetic access$13302(Lcom/android/server/audio/AudioService;[I)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # [I

    .line 190
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    return-object p1
.end method

.method static synthetic access$13408(Lcom/android/server/audio/AudioService;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicyCounter:I

    return v0
.end method

.method static synthetic access$13500(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setExtVolumeController(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    return-void
.end method

.method static synthetic access$13600(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$13700(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$13802(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/IAudioPolicyCallback;)Landroid/media/audiopolicy/IAudioPolicyCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 190
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    return-object p1
.end method

.method static synthetic access$13900(Lcom/android/server/audio/AudioService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$ForceControlStreamClient;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 190
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 190
    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    return p1
.end method

.method static synthetic access$1702(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 190
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/audio/AudioService;ILandroid/os/IBinder;ILjava/lang/String;)I
    .registers 6
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/IBinder;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;

    .line 190
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->disconnectBluetoothSco(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/audio/AudioService;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/os/Looper;

    .line 190
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/audio/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .line 190
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$SoundPoolCallback;

    .line 190
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolCallBack:Lcom/android/server/audio/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkScoAudioState()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 190
    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoAudioMode:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 190
    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoAudioMode:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .line 190
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 4
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .line 190
    invoke-static {p0, p1, p2}, Lcom/android/server/audio/AudioService;->connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 4
    .param p0, "x0"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .line 190
    invoke-static {p0, p1, p2}, Lcom/android/server/audio/AudioService;->disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/audio/AudioService;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/audio/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .line 190
    invoke-direct/range {p0 .. p6}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothA2dp;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .line 190
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/server/audio/AudioService;III)I
    .registers 5
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 190
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHearingAidLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/audio/AudioService;)Landroid/bluetooth/BluetoothHearingAid;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothHearingAid;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHearingAid;

    .line 190
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->observeDevicesForStreams(I)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isASWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    return v0
.end method

.method static synthetic access$5202(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 190
    iput p1, p0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    return p1
.end method

.method static synthetic access$5300(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    return v0
.end method

.method static synthetic access$5302(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 190
    iput p1, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    return p1
.end method

.method static synthetic access$5400(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mGradientingVol:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/android/server/audio/AudioService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 190
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mGradientingVol:Z

    return p1
.end method

.method static synthetic access$5500(Lcom/android/server/audio/AudioService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Lcom/android/server/audio/AudioService;)[Lcom/android/server/audio/AudioService$VolumeStreamState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/audio/AudioService;III)I
    .registers 5
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 190
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/android/server/audio/AudioService;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/audio/AudioService;)[[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$6300()Ljava/util/List;
    .registers 1

    .line 190
    sget-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/server/audio/AudioService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    return v0
.end method

.method static synthetic access$6500(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->loadTouchSoundAssets()V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolListenerThread;)Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    .line 190
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mSoundPoolListenerThread:Lcom/android/server/audio/AudioService$SoundPoolListenerThread;

    return-object p1
.end method

.method static synthetic access$6700()I
    .registers 1

    .line 190
    sget v0, Lcom/android/server/audio/AudioService;->sSoundEffectVolumeDb:I

    return v0
.end method

.method static synthetic access$6900(Lcom/android/server/audio/AudioService;IILjava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .line 190
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->setForceUseInt_SyncDevices(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "x2"    # I

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/audio/AudioService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onDispatchAudioServerStateChange(Z)V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/audio/AudioService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioEventLogger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mWiredDevLogger:Lcom/android/server/audio/AudioEventLogger;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .line 190
    invoke-direct/range {p0 .. p5}, Lcom/android/server/audio/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 190
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/audio/AudioService;->onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onSetHearingAidConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/audio/AudioService;Landroid/bluetooth/BluetoothDevice;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/PlaybackActivityMonitor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onCheckMusicActive(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/audio/AudioService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->onSendBecomingNoisyIntent()V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onConfigureSafeVolume(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onBroadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget v0, p0, Lcom/android/server/audio/AudioService;->mAutoPlayMusic:I

    return v0
.end method

.method static synthetic access$8602(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 190
    iput p1, p0, Lcom/android/server/audio/AudioService;->mAutoPlayMusic:I

    return p1
.end method

.method static synthetic access$8700(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    return v0
.end method

.method static synthetic access$8800(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget v0, p0, Lcom/android/server/audio/AudioService;->mGradientingMusicDev:I

    return v0
.end method

.method static synthetic access$8802(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 190
    iput p1, p0, Lcom/android/server/audio/AudioService;->mGradientingMusicDev:I

    return p1
.end method

.method static synthetic access$8900(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVolBeforeGradienting:I

    return v0
.end method

.method static synthetic access$8902(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 190
    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolBeforeGradienting:I

    return p1
.end method

.method static synthetic access$9000(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget v0, p0, Lcom/android/server/audio/AudioService;->mGradientVol:I

    return v0
.end method

.method static synthetic access$9002(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 190
    iput p1, p0, Lcom/android/server/audio/AudioService;->mGradientVol:I

    return p1
.end method

.method static synthetic access$9100(Lcom/android/server/audio/AudioService;IIIZLjava/lang/String;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Ljava/lang/String;

    .line 190
    invoke-direct/range {p0 .. p5}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/server/audio/AudioService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/android/server/audio/AudioService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mListeningarea:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9302(Lcom/android/server/audio/AudioService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 190
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mListeningarea:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$9400(Lcom/android/server/audio/AudioService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onAccessoryPlugMediaUnmute(I)V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/server/audio/AudioService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onUnmuteStream(II)V

    return-void
.end method

.method static synthetic access$9600(Lcom/android/server/audio/AudioService;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->onDynPolicyMixStateUpdate(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$9700(Lcom/android/server/audio/AudioService;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 190
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->onEnableSurroundFormats(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/server/audio/AudioService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;

    .line 190
    iget v0, p0, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    return v0
.end method

.method static synthetic access$9802(Lcom/android/server/audio/AudioService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # I

    .line 190
    iput p1, p0, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    return p1
.end method

.method static synthetic access$9902(Lcom/android/server/audio/AudioService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 190
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    return-object p1
.end method

.method private adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 24
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v7, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 1719
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v12, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    .line 1721
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p6

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    move-object v1, v12

    move v3, v9

    move/from16 v4, p1

    move v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    .line 1719
    invoke-virtual {v0, v12}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1723
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1724
    :try_start_38
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustSuggestedStreamVolume() stream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", volControlStream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", userSelect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v8, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    iget-boolean v0, v8, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_7b

    .line 1730
    iget v0, v8, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 1743
    .local v0, "streamType":I
    move v4, v0

    goto :goto_9c

    .line 1732
    .end local v0    # "streamType":I
    :cond_7b
    invoke-direct {v8, v9}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result v0

    .line 1734
    .local v0, "maybeActiveStreamType":I
    const/4 v3, 0x0

    if-eq v0, v2, :cond_8b

    const/4 v4, 0x5

    if-ne v0, v4, :cond_86

    goto :goto_8b

    .line 1738
    :cond_86
    invoke-static {v0, v3}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v3

    goto :goto_8f

    .line 1736
    :cond_8b
    :goto_8b
    invoke-direct {v8, v0, v3}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v3

    .line 1738
    .local v3, "activeForReal":Z
    :goto_8f
    nop

    .line 1740
    if-nez v3, :cond_9b

    iget v4, v8, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_98

    goto :goto_9b

    .line 1743
    :cond_98
    iget v4, v8, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .end local v0    # "maybeActiveStreamType":I
    .end local v3    # "activeForReal":Z
    goto :goto_9c

    .line 1741
    .restart local v0    # "maybeActiveStreamType":I
    .restart local v3    # "activeForReal":Z
    :cond_9b
    :goto_9b
    move v4, v0

    .line 1743
    .end local v0    # "maybeActiveStreamType":I
    .end local v3    # "activeForReal":Z
    .local v4, "streamType":I
    :goto_9c
    move v0, v4

    .line 1746
    .end local v4    # "streamType":I
    .local v0, "streamType":I
    monitor-exit v1
    :try_end_9e
    .catchall {:try_start_38 .. :try_end_9e} :catchall_f3

    .line 1748
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    move-result v12

    .line 1750
    .local v12, "isMute":Z
    invoke-direct {v8, v0}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 1751
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v14, v1, v0

    .line 1754
    .local v14, "resolvedStream":I
    and-int/lit8 v1, v7, 0x4

    if-eqz v1, :cond_b2

    if-eq v14, v2, :cond_b2

    .line 1756
    and-int/lit8 v1, v7, -0x5

    .line 1761
    .end local p3    # "flags":I
    .local v1, "flags":I
    move v7, v1

    .end local v1    # "flags":I
    .local v7, "flags":I
    :cond_b2
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1, v14, v7, v12}, Lcom/android/server/audio/AudioService$VolumeController;->suppressAdjustment(IIZ)Z

    move-result v1

    if-eqz v1, :cond_e3

    .line 1764
    if-eqz v10, :cond_d3

    new-instance v1, Ljava/lang/String;

    const-string v2, "com.oneplus.aod"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 1765
    const-string v1, "AudioService"

    const-string v2, "AOV,The volume ui will never show,ignore suppressAdjustment."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    move/from16 v1, p1

    goto :goto_d4

    .line 1767
    :cond_d3
    const/4 v1, 0x0

    .line 1769
    .end local p1    # "direction":I
    .local v1, "direction":I
    :goto_d4
    and-int/lit8 v2, v7, -0x5

    .line 1770
    .end local v7    # "flags":I
    .local v2, "flags":I
    and-int/lit8 v2, v2, -0x11

    .line 1771
    const-string v3, "AudioService"

    const-string v4, "Volume controller suppressed adjustment"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    move v15, v1

    move/from16 v16, v2

    goto :goto_e7

    .end local v1    # "direction":I
    .end local v2    # "flags":I
    .restart local v7    # "flags":I
    .restart local p1    # "direction":I
    :cond_e3
    move/from16 v15, p1

    move/from16 v16, v7

    .end local v7    # "flags":I
    .end local p1    # "direction":I
    .local v15, "direction":I
    .local v16, "flags":I
    :goto_e7
    move-object v1, v8

    move v2, v0

    move v3, v15

    move/from16 v4, v16

    move-object v5, v10

    move-object v6, v11

    move v7, v13

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1775
    return-void

    .line 1746
    .end local v0    # "streamType":I
    .end local v12    # "isMute":Z
    .end local v14    # "resolvedStream":I
    .end local v15    # "direction":I
    .end local v16    # "flags":I
    .restart local p1    # "direction":I
    .restart local p3    # "flags":I
    :catchall_f3
    move-exception v0

    :try_start_f4
    monitor-exit v1
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f3

    throw v0
.end method

.method private broadcastMasterMuteStatus(Z)V
    .registers 4
    .param p1, "muted"    # Z

    .line 2548
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2549
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2550
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2552
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 2553
    return-void
.end method

.method private broadcastRingerMode(Ljava/lang/String;I)V
    .registers 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "ringerMode"    # I

    .line 5246
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5247
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5248
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5250
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 5251
    return-void
.end method

.method private broadcastScoConnectionState(I)V
    .registers 9
    .param p1, "state"    # I

    .line 4438
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x13

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4440
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .registers 5
    .param p1, "vibrateType"    # I

    .line 5255
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 5256
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5257
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5258
    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5259
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 5261
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_20
    return-void
.end method

.method private canChangeAccessibilityVolume()Z
    .registers 7

    .line 2254
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2255
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_ACCESSIBILITY_VOLUME"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_10

    .line 2257
    monitor-exit v0

    return v2

    .line 2259
    :cond_10
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    const/4 v3, 0x0

    if-eqz v1, :cond_2a

    .line 2260
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2261
    .local v1, "callingUid":I
    move v4, v3

    .local v4, "i":I
    :goto_1a
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    array-length v5, v5

    if-ge v4, v5, :cond_2a

    .line 2262
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    aget v5, v5, v4

    if-ne v5, v1, :cond_27

    .line 2263
    monitor-exit v0

    return v2

    .line 2261
    :cond_27
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 2267
    .end local v1    # "callingUid":I
    .end local v4    # "i":I
    :cond_2a
    monitor-exit v0

    return v3

    .line 2268
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private cancelA2dpDeviceTimeout()V
    .registers 3

    .line 6973
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 6974
    return-void
.end method

.method private checkAllAliasStreamVolumes()V
    .registers 8

    .line 1322
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1323
    :try_start_3
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_38

    .line 1324
    :try_start_6
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 1325
    .local v2, "numStreamTypes":I
    const/4 v3, 0x0

    .local v3, "streamType":I
    :goto_b
    if-ge v3, v2, :cond_32

    .line 1326
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v6, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    const-string v6, "AudioService"

    .line 1327
    invoke-virtual {v4, v5, v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1329
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 1330
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1325
    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1333
    .end local v2    # "numStreamTypes":I
    .end local v3    # "streamType":I
    :cond_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_35

    .line 1334
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_38

    .line 1335
    return-void

    .line 1333
    :catchall_35
    move-exception v2

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw v2

    .line 1334
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private checkAllFixedVolumeDevices()V
    .registers 4

    .line 1339
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1340
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 1341
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1340
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1343
    .end local v1    # "streamType":I
    :cond_11
    return-void
.end method

.method private checkAllFixedVolumeDevices(I)V
    .registers 3
    .param p1, "streamType"    # I

    .line 1346
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->checkFixedVolumeDevices()V

    .line 1347
    return-void
.end method

.method private checkAndUpdatTwsPlusScoState(Landroid/content/Intent;Ljava/lang/Integer;)Z
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "state"    # Ljava/lang/Integer;

    .line 7581
    const/4 v0, 0x1

    .line 7582
    .local v0, "ret":Z
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 7583
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7585
    if-nez v1, :cond_29

    .line 7586
    const-string v2, "AudioService"

    const-string v3, "checkAndUpdatTwsPlusScoState: device is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7589
    return v0

    .line 7592
    :cond_29
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 7593
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_49

    .line 7596
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isAudioPathUp()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 7597
    const-string v2, "AudioService"

    const-string v3, "No need to bringup audio-path"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7598
    const/4 v0, 0x0

    .line 7601
    :cond_45
    invoke-direct {p0, v1, p2}, Lcom/android/server/audio/AudioService;->updateTwsPlusScoState(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V

    goto :goto_5b

    .line 7604
    :cond_49
    invoke-direct {p0, v1, p2}, Lcom/android/server/audio/AudioService;->updateTwsPlusScoState(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V

    .line 7607
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isAudioPathUp()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 7608
    const-string v2, "AudioService"

    const-string/jumbo v3, "not good to tear down audio-path"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7609
    const/4 v0, 0x0

    .line 7613
    :cond_5b
    :goto_5b
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndUpdatTwsPlusScoState returns "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7614
    return v0
.end method

.method private checkForRingerModeChange(IIIZLjava/lang/String;I)I
    .registers 15
    .param p1, "oldIndex"    # I
    .param p2, "direction"    # I
    .param p3, "step"    # I
    .param p4, "isMuted"    # Z
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "flags"    # I

    .line 4883
    const/4 v0, 0x1

    .line 4884
    .local v0, "result":I
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v1

    if-nez v1, :cond_108

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v1, :cond_d

    goto/16 :goto_108

    .line 4888
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    .line 4890
    .local v1, "ringerMode":I
    const/16 v2, 0x64

    const/4 v3, 0x1

    const/16 v4, 0x65

    const/4 v5, 0x2

    const/4 v6, -0x1

    packed-switch v1, :pswitch_data_10a

    .line 4974
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_de

    .line 4892
    :pswitch_33
    if-ne p2, v6, :cond_52

    .line 4893
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_47

    .line 4899
    if-gt p3, p1, :cond_de

    mul-int/2addr v5, p3

    if-ge p1, v5, :cond_de

    .line 4900
    const/4 v1, 0x1

    .line 4901
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    goto/16 :goto_de

    .line 4904
    :cond_47
    if-ne p1, p3, :cond_de

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v2, v2, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v2, :cond_de

    .line 4905
    const/4 v1, 0x0

    goto/16 :goto_de

    .line 4908
    :cond_52
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_de

    if-eq p2, v4, :cond_5c

    const/16 v2, -0x64

    if-ne p2, v2, :cond_de

    .line 4910
    :cond_5c
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_62

    .line 4911
    const/4 v1, 0x1

    goto :goto_63

    .line 4913
    :cond_62
    const/4 v1, 0x0

    .line 4916
    :goto_63
    and-int/lit8 v0, v0, -0x2

    goto/16 :goto_de

    .line 4920
    :pswitch_67
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v7, :cond_74

    .line 4921
    const-string v2, "AudioService"

    const-string v3, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4923
    goto/16 :goto_de

    .line 4925
    :cond_74
    if-ne p2, v6, :cond_ac

    .line 4927
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_81

    mul-int/2addr v5, p3

    if-lt p1, v5, :cond_81

    if-eqz p4, :cond_81

    .line 4928
    const/4 v1, 0x2

    goto :goto_b3

    .line 4929
    :cond_81
    iget v2, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    if-eq v2, v6, :cond_b3

    .line 4930
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v2, v2, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v2, :cond_a9

    .line 4931
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/audio/AudioService;->mLoweredFromNormalToVibrateTime:J

    sub-long/2addr v2, v4

    .line 4933
    .local v2, "diff":J
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget v4, v4, Landroid/media/VolumePolicy;->vibrateToSilentDebounce:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_a8

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v4, :cond_a8

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 4938
    invoke-interface {v4}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->canVolumeDownEnterSilent()Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 4939
    const/4 v1, 0x0

    .line 4941
    .end local v2    # "diff":J
    :cond_a8
    goto :goto_b3

    .line 4942
    :cond_a9
    or-int/lit16 v0, v0, 0x800

    goto :goto_b3

    .line 4945
    :cond_ac
    if-eq p2, v3, :cond_b2

    if-eq p2, v4, :cond_b2

    if-ne p2, v2, :cond_b3

    .line 4948
    :cond_b2
    const/4 v1, 0x2

    .line 4950
    :cond_b3
    :goto_b3
    and-int/lit8 v0, v0, -0x2

    .line 4951
    goto :goto_de

    .line 4953
    :pswitch_b6
    iget-boolean v7, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v7, :cond_c3

    if-ne p2, v6, :cond_c3

    mul-int/2addr v5, p3

    if-lt p1, v5, :cond_c3

    if-eqz p4, :cond_c3

    .line 4955
    const/4 v1, 0x2

    goto :goto_db

    .line 4956
    :cond_c3
    if-eq p2, v3, :cond_c9

    if-eq p2, v4, :cond_c9

    if-ne p2, v2, :cond_db

    .line 4959
    :cond_c9
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v2, v2, Landroid/media/VolumePolicy;->volumeUpToExitSilent:Z

    if-nez v2, :cond_d2

    .line 4960
    or-int/lit16 v0, v0, 0x80

    goto :goto_db

    .line 4962
    :cond_d2
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_da

    if-ne p2, v3, :cond_da

    .line 4963
    const/4 v1, 0x1

    goto :goto_db

    .line 4967
    :cond_da
    const/4 v1, 0x2

    .line 4971
    :cond_db
    :goto_db
    and-int/lit8 v0, v0, -0x2

    .line 4972
    nop

    .line 4978
    :cond_de
    :goto_de
    invoke-direct {p0, p5}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ff

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v2

    if-eqz v2, :cond_ff

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 4979
    invoke-virtual {v2, p5}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ff

    and-int/lit16 v2, p6, 0x1000

    if-eqz v2, :cond_f7

    goto :goto_ff

    .line 4981
    :cond_f7
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Not allowed to change Do Not Disturb state"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4984
    :cond_ff
    :goto_ff
    const-string v2, "AudioService.checkForRingerModeChange"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 4986
    iput p2, p0, Lcom/android/server/audio/AudioService;->mPrevVolDirection:I

    .line 4988
    return v0

    .line 4885
    .end local v1    # "ringerMode":I
    :cond_108
    :goto_108
    return v0

    nop

    :pswitch_data_10a
    .packed-switch 0x0
        :pswitch_b6
        :pswitch_67
        :pswitch_33
    .end packed-switch
.end method

.method private checkMonitorAudioServerStatePermission()V
    .registers 3

    .line 9315
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 9318
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1d

    .line 9321
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not allowed to monitor audioserver state"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9323
    :cond_1d
    :goto_1d
    return-void
.end method

.method private checkMuteAffectedStreams()V
    .registers 6

    .line 1352
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_26

    .line 1353
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    .line 1354
    .local v1, "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$600(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-lez v2, :cond_23

    .line 1355
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v2

    if-eqz v2, :cond_23

    .line 1356
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    not-int v3, v3

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    .line 1352
    .end local v1    # "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1359
    .end local v0    # "i":I
    :cond_26
    return-void
.end method

.method private checkSafeMediaVolume(III)Z
    .registers 7
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I

    .line 8250
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v0

    .line 8251
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_21

    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, p1

    if-ne v1, v2, :cond_21

    const v1, 0x400000c

    and-int/2addr v1, p3

    if-eqz v1, :cond_21

    .line 8254
    invoke-direct {p0, p3}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v1

    if-le p2, v1, :cond_21

    .line 8255
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 8257
    :cond_21
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 8258
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private checkScoAudioState()V
    .registers 4

    .line 4297
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4298
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1e

    iget v1, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 4300
    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1e

    .line 4302
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    .line 4304
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_38

    .line 4305
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In checkScoAudioState(), mScoAudioState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4306
    return-void

    .line 4304
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private checkSendBecomingNoisyIntent(III)I
    .registers 15
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "musicDevice"    # I

    .line 7234
    const/4 v0, 0x0

    .line 7235
    .local v0, "delay":I
    if-nez p2, :cond_5d

    iget v1, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_5d

    .line 7236
    const/4 v1, 0x0

    .line 7237
    .local v1, "devices":I
    const/4 v2, 0x0

    .line 7237
    .local v2, "i":I
    :goto_a
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 7238
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$DeviceListSpec;

    iget v3, v3, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    .line 7239
    .local v3, "dev":I
    const/high16 v4, -0x80000000

    and-int/2addr v4, v3

    if-nez v4, :cond_27

    iget v4, p0, Lcom/android/server/audio/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_27

    .line 7241
    or-int/2addr v1, v3

    .line 7237
    .end local v3    # "dev":I
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 7244
    .end local v2    # "i":I
    :cond_2a
    if-nez p3, :cond_31

    .line 7245
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result p3

    .line 7250
    :cond_31
    if-eq p1, p3, :cond_39

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v2

    if-eqz v2, :cond_5d

    :cond_39
    if-ne p1, v1, :cond_5d

    .line 7251
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->hasMediaDynamicPolicy()Z

    move-result v2

    if-nez v2, :cond_5d

    .line 7252
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 7253
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7260
    const-string/jumbo v2, "vendor.audio.noisy.broadcast.delay"

    const/16 v3, 0x2bc

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 7264
    .end local v1    # "devices":I
    :cond_5d
    return v0
.end method

.method private checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    .registers 9
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mAudioPolicies"
    .end annotation

    .line 8910
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 8911
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 8913
    .local v0, "hasPermissionForPolicy":Z
    :goto_d
    const/4 v1, 0x0

    if-nez v0, :cond_3f

    .line 8914
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8915
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8916
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8914
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8917
    return-object v1

    .line 8920
    :cond_3f
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 8921
    .local v2, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-nez v2, :cond_7c

    .line 8922
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8923
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " / uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8924
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", unregistered policy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8922
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8925
    return-object v1

    .line 8927
    :cond_7c
    return-object v2
.end method

.method private configureHdmiPlugIntent(Landroid/content/Intent;I)V
    .registers 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "state"    # I

    move-object/from16 v0, p1

    .line 7505
    move/from16 v1, p2

    const-string v2, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7506
    const-string v2, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7507
    const/4 v2, 0x1

    if-ne v1, v2, :cond_a0

    .line 7508
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7509
    .local v3, "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    new-array v4, v2, [I

    .line 7510
    .local v4, "portGeneration":[I
    invoke-static {v3, v4}, Landroid/media/AudioSystem;->listAudioPorts(Ljava/util/ArrayList;[I)I

    move-result v5

    .line 7511
    .local v5, "status":I
    if-nez v5, :cond_a0

    .line 7512
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_22
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioPort;

    .line 7513
    .local v7, "port":Landroid/media/AudioPort;
    instance-of v8, v7, Landroid/media/AudioDevicePort;

    if-eqz v8, :cond_9f

    .line 7514
    move-object v8, v7

    check-cast v8, Landroid/media/AudioDevicePort;

    .line 7515
    .local v8, "devicePort":Landroid/media/AudioDevicePort;
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->type()I

    move-result v9

    const/16 v10, 0x400

    if-eq v9, v10, :cond_45

    .line 7516
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->type()I

    move-result v9

    const/high16 v10, 0x40000

    if-ne v9, v10, :cond_9f

    .line 7518
    :cond_45
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v9

    invoke-static {v9}, Landroid/media/AudioFormat;->filterPublicFormats([I)[I

    move-result-object v9

    .line 7519
    .local v9, "formats":[I
    array-length v10, v9

    const/4 v11, 0x0

    if-lez v10, :cond_86

    .line 7520
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7521
    .local v10, "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v12, v9

    move v13, v11

    :goto_58
    if-ge v13, v12, :cond_68

    aget v14, v9, v13

    .line 7523
    .local v14, "format":I
    if-eqz v14, :cond_65

    .line 7524
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7521
    .end local v14    # "format":I
    :cond_65
    add-int/lit8 v13, v13, 0x1

    goto :goto_58

    .line 7527
    :cond_68
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    new-array v12, v12, [I

    .line 7528
    .local v12, "encodingArray":[I
    move v13, v11

    .local v13, "i":I
    :goto_6f
    array-length v14, v12

    if-ge v13, v14, :cond_81

    .line 7529
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v12, v13

    .line 7528
    add-int/lit8 v13, v13, 0x1

    goto :goto_6f

    .line 7531
    .end local v13    # "i":I
    :cond_81
    const-string v13, "android.media.extra.ENCODINGS"

    invoke-virtual {v0, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 7534
    .end local v10    # "encodingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "encodingArray":[I
    :cond_86
    const/4 v10, 0x0

    .line 7535
    .local v10, "maxChannels":I
    invoke-virtual {v8}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v12

    array-length v13, v12

    :goto_8c
    if-ge v11, v13, :cond_9a

    aget v14, v12, v11

    .line 7536
    .local v14, "mask":I
    invoke-static {v14}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v15

    .line 7537
    .local v15, "channelCount":I
    if-le v15, v10, :cond_97

    .line 7538
    move v10, v15

    .line 7535
    .end local v14    # "mask":I
    .end local v15    # "channelCount":I
    :cond_97
    add-int/lit8 v11, v11, 0x1

    goto :goto_8c

    .line 7541
    :cond_9a
    const-string v11, "android.media.extra.MAX_CHANNEL_COUNT"

    invoke-virtual {v0, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7544
    .end local v7    # "port":Landroid/media/AudioPort;
    .end local v8    # "devicePort":Landroid/media/AudioDevicePort;
    .end local v9    # "formats":[I
    .end local v10    # "maxChannels":I
    :cond_9f
    goto :goto_22

    .line 7547
    .end local v3    # "ports":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioPort;>;"
    .end local v4    # "portGeneration":[I
    .end local v5    # "status":I
    :cond_a0
    return-void
.end method

.method private static connectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .param p0, "bluetoothHeadset"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "scoAudioMode"    # I

    .line 4398
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In connectBluetoothScoAudioHelper(), scoAudioMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bluetoothHeadset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", BluetoothDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4400
    packed-switch p2, :pswitch_data_50

    .line 4413
    const/4 v0, 0x0

    return v0

    .line 4409
    :pswitch_2b
    const-string v0, "AudioService"

    const-string v1, "In connectBluetoothScoAudioHelper(), calling startVoiceRecognition()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4411
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0

    .line 4402
    :pswitch_37
    const-string v0, "AudioService"

    const-string v1, "In connectBluetoothScoAudioHelper(), calling connectAudio()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4403
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->connectAudio()Z

    move-result v0

    return v0

    .line 4405
    :pswitch_43
    const-string v0, "AudioService"

    const-string v1, "In connectBluetoothScoAudioHelper(), calling startScoUsingVirtualVoiceCall()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4407
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall()Z

    move-result v0

    return v0

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_43
        :pswitch_37
        :pswitch_2b
    .end packed-switch
.end method

.method private createAudioSystemThread()V
    .registers 2

    .line 1302
    new-instance v0, Lcom/android/server/audio/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$AudioSystemThread;-><init>(Lcom/android/server/audio/AudioService;)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    .line 1303
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioSystemThread:Lcom/android/server/audio/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioSystemThread;->start()V

    .line 1304
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->waitForAudioHandlerCreation()V

    .line 1305
    return-void
.end method

.method private createStreamStates()V
    .registers 7

    .line 1362
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1363
    .local v0, "numStreamTypes":I
    new-array v1, v0, [Lcom/android/server/audio/AudioService$VolumeStreamState;

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    .line 1365
    .local v1, "streams":[Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_1e

    .line 1366
    new-instance v3, Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    sget-object v5, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v2

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v2, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;-><init>(Lcom/android/server/audio/AudioService;Ljava/lang/String;ILcom/android/server/audio/AudioService$1;)V

    aput-object v3, v1, v2

    .line 1365
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1370
    .end local v2    # "i":I
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    .line 1371
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    .line 1372
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    .line 1373
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateDefaultVolumes()V

    .line 1374
    return-void
.end method

.method private discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "cb"    # Landroid/os/IBinder;

    .line 2645
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2646
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2647
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    .line 2648
    .local v1, "handler":Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;
    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2649
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->forget()V

    .line 2650
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2651
    const/4 v2, 0x1

    return v2

    .line 2653
    .end local v1    # "handler":Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;
    :cond_22
    goto :goto_6

    .line 2654
    :cond_23
    const/4 v1, 0x0

    return v1
.end method

.method private disconnectBluetoothSco(I)V
    .registers 5
    .param p1, "exceptPid"    # I

    .line 4365
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In disconnectBluetoothSco(), exceptPid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4366
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4367
    :try_start_19
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkScoAudioState()V

    .line 4368
    iget v1, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    .line 4369
    monitor-exit v0

    return-void

    .line 4371
    :cond_23
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V

    .line 4372
    monitor-exit v0

    .line 4373
    return-void

    .line 4372
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_19 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private static disconnectBluetoothScoAudioHelper(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;I)Z
    .registers 6
    .param p0, "bluetoothHeadset"    # Landroid/bluetooth/BluetoothHeadset;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "scoAudioMode"    # I

    .line 4377
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In disconnectBluetoothScoAudioHelper(), scoAudioMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bluetoothHeadset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", BluetoothDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4379
    packed-switch p2, :pswitch_data_50

    .line 4392
    const/4 v0, 0x0

    return v0

    .line 4388
    :pswitch_2b
    const-string v0, "AudioService"

    const-string v1, "In disconnectBluetoothScoAudioHelper(), calling stopVoiceRecognition()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4390
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0

    .line 4381
    :pswitch_37
    const-string v0, "AudioService"

    const-string v1, "In disconnectBluetoothScoAudioHelper(), calling disconnectAudio()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4382
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    move-result v0

    return v0

    .line 4384
    :pswitch_43
    const-string v0, "AudioService"

    const-string v1, "In disconnectBluetoothScoAudioHelper(), calling stopScoUsingVirtualVoiceCall()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4386
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall()Z

    move-result v0

    return v0

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_43
        :pswitch_37
        :pswitch_2b
    .end packed-switch
.end method

.method private dumpAudioPolicies(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 9005
    const-string v0, "\nAudio policies:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9006
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 9007
    :try_start_8
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 9008
    .local v2, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9009
    .end local v2    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    goto :goto_12

    .line 9010
    :cond_26
    monitor-exit v0

    .line 9011
    return-void

    .line 9010
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private dumpRingerMode(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 8462
    const-string v0, "\nRinger mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode (internal) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode (external) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/audio/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8465
    const-string v0, "affected"

    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 8466
    const-string/jumbo v0, "muted"

    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/audio/AudioService;->dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 8467
    const-string v0, "- delegate = "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8468
    return-void
.end method

.method private dumpRingerModeStreams(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "streams"    # I

    .line 8471
    const-string v0, "- ringer mode "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " streams = 0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8472
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8473
    if-eqz p3, :cond_4b

    .line 8474
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8475
    const/4 v0, 0x1

    .line 8476
    .local v0, "first":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    sget-object v2, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    array-length v2, v2

    const/16 v3, 0x2c

    if-ge v1, v2, :cond_3c

    .line 8477
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    .line 8478
    .local v2, "stream":I
    and-int v4, p3, v2

    if-eqz v4, :cond_39

    .line 8479
    if-nez v0, :cond_2f

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 8480
    :cond_2f
    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8481
    not-int v3, v2

    and-int/2addr p3, v3

    .line 8482
    const/4 v0, 0x0

    .line 8476
    .end local v2    # "stream":I
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 8485
    .end local v1    # "i":I
    :cond_3c
    if-eqz p3, :cond_46

    .line 8486
    if-nez v0, :cond_43

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 8487
    :cond_43
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 8489
    :cond_46
    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 8491
    .end local v0    # "first":Z
    :cond_4b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 8492
    return-void
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1389
    const-string v0, "\nStream volumes (device: index)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1390
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1391
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_38

    .line 1392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/media/AudioSystem;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1393
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    # invokes: Lcom/android/server/audio/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v2, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1100(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    .line 1394
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1391
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1396
    .end local v1    # "i":I
    :cond_38
    const-string v1, "\n- mute affected streams = 0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1397
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1398
    return-void
.end method

.method private enforceSafeMediaVolume(Ljava/lang/String;)V
    .registers 14
    .param p1, "caller"    # Ljava/lang/String;

    .line 8225
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 8226
    .local v0, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const v1, 0x400000c

    .line 8227
    .local v1, "devices":I
    const/4 v2, 0x0

    .line 8229
    .local v2, "i":I
    :goto_9
    if-eqz v1, :cond_36

    .line 8230
    add-int/lit8 v9, v2, 0x1

    .local v9, "i":I
    const/4 v3, 0x1

    shl-int v10, v3, v2

    .line 8231
    .end local v2    # "i":I
    .local v10, "device":I
    and-int v2, v10, v1

    if-nez v2, :cond_17

    .line 8232
    nop

    .line 8227
    .end local v9    # "i":I
    .end local v10    # "device":I
    .restart local v2    # "i":I
    :goto_15
    move v2, v9

    goto :goto_9

    .line 8234
    .end local v2    # "i":I
    .restart local v9    # "i":I
    .restart local v10    # "device":I
    :cond_17
    invoke-virtual {v0, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v11

    .line 8235
    .local v11, "index":I
    invoke-direct {p0, v10}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v2

    if-le v11, v2, :cond_33

    .line 8236
    invoke-direct {p0, v10}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v2

    invoke-virtual {v0, v2, v10, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 8237
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move v5, v10

    move-object v7, v0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8245
    :cond_33
    not-int v2, v10

    and-int/2addr v1, v2

    .line 8246
    .end local v10    # "device":I
    .end local v11    # "index":I
    goto :goto_15

    .line 8247
    .end local v9    # "i":I
    .restart local v2    # "i":I
    :cond_36
    return-void
.end method

.method private enforceVolumeController(Ljava/lang/String;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;

    .line 8571
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only SystemUI can "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8573
    return-void
.end method

.method private ensureValidDirection(I)V
    .registers 5
    .param p1, "direction"    # I

    .line 5099
    const/16 v0, -0x64

    if-eq p1, v0, :cond_21

    packed-switch p1, :pswitch_data_24

    packed-switch p1, :pswitch_data_2e

    .line 5108
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5106
    :cond_21
    :pswitch_21
    nop

    .line 5110
    return-void

    nop

    :pswitch_data_24
    .packed-switch -0x1
        :pswitch_21
        :pswitch_21
        :pswitch_21
    .end packed-switch

    :pswitch_data_2e
    .packed-switch 0x64
        :pswitch_21
        :pswitch_21
    .end packed-switch
.end method

.method private ensureValidRingerMode(I)V
    .registers 5
    .param p1, "ringerMode"    # I

    .line 2896
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2899
    return-void

    .line 2897
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad ringer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureValidStreamType(I)V
    .registers 5
    .param p1, "streamType"    # I

    .line 5113
    if-ltz p1, :cond_8

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v0, v0

    if-ge p1, v0, :cond_8

    .line 5116
    return-void

    .line 5114
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private forceFocusDuckingForAccessibility(Landroid/media/AudioAttributes;II)Z
    .registers 11
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "request"    # I
    .param p3, "uid"    # I

    .line 7957
    const/4 v0, 0x0

    if-eqz p1, :cond_44

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_44

    const/4 v1, 0x3

    if-eq p2, v1, :cond_f

    goto :goto_44

    .line 7961
    :cond_f
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 7962
    .local v1, "extraInfo":Landroid/os/Bundle;
    if-eqz v1, :cond_43

    const-string v2, "a11y_force_ducking"

    .line 7963
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_43

    .line 7966
    :cond_1e
    const/4 v2, 0x1

    if-nez p3, :cond_22

    .line 7967
    return v2

    .line 7969
    :cond_22
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUidsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 7970
    :try_start_25
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    if-eqz v4, :cond_3e

    .line 7971
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 7972
    .local v4, "callingUid":I
    move v5, v0

    .local v5, "i":I
    :goto_2e
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    array-length v6, v6

    if-ge v5, v6, :cond_3e

    .line 7973
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAccessibilityServiceUids:[I

    aget v6, v6, v5

    if-ne v6, v4, :cond_3b

    .line 7974
    monitor-exit v3

    return v2

    .line 7972
    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 7978
    .end local v4    # "callingUid":I
    .end local v5    # "i":I
    :cond_3e
    monitor-exit v3

    .line 7979
    return v0

    .line 7978
    :catchall_40
    move-exception v0

    monitor-exit v3
    :try_end_42
    .catchall {:try_start_25 .. :try_end_42} :catchall_40

    throw v0

    .line 7964
    :cond_43
    :goto_43
    return v0

    .line 7959
    .end local v1    # "extraInfo":Landroid/os/Bundle;
    :cond_44
    :goto_44
    return v0
.end method

.method private getActiveStreamType(I)I
    .registers 10
    .param p1, "suggestedStreamType"    # I

    .line 5149
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const/high16 v1, -0x80000000

    const/4 v2, 0x3

    if-eqz v0, :cond_a

    if-ne p1, v1, :cond_a

    .line 5151
    return v2

    .line 5154
    :cond_a
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x5

    const/4 v7, 0x2

    if-eq v0, v3, :cond_14

    goto :goto_7d

    .line 5156
    :cond_14
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 5157
    invoke-static {v5}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-ne v0, v2, :cond_21

    .line 5160
    return v4

    .line 5163
    :cond_21
    return v5

    .line 5165
    :cond_22
    if-ne p1, v1, :cond_5d

    .line 5166
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v7, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 5168
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_RING stream active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5169
    return v7

    .line 5170
    :cond_34
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v6, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 5173
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION stream active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5174
    return v6

    .line 5178
    :cond_44
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 5181
    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType: Forcing STREAM_ALARM stream active"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5182
    return v1

    .line 5187
    :cond_55
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing DEFAULT_VOL_STREAM_NO_PLAYBACK(3) b/c default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5190
    return v2

    .line 5192
    :cond_5d
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    .line 5193
    invoke-direct {p0, v6, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 5195
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION stream active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5196
    return v6

    .line 5197
    :cond_6d
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-direct {p0, v7, v0}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 5199
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_RING stream active"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5200
    return v7

    .line 5203
    :cond_7d
    :goto_7d
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_99

    .line 5204
    invoke-static {v5}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-ne v0, v2, :cond_91

    .line 5206
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_BLUETOOTH_SCO"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5207
    return v4

    .line 5209
    :cond_91
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_VOICE_CALL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5210
    return v5

    .line 5212
    :cond_99
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v6, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 5214
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5215
    return v6

    .line 5216
    :cond_a9
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v7, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 5218
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_RING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5219
    return v7

    .line 5220
    :cond_b9
    if-ne p1, v1, :cond_e3

    .line 5221
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v6, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 5223
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_NOTIFICATION"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5224
    return v6

    .line 5225
    :cond_cb
    sget v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-static {v7, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 5227
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing STREAM_RING"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5228
    return v7

    .line 5231
    :cond_db
    const-string v0, "AudioService"

    const-string v1, "getActiveStreamType: Forcing DEFAULT_VOL_STREAM_NO_PLAYBACK(3) b/c default"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5234
    return v2

    .line 5239
    :cond_e3
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveStreamType: Returning suggested type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5241
    return p1
.end method

.method private getBluetoothHeadset()Z
    .registers 10

    .line 4343
    const/4 v0, 0x0

    .line 4344
    .local v0, "result":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 4345
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_10

    .line 4346
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    .line 4353
    :cond_10
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 4354
    if-eqz v0, :cond_1d

    const/16 v8, 0xbb8

    goto :goto_1e

    :cond_1d
    const/4 v8, 0x0

    .line 4353
    :goto_1e
    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4355
    return v0
.end method

.method private getCurrentUserId()I
    .registers 5

    .line 2505
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2507
    .local v0, "ident":J
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 2508
    .local v2, "currentUser":Landroid/content/pm/UserInfo;
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_17
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 2512
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2508
    return v3

    .line 2512
    .end local v2    # "currentUser":Landroid/content/pm/UserInfo;
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2509
    :catch_17
    move-exception v2

    .line 2512
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2513
    nop

    .line 2514
    const/4 v2, 0x0

    return v2
.end method

.method private getDeviceForStream(I)I
    .registers 6
    .param p1, "stream"    # I

    .line 5319
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v0

    .line 5320
    .local v0, "device":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_50

    .line 5327
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_f

    .line 5328
    const/4 v0, 0x2

    goto :goto_50

    .line 5329
    :cond_f
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_17

    .line 5330
    const/high16 v0, 0x40000

    goto :goto_50

    .line 5331
    :cond_17
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_1f

    .line 5332
    const/high16 v0, 0x80000

    goto :goto_50

    .line 5333
    :cond_1f
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_27

    .line 5334
    const/high16 v0, 0x200000

    goto :goto_50

    .line 5337
    :cond_27
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_4e

    .line 5338
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceForStream: combination device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5339
    const v1, -0x8001

    and-int/2addr v0, v1

    .line 5340
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_50

    .line 5341
    const/4 v0, 0x2

    goto :goto_50

    .line 5345
    :cond_4e
    and-int/lit16 v0, v0, 0x380

    .line 5348
    :cond_50
    :goto_50
    return v0
.end method

.method private getDevicesForStream(I)I
    .registers 3
    .param p1, "stream"    # I

    .line 5352
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->getDevicesForStream(IZ)I

    move-result v0

    return v0
.end method

.method private getDevicesForStream(IZ)I
    .registers 5
    .param p1, "stream"    # I
    .param p2, "checkOthers"    # Z

    .line 5356
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 5357
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 5358
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I

    move-result v1

    monitor-exit v0

    return v1

    .line 5359
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private getNewRingerMode(III)I
    .registers 6
    .param p1, "stream"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .line 2111
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v0, :cond_9

    .line 2112
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    return v0

    .line 2116
    :cond_9
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_19

    .line 2117
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v0

    if-ne p1, v0, :cond_14

    goto :goto_19

    .line 2128
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    return v0

    .line 2119
    :cond_19
    :goto_19
    const/4 v0, 0x2

    if-nez p2, :cond_2c

    .line 2120
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v1, :cond_22

    const/4 v0, 0x1

    goto :goto_2b

    .line 2121
    :cond_22
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    iget-boolean v1, v1, Landroid/media/VolumePolicy;->volumeDownToEnterSilent:Z

    if-eqz v1, :cond_2a

    const/4 v0, 0x0

    goto :goto_2b

    .line 2122
    :cond_2a
    nop

    .local v0, "newRingerMode":I
    :goto_2b
    goto :goto_2d

    .line 2124
    .end local v0    # "newRingerMode":I
    :cond_2c
    nop

    .line 2126
    .restart local v0    # "newRingerMode":I
    :goto_2d
    return v0
.end method

.method private getSafeUsbMediaVolumeIndex()I
    .registers 7

    .line 4797
    sget-object v0, Lcom/android/server/audio/AudioService;->MIN_STREAM_VOLUME:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    .line 4798
    .local v0, "min":I
    sget-object v2, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    aget v2, v2, v1

    .line 4800
    .local v2, "max":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e008b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    .line 4803
    :goto_1c
    sub-int v3, v2, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_48

    .line 4804
    add-int v3, v2, v0

    div-int/lit8 v3, v3, 0x2

    .line 4805
    .local v3, "index":I
    const/high16 v4, 0x4000000

    invoke-static {v1, v3, v4}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result v4

    .line 4807
    .local v4, "gainDB":F
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 4809
    goto :goto_48

    .line 4810
    :cond_36
    iget v5, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    cmpl-float v5, v4, v5

    if-nez v5, :cond_3e

    .line 4811
    move v0, v3

    .line 4812
    goto :goto_48

    .line 4813
    :cond_3e
    iget v5, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    cmpg-float v5, v4, v5

    if-gez v5, :cond_46

    .line 4814
    move v0, v3

    goto :goto_47

    .line 4816
    :cond_46
    move v2, v3

    .line 4818
    .end local v3    # "index":I
    .end local v4    # "gainDB":F
    :goto_47
    goto :goto_1c

    .line 4819
    :cond_48
    :goto_48
    mul-int/lit8 v1, v0, 0xa

    return v1
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;
    .registers 7
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "create"    # Z

    .line 4310
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4311
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$ScoClient;

    .line 4312
    .local v2, "existingClient":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, p1, :cond_1d

    .line 4313
    monitor-exit v0

    return-object v2

    .line 4315
    .end local v2    # "existingClient":Lcom/android/server/audio/AudioService$ScoClient;
    :cond_1d
    goto :goto_9

    .line 4316
    :cond_1e
    if-eqz p2, :cond_2c

    .line 4317
    new-instance v1, Lcom/android/server/audio/AudioService$ScoClient;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioService$ScoClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    .line 4318
    .local v1, "newClient":Lcom/android/server/audio/AudioService$ScoClient;
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4319
    monitor-exit v0

    return-object v1

    .line 4321
    .end local v1    # "newClient":Lcom/android/server/audio/AudioService$ScoClient;
    :cond_2c
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 4322
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method private handleAudioEffectBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 7877
    invoke-virtual {p2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 7878
    .local v0, "target":Ljava/lang/String;
    if-eqz v0, :cond_1d

    .line 7879
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effect broadcast already targeted to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7880
    return-void

    .line 7882
    :cond_1d
    const/16 v1, 0x20

    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7884
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 7886
    .local v1, "ril":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_52

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_52

    .line 7887
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 7888
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_52

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_52

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_52

    .line 7889
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7890
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 7891
    return-void

    .line 7894
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_52
    const-string v2, "AudioService"

    const-string v3, "couldn\'t find receiver package for effect intent"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7895
    return-void
.end method

.method private handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z
    .registers 14
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "isActive"    # Z

    .line 4454
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 4455
    return v0

    .line 4458
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 4459
    .local v1, "address":Ljava/lang/String;
    const v2, -0x7ffffff8

    .line 4460
    .local v2, "inDevice":I
    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_58

    .line 4465
    .local v3, "outDeviceTypes":[I
    const-string v4, ""

    .line 4467
    .local v4, "btDeviceName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 4468
    .local v5, "result":Z
    const/4 v6, 0x0

    if-eqz p2, :cond_1f

    .line 4469
    aget v7, v3, v6

    invoke-direct {p0, p2, v7, v1, v4}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    or-int/2addr v5, v7

    goto :goto_2f

    .line 4471
    :cond_1f
    array-length v7, v3

    move v8, v5

    move v5, v6

    .end local v5    # "result":Z
    .local v8, "result":Z
    :goto_22
    if-ge v5, v7, :cond_2e

    aget v9, v3, v5

    .line 4472
    .local v9, "outDeviceType":I
    invoke-direct {p0, p2, v9, v1, v4}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v10

    or-int/2addr v8, v10

    .line 4471
    .end local v9    # "outDeviceType":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 4477
    :cond_2e
    move v5, v8

    .end local v8    # "result":Z
    .restart local v5    # "result":Z
    :goto_2f
    invoke-direct {p0, p2, v2, v1, v4}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_38

    if-eqz v5, :cond_38

    goto :goto_39

    :cond_38
    move v0, v6

    .line 4478
    .end local v5    # "result":Z
    .local v0, "result":Z
    :goto_39
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "for inDevice"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " result is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4479
    return v0

    :array_58
    .array-data 4
        0x10
        0x20
        0x40
    .end array-data
.end method

.method private handleConfigurationChanged(Landroid/content/Context;)V
    .registers 26
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v1, p0

    .line 8045
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    move-object v2, v0

    .line 8046
    .local v2, "config":Landroid/content/res/Configuration;
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "AudioService"

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8054
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v0

    move v3, v0

    .line 8055
    .local v3, "cameraSoundForced":Z
    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_9e

    .line 8056
    :try_start_20
    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v3, v0, :cond_28

    move v0, v5

    goto :goto_29

    :cond_28
    move v0, v6

    :goto_29
    move v7, v0

    .line 8057
    .local v7, "cameraSoundForcedChanged":Z
    iput-boolean v3, v1, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    .line 8058
    if-eqz v7, :cond_90

    .line 8059
    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const/4 v8, 0x7

    if-nez v0, :cond_61

    .line 8060
    const-class v9, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v9
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_9b

    .line 8061
    :try_start_36
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    .line 8062
    .local v0, "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    if-eqz v3, :cond_46

    .line 8063
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexesToMax()V

    .line 8064
    iget v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v5, v5, -0x81

    iput v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_55

    .line 8067
    :cond_46
    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v10, v5

    const-string v10, "AudioService"

    invoke-virtual {v0, v5, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 8068
    iget v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 8071
    .end local v0    # "s":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :goto_55
    monitor-exit v9
    :try_end_56
    .catchall {:try_start_36 .. :try_end_56} :catchall_5e

    .line 8073
    :try_start_56
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {v1, v0, v6}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_9b

    goto :goto_61

    .line 8071
    :catchall_5e
    move-exception v0

    :try_start_5f
    monitor-exit v9
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    :try_start_60
    throw v0

    .line 8076
    :cond_61
    :goto_61
    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v11, 0x8

    const/4 v12, 0x2

    const/4 v13, 0x4

    .line 8080
    if-eqz v3, :cond_6d

    .line 8081
    const/16 v6, 0xb

    :goto_6b
    move v14, v6

    goto :goto_6e

    :cond_6d
    goto :goto_6b

    :goto_6e
    new-instance v15, Ljava/lang/String;

    const-string/jumbo v0, "handleConfigurationChanged"

    invoke-direct {v15, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x0

    .line 8076
    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8085
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v18, 0xa

    const/16 v19, 0x2

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v5, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v22, v5, v8

    const/16 v23, 0x0

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v23}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8092
    .end local v7    # "cameraSoundForcedChanged":Z
    :cond_90
    monitor-exit v4
    :try_end_91
    .catchall {:try_start_60 .. :try_end_91} :catchall_9b

    .line 8093
    :try_start_91
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService$VolumeController;->setLayoutDirection(I)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_9a} :catch_9e

    .line 8096
    .end local v2    # "config":Landroid/content/res/Configuration;
    .end local v3    # "cameraSoundForced":Z
    goto :goto_a6

    .line 8092
    .restart local v2    # "config":Landroid/content/res/Configuration;
    .restart local v3    # "cameraSoundForced":Z
    :catchall_9b
    move-exception v0

    :try_start_9c
    monitor-exit v4
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    :try_start_9d
    throw v0
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_9e} :catch_9e

    .line 8094
    .end local v2    # "config":Landroid/content/res/Configuration;
    .end local v3    # "cameraSoundForced":Z
    :catch_9e
    move-exception v0

    .line 8095
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AudioService"

    const-string v3, "Error handling configuration change: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8097
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a6
    return-void
.end method

.method private handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z
    .registers 26
    .param p1, "connect"    # Z
    .param p2, "device"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v6, p2

    move-object/from16 v5, p3

    .line 7155
    move-object/from16 v4, p4

    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_46

    .line 7156
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleDeviceConnection("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " dev:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7159
    :cond_46
    iget-object v3, v7, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 7160
    :try_start_49
    invoke-direct {v7, v6, v5}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7161
    .local v0, "deviceKey":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v1, :cond_67

    .line 7162
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deviceKey:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7164
    :cond_67
    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$DeviceListSpec;

    move-object v2, v1

    .line 7165
    .local v2, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    const/4 v1, 0x1

    const/4 v15, 0x0

    if-eqz v2, :cond_76

    move v9, v1

    goto :goto_77

    :cond_76
    move v9, v15

    :goto_77
    move v14, v9

    .line 7166
    .local v14, "isConnected":Z
    sget-boolean v9, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v9, :cond_9a

    .line 7167
    const-string v9, "AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deviceSpec:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " is(already)Connected:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7169
    :cond_9a
    if-eqz v8, :cond_117

    if-nez v14, :cond_117

    .line 7170
    invoke-static {v6, v1, v5, v4}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    move v13, v9

    .line 7172
    .local v13, "res":I
    if-eqz v13, :cond_ca

    .line 7173
    const-string v1, "AudioService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "not connecting device 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " due to command error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7175
    monitor-exit v3

    return v15

    .line 7177
    :cond_ca
    iget-object v9, v7, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    new-instance v10, Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-direct {v10, v7, v6, v4, v5}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7178
    iget-object v9, v7, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    :try_end_d6
    .catchall {:try_start_49 .. :try_end_d6} :catchall_18f

    const/16 v10, 0x1b

    const/4 v11, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move v12, v6

    move/from16 v19, v13

    move/from16 v13, v16

    .end local v13    # "res":I
    .local v19, "res":I
    move/from16 v16, v14

    move-object/from16 v14, v17

    .line 7178
    .end local v14    # "isConnected":Z
    .local v16, "isConnected":Z
    move v5, v15

    move/from16 v15, v18

    :try_start_eb
    invoke-static/range {v9 .. v15}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7184
    const/4 v9, 0x4

    if-ne v6, v9, :cond_115

    .line 7185
    iget-object v9, v7, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    const-string v10, "0x8:controller=0;stream=0"

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 7186
    .local v9, "remDevice":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v9, :cond_115

    .line 7187
    const/16 v10, 0x8

    const-string v11, "controller=0;stream=0"

    const-string/jumbo v12, "tavil_codec"

    invoke-static {v10, v5, v11, v12}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 7189
    iget-object v5, v7, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    const-string v10, "0x8:controller=0;stream=0"

    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7190
    const-string v5, "AudioService"

    const-string v10, "detected headphone -> headset, so remove headphone device"

    invoke-static {v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7194
    .end local v9    # "remDevice":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_115
    monitor-exit v3

    return v1

    .line 7195
    .end local v16    # "isConnected":Z
    .end local v19    # "res":I
    .restart local v14    # "isConnected":Z
    :cond_117
    move/from16 v16, v14

    move v5, v15

    .line 7195
    .end local v14    # "isConnected":Z
    .restart local v16    # "isConnected":Z
    if-nez v8, :cond_157

    if-eqz v16, :cond_157

    .line 7198
    iget-boolean v9, v7, Lcom/android/server/audio/AudioService;->mGradientingVol:Z

    if-eqz v9, :cond_13e

    .line 7199
    iput-boolean v5, v7, Lcom/android/server/audio/AudioService;->mGradientingVol:Z

    .line 7200
    const/4 v9, 0x3

    iget v10, v7, Lcom/android/server/audio/AudioService;->mVolBeforeGradienting:I

    iget v11, v7, Lcom/android/server/audio/AudioService;->mGradientingMusicDev:I

    const/4 v12, 0x0

    const-string v13, "RevertMusicVolBeforeGradienting"
    :try_end_12c
    .catchall {:try_start_eb .. :try_end_12c} :catchall_150

    move v14, v1

    move-object v1, v7

    move-object v15, v2

    move v2, v9

    .line 7200
    .end local v2    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .local v15, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    move-object v9, v3

    move v3, v10

    move-object v10, v4

    move v4, v11

    move v14, v5

    move-object/from16 v11, p3

    move v5, v12

    move v12, v6

    move-object v6, v13

    :try_start_13a
    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    goto :goto_145

    .line 7203
    .end local v15    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .restart local v2    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_13e
    move-object v15, v2

    move-object v9, v3

    move-object v10, v4

    move v14, v5

    move v12, v6

    move-object/from16 v11, p3

    .line 7203
    .end local v2    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .restart local v15    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :goto_145
    invoke-static {v12, v14, v11, v10}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 7206
    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7207
    monitor-exit v9

    const/4 v1, 0x1

    return v1

    .line 7211
    .end local v0    # "deviceKey":Ljava/lang/String;
    .end local v15    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v16    # "isConnected":Z
    :catchall_150
    move-exception v0

    move-object v9, v3

    move-object v10, v4

    move v12, v6

    move-object/from16 v11, p3

    goto :goto_194

    .line 7209
    .restart local v0    # "deviceKey":Ljava/lang/String;
    .restart local v2    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .restart local v16    # "isConnected":Z
    :cond_157
    move-object v15, v2

    move-object v9, v3

    move-object v10, v4

    move v14, v5

    move v12, v6

    move-object/from16 v11, p3

    .line 7209
    .end local v2    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .restart local v15    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleDeviceConnection() failed, deviceKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", deviceSpec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", connect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7211
    .end local v0    # "deviceKey":Ljava/lang/String;
    .end local v15    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v16    # "isConnected":Z
    monitor-exit v9
    :try_end_186
    .catchall {:try_start_13a .. :try_end_186} :catchall_196

    .line 7213
    const-string v0, "AudioService"

    const-string/jumbo v1, "handleDeviceConnection: returning false"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7214
    return v14

    .line 7211
    :catchall_18f
    move-exception v0

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move v12, v6

    :goto_194
    :try_start_194
    monitor-exit v9
    :try_end_195
    .catchall {:try_start_194 .. :try_end_195} :catchall_196

    throw v0

    :catchall_196
    move-exception v0

    goto :goto_194
.end method

.method private hasMediaDynamicPolicy()Z
    .registers 8

    .line 7271
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 7272
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 7273
    monitor-exit v0

    return v2

    .line 7275
    :cond_e
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 7276
    .local v1, "appColl":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/audio/AudioService$AudioPolicyProxy;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 7277
    .local v4, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->hasMixAffectingUsage(I)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 7278
    monitor-exit v0

    return v5

    .line 7280
    .end local v4    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :cond_2d
    goto :goto_18

    .line 7281
    :cond_2e
    monitor-exit v0

    return v2

    .line 7282
    .end local v1    # "appColl":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/audio/AudioService$AudioPolicyProxy;>;"
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "cb"    # Landroid/os/IBinder;

    .line 2659
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2660
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;>;"
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 2661
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;->isHandlerFor(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2662
    const/4 v1, 0x1

    return v1

    .line 2665
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .registers 3

    .line 6978
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private initA11yMonitoring()V
    .registers 3

    .line 8347
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    .line 8348
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 8349
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->updateDefaultStreamOverrideDelay(Z)V

    .line 8350
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityVolumeStreamActive()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->updateA11yVolumeAlias(Z)V

    .line 8351
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;)V

    .line 8352
    invoke-virtual {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;Landroid/os/Handler;)V

    .line 8353
    return-void
.end method

.method private isASWiredHeadsetOn()Z
    .registers 3

    .line 3954
    const-string v0, ""

    const/4 v1, 0x4

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    const/16 v0, 0x8

    const-string v1, ""

    .line 3956
    invoke-static {v0, v1}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    .line 3958
    const/4 v0, 0x0

    return v0

    .line 3960
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method private isAlarm(I)Z
    .registers 3
    .param p1, "streamType"    # I

    .line 3102
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private isAndroidNPlus(Ljava/lang/String;)Z
    .registers 7
    .param p1, "caller"    # Ljava/lang/String;

    .line 2133
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 2134
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2135
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2134
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2136
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_16} :catch_1c

    const/16 v4, 0x18

    if-lt v2, v4, :cond_1b

    .line 2137
    return v0

    .line 2139
    :cond_1b
    return v3

    .line 2140
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_1c
    move-exception v1

    .line 2141
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v0
.end method

.method private isAudioPathUp()Z
    .registers 7

    .line 7566
    const/4 v0, 0x0

    .line 7567
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7568
    .local v1, "it":Ljava/util/Iterator;
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 7569
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_2b

    .line 7570
    const/4 v0, 0x1

    .line 7571
    goto :goto_2c

    .line 7573
    .end local v3    # "value":Ljava/lang/Integer;
    :cond_2b
    goto :goto_15

    .line 7574
    :cond_2c
    :goto_2c
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAudioPathUp returns"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7575
    return v0
.end method

.method private isBluetoothAudioNotConnectedToEarbud()Z
    .registers 8

    .line 3834
    const/4 v0, 0x1

    .line 3835
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 3836
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 3839
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getTwsPlusPeerAddress()Ljava/lang/String;

    move-result-object v1

    .line 3840
    .local v1, "pDevAddr":Ljava/lang/String;
    if-eqz v1, :cond_56

    .line 3841
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 3842
    .local v2, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 3843
    .local v3, "peerDev":Landroid/bluetooth/BluetoothDevice;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "peer device audio State: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v6, v3}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3844
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_4e

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 3846
    invoke-virtual {v4, v6}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-ne v4, v5, :cond_56

    .line 3848
    :cond_4e
    const-string v4, "AudioService"

    const-string v5, "TwsPLus Case: one of eb SCO is connected"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3849
    const/4 v0, 0x0

    .line 3853
    .end local v1    # "pDevAddr":Ljava/lang/String;
    .end local v2    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v3    # "peerDev":Landroid/bluetooth/BluetoothDevice;
    :cond_56
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isBluetoothAudioConnectedToEarbud returns: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3854
    return v0
.end method

.method public static isEnableEU()Z
    .registers 3

    .line 1161
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x30

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    return v0
.end method

.method private isInCommunication()Z
    .registers 7

    .line 5124
    const/4 v0, 0x0

    .line 5126
    .local v0, "IsInCall":Z
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "telecom"

    .line 5127
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 5129
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5130
    .local v2, "ident":J
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 5131
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5133
    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2a

    .line 5134
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v4, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v4, 0x1

    .line 5133
    :goto_2b
    return v4
.end method

.method private isMedia(I)Z
    .registers 3
    .param p1, "streamType"    # I

    .line 3111
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private isMuteAdjust(I)Z
    .registers 3
    .param p1, "adjust"    # I

    .line 5119
    const/16 v0, -0x64

    if-eq p1, v0, :cond_f

    const/16 v0, 0x64

    if-eq p1, v0, :cond_f

    const/16 v0, 0x65

    if-ne p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private isNotificationOrRinger(I)Z
    .registers 3
    .param p1, "streamType"    # I

    .line 3106
    const/4 v0, 0x5

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method private isPlatformAutomotive()Z
    .registers 3

    .line 238
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isPlatformTelevision()Z
    .registers 3

    .line 234
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private isPlatformVoice()Z
    .registers 3

    .line 230
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method private isStreamMutedByRingerOrZenMode(I)Z
    .registers 5
    .param p1, "streamType"    # I

    .line 5017
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method private isSystem(I)Z
    .registers 3
    .param p1, "streamType"    # I

    .line 3116
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private killBackgroundUserProcessesWithRecordAudioPermission(Landroid/content/pm/UserInfo;)V
    .registers 13
    .param p1, "oldUser"    # Landroid/content/pm/UserInfo;

    .line 7898
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 7901
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 7902
    .local v1, "homeActivityName":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_15

    .line 7903
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget v3, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3}, Landroid/app/ActivityManagerInternal;->getHomeActivityForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 7905
    :cond_15
    const-string v2, "android.permission.RECORD_AUDIO"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 7908
    .local v2, "permissions":[Ljava/lang/String;
    :try_start_1b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p1, Landroid/content/pm/UserInfo;->id:I

    .line 7909
    invoke-interface {v3, v2, v4, v5}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2a} :catch_8c

    .line 7912
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    nop

    .line 7911
    nop

    .line 7913
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 7913
    .local v4, "j":I
    :goto_32
    if-ltz v4, :cond_8b

    .line 7914
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 7916
    .local v5, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/16 v7, 0x2710

    if-ge v6, v7, :cond_47

    .line 7917
    goto :goto_88

    .line 7920
    :cond_47
    const-string v6, "android.permission.INTERACT_ACROSS_USERS"

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_52

    .line 7922
    goto :goto_88

    .line 7924
    :cond_52
    if-eqz v1, :cond_69

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 7925
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_69

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7926
    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v6

    if-eqz v6, :cond_69

    .line 7927
    goto :goto_88

    .line 7930
    :cond_69
    :try_start_69
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 7931
    .local v6, "uid":I
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 7932
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    const-string/jumbo v10, "killBackgroundUserProcessesWithAudioRecordPermission"

    .line 7931
    invoke-interface {v7, v8, v9, v10}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_7f} :catch_80

    .line 7936
    .end local v6    # "uid":I
    goto :goto_88

    .line 7934
    :catch_80
    move-exception v6

    .line 7935
    .local v6, "e":Landroid/os/RemoteException;
    const-string v7, "AudioService"

    const-string v8, "Error calling killUid"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7913
    .end local v5    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_88
    add-int/lit8 v4, v4, -0x1

    goto :goto_32

    .line 7938
    .end local v4    # "j":I
    :cond_8b
    return-void

    .line 7910
    .end local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_8c
    move-exception v3

    .line 7911
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Landroid/util/AndroidRuntimeException;

    invoke-direct {v4, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method private loadTouchSoundAssetDefaults()V
    .registers 6

    .line 3458
    sget-object v0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    const-string v1, "Effect_Tick.ogg"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3459
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_9
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1e

    .line 3460
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v2, v2, v1

    aput v0, v2, v0

    .line 3461
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v2, v2, v1

    const/4 v3, -0x1

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 3459
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3463
    .end local v1    # "i":I
    :cond_1e
    return-void
.end method

.method private loadTouchSoundAssets()V
    .registers 12

    .line 3466
    const/4 v0, 0x0

    .line 3469
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    sget-object v1, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 3470
    return-void

    .line 3473
    :cond_a
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->loadTouchSoundAssetDefaults()V

    .line 3476
    :try_start_d
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1170001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    move-object v0, v1

    .line 3478
    const-string v1, "audio_assets"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 3479
    const-string/jumbo v1, "version"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3480
    .local v1, "version":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3482
    .local v3, "inTouchSoundsGroup":Z
    const-string v4, "1.0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 3484
    :goto_31
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3485
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 3486
    .local v4, "element":Ljava/lang/String;
    if-nez v4, :cond_3b

    .line 3487
    goto :goto_56

    .line 3489
    :cond_3b
    const-string/jumbo v5, "group"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 3490
    const-string/jumbo v5, "name"

    invoke-interface {v0, v2, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3491
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v6, "touch_sounds"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b9

    .line 3492
    const/4 v3, 0x1

    .line 3493
    nop

    .line 3497
    .end local v4    # "element":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    :goto_56
    if-eqz v3, :cond_bb

    .line 3498
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3499
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 3500
    .restart local v4    # "element":Ljava/lang/String;
    if-nez v4, :cond_62

    .line 3501
    goto :goto_bb

    .line 3503
    :cond_62
    const-string v5, "asset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bb

    .line 3504
    const-string/jumbo v5, "id"

    invoke-interface {v0, v2, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3505
    .local v5, "id":Ljava/lang/String;
    const-string v6, "file"

    invoke-interface {v0, v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_77
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_77} :catch_d9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_77} :catch_ce
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_77} :catch_c3
    .catchall {:try_start_d .. :try_end_77} :catchall_c1

    .line 3509
    .local v6, "file":Ljava/lang/String;
    :try_start_77
    const-class v7, Landroid/media/AudioManager;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 3510
    .local v7, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v7, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_81} :catch_a1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_77 .. :try_end_81} :catch_d9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_77 .. :try_end_81} :catch_ce
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_81} :catch_c3
    .catchall {:try_start_77 .. :try_end_81} :catchall_c1

    .line 3510
    .end local v7    # "field":Ljava/lang/reflect/Field;
    move v7, v8

    .line 3514
    .local v7, "fx":I
    nop

    .line 3513
    nop

    .line 3516
    :try_start_84
    sget-object v8, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 3517
    .local v8, "i":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_99

    .line 3518
    sget-object v9, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v8, v9

    .line 3519
    sget-object v9, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3521
    :cond_99
    iget-object v9, p0, Lcom/android/server/audio/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v9, v9, v7

    const/4 v10, 0x0

    aput v8, v9, v10

    .line 3525
    .end local v4    # "element":Ljava/lang/String;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "file":Ljava/lang/String;
    .end local v7    # "fx":I
    .end local v8    # "i":I
    goto :goto_56

    .line 3511
    .restart local v4    # "element":Ljava/lang/String;
    .restart local v5    # "id":Ljava/lang/String;
    .restart local v6    # "file":Ljava/lang/String;
    :catch_a1
    move-exception v7

    .line 3512
    .local v7, "e":Ljava/lang/Exception;
    const-string v8, "AudioService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid touch sound ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_84 .. :try_end_b8} :catch_d9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_84 .. :try_end_b8} :catch_ce
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_b8} :catch_c3
    .catchall {:try_start_84 .. :try_end_b8} :catchall_c1

    .line 3513
    goto :goto_56

    .line 3496
    .end local v4    # "element":Ljava/lang/String;
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "file":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_b9
    goto/16 :goto_31

    .line 3534
    .end local v1    # "version":Ljava/lang/String;
    .end local v3    # "inTouchSoundsGroup":Z
    :cond_bb
    :goto_bb
    if-eqz v0, :cond_e4

    .line 3535
    :goto_bd
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_e4

    .line 3534
    :catchall_c1
    move-exception v1

    goto :goto_e5

    .line 3531
    :catch_c3
    move-exception v1

    .line 3532
    .local v1, "e":Ljava/io/IOException;
    :try_start_c4
    const-string v2, "AudioService"

    const-string v3, "I/O exception reading touch sound assets"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3534
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_e4

    goto :goto_bd

    .line 3529
    :catch_ce
    move-exception v1

    .line 3530
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "AudioService"

    const-string v3, "XML parser exception reading touch sound assets"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3534
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v0, :cond_e4

    goto :goto_bd

    .line 3527
    :catch_d9
    move-exception v1

    .line 3528
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v2, "AudioService"

    const-string v3, "audio assets file not found"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e1
    .catchall {:try_start_c4 .. :try_end_e1} :catchall_c1

    .line 3534
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    if-eqz v0, :cond_e4

    goto :goto_bd

    .line 3538
    :cond_e4
    :goto_e4
    return-void

    .line 3534
    :goto_e5
    if-eqz v0, :cond_ea

    .line 3535
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_ea
    throw v1
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 22
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "eventSource"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 6819
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v4, 0x3

    aget-object v4, v0, v4

    .line 6822
    .local v4, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_36

    .line 6823
    const-string v0, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "makeA2dpDeviceAvailable isAvrcpAbsoluteVolumeSupported "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothA2dp;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6824
    const/4 v0, 0x0

    iget-object v5, v1, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothA2dp;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v5

    invoke-virtual {v1, v0, v5}, Lcom/android/server/audio/AudioService;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    .line 6827
    :cond_36
    const/4 v5, 0x1

    move-object/from16 v6, p3

    invoke-virtual {v1, v5, v6}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(ZLjava/lang/String;)V

    .line 6828
    const/16 v0, 0x80

    invoke-static {v0, v5, v2, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6831
    const-string v7, "A2dpSuspended=false"

    invoke-static {v7}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 6832
    iget-object v7, v1, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 6833
    invoke-direct {v1, v0, v2}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-direct {v9, v1, v0, v3, v2}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    .line 6832
    invoke-virtual {v7, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6836
    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v11, 0x1b

    const/4 v12, 0x2

    const/16 v13, 0x80

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6840
    iget v0, v1, Lcom/android/server/audio/AudioService;->mAutoPlayMusic:I

    if-ne v0, v5, :cond_bd

    const/16 v0, 0xb

    const/4 v7, 0x0

    invoke-static {v0, v7}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_bd

    .line 6841
    const-string/jumbo v0, "media_session"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 6842
    .local v7, "b":Landroid/os/IBinder;
    invoke-static {v7}, Landroid/media/session/ISessionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionManager;

    move-result-object v8

    .line 6843
    .local v8, "sessionManagerService":Landroid/media/session/ISessionManager;
    const/4 v9, 0x0

    .line 6844
    .local v9, "packageName":Ljava/lang/String;
    move v10, v5

    .line 6846
    .local v10, "sendKey":Z
    :try_start_7c
    invoke-interface {v8}, Landroid/media/session/ISessionManager;->getCurrentMediaButtonPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_80} :catch_82

    move-object v9, v0

    .line 6848
    goto :goto_83

    .line 6847
    :catch_82
    move-exception v0

    .line 6849
    :goto_83
    if-eqz v9, :cond_8f

    const-string/jumbo v0, "tv.danmaku.bili"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 6850
    const/4 v10, 0x0

    .line 6852
    :cond_8f
    if-ne v10, v5, :cond_bd

    .line 6853
    const-string v0, "auto.play.delay"

    const/16 v5, 0x5dc

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 6854
    .local v0, "autoPlayDelay":I
    iget-object v11, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v12, 0x22

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    move/from16 v17, v0

    invoke-static/range {v11 .. v17}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6855
    const-string v5, "AudioService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "A2DP autoPlayDelay  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6859
    .end local v0    # "autoPlayDelay":I
    .end local v7    # "b":Landroid/os/IBinder;
    .end local v8    # "sessionManagerService":Landroid/media/session/ISessionManager;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "sendKey":Z
    :cond_bd
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V
    .registers 12
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "delayMs"    # I

    .line 6902
    const-string v0, "A2dpSuspended=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 6904
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 6905
    const/16 v1, 0x80

    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6904
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6907
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x6a

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v7, p1

    move v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 6913
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .registers 10
    .param p1, "address"    # Ljava/lang/String;

    .line 6867
    if-nez p1, :cond_3

    .line 6868
    return-void

    .line 6872
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 6873
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 6875
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mGradientingVol:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 6876
    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mGradientingVol:Z

    .line 6877
    const/4 v3, 0x3

    iget v4, p0, Lcom/android/server/audio/AudioService;->mVolBeforeGradienting:I

    iget v5, p0, Lcom/android/server/audio/AudioService;->mGradientingMusicDev:I

    const/4 v6, 0x0

    const-string v7, "RevertMusicVolBeforeGradienting"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 6880
    :cond_25
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6881
    :try_start_28
    iput-boolean v1, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    .line 6882
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_65

    .line 6884
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeA2dpDeviceUnavailableNow address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6885
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    const/16 v2, 0x80

    invoke-direct {p0, v0, v2}, Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 6887
    const-string v0, ""

    invoke-static {v2, v1, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6889
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 6890
    invoke-direct {p0, v2, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6889
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6892
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->setCurrentAudioRouteName(Ljava/lang/String;)V

    .line 6893
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    if-ne v1, p1, :cond_64

    .line 6894
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    .line 6896
    :cond_64
    return-void

    .line 6882
    :catchall_65
    move-exception v1

    :try_start_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v1
.end method

.method private makeA2dpSrcAvailable(Ljava/lang/String;)V
    .registers 7
    .param p1, "address"    # Ljava/lang/String;

    .line 6917
    const-string v0, ""

    const/high16 v1, -0x7ffe0000

    const/4 v2, 0x1

    invoke-static {v1, v2, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6919
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 6920
    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/audio/AudioService$DeviceListSpec;

    const-string v4, ""

    invoke-direct {v3, p0, v1, v4, p1}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    .line 6919
    invoke-virtual {v0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6923
    return-void
.end method

.method private makeA2dpSrcUnavailable(Ljava/lang/String;)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .line 6927
    const-string v0, ""

    const/high16 v1, -0x7ffe0000

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6929
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 6930
    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6929
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6931
    return-void
.end method

.method public static makeAlsaAddressString(II)Ljava/lang/String;
    .registers 4
    .param p0, "card"    # I
    .param p1, "device"    # I

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "card="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "device"    # I
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private makeHearingAidDeviceAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "eventSource"    # Ljava/lang/String;

    .line 6948
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/high16 v2, 0x8000000

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    .line 6949
    .local v0, "index":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->setHearingAidVolume(II)V

    .line 6951
    const/4 v1, 0x1

    invoke-static {v2, v1, p1, p2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6953
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 6954
    invoke-direct {p0, v2, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    invoke-direct {v4, p0, v2, p2, p1}, Lcom/android/server/audio/AudioService$DeviceListSpec;-><init>(Lcom/android/server/audio/AudioService;ILjava/lang/String;Ljava/lang/String;)V

    .line 6953
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6957
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v6, 0x1b

    const/4 v7, 0x2

    const/high16 v8, 0x8000000

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6959
    return-void
.end method

.method private makeHearingAidDeviceUnavailable(Ljava/lang/String;)V
    .registers 5
    .param p1, "address"    # Ljava/lang/String;

    .line 6963
    const-string v0, ""

    const/high16 v1, 0x8000000

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v0}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 6965
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    .line 6966
    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6965
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6968
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->setCurrentAudioRouteName(Ljava/lang/String;)V

    .line 6969
    return-void
.end method

.method private maybeVibrate(Landroid/os/VibrationEffect;)Z
    .registers 8
    .param p1, "effect"    # Landroid/os/VibrationEffect;

    .line 2951
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2952
    return v1

    .line 2954
    :cond_6
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_19

    move v0, v2

    goto :goto_1a

    :cond_19
    move v0, v1

    .line 2956
    .local v0, "hapticsDisabled":Z
    :goto_1a
    if-eqz v0, :cond_1d

    .line 2957
    return v1

    .line 2960
    :cond_1d
    if-nez p1, :cond_20

    .line 2961
    return v1

    .line 2963
    :cond_20
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mVibrator:Landroid/os/Vibrator;

    .line 2964
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/server/audio/AudioService;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 2963
    invoke-virtual {v1, v3, v4, p1, v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 2965
    return v2
.end method

.method private muteRingerModeStreams()V
    .registers 26
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSettingsLock"
    .end annotation

    .line 3042
    move-object/from16 v1, p0

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 3044
    .local v2, "numStreamTypes":I
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    if-nez v0, :cond_17

    .line 3045
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, v1, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 3048
    :cond_17
    iget v3, v1, Lcom/android/server/audio/AudioService;->mRingerMode:I

    .line 3049
    .local v3, "ringerMode":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_21

    if-nez v3, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v5, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    move v5, v4

    .line 3051
    .local v5, "ringerModeMute":Z
    :goto_22
    if-ne v3, v4, :cond_2c

    .line 3052
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isBluetoothScoOn()Z

    move-result v6

    if-eqz v6, :cond_2c

    move v6, v4

    goto :goto_2d

    :cond_2c
    const/4 v6, 0x0

    .line 3054
    .local v6, "shouldRingSco":Z
    :goto_2d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "muteRingerModeStreams() from u/pid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3055
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3056
    .local v7, "eventSource":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v10, 0x8

    const/4 v11, 0x2

    const/4 v12, 0x7

    .line 3057
    if-eqz v6, :cond_5a

    const/4 v8, 0x3

    move v13, v8

    goto :goto_5b

    :cond_5a
    const/4 v13, 0x0

    :goto_5b
    const/4 v15, 0x0

    .line 3056
    move-object v14, v7

    invoke-static/range {v9 .. v15}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3059
    add-int/lit8 v8, v2, -0x1

    .line 3059
    .local v8, "streamType":I
    :goto_62
    if-ltz v8, :cond_119

    .line 3060
    invoke-direct {v1, v8}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v9

    .line 3061
    .local v9, "isMuted":Z
    const/4 v10, 0x2

    if-eqz v6, :cond_70

    if-eq v8, v10, :cond_6e

    goto :goto_70

    :cond_6e
    const/4 v11, 0x0

    goto :goto_71

    :cond_70
    :goto_70
    move v11, v4

    .line 3063
    .local v11, "muteAllowedBySco":Z
    :goto_71
    invoke-direct {v1, v8}, Lcom/android/server/audio/AudioService;->shouldZenMuteStream(I)Z

    move-result v12

    .line 3064
    .local v12, "shouldZenMute":Z
    if-nez v12, :cond_84

    if-eqz v5, :cond_82

    .line 3065
    invoke-virtual {v1, v8}, Lcom/android/server/audio/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v13

    if-eqz v13, :cond_82

    if-eqz v11, :cond_82

    goto :goto_84

    :cond_82
    const/4 v13, 0x0

    goto :goto_85

    :cond_84
    :goto_84
    move v13, v4

    .line 3066
    .local v13, "shouldMute":Z
    :goto_85
    if-ne v9, v13, :cond_8c

    .line 3059
    .end local v9    # "isMuted":Z
    .end local v11    # "muteAllowedBySco":Z
    .end local v12    # "shouldZenMute":Z
    .end local v13    # "shouldMute":Z
    move/from16 v17, v2

    const/4 v2, 0x0

    goto/16 :goto_113

    .line 3067
    .restart local v9    # "isMuted":Z
    .restart local v11    # "muteAllowedBySco":Z
    .restart local v12    # "shouldZenMute":Z
    .restart local v13    # "shouldMute":Z
    :cond_8c
    if-nez v13, :cond_102

    .line 3070
    sget-object v14, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v14, v14, v8

    if-ne v14, v10, :cond_ee

    .line 3071
    const-class v10, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v10

    .line 3072
    :try_start_97
    iget-object v14, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v14, v14, v8

    .line 3073
    .local v14, "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v15, 0x0

    .line 3073
    .local v15, "i":I
    :goto_9c
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v15, v4, :cond_cc

    .line 3074
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 3075
    .local v4, "device":I
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    .line 3076
    .local v0, "value":I
    if-nez v0, :cond_c4

    .line 3077
    move/from16 v16, v0

    .line 3077
    .end local v0    # "value":I
    .local v16, "value":I
    const-string v0, "AudioService"
    :try_end_bc
    .catchall {:try_start_97 .. :try_end_bc} :catchall_e7

    move/from16 v17, v2

    const/16 v2, 0xa

    :try_start_c0
    invoke-virtual {v14, v2, v4, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 3077
    .end local v2    # "numStreamTypes":I
    .end local v4    # "device":I
    .end local v16    # "value":I
    .local v17, "numStreamTypes":I
    goto :goto_c6

    .line 3073
    .end local v17    # "numStreamTypes":I
    .restart local v2    # "numStreamTypes":I
    :cond_c4
    move/from16 v17, v2

    .line 3073
    .end local v2    # "numStreamTypes":I
    .restart local v17    # "numStreamTypes":I
    :goto_c6
    add-int/lit8 v15, v15, 0x1

    move/from16 v2, v17

    const/4 v4, 0x1

    goto :goto_9c

    .line 3081
    .end local v15    # "i":I
    .end local v17    # "numStreamTypes":I
    .restart local v2    # "numStreamTypes":I
    :cond_cc
    move/from16 v17, v2

    .line 3081
    .end local v2    # "numStreamTypes":I
    .restart local v17    # "numStreamTypes":I
    invoke-direct {v1, v8}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v21

    .line 3082
    .local v21, "device":I
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v19, 0x1

    const/16 v20, 0x2

    const/16 v22, 0x0

    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v23, v2, v8

    const/16 v24, 0x1f4

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v24}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3089
    .end local v14    # "vss":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v21    # "device":I
    monitor-exit v10

    goto :goto_f0

    .line 3089
    .end local v17    # "numStreamTypes":I
    .restart local v2    # "numStreamTypes":I
    :catchall_e7
    move-exception v0

    move/from16 v17, v2

    .line 3089
    .end local v2    # "numStreamTypes":I
    .restart local v17    # "numStreamTypes":I
    :goto_ea
    monitor-exit v10
    :try_end_eb
    .catchall {:try_start_c0 .. :try_end_eb} :catchall_ec

    throw v0

    :catchall_ec
    move-exception v0

    goto :goto_ea

    .line 3091
    .end local v17    # "numStreamTypes":I
    .restart local v2    # "numStreamTypes":I
    :cond_ee
    move/from16 v17, v2

    .line 3091
    .end local v2    # "numStreamTypes":I
    .restart local v17    # "numStreamTypes":I
    :goto_f0
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 3092
    iget v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    const/4 v4, 0x1

    shl-int v10, v4, v8

    not-int v10, v10

    and-int/2addr v0, v10

    iput v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    goto :goto_113

    .line 3095
    .end local v17    # "numStreamTypes":I
    .restart local v2    # "numStreamTypes":I
    :cond_102
    move/from16 v17, v2

    const/4 v2, 0x0

    .line 3095
    .end local v2    # "numStreamTypes":I
    .restart local v17    # "numStreamTypes":I
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    invoke-virtual {v0, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 3096
    iget v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    shl-int v10, v4, v8

    or-int/2addr v0, v10

    iput v0, v1, Lcom/android/server/audio/AudioService;->mRingerAndZenModeMutedStreams:I

    .line 3059
    .end local v9    # "isMuted":Z
    .end local v11    # "muteAllowedBySco":Z
    .end local v12    # "shouldZenMute":Z
    .end local v13    # "shouldMute":Z
    :goto_113
    add-int/lit8 v8, v8, -0x1

    move/from16 v2, v17

    goto/16 :goto_62

    .line 3099
    .end local v8    # "streamType":I
    .end local v17    # "numStreamTypes":I
    .restart local v2    # "numStreamTypes":I
    :cond_119
    move/from16 v17, v2

    .line 3099
    .end local v2    # "numStreamTypes":I
    .restart local v17    # "numStreamTypes":I
    return-void
.end method

.method private observeDevicesForStreams(I)V
    .registers 6
    .param p1, "skipStream"    # I

    .line 5363
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 5364
    const/4 v1, 0x0

    move v2, v1

    .local v2, "stream":I
    :goto_5
    :try_start_5
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v3, v3

    if-ge v2, v3, :cond_16

    .line 5365
    if-eq v2, p1, :cond_13

    .line 5366
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->observeDevicesForStream_syncVSS(Z)I

    .line 5364
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 5369
    .end local v2    # "stream":I
    :cond_16
    monitor-exit v0

    .line 5370
    return-void

    .line 5369
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private onAccessoryPlugMediaUnmute(I)V
    .registers 10
    .param p1, "newDevice"    # I

    .line 5531
    const-string v0, "AudioService"

    const-string/jumbo v1, "onAccessoryPlugMediaUnmute newDevice=%d [%s]"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 5532
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 5531
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5534
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5535
    :try_start_20
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    if-eq v1, v2, :cond_6a

    const v1, 0x402678c

    and-int/2addr v1, p1

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    .line 5537
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v1

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v3

    .line 5538
    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    if-eqz v1, :cond_6a

    .line 5539
    invoke-static {v3}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_6a

    .line 5542
    const-string v1, "AudioService"

    const-string v4, " onAccessoryPlugMediaUnmute unmuting device=%d [%s]"

    new-array v2, v2, [Ljava/lang/Object;

    .line 5543
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    invoke-static {p1}, Landroid/media/AudioSystem;->getOutputDeviceName(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 5542
    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5545
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v3

    invoke-virtual {v1, v5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 5547
    :cond_6a
    monitor-exit v0

    .line 5548
    return-void

    .line 5547
    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_20 .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method private onBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
    .registers 15
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 7110
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_1b

    .line 7111
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBluetoothA2dpDeviceConfigChange btDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7113
    :cond_1b
    if-nez p1, :cond_1e

    .line 7114
    return-void

    .line 7116
    :cond_1e
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 7117
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 7118
    const-string v0, ""

    .line 7121
    :cond_2a
    const/16 v1, 0x80

    .line 7122
    .local v1, "device":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 7123
    :try_start_2f
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 7124
    monitor-exit v2

    return-void

    .line 7126
    :cond_3b
    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7127
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 7128
    .local v4, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v4, :cond_62

    .line 7130
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v11

    .line 7131
    .local v11, "musicDevice":I
    nop

    .line 7132
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    .line 7131
    invoke-static {v1, v0, v5}, Landroid/media/AudioSystem;->handleDeviceConfigChange(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_62

    .line 7135
    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v12, -0x1

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpDeviceConnectionStateInt(Landroid/bluetooth/BluetoothDevice;IIZII)I

    .line 7140
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v11    # "musicDevice":I
    :cond_62
    monitor-exit v2

    .line 7141
    return-void

    .line 7140
    :catchall_64
    move-exception v3

    monitor-exit v2
    :try_end_66
    .catchall {:try_start_2f .. :try_end_66} :catchall_64

    throw v3
.end method

.method private onBroadcastScoConnectionState(I)V
    .registers 5
    .param p1, "state"    # I

    .line 4443
    iget v0, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    if-eq p1, v0, :cond_1c

    .line 4444
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4445
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4446
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4448
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 4449
    iput p1, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    .line 4451
    .end local v0    # "newIntent":Landroid/content/Intent;
    :cond_1c
    return-void
.end method

.method private onCheckMusicActive(Ljava/lang/String;)V
    .registers 13
    .param p1, "caller"    # Ljava/lang/String;

    .line 4762
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v0

    .line 4763
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_52

    .line 4764
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v2

    .line 4766
    .local v2, "device":I
    const v3, 0x400000c

    and-int/2addr v3, v2

    if-eqz v3, :cond_52

    .line 4767
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v10, 0xea60

    move-object v9, p1

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4774
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v3

    .line 4775
    .local v3, "index":I
    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 4776
    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v1

    if-le v3, v1, :cond_52

    .line 4778
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const v5, 0xea60

    add-int/2addr v1, v5

    iput v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 4779
    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const v5, 0x44aa200

    if-le v1, v5, :cond_4f

    .line 4780
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    .line 4781
    iput v4, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 4783
    :cond_4f
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->saveMusicActiveMs()V

    .line 4787
    .end local v2    # "device":I
    .end local v3    # "index":I
    :cond_52
    monitor-exit v0

    .line 4788
    return-void

    .line 4787
    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_3 .. :try_end_56} :catchall_54

    throw v1
.end method

.method private onConfigureSafeVolume(ZLjava/lang/String;)V
    .registers 16
    .param p1, "force"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .line 4823
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v0

    .line 4824
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->mcc:I

    .line 4825
    .local v1, "mcc":I
    iget v2, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    if-ne v2, v1, :cond_19

    iget v2, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    if-nez v2, :cond_8d

    if-eqz p1, :cond_8d

    .line 4826
    :cond_19
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0xa

    iput v2, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    .line 4829
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getSafeUsbMediaVolumeIndex()I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    .line 4831
    const-string v2, "audio.safemedia.force"

    .line 4832
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_4c

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 4833
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x1120098

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    goto :goto_4c

    :cond_4a
    move v2, v3

    goto :goto_4d

    :cond_4c
    :goto_4c
    move v2, v4

    .line 4836
    .local v2, "safeMediaVolumeEnabled":Z
    :goto_4d
    const-string v5, "audio.safemedia.bypass"

    .line 4837
    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 4842
    .local v3, "safeMediaVolumeBypass":Z
    if-eqz v2, :cond_77

    if-nez v3, :cond_77

    .line 4843
    const/4 v4, 0x3

    .line 4847
    .local v4, "persistedState":I
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_7f

    .line 4848
    iget v5, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    if-nez v5, :cond_70

    .line 4849
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 4850
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    goto :goto_7f

    .line 4853
    :cond_70
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    goto :goto_7f

    .line 4857
    .end local v4    # "persistedState":I
    :cond_77
    const/4 v5, 0x1

    .line 4858
    .local v5, "persistedState":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 4860
    move v4, v5

    .end local v5    # "persistedState":I
    .restart local v4    # "persistedState":I
    :cond_7f
    :goto_7f
    iput v1, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    .line 4861
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v7, 0x12

    const/4 v8, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v9, v4

    invoke-static/range {v6 .. v12}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 4869
    .end local v1    # "mcc":I
    .end local v2    # "safeMediaVolumeEnabled":Z
    .end local v3    # "safeMediaVolumeBypass":Z
    .end local v4    # "persistedState":I
    :cond_8d
    monitor-exit v0

    .line 4870
    return-void

    .line 4869
    :catchall_8f
    move-exception v1

    monitor-exit v0
    :try_end_91
    .catchall {:try_start_3 .. :try_end_91} :catchall_8f

    throw v1
.end method

.method private onDispatchAudioServerStateChange(Z)V
    .registers 8
    .param p1, "state"    # Z

    .line 1290
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 1291
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AsdProxy;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2c

    .line 1293
    .local v2, "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    :try_start_19
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AsdProxy;->callback()Landroid/media/IAudioServerStateDispatcher;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/media/IAudioServerStateDispatcher;->dispatchAudioServerStateChange(Z)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_20} :catch_21
    .catchall {:try_start_19 .. :try_end_20} :catchall_2c

    .line 1296
    goto :goto_29

    .line 1294
    :catch_21
    move-exception v3

    .line 1295
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_22
    const-string v4, "AudioService"

    const-string v5, "Could not call dispatchAudioServerStateChange()"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1297
    .end local v2    # "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_29
    goto :goto_d

    .line 1298
    :cond_2a
    monitor-exit v0

    .line 1299
    return-void

    .line 1298
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private onDynPolicyMixStateUpdate(Ljava/lang/String;I)V
    .registers 10
    .param p1, "regId"    # Ljava/lang/String;
    .param p2, "state"    # I

    .line 9027
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    if-eqz v0, :cond_28

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDynamicPolicyMixStateUpdate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9028
    :cond_28
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 9029
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_86

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 9030
    .local v2, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getMixes()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_49
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/audiopolicy/AudioMix;

    .line 9031
    .local v4, "mix":Landroid/media/audiopolicy/AudioMix;
    invoke-virtual {v4}, Landroid/media/audiopolicy/AudioMix;->getRegistration()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_5d
    .catchall {:try_start_2b .. :try_end_5d} :catchall_88

    if-eqz v5, :cond_84

    .line 9033
    :try_start_5f
    iget-object v1, v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyMixStateUpdate(Ljava/lang/String;I)V
    :try_end_64
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_64} :catch_65
    .catchall {:try_start_5f .. :try_end_64} :catchall_88

    .line 9037
    goto :goto_82

    .line 9034
    :catch_65
    move-exception v1

    .line 9035
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_66
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t call notifyMixStateUpdate() on IAudioPolicyCallback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mPolicyCallback:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 9036
    invoke-interface {v6}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 9035
    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 9038
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_82
    monitor-exit v0

    return-void

    .line 9040
    .end local v4    # "mix":Landroid/media/audiopolicy/AudioMix;
    :cond_84
    goto :goto_49

    .line 9041
    .end local v2    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :cond_85
    goto :goto_35

    .line 9042
    :cond_86
    monitor-exit v0

    .line 9043
    return-void

    .line 9042
    :catchall_88
    move-exception v1

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_66 .. :try_end_8a} :catchall_88

    throw v1
.end method

.method private onEnableSurroundFormats(Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1586
    .local p1, "enabledSurroundFormats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v0, Landroid/media/AudioFormat;->SURROUND_SOUND_ENCODING:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_3d

    aget v3, v0, v2

    .line 1587
    .local v3, "surroundFormat":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 1588
    .local v4, "enabled":Z
    invoke-static {v3, v4}, Landroid/media/AudioSystem;->setSurroundFormatEnabled(IZ)I

    move-result v5

    .line 1589
    .local v5, "ret":I
    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enable surround format:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    .end local v3    # "surroundFormat":I
    .end local v4    # "enabled":Z
    .end local v5    # "ret":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1591
    :cond_3d
    return-void
.end method

.method private onSendBecomingNoisyIntent()V
    .registers 3

    .line 6862
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 6863
    return-void
.end method

.method private onSetA2dpSinkConnectionState(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 12
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "a2dpVolume"    # I

    .line 6983
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_2f

    .line 6984
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetA2dpSinkConnectionState btDevice= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is dock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6985
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6984
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6987
    :cond_2f
    if-nez p1, :cond_32

    .line 6988
    return-void

    .line 6990
    :cond_32
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 6991
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 6992
    const-string v0, ""

    .line 6995
    :cond_3e
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 6996
    nop

    .line 6997
    :try_start_42
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 6996
    const/16 v3, 0x80

    invoke-direct {p0, v3, v2}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6998
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 6999
    .local v4, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v4, :cond_58

    const/4 v5, 0x1

    goto :goto_59

    :cond_58
    const/4 v5, 0x0

    .line 7001
    .local v5, "isConnected":Z
    :goto_59
    const/4 v6, 0x2

    if-eqz v5, :cond_74

    if-eq p2, v6, :cond_74

    .line 7002
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 7003
    if-nez p2, :cond_6f

    .line 7007
    const/16 v3, 0x1f40

    invoke-direct {p0, v0, v3}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    goto :goto_6f

    .line 7011
    :cond_6c
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    .line 7013
    :cond_6f
    :goto_6f
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->setCurrentAudioRouteName(Ljava/lang/String;)V

    goto :goto_ba

    .line 7014
    :cond_74
    if-nez v5, :cond_ba

    if-ne p2, v6, :cond_ba

    .line 7015
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v6

    if-eqz v6, :cond_84

    .line 7017
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->cancelA2dpDeviceTimeout()V

    .line 7018
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    goto :goto_96

    .line 7022
    :cond_84
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->hasScheduledA2dpDockTimeout()Z

    move-result v6

    if-eqz v6, :cond_96

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    if-eqz v6, :cond_96

    .line 7023
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->cancelA2dpDeviceTimeout()V

    .line 7024
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mDockAddress:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    .line 7027
    :cond_96
    :goto_96
    const/4 v6, -0x1

    if-eq p3, v6, :cond_a9

    .line 7028
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    .line 7030
    .local v6, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    mul-int/lit8 p3, p3, 0xa

    .line 7031
    const-string/jumbo v7, "onSetA2dpSinkConnectionState"

    invoke-virtual {v6, p3, v3, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    .line 7033
    invoke-direct {p0, v6, v3}, Lcom/android/server/audio/AudioService;->setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V

    .line 7035
    .end local v6    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_a9
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "onSetA2dpSinkConnectionState"

    invoke-direct {p0, v0, v3, v6}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7037
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->setCurrentAudioRouteName(Ljava/lang/String;)V

    .line 7039
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v5    # "isConnected":Z
    :cond_ba
    :goto_ba
    monitor-exit v1

    .line 7040
    return-void

    .line 7039
    :catchall_bc
    move-exception v2

    monitor-exit v1
    :try_end_be
    .catchall {:try_start_42 .. :try_end_be} :catchall_bc

    throw v2
.end method

.method private onSetA2dpSourceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 9
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .line 7045
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetA2dpSourceConnectionState btDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7047
    if-nez p1, :cond_22

    .line 7048
    return-void

    .line 7050
    :cond_22
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 7051
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 7052
    const-string v0, ""

    .line 7055
    :cond_2e
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 7056
    const/high16 v2, -0x7ffe0000

    :try_start_33
    invoke-direct {p0, v2, v0}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7057
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 7058
    .local v3, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v3, :cond_43

    const/4 v4, 0x1

    goto :goto_44

    :cond_43
    const/4 v4, 0x0

    .line 7060
    .local v4, "isConnected":Z
    :goto_44
    const/4 v5, 0x2

    if-eqz v4, :cond_4d

    if-eq p2, v5, :cond_4d

    .line 7061
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    goto :goto_54

    .line 7062
    :cond_4d
    if-nez v4, :cond_54

    if-ne p2, v5, :cond_54

    .line 7063
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->makeA2dpSrcAvailable(Ljava/lang/String;)V

    .line 7065
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v4    # "isConnected":Z
    :cond_54
    :goto_54
    monitor-exit v1

    .line 7066
    return-void

    .line 7065
    :catchall_56
    move-exception v2

    monitor-exit v1
    :try_end_58
    .catchall {:try_start_33 .. :try_end_58} :catchall_56

    throw v2
.end method

.method private onSetHearingAidConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 10
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .line 7070
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_23

    .line 7071
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetHearingAidConnectionState btDevice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7073
    :cond_23
    if-nez p1, :cond_26

    .line 7074
    return-void

    .line 7076
    :cond_26
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 7077
    .local v0, "address":Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 7078
    const-string v0, ""

    .line 7081
    :cond_32
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 7082
    const/high16 v2, 0x8000000

    .line 7083
    :try_start_37
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 7082
    invoke-direct {p0, v2, v3}, Lcom/android/server/audio/AudioService;->makeDeviceListKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7084
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 7085
    .local v3, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    if-eqz v3, :cond_4b

    const/4 v4, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v4, 0x0

    .line 7087
    .local v4, "isConnected":Z
    :goto_4c
    const/4 v5, 0x2

    if-eqz v4, :cond_59

    if-eq p2, v5, :cond_59

    .line 7088
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->makeHearingAidDeviceUnavailable(Ljava/lang/String;)V

    .line 7089
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/audio/AudioService;->setCurrentAudioRouteName(Ljava/lang/String;)V

    goto :goto_6e

    .line 7090
    :cond_59
    if-nez v4, :cond_6e

    if-ne p2, v5, :cond_6e

    .line 7091
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "onSetHearingAidConnectionState"

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/audio/AudioService;->makeHearingAidDeviceAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7093
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/audio/AudioService;->setCurrentAudioRouteName(Ljava/lang/String;)V

    .line 7095
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    .end local v4    # "isConnected":Z
    :cond_6e
    :goto_6e
    monitor-exit v1

    .line 7096
    return-void

    .line 7095
    :catchall_70
    move-exception v2

    monitor-exit v1
    :try_end_72
    .catchall {:try_start_37 .. :try_end_72} :catchall_70

    throw v2
.end method

.method private onSetStreamVolume(IIIILjava/lang/String;)V
    .registers 23
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "device"    # I
    .param p5, "caller"    # Ljava/lang/String;

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    .line 2158
    move-object/from16 v10, p5

    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v11, v0, v7

    .line 2159
    .local v11, "stream":I
    const/4 v4, 0x0

    move-object v0, v6

    move v1, v11

    move v2, v8

    move/from16 v3, p4

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 2162
    const/4 v12, 0x0

    const/4 v13, 0x2

    if-ne v11, v13, :cond_4e

    if-eqz v8, :cond_4e

    move/from16 v14, p4

    if-ne v14, v13, :cond_50

    .line 2163
    move v0, v12

    .local v0, "i":I
    :goto_23
    move v15, v0

    .end local v0    # "i":I
    .local v15, "i":I
    iget-object v0, v6, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v15, v0, :cond_50

    .line 2164
    iget-object v0, v6, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 2165
    .local v5, "mapDevice":I
    if-eq v5, v13, :cond_4b

    .line 2166
    const/4 v4, 0x0

    move-object v0, v6

    move v1, v11

    move v2, v8

    move v3, v5

    move/from16 v16, v5

    move-object v5, v10

    .end local v5    # "mapDevice":I
    .local v16, "mapDevice":I
    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 2163
    .end local v16    # "mapDevice":I
    :cond_4b
    add-int/lit8 v0, v15, 0x1

    .end local v15    # "i":I
    .restart local v0    # "i":I
    goto :goto_23

    .line 2172
    .end local v0    # "i":I
    :cond_4e
    move/from16 v14, p4

    :cond_50
    and-int/lit8 v0, v9, 0x2

    if-nez v0, :cond_5a

    .line 2173
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v0

    if-ne v11, v0, :cond_63

    .line 2174
    :cond_5a
    invoke-direct {v6, v11, v8, v9}, Lcom/android/server/audio/AudioService;->getNewRingerMode(III)I

    move-result v0

    const-string v1, "AudioService.onSetStreamVolume"

    invoke-direct {v6, v0, v1, v12}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 2179
    :cond_63
    iget-object v0, v6, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v7

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I
    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$600(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_7a

    .line 2182
    iget-object v0, v6, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    if-nez v8, :cond_76

    move v2, v1

    goto :goto_77

    :cond_76
    move v2, v12

    :goto_77
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 2185
    :cond_7a
    if-eqz v10, :cond_97

    new-instance v0, Ljava/lang/String;

    const-string v2, "com.google.android.gms"

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    if-ne v7, v13, :cond_97

    .line 2186
    iget-object v0, v6, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    if-nez v8, :cond_94

    move v12, v1

    nop

    :cond_94
    invoke-virtual {v0, v12}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 2189
    :cond_97
    return-void
.end method

.method private onSetWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 26
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 7421
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v0, :cond_55

    .line 7422
    const-string v0, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSetWiredDeviceConnectionState(dev:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7423
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " address:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " deviceName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " caller: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ");"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 7422
    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 7429
    :cond_55
    move-object/from16 v7, p5

    :goto_57
    iget-object v6, v1, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v6

    .line 7430
    const v0, 0x402600c

    const/4 v15, 0x1

    if-nez v3, :cond_6a

    and-int v8, v2, v0

    if-eqz v8, :cond_6a

    .line 7431
    :try_start_64
    const-string/jumbo v8, "onSetWiredDeviceConnectionState state 0"

    invoke-virtual {v1, v15, v8}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(ZLjava/lang/String;)V

    .line 7436
    :cond_6a
    move-object v14, v5

    .line 7437
    .local v14, "name_switch":Ljava/lang/String;
    const-string v8, " not broadcast"

    move-object v13, v8

    .line 7438
    .local v13, "stemp":Ljava/lang/String;
    const/4 v8, 0x0

    .line 7440
    .local v8, "needBroadcast":Z
    const-string/jumbo v9, "not broadcast"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    const/4 v12, 0x0

    if-eq v9, v10, :cond_a8

    .line 7441
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v14, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 7442
    .end local p4    # "deviceName":Ljava/lang/String;
    .local v5, "deviceName":Ljava/lang/String;
    const-string v9, "AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onSetWiredDeviceConnectionState not need broadcast name:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " name_switch:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9

    .line 7445
    .end local v5    # "deviceName":Ljava/lang/String;
    .restart local p4    # "deviceName":Ljava/lang/String;
    :cond_a8
    const/4 v8, 0x1

    .line 7448
    .end local v8    # "needBroadcast":Z
    .end local p4    # "deviceName":Ljava/lang/String;
    .restart local v5    # "deviceName":Ljava/lang/String;
    .local v16, "needBroadcast":Z
    :goto_a9
    move/from16 v16, v8

    if-ne v3, v15, :cond_af

    move v8, v15

    goto :goto_b0

    :cond_af
    move v8, v12

    :goto_b0
    invoke-direct {v1, v8, v2, v4, v5}, Lcom/android/server/audio/AudioService;->handleDeviceConnection(ZILjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b8

    .line 7450
    monitor-exit v6

    return-void

    .line 7452
    :cond_b8
    if-eqz v3, :cond_11c

    .line 7453
    and-int/2addr v0, v2

    if-eqz v0, :cond_c3

    .line 7454
    const-string/jumbo v0, "onSetWiredDeviceConnectionState state not 0"

    invoke-virtual {v1, v12, v0}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpOnInt(ZLjava/lang/String;)V

    .line 7456
    :cond_c3
    const v0, 0x400000c

    and-int/2addr v0, v2

    if-eqz v0, :cond_e0

    .line 7457
    iget-object v8, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v9, 0xe

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v0, 0x0

    const v17, 0xea60

    move v15, v12

    move v12, v0

    move-object/from16 v18, v13

    move-object v13, v7

    .line 7457
    .end local v13    # "stemp":Ljava/lang/String;
    .local v18, "stemp":Ljava/lang/String;
    move-object/from16 v19, v14

    move/from16 v14, v17

    .line 7457
    .end local v14    # "name_switch":Ljava/lang/String;
    .local v19, "name_switch":Ljava/lang/String;
    invoke-static/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_e5

    .line 7466
    .end local v18    # "stemp":Ljava/lang/String;
    .end local v19    # "name_switch":Ljava/lang/String;
    .restart local v13    # "stemp":Ljava/lang/String;
    .restart local v14    # "name_switch":Ljava/lang/String;
    :cond_e0
    move v15, v12

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    .line 7466
    .end local v13    # "stemp":Ljava/lang/String;
    .end local v14    # "name_switch":Ljava/lang/String;
    .restart local v18    # "stemp":Ljava/lang/String;
    .restart local v19    # "name_switch":Ljava/lang/String;
    :goto_e5
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_111

    and-int/lit16 v0, v2, 0x400

    if-eqz v0, :cond_111

    .line 7467
    iget v0, v1, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    or-int/lit16 v0, v0, 0x400

    iput v0, v1, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 7468
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    .line 7469
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_111

    .line 7470
    iget-object v8, v1, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v8
    :try_end_ff
    .catchall {:try_start_64 .. :try_end_ff} :catchall_143

    .line 7471
    :try_start_ff
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-eqz v0, :cond_10c

    .line 7472
    iput-boolean v15, v1, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    .line 7473
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mHdmiDisplayStatusCallback:Lcom/android/server/audio/AudioService$MyDisplayStatusCallback;

    invoke-virtual {v0, v9}, Landroid/hardware/hdmi/HdmiPlaybackClient;->queryDisplayStatus(Landroid/hardware/hdmi/HdmiPlaybackClient$DisplayStatusCallback;)V

    .line 7475
    :cond_10c
    monitor-exit v8

    goto :goto_111

    :catchall_10e
    move-exception v0

    monitor-exit v8
    :try_end_110
    .catchall {:try_start_ff .. :try_end_110} :catchall_10e

    :try_start_110
    throw v0

    .line 7478
    :cond_111
    :goto_111
    and-int/lit16 v0, v2, 0x400

    if-eqz v0, :cond_139

    .line 7479
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v8, 0x1

    invoke-direct {v1, v0, v8}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    goto :goto_139

    .line 7482
    .end local v18    # "stemp":Ljava/lang/String;
    .end local v19    # "name_switch":Ljava/lang/String;
    .restart local v13    # "stemp":Ljava/lang/String;
    .restart local v14    # "name_switch":Ljava/lang/String;
    :cond_11c
    move v15, v12

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    .line 7482
    .end local v13    # "stemp":Ljava/lang/String;
    .end local v14    # "name_switch":Ljava/lang/String;
    .restart local v18    # "stemp":Ljava/lang/String;
    .restart local v19    # "name_switch":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isPlatformTelevision()Z

    move-result v0

    if-eqz v0, :cond_139

    and-int/lit16 v0, v2, 0x400

    if-eqz v0, :cond_139

    .line 7483
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_139

    .line 7484
    iget-object v8, v1, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v8
    :try_end_132
    .catchall {:try_start_110 .. :try_end_132} :catchall_143

    .line 7485
    :try_start_132
    iput-boolean v15, v1, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    .line 7486
    monitor-exit v8

    goto :goto_139

    :catchall_136
    move-exception v0

    monitor-exit v8
    :try_end_138
    .catchall {:try_start_132 .. :try_end_138} :catchall_136

    :try_start_138
    throw v0

    .line 7496
    :cond_139
    :goto_139
    if-eqz v16, :cond_13e

    .line 7497
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/audio/AudioService;->sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V

    .line 7500
    :cond_13e
    invoke-direct/range {p0 .. p2}, Lcom/android/server/audio/AudioService;->updateAudioRoutes(II)V

    .line 7501
    .end local v16    # "needBroadcast":Z
    .end local v18    # "stemp":Ljava/lang/String;
    .end local v19    # "name_switch":Ljava/lang/String;
    monitor-exit v6

    .line 7502
    return-void

    .line 7501
    .end local v5    # "deviceName":Ljava/lang/String;
    .restart local p4    # "deviceName":Ljava/lang/String;
    :catchall_143
    move-exception v0

    .line 7501
    .end local p4    # "deviceName":Ljava/lang/String;
    .restart local v5    # "deviceName":Ljava/lang/String;
    monitor-exit v6
    :try_end_145
    .catchall {:try_start_138 .. :try_end_145} :catchall_143

    throw v0
.end method

.method private onUnmuteStream(II)V
    .registers 6
    .param p1, "stream"    # I
    .param p2, "flags"    # I

    .line 2057
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    .line 2058
    .local v0, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 2060
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v1

    .line 2061
    .local v1, "device":I
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 2062
    .local v2, "index":I
    invoke-virtual {p0, p1, v2, v2, p2}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    .line 2063
    return-void
.end method

.method private queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .registers 18
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .line 5270
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5273
    .local v0, "ident":J
    move-object v2, p0

    iget-object v3, v2, Lcom/android/server/audio/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5274
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5275
    const/4 v6, 0x2

    move-object v4, p1

    move v5, p2

    move v7, p3

    move v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5276
    return-void
.end method

.method private static readAndSetLowRamDevice()V
    .registers 7

    .line 8552
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    .line 8553
    .local v0, "isLowRamDevice":Z
    const-wide/32 v1, 0x40000000

    .line 8556
    .local v1, "totalMemory":J
    :try_start_7
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 8557
    .local v3, "info":Landroid/app/ActivityManager$MemoryInfo;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/app/IActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 8558
    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_17

    move-wide v1, v4

    .line 8562
    .end local v3    # "info":Landroid/app/ActivityManager$MemoryInfo;
    goto :goto_20

    .line 8559
    :catch_17
    move-exception v3

    .line 8560
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "AudioService"

    const-string v5, "Cannot obtain MemoryInfo from ActivityManager, assume low memory device"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8561
    const/4 v0, 0x1

    .line 8564
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_20
    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setLowRamDevice(ZJ)I

    move-result v3

    .line 8565
    .local v3, "status":I
    if-eqz v3, :cond_3c

    .line 8566
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AudioFlinger informed of device\'s low RAM attribute; status "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8568
    :cond_3c
    return-void
.end method

.method private readAudioSettings(Z)V
    .registers 9
    .param p1, "userSwitch"    # Z

    .line 3653
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readPersistedSettings()V

    .line 3654
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->readUserRestrictions()V

    .line 3657
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 3658
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    move v2, v1

    .line 3658
    .local v2, "streamType":I
    :goto_c
    const/4 v3, 0x3

    if-ge v2, v0, :cond_42

    .line 3659
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v2

    .line 3661
    .local v4, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    if-eqz p1, :cond_1c

    sget-object v5, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v2

    if-ne v5, v3, :cond_1c

    .line 3662
    goto :goto_3c

    .line 3665
    :cond_1c
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 3666
    const-class v5, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v5

    .line 3668
    :try_start_22
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v3

    if-nez v3, :cond_34

    .line 3669
    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v3

    if-eqz v3, :cond_38

    :cond_34
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v3, :cond_3b

    .line 3670
    :cond_38
    # setter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v4, v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$802(Lcom/android/server/audio/AudioService$VolumeStreamState;Z)Z

    .line 3672
    :cond_3b
    monitor-exit v5

    .line 3658
    .end local v4    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 3672
    .restart local v4    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :catchall_3f
    move-exception v1

    monitor-exit v5
    :try_end_41
    .catchall {:try_start_22 .. :try_end_41} :catchall_3f

    throw v1

    .line 3677
    .end local v2    # "streamType":I
    .end local v4    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 3679
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices()V

    .line 3680
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkAllAliasStreamVolumes()V

    .line 3681
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMuteAffectedStreams()V

    .line 3683
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v2

    .line 3684
    :try_start_55
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "unsafe_volume_music_active_ms"

    const/4 v6, -0x2

    invoke-static {v4, v5, v1, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    const v5, 0x44aa200

    invoke-static {v4, v1, v5}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 3687
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_75

    .line 3688
    const-string v1, "AudioService"

    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    .line 3690
    :cond_75
    monitor-exit v2

    .line 3691
    return-void

    .line 3690
    :catchall_77
    move-exception v1

    monitor-exit v2
    :try_end_79
    .catchall {:try_start_55 .. :try_end_79} :catchall_77

    throw v1
.end method

.method private readCameraSoundForced()Z
    .registers 4

    .line 8028
    const-string v0, "audio.camerasound.force"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    .line 8029
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 v1, 0x1

    .line 8028
    :goto_1b
    return v1
.end method

.method private readDockAudioSettings(Landroid/content/ContentResolver;)V
    .registers 12
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 1473
    const-string v0, "dock_audio_media_enabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    goto :goto_c

    :cond_b
    move v2, v1

    :goto_c
    iput-boolean v2, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    .line 1476
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x3

    .line 1480
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v0, :cond_1c

    .line 1481
    const/16 v1, 0x8

    :goto_1a
    move v7, v1

    goto :goto_1d

    :cond_1c
    goto :goto_1a

    :goto_1d
    new-instance v8, Ljava/lang/String;

    const-string/jumbo v0, "readDockAudioSettings"

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    .line 1476
    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1484
    return-void
.end method

.method private readPersistedSettings()V
    .registers 10

    .line 1594
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1596
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "mode_ringer"

    .line 1597
    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1599
    .local v1, "ringerModeFromSettings":I
    move v3, v1

    .line 1602
    .local v3, "ringerMode":I
    invoke-virtual {p0, v3}, Lcom/android/server/audio/AudioService;->isValidRingerMode(I)Z

    move-result v4

    if-nez v4, :cond_12

    .line 1603
    const/4 v3, 0x2

    .line 1605
    :cond_12
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1a

    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v5, :cond_1a

    .line 1606
    const/4 v3, 0x0

    .line 1608
    :cond_1a
    if-eq v3, v1, :cond_22

    .line 1609
    const-string/jumbo v5, "mode_ringer"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1611
    :cond_22
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v5, :cond_2a

    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v5, :cond_2b

    .line 1612
    :cond_2a
    const/4 v3, 0x2

    .line 1614
    :cond_2b
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1615
    :try_start_2e
    iput v3, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    .line 1616
    iget v6, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_39

    .line 1617
    iget v6, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    iput v6, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 1623
    :cond_39
    nop

    .line 1625
    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_41

    .line 1623
    move v6, v2

    goto :goto_43

    .line 1626
    :cond_41
    nop

    .line 1623
    move v6, v7

    :goto_43
    invoke-static {v7, v4, v6}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v6

    iput v6, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 1627
    iget v6, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 1629
    iget-boolean v8, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-eqz v8, :cond_50

    goto :goto_52

    .line 1630
    :cond_50
    nop

    .line 1627
    move v2, v7

    :goto_52
    invoke-static {v6, v7, v2}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 1632
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateRingerAndZenModeAffectedStreams()Z

    .line 1633
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    .line 1634
    const-string/jumbo v2, "readPersistedSettings"

    invoke-direct {p0, v0, v2}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1635
    invoke-direct {p0, v0, v4}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    .line 1636
    monitor-exit v5
    :try_end_68
    .catchall {:try_start_2e .. :try_end_68} :catchall_91

    .line 1638
    const-string/jumbo v2, "mute_streams_affected"

    const/16 v5, 0x2f

    const/4 v6, -0x2

    invoke-static {v0, v2, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    .line 1642
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    .line 1646
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    iget v5, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    invoke-direct {p0, v2, v5}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 1647
    const-string v2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    iget v5, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    invoke-direct {p0, v2, v5}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 1650
    invoke-direct {p0, v7}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    .line 1651
    invoke-direct {p0, v4}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    .line 1654
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$VolumeController;->loadSettings(Landroid/content/ContentResolver;)V

    .line 1655
    return-void

    .line 1636
    :catchall_91
    move-exception v2

    :try_start_92
    monitor-exit v5
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v2
.end method

.method private readUserRestrictions()V
    .registers 10

    .line 1658
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    .line 1661
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const-string v2, "disallow_unmute_device"

    .line 1662
    invoke-virtual {v1, v0, v2}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const-string/jumbo v4, "no_adjust_volume"

    .line 1664
    invoke-virtual {v1, v0, v4}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1e

    :cond_1c
    move v1, v3

    goto :goto_1f

    :cond_1e
    :goto_1e
    move v1, v2

    .line 1666
    .local v1, "masterMute":Z
    :goto_1f
    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v4, :cond_29

    .line 1667
    const/4 v1, 0x0

    .line 1668
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 1671
    :cond_29
    const-string v4, "AudioService"

    const-string v5, "Master mute %s, user=%d"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    .line 1674
    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 1675
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 1677
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mUserManagerInternal:Landroid/os/UserManagerInternal;

    const-string/jumbo v5, "no_unmute_microphone"

    invoke-virtual {v4, v0, v5}, Landroid/os/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v4

    .line 1680
    .local v4, "microphoneMute":Z
    const-string v5, "AudioService"

    const-string v7, "Mic mute %s, user=%d"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    invoke-static {v4}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 1683
    return-void
.end method

.method private rescaleIndex(III)I
    .registers 6
    .param p1, "index"    # I
    .param p2, "srcStream"    # I
    .param p3, "dstStream"    # I

    .line 1686
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    .line 1687
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    .line 1688
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    .line 1689
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    .line 1690
    .local v0, "rescaled":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v1

    if-ge v0, v1, :cond_30

    .line 1691
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p3

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v1

    return v1

    .line 1693
    :cond_30
    return v0
.end method

.method private resetBluetoothSco()V
    .registers 7

    .line 4418
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4419
    :try_start_3
    const-string v1, "AudioService"

    const-string v2, "In resetBluetoothSco(), calling clearAllScoClients()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4420
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/android/server/audio/AudioService;->clearAllScoClients(IZ)V

    .line 4421
    iput v1, p0, Lcom/android/server/audio/AudioService;->mScoAudioState:I

    .line 4422
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->broadcastScoConnectionState(I)V

    .line 4423
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_47

    .line 4424
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4425
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 4426
    move v0, v1

    .line 4426
    .local v0, "i":I
    :goto_1d
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_3c

    .line 4427
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 4428
    .local v3, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v4, v3, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    const/16 v5, 0x80

    if-ne v4, v5, :cond_39

    .line 4429
    const-string v4, "A2dpSuspended=false"

    invoke-static {v4}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 4430
    goto :goto_3c

    .line 4426
    .end local v3    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 4433
    .end local v0    # "i":I
    :cond_3c
    :goto_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_1d .. :try_end_3d} :catchall_44

    .line 4434
    const-string/jumbo v0, "resetBluetoothSco"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/audio/AudioService;->setBluetoothScoOnInt(ZLjava/lang/String;)V

    .line 4435
    return-void

    .line 4433
    :catchall_44
    move-exception v0

    :try_start_45
    monitor-exit v2
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v0

    .line 4423
    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v1
.end method

.method private safeMediaVolumeIndex(I)I
    .registers 4
    .param p1, "device"    # I

    .line 8191
    const v0, 0x400000c

    and-int/2addr v0, p1

    if-nez v0, :cond_c

    .line 8192
    sget-object v0, Lcom/android/server/audio/AudioService;->MAX_STREAM_VOLUME:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    return v0

    .line 8194
    :cond_c
    const/high16 v0, 0x4000000

    if-ne p1, v0, :cond_13

    .line 8195
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    return v0

    .line 8197
    :cond_13
    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    return v0
.end method

.method private static safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # Ljava/lang/Integer;

    .line 8540
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 8546
    const/4 v0, 0x0

    return-object v0

    .line 8544
    :pswitch_9
    const-string v0, "SAFE_MEDIA_VOLUME_ACTIVE"

    return-object v0

    .line 8543
    :pswitch_c
    const-string v0, "SAFE_MEDIA_VOLUME_INACTIVE"

    return-object v0

    .line 8542
    :pswitch_f
    const-string v0, "SAFE_MEDIA_VOLUME_DISABLED"

    return-object v0

    .line 8541
    :pswitch_12
    const-string v0, "SAFE_MEDIA_VOLUME_NOT_CONFIGURED"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method private saveMusicActiveMs()V
    .registers 5

    .line 4791
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    iget v1, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/audio/AudioService$AudioHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4792
    return-void
.end method

.method private sendBroadcastToAll(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2484
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2485
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2486
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2488
    .local v0, "ident":J
    :try_start_e
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_1a

    .line 2490
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2491
    nop

    .line 2492
    return-void

    .line 2490
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendDeviceConnectionIntent(IILjava/lang/String;Ljava/lang/String;)V
    .registers 25
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "deviceName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    .line 7321
    move-object/from16 v0, p4

    sget-boolean v3, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v3, :cond_4a

    .line 7322
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendDeviceConnectionIntent(dev:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " state:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7323
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " address:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ");"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7322
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7326
    :cond_4a
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object v12, v3

    .line 7328
    .local v12, "intent":Landroid/content/Intent;
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/high16 v5, -0x7e000000

    const/high16 v6, 0x4000000

    const/4 v7, 0x1

    if-ne v2, v3, :cond_65

    .line 7329
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7330
    const-string/jumbo v3, "microphone"

    invoke-virtual {v12, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_c5

    .line 7331
    :cond_65
    const/16 v3, 0x8

    if-eq v2, v3, :cond_ba

    const/high16 v3, 0x20000

    if-ne v2, v3, :cond_6e

    goto :goto_ba

    .line 7335
    :cond_6e
    if-ne v2, v6, :cond_97

    .line 7336
    const-string v3, "AudioService"

    const-string/jumbo v8, "lht sendDeviceConnectionInetent Intent.ACTION_HEADSET_PLUG"

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7337
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7341
    const-string/jumbo v3, "usbheadset"

    invoke-virtual {v12, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7343
    const-string/jumbo v3, "microphone"

    .line 7345
    const-string v8, ""

    .line 7344
    invoke-static {v5, v8}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v8

    if-ne v8, v7, :cond_91

    .line 7345
    nop

    .line 7343
    move v8, v7

    goto :goto_93

    .line 7345
    :cond_91
    nop

    .line 7343
    move v8, v4

    :goto_93
    invoke-virtual {v12, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_c5

    .line 7346
    :cond_97
    if-ne v2, v5, :cond_ae

    .line 7347
    const-string v3, ""

    invoke-static {v6, v3}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_ad

    .line 7349
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7350
    const-string/jumbo v3, "microphone"

    invoke-virtual {v12, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_c5

    .line 7353
    :cond_ad
    return-void

    .line 7355
    :cond_ae
    const/16 v3, 0x400

    if-eq v2, v3, :cond_b6

    const/high16 v3, 0x40000

    if-ne v2, v3, :cond_c5

    .line 7357
    :cond_b6
    invoke-direct {v1, v12, v10}, Lcom/android/server/audio/AudioService;->configureHdmiPlugIntent(Landroid/content/Intent;I)V

    goto :goto_c5

    .line 7333
    :cond_ba
    :goto_ba
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7334
    const-string/jumbo v3, "microphone"

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7360
    :cond_c5
    :goto_c5
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_cc

    .line 7361
    return-void

    .line 7364
    :cond_cc
    const-string/jumbo v3, "state"

    invoke-virtual {v12, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7365
    const-string v3, "address"

    invoke-virtual {v12, v3, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7366
    const-string/jumbo v3, "portName"

    invoke-virtual {v12, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7371
    const-string v3, "American Headset"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ef

    .line 7372
    const-string/jumbo v3, "standard"

    invoke-virtual {v12, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7373
    const-string v0, "Headset"

    .line 7378
    .end local p4    # "deviceName":Ljava/lang/String;
    .local v13, "deviceName":Ljava/lang/String;
    :goto_ed
    move-object v13, v0

    goto :goto_f6

    .line 7375
    .end local v13    # "deviceName":Ljava/lang/String;
    .restart local p4    # "deviceName":Ljava/lang/String;
    :cond_ef
    const-string/jumbo v3, "standard"

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_ed

    .line 7378
    .end local p4    # "deviceName":Ljava/lang/String;
    .restart local v13    # "deviceName":Ljava/lang/String;
    :goto_f6
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7380
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-wide v14, v3

    .line 7382
    .local v14, "ident":J
    const/4 v0, -0x1

    :try_start_101
    invoke-static {v12, v0}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V
    :try_end_104
    .catchall {:try_start_101 .. :try_end_104} :catchall_168

    .line 7384
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7385
    nop

    .line 7388
    iget v0, v1, Lcom/android/server/audio/AudioService;->mAutoPlayMusic:I

    if-ne v0, v7, :cond_167

    if-eq v2, v5, :cond_167

    if-ne v10, v7, :cond_167

    .line 7389
    const-string/jumbo v0, "media_session"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    .line 7390
    .local v9, "b":Landroid/os/IBinder;
    invoke-static {v9}, Landroid/media/session/ISessionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionManager;

    move-result-object v8

    .line 7391
    .local v8, "sessionManagerService":Landroid/media/session/ISessionManager;
    const/4 v3, 0x0

    .line 7392
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 7393
    .local v4, "delay":I
    move v5, v7

    .line 7395
    .local v5, "sendKey":Z
    :try_start_11e
    invoke-interface {v8}, Landroid/media/session/ISessionManager;->getCurrentMediaButtonPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_122
    .catch Landroid/os/RemoteException; {:try_start_11e .. :try_end_122} :catch_124

    move-object v3, v0

    .line 7397
    goto :goto_126

    .line 7396
    :catch_124
    move-exception v0

    .line 7398
    move-object v0, v3

    .line 7398
    .end local v3    # "packageName":Ljava/lang/String;
    .local v0, "packageName":Ljava/lang/String;
    :goto_126
    if-eqz v0, :cond_140

    const-string v3, "com.tencent.qqmusic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_140

    .line 7399
    const/16 v3, 0x708

    .line 7400
    .end local v4    # "delay":I
    .local v3, "delay":I
    if-ne v2, v6, :cond_13d

    .line 7401
    const-string/jumbo v4, "qq.auto.play.delay"

    const/16 v6, 0xc1c

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 7404
    .end local v3    # "delay":I
    .local v16, "delay":I
    :cond_13d
    move/from16 v16, v3

    goto :goto_142

    .line 7404
    .end local v16    # "delay":I
    .restart local v4    # "delay":I
    :cond_140
    move/from16 v16, v4

    .line 7404
    .end local v4    # "delay":I
    .restart local v16    # "delay":I
    :goto_142
    if-eqz v0, :cond_14e

    const-string/jumbo v3, "tv.danmaku.bili"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14e

    .line 7405
    const/4 v5, 0x0

    .line 7407
    .end local v5    # "sendKey":Z
    .local v6, "sendKey":Z
    :cond_14e
    move v6, v5

    if-ne v6, v7, :cond_167

    .line 7408
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x22

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    move/from16 v18, v6

    move v6, v10

    .line 7408
    .end local v6    # "sendKey":Z
    .local v18, "sendKey":Z
    move-object/from16 v19, v8

    move-object/from16 v8, v17

    .line 7408
    .end local v8    # "sessionManagerService":Landroid/media/session/ISessionManager;
    .local v19, "sessionManagerService":Landroid/media/session/ISessionManager;
    move-object/from16 v17, v9

    move/from16 v9, v16

    .line 7408
    .end local v9    # "b":Landroid/os/IBinder;
    .local v17, "b":Landroid/os/IBinder;
    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7412
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v16    # "delay":I
    .end local v17    # "b":Landroid/os/IBinder;
    .end local v18    # "sendKey":Z
    .end local v19    # "sessionManagerService":Landroid/media/session/ISessionManager;
    :cond_167
    return-void

    .line 7384
    :catchall_168
    move-exception v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v3, v0

    throw v3
.end method

.method private sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V
    .registers 16
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "forceUpdate"    # Z

    .line 1539
    iget v0, p0, Lcom/android/server/audio/AudioService;->mEncodedSurroundMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 1541
    return-void

    .line 1543
    :cond_6
    const-string v0, "encoded_surround_output_enabled_formats"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1545
    .local v0, "enabledSurroundFormats":Ljava/lang/String;
    if-nez v0, :cond_10

    .line 1548
    const-string v0, ""

    .line 1550
    :cond_10
    if-nez p2, :cond_1b

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1553
    return-void

    .line 1556
    :cond_1b
    iput-object v0, p0, Lcom/android/server/audio/AudioService;->mEnabledSurroundFormats:Ljava/lang/String;

    .line 1557
    const-string v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1558
    .local v1, "surroundFormats":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1559
    .local v2, "formats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_2b
    if-ge v5, v3, :cond_75

    aget-object v6, v1, v5

    .line 1561
    .local v6, "format":Ljava/lang/String;
    :try_start_2f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1562
    .local v7, "audioFormat":I
    const/4 v8, 0x0

    .line 1563
    .local v8, "isSurroundFormat":Z
    sget-object v9, Landroid/media/AudioFormat;->SURROUND_SOUND_ENCODING:[I

    array-length v10, v9

    move v11, v4

    :goto_3c
    if-ge v11, v10, :cond_47

    aget v12, v9, v11

    .line 1564
    .local v12, "sf":I
    if-ne v12, v7, :cond_44

    .line 1565
    const/4 v8, 0x1

    .line 1566
    goto :goto_47

    .line 1563
    .end local v12    # "sf":I
    :cond_44
    add-int/lit8 v11, v11, 0x1

    goto :goto_3c

    .line 1569
    :cond_47
    :goto_47
    if-eqz v8, :cond_5a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5a

    .line 1570
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_5a} :catch_5b

    .line 1574
    .end local v7    # "audioFormat":I
    .end local v8    # "isSurroundFormat":Z
    :cond_5a
    goto :goto_72

    .line 1572
    :catch_5b
    move-exception v7

    .line 1573
    .local v7, "e":Ljava/lang/Exception;
    const-string v8, "AudioService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid enabled surround format:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    .end local v6    # "format":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_72
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 1578
    :cond_75
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "encoded_surround_output_enabled_formats"

    const-string v5, ","

    .line 1580
    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 1578
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1581
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x1e

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, v2

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1582
    return-void
.end method

.method private sendEncodedSurroundMode(ILjava/lang/String;)V
    .registers 13
    .param p1, "encodedSurroundMode"    # I
    .param p2, "eventSource"    # Ljava/lang/String;

    .line 1508
    const/16 v0, 0x10

    .line 1509
    .local v0, "forceSetting":I
    packed-switch p1, :pswitch_data_3a

    .line 1523
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSurroundSoundSettings: illegal value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 1520
    :pswitch_1d
    const/16 v0, 0xf

    .line 1521
    goto :goto_28

    .line 1517
    :pswitch_20
    const/16 v0, 0xe

    .line 1518
    goto :goto_28

    .line 1514
    :pswitch_23
    const/16 v0, 0xd

    .line 1515
    goto :goto_28

    .line 1511
    :pswitch_26
    const/4 v0, 0x0

    .line 1512
    nop

    .line 1527
    :goto_28
    const/16 v1, 0x10

    if-eq v0, v1, :cond_38

    .line 1528
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x6

    const/4 v9, 0x0

    move v7, v0

    move-object v8, p2

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1536
    :cond_38
    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method private sendEncodedSurroundMode(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 5
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "eventSource"    # Ljava/lang/String;

    .line 1499
    const-string v0, "encoded_surround_output"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1502
    .local v0, "encodedSurroundMode":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(ILjava/lang/String;)V

    .line 1503
    return-void
.end method

.method private sendMasterMuteUpdate(ZI)V
    .registers 5
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    .line 2543
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->updateFlagsForSystemAudio(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->postMasterMuteChanged(I)V

    .line 2544
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 2545
    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .registers 14
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .line 5281
    if-nez p2, :cond_6

    .line 5282
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_10

    .line 5283
    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_10

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5284
    return-void

    .line 5286
    :cond_10
    :goto_10
    sget-object v0, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    monitor-enter v0

    .line 5287
    :try_start_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, p6

    add-long/2addr v1, v3

    .line 5289
    .local v1, "time":J
    const/16 v3, 0x65

    if-eq p1, v3, :cond_31

    const/16 v3, 0x66

    if-eq p1, v3, :cond_31

    const/16 v3, 0x69

    if-eq p1, v3, :cond_31

    const/16 v3, 0x64

    if-eq p1, v3, :cond_31

    const/16 v3, 0x67

    if-eq p1, v3, :cond_31

    const/16 v3, 0x6a

    if-ne p1, v3, :cond_4b

    .line 5295
    :cond_31
    sget-object v3, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-ltz v3, :cond_45

    .line 5297
    sget-object v3, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1e

    add-long v1, v3, v5

    .line 5299
    :cond_45
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sput-object v3, Lcom/android/server/audio/AudioService;->mLastDeviceConnectMsgTime:Ljava/lang/Long;

    .line 5302
    :cond_4b
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 5303
    .end local v1    # "time":J
    monitor-exit v0

    .line 5304
    return-void

    .line 5303
    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_13 .. :try_end_56} :catchall_54

    throw v1
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2495
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2496
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2498
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_15

    .line 2500
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2501
    nop

    .line 2502
    return-void

    .line 2500
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 10
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 4483
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4484
    :try_start_3
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBtScoActiveDevice: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4485
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 4486
    .local v1, "previousActiveDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->isTwsPlusDevice()Z

    move-result v2

    if-eqz v2, :cond_4e

    if-eqz p1, :cond_4e

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 4488
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getTwsPlusPeerAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 4489
    const-string v2, "AudioService"

    const-string/jumbo v3, "setBtScoActiveDevice: Active device switch between twsplus devices"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4492
    monitor-exit v0

    return-void

    .line 4494
    :cond_4e
    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c2

    .line 4495
    const-string v2, "00:00:00:00:00:00"

    .line 4496
    .local v2, "DummyAddress":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 4497
    .local v3, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v3, :cond_65

    .line 4498
    const-string v4, "AudioService"

    const-string v5, "adapter is null, returning from setBtScoActiveDevice"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4499
    monitor-exit v0

    return-void

    .line 4501
    :cond_65
    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 4502
    .local v4, "dummyActiveDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_8e

    if-eqz p1, :cond_8e

    .line 4505
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/android/server/audio/AudioService;->handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v5

    if-nez v5, :cond_8e

    .line 4506
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBtScoActiveDevice() failed to add new device "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4508
    const/4 p1, 0x0

    .line 4511
    :cond_8e
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v5, :cond_b2

    if-nez p1, :cond_b2

    .line 4514
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/audio/AudioService;->handleBtScoActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v5

    if-nez v5, :cond_b2

    .line 4515
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBtScoActiveDevice() failed to remove previous device "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4519
    :cond_b2
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 4520
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_c2

    .line 4521
    const-string v5, "AudioService"

    const-string v6, "In setBtScoActiveDevice(), calling resetBluetoothSco()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4522
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V

    .line 4525
    .end local v1    # "previousActiveDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "DummyAddress":Ljava/lang/String;
    .end local v3    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v4    # "dummyActiveDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_c2
    monitor-exit v0

    .line 4526
    return-void

    .line 4525
    :catchall_c4
    move-exception v1

    monitor-exit v0
    :try_end_c6
    .catchall {:try_start_3 .. :try_end_c6} :catchall_c4

    throw v1
.end method

.method private setCurrentAudioRouteName(Ljava/lang/String;)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;

    .line 7099
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v0

    .line 7100
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 7101
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object p1, v1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    .line 7102
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xc

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7105
    :cond_1d
    monitor-exit v0

    .line 7106
    return-void

    .line 7105
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private setDeviceVolume(Lcom/android/server/audio/AudioService$VolumeStreamState;I)V
    .registers 12
    .param p1, "streamState"    # Lcom/android/server/audio/AudioService$VolumeStreamState;
    .param p2, "device"    # I

    .line 6096
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 6098
    :try_start_3
    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 6101
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 6102
    .local v1, "numStreamTypes":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "streamType":I
    :goto_c
    if-ltz v2, :cond_3d

    .line 6103
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    if-eq v2, v3, :cond_3a

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v2

    .line 6104
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$900(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v4

    if-ne v3, v4, :cond_3a

    .line 6107
    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v3

    .line 6108
    .local v3, "streamDevice":I
    if-eq p2, v3, :cond_33

    iget-boolean v4, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v4, :cond_33

    and-int/lit16 v4, p2, 0x380

    if-eqz v4, :cond_33

    .line 6110
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v2

    invoke-virtual {v4, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 6112
    :cond_33
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v4, v4, v2

    invoke-virtual {v4, v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyDeviceVolume_syncVSS(I)V

    .line 6102
    .end local v3    # "streamDevice":I
    :cond_3a
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 6115
    .end local v1    # "numStreamTypes":I
    .end local v2    # "streamType":I
    :cond_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_4b

    .line 6117
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/16 v8, 0x1f4

    move v5, p2

    move-object v7, p1

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6125
    return-void

    .line 6115
    :catchall_4b
    move-exception v1

    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method private setExtVolumeController(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 5
    .param p1, "apc"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8990
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 8992
    const-string v0, "AudioService"

    const-string v1, "Cannot set external volume controller: device not set for volume keys handled in PhoneWindowManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8994
    return-void

    .line 8996
    :cond_17
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8997
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_31

    .line 8998
    const-string v1, "AudioService"

    const-string v2, "Cannot set external volume controller: existing controller"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9000
    :cond_31
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 9001
    monitor-exit v0

    .line 9002
    return-void

    .line 9001
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1a .. :try_end_37} :catchall_35

    throw v1
.end method

.method private setForceUseInt_SyncDevices(IILjava/lang/String;)V
    .registers 12
    .param p1, "usage"    # I
    .param p2, "config"    # I
    .param p3, "eventSource"    # Ljava/lang/String;

    .line 8113
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 8114
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8117
    :cond_f
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 8118
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 8119
    return-void
.end method

.method private setHearingAidVolume(II)V
    .registers 6
    .param p1, "index"    # I
    .param p2, "streamType"    # I

    .line 6934
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHearingAidLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6935
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    if-eqz v1, :cond_1b

    .line 6937
    div-int/lit8 v1, p1, 0xa

    const/high16 v2, 0x8000000

    invoke-static {p2, v1, v2}, Landroid/media/AudioSystem;->getStreamVolumeDB(III)F

    move-result v1

    float-to-int v1, v1

    .line 6939
    .local v1, "gainDB":I
    const/16 v2, -0x80

    if-ge v1, v2, :cond_16

    .line 6940
    const/16 v1, -0x80

    .line 6941
    :cond_16
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothHearingAid;->setVolume(I)V

    .line 6943
    .end local v1    # "gainDB":I
    :cond_1b
    monitor-exit v0

    .line 6944
    return-void

    .line 6943
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private setMasterMuteInternal(ZILjava/lang/String;II)V
    .registers 8
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "userId"    # I

    .line 2715
    const/16 v0, 0x3e8

    if-ne p4, v0, :cond_c

    .line 2716
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {p5, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p4

    .line 2719
    :cond_c
    if-nez p1, :cond_19

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x21

    invoke-virtual {v0, v1, p4, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_19

    .line 2721
    return-void

    .line 2723
    :cond_19
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p5, v0, :cond_2a

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 2724
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2a

    .line 2727
    return-void

    .line 2729
    :cond_2a
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/audio/AudioService;->setMasterMuteInternalNoCallerCheck(ZII)V

    .line 2730
    return-void
.end method

.method private setMasterMuteInternalNoCallerCheck(ZII)V
    .registers 9
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 2734
    const-string v0, "AudioService"

    const-string v1, "Master mute %s, %d, user=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isPlatformAutomotive()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_2e

    .line 2740
    return-void

    .line 2742
    :cond_2e
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    if-ne v0, p3, :cond_52

    .line 2743
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-eq p1, v0, :cond_52

    .line 2744
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    .line 2745
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 2746
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/AudioService;->sendMasterMuteUpdate(ZI)V

    .line 2748
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2749
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2750
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 2753
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_52
    return-void
.end method

.method private setMicrophoneMuteNoCallerCheck(ZI)V
    .registers 9
    .param p1, "on"    # Z
    .param p2, "userId"    # I

    .line 2859
    const-string v0, "AudioService"

    const-string v1, "Mic mute %s, user=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    if-ne v0, p2, :cond_44

    .line 2863
    invoke-static {}, Landroid/media/AudioSystem;->isMicrophoneMuted()Z

    move-result v0

    .line 2864
    .local v0, "currentMute":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2865
    .local v1, "identity":J
    invoke-static {p1}, Landroid/media/AudioSystem;->muteMicrophone(Z)I

    .line 2866
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2867
    if-eq p1, v0, :cond_44

    .line 2868
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.action.MICROPHONE_MUTE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x40000000    # 2.0f

    .line 2869
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 2868
    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2872
    .end local v0    # "currentMute":Z
    .end local v1    # "identity":J
    :cond_44
    return-void
.end method

.method private setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I
    .registers 25
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I
    .param p4, "caller"    # Ljava/lang/String;

    move-object/from16 v7, p0

    move/from16 v8, p3

    .line 3288
    move-object/from16 v9, p4

    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v0, :cond_39

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setModeInt(mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", caller="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 3290
    :cond_39
    move/from16 v2, p1

    :goto_3b
    const/4 v1, 0x0

    .line 3291
    .local v1, "newModeOwnerPid":I
    if-nez p2, :cond_47

    .line 3292
    const-string v3, "AudioService"

    const-string/jumbo v4, "setModeInt() called with null binder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3293
    return v1

    .line 3296
    :cond_47
    const/4 v3, 0x0

    .line 3297
    .local v3, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    iget-object v4, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 3297
    .local v4, "iter":Ljava/util/Iterator;
    :goto_4e
    move-object v10, v4

    .line 3298
    .end local v4    # "iter":Ljava/util/Iterator;
    .local v10, "iter":Ljava/util/Iterator;
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_71

    .line 3299
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 3300
    .local v4, "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v6

    if-ne v6, v8, :cond_6e

    .line 3301
    move-object v3, v4

    .line 3303
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 3304
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v6, v3, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3305
    goto :goto_71

    .line 3307
    .end local v4    # "h":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    :cond_6e
    nop

    .line 3297
    move-object v4, v10

    goto :goto_4e

    .line 3308
    :cond_71
    :goto_71
    move-object/from16 v4, p2

    move v0, v5

    .line 3308
    .end local p1    # "mode":I
    .end local p2    # "cb":Landroid/os/IBinder;
    .local v0, "status":I
    .local v2, "mode":I
    .local v4, "cb":Landroid/os/IBinder;
    :goto_74
    move v6, v0

    .line 3311
    .end local v0    # "status":I
    .local v6, "status":I
    move v11, v2

    .line 3312
    .local v11, "actualMode":I
    if-nez v2, :cond_bc

    .line 3314
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b9

    .line 3315
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .line 3316
    .end local v3    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .local v0, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3317
    .end local v4    # "cb":Landroid/os/IBinder;
    .local v3, "cb":Landroid/os/IBinder;
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getMode()I

    move-result v4

    .line 3318
    .end local v11    # "actualMode":I
    .local v4, "actualMode":I
    sget-boolean v11, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v11, :cond_b6

    .line 3319
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " using mode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " instead due to death hdlr at pid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3320
    # getter for: Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I
    invoke-static {v0}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->access$2100(Lcom/android/server/audio/AudioService$SetModeDeathHandler;)I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 3319
    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    :cond_b6
    move-object v12, v3

    move v11, v4

    goto :goto_ef

    .line 3341
    .end local v3    # "cb":Landroid/os/IBinder;
    .end local v4    # "actualMode":I
    .restart local v11    # "actualMode":I
    .local v12, "cb":Landroid/os/IBinder;
    :cond_b9
    :goto_b9
    move-object v0, v3

    move-object v12, v4

    goto :goto_ef

    .line 3324
    .end local v0    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .end local v12    # "cb":Landroid/os/IBinder;
    .local v3, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .local v4, "cb":Landroid/os/IBinder;
    :cond_bc
    if-nez v3, :cond_c4

    .line 3325
    new-instance v0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-direct {v0, v7, v4, v8}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;I)V

    move-object v3, v0

    .line 3329
    :cond_c4
    :try_start_c4
    invoke-interface {v4, v3, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_c7
    .catch Landroid/os/RemoteException; {:try_start_c4 .. :try_end_c7} :catch_c8

    .line 3333
    goto :goto_e6

    .line 3330
    :catch_c8
    move-exception v0

    move-object v12, v0

    .line 3332
    .local v0, "e":Landroid/os/RemoteException;
    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setMode() could not link to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " binder death"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e6
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3338
    invoke-virtual {v3, v2}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->setMode(I)V

    goto :goto_b9

    .line 3341
    .end local v3    # "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .end local v4    # "cb":Landroid/os/IBinder;
    .local v0, "hdlr":Lcom/android/server/audio/AudioService$SetModeDeathHandler;
    .restart local v12    # "cb":Landroid/os/IBinder;
    :goto_ef
    iget v3, v7, Lcom/android/server/audio/AudioService;->mMode:I

    const/4 v13, 0x1

    if-eq v11, v3, :cond_256

    .line 3344
    if-eqz v9, :cond_10c

    .line 3345
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setModeClient="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3346
    .local v3, "setModeClient":Ljava/lang/String;
    invoke-static {v3}, Landroid/media/AudioSystem;->setAudioPolicyParameters(Ljava/lang/String;)I

    .line 3347
    .end local v3    # "setModeClient":Ljava/lang/String;
    goto :goto_115

    .line 3348
    :cond_10c
    const-string/jumbo v3, "setModeClient=nullPackage"

    .line 3349
    .restart local v3    # "setModeClient":Ljava/lang/String;
    const-string/jumbo v4, "setModeClient=nullPackage"

    invoke-static {v4}, Landroid/media/AudioSystem;->setAudioPolicyParameters(Ljava/lang/String;)I

    .line 3352
    .end local v3    # "setModeClient":Ljava/lang/String;
    :goto_115
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3353
    .local v3, "identity":J
    invoke-static {v11}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v6

    .line 3354
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3355
    if-nez v6, :cond_236

    .line 3356
    sget-boolean v14, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v14, :cond_13c

    const-string v14, "AudioService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mode successfully set to "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    :cond_13c
    iput v11, v7, Lcom/android/server/audio/AudioService;->mMode:I

    .line 3360
    iget-boolean v5, v7, Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z

    const/16 v14, 0xa

    const/4 v15, 0x6

    if-ne v5, v13, :cond_196

    iget-object v5, v7, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v5, :cond_196

    iget-object v5, v7, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v13, v7, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 3361
    invoke-virtual {v5, v13}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v5

    const/16 v13, 0xc

    if-ne v5, v13, :cond_196

    .line 3362
    const/4 v5, 0x0

    iput-boolean v5, v7, Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z

    .line 3363
    iget-object v5, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, v15

    invoke-direct {v7, v15}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v13

    invoke-virtual {v5, v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    div-int/2addr v5, v14

    .line 3364
    .local v5, "currentBtScoVol":I
    iget-object v13, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v13, v13, v15

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;
    invoke-static {v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$2200(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/content/Intent;

    move-result-object v13

    const-string v14, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v13, v14, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3365
    iget-object v13, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v13, v13, v15

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;
    invoke-static {v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$2200(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/content/Intent;

    move-result-object v13

    invoke-direct {v7, v13}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 3366
    const-string v13, "AudioService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setMode() revert sco volume to  "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3368
    .end local v5    # "currentBtScoVol":I
    :cond_196
    iget v5, v7, Lcom/android/server/audio/AudioService;->mCallInfoBroadcast:I

    const/4 v13, 0x3

    const/4 v14, 0x1

    if-ne v5, v14, :cond_209

    if-ne v11, v14, :cond_209

    const/16 v5, 0x1388

    .line 3369
    invoke-static {v13, v5}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v5

    if-eqz v5, :cond_209

    .line 3370
    const/4 v5, 0x6

    invoke-direct {v7, v5}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v14

    .line 3371
    .local v14, "btScoDevice":I
    and-int/lit8 v15, v14, 0x70

    if-eqz v15, :cond_209

    .line 3372
    const/4 v15, 0x0

    iput-boolean v15, v7, Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z

    .line 3373
    iget-object v15, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v15, v15, v5

    invoke-virtual {v15, v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    const/16 v15, 0xa

    div-int/2addr v5, v15

    .line 3374
    .restart local v5    # "currentBtScoVol":I
    const-string/jumbo v13, "tts.ring.sco.volume"

    invoke-static {v13, v15}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 3375
    .local v13, "ttsRingScoVol":I
    if-ge v5, v13, :cond_209

    .line 3376
    const/4 v15, 0x1

    iput-boolean v15, v7, Lcom/android/server/audio/AudioService;->mBtScoVolChange:Z

    .line 3377
    iget-object v15, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/16 v17, 0x6

    aget-object v15, v15, v17

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;
    invoke-static {v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$2200(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/content/Intent;

    move-result-object v15

    move/from16 v18, v1

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    .line 3377
    .end local v1    # "newModeOwnerPid":I
    .local v18, "newModeOwnerPid":I
    invoke-virtual {v15, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3378
    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v17

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeChanged:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$2200(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/android/server/audio/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 3379
    const-string v1, "AudioService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v2

    const-string/jumbo v2, "setMode() set sco volume to  "

    .line 3379
    .end local v2    # "mode":I
    .local v19, "mode":I
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " oldindex "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "currentBtScoVol":I
    .end local v13    # "ttsRingScoVol":I
    .end local v14    # "btScoDevice":I
    goto :goto_20d

    .line 3387
    .end local v18    # "newModeOwnerPid":I
    .end local v19    # "mode":I
    .restart local v1    # "newModeOwnerPid":I
    .restart local v2    # "mode":I
    :cond_209
    move/from16 v18, v1

    move/from16 v19, v2

    .line 3387
    .end local v1    # "newModeOwnerPid":I
    .end local v2    # "mode":I
    .restart local v18    # "newModeOwnerPid":I
    .restart local v19    # "mode":I
    :goto_20d
    const/4 v1, 0x2

    if-ne v11, v1, :cond_226

    .line 3388
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v2, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v5

    if-eqz v5, :cond_227

    .line 3389
    const-string v1, "AudioService"

    const-string/jumbo v5, "setStreamMute STREAM_MUSIC mute!"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3390
    const/4 v1, 0x1

    invoke-static {v2, v1}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 3405
    const/4 v1, 0x0

    goto :goto_233

    .line 3392
    :cond_226
    const/4 v2, 0x3

    :cond_227
    const-string v1, "AudioService"

    const-string/jumbo v5, "setStreamMute STREAM_MUSIC unmute!"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3393
    const/4 v1, 0x0

    invoke-static {v2, v1}, Landroid/media/AudioSystem;->setStreamMute(IZ)I

    .line 3405
    .end local v3    # "identity":J
    :goto_233
    move/from16 v2, v19

    goto :goto_251

    .line 3397
    .end local v18    # "newModeOwnerPid":I
    .end local v19    # "mode":I
    .restart local v1    # "newModeOwnerPid":I
    .restart local v2    # "mode":I
    .restart local v3    # "identity":J
    :cond_236
    move/from16 v18, v1

    move/from16 v19, v2

    move v1, v5

    .line 3397
    .end local v1    # "newModeOwnerPid":I
    .end local v2    # "mode":I
    .restart local v18    # "newModeOwnerPid":I
    .restart local v19    # "mode":I
    if-eqz v0, :cond_245

    .line 3398
    iget-object v2, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3399
    invoke-interface {v12, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3402
    :cond_245
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v1, :cond_250

    const-string v1, "AudioService"

    const-string v2, " mode set to MODE_NORMAL after phoneState pb"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3403
    :cond_250
    const/4 v2, 0x0

    .line 3405
    .end local v3    # "identity":J
    .end local v19    # "mode":I
    .restart local v2    # "mode":I
    :goto_251
    nop

    .line 3408
    move/from16 v19, v2

    move v13, v6

    goto :goto_25c

    .line 3406
    .end local v18    # "newModeOwnerPid":I
    .restart local v1    # "newModeOwnerPid":I
    :cond_256
    move/from16 v18, v1

    move/from16 v19, v2

    .line 3406
    .end local v1    # "newModeOwnerPid":I
    .end local v2    # "mode":I
    .restart local v18    # "newModeOwnerPid":I
    .restart local v19    # "mode":I
    const/4 v1, 0x0

    .line 3408
    .end local v6    # "status":I
    .local v1, "status":I
    move v13, v1

    .line 3408
    .end local v1    # "status":I
    .local v13, "status":I
    :goto_25c
    if-eqz v13, :cond_271

    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_267

    goto :goto_271

    .line 3308
    .end local v11    # "actualMode":I
    :cond_267
    move-object v3, v0

    move-object v4, v12

    move v0, v13

    move/from16 v1, v18

    move/from16 v2, v19

    const/4 v5, 0x0

    goto/16 :goto_74

    .line 3410
    .restart local v11    # "actualMode":I
    :cond_271
    :goto_271
    if-nez v13, :cond_2cf

    .line 3411
    if-eqz v11, :cond_295

    .line 3412
    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_286

    .line 3413
    const-string v1, "AudioService"

    const-string/jumbo v2, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_295

    .line 3415
    :cond_286
    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v1

    .line 3419
    .end local v18    # "newModeOwnerPid":I
    .local v1, "newModeOwnerPid":I
    move/from16 v18, v1

    .line 3419
    .end local v1    # "newModeOwnerPid":I
    .restart local v18    # "newModeOwnerPid":I
    :cond_295
    :goto_295
    iget-object v14, v7, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v15, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;

    move-object v1, v15

    move-object v2, v9

    move v3, v8

    move/from16 v4, v19

    move/from16 v5, v18

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioServiceEvents$PhoneStateEvent;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v14, v15}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 3421
    const/high16 v1, -0x80000000

    invoke-direct {v7, v1}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result v14

    .line 3422
    .local v14, "streamType":I
    invoke-direct {v7, v14}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v15

    .line 3423
    .local v15, "device":I
    iget-object v1, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v14

    aget-object v1, v1, v2

    invoke-virtual {v1, v15}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v16

    .line 3425
    .local v16, "index":I
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v1, v14

    const/4 v5, 0x1

    const-string v6, "ThreeKeySpeakerMediaVolume"

    move-object v1, v7

    move/from16 v3, v16

    move v4, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 3426
    const/4 v1, 0x1

    invoke-direct {v7, v1, v9}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 3428
    .end local v14    # "streamType":I
    .end local v15    # "device":I
    .end local v16    # "index":I
    :cond_2cf
    return v18
.end method

.method private setRingerMode(ILjava/lang/String;Z)V
    .registers 19
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "external"    # Z

    move-object v1, p0

    move/from16 v0, p1

    move-object/from16 v10, p2

    .line 2969
    iget-boolean v2, v1, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-nez v2, :cond_e4

    iget-boolean v2, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_f

    goto/16 :goto_e4

    .line 2975
    :cond_f
    iget v2, v1, Lcom/android/server/audio/AudioService;->mOnePlusFixedRingerMode:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_5f

    .line 2976
    if-eqz p3, :cond_3f

    iget v2, v1, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    if-eq v0, v2, :cond_3f

    .line 2977
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v2, v0}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 2978
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRingerMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " caller:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    .line 2980
    :cond_3f
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRingerMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",caller:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    :goto_5e
    return-void

    .line 2986
    :cond_5f
    if-eqz v10, :cond_cd

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_cd

    .line 2989
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidRingerMode(I)V

    .line 2990
    if-ne v0, v8, :cond_71

    iget-boolean v2, v1, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v2, :cond_71

    .line 2991
    const/4 v0, 0x0

    .line 2993
    .end local p1    # "ringerMode":I
    .local v11, "ringerMode":I
    :cond_71
    move v11, v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v12, v2

    .line 2995
    .local v12, "identity":J
    :try_start_77
    iget-object v14, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_c8

    .line 2996
    :try_start_7a
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    .line 2997
    .local v0, "ringerModeInternal":I
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v3

    .line 2998
    .local v3, "ringerModeExternal":I
    const/4 v2, 0x2

    if-eqz p3, :cond_a2

    .line 2999
    invoke-direct {v1, v11}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    .line 3000
    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v4, :cond_9c

    .line 3002
    iget v4, v1, Lcom/android/server/audio/AudioService;->mOnePlusFixedRingerMode:I

    if-eq v4, v2, :cond_9c

    .line 3003
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    iget-object v7, v1, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    move v4, v11

    move-object v5, v10

    move v6, v0

    invoke-interface/range {v2 .. v7}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result v2

    move v11, v2

    .line 3006
    :cond_9c
    if-eq v11, v0, :cond_bf

    .line 3007
    invoke-direct {v1, v11, v8}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    goto :goto_bf

    .line 3010
    :cond_a2
    if-eq v11, v0, :cond_a7

    .line 3011
    invoke-direct {v1, v11, v8}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 3013
    :cond_a7
    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v4, :cond_bc

    .line 3015
    iget v4, v1, Lcom/android/server/audio/AudioService;->mOnePlusFixedRingerMode:I

    if-eq v4, v2, :cond_bc

    .line 3016
    iget-object v4, v1, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    iget-object v9, v1, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    move v5, v0

    move v6, v11

    move-object v7, v10

    move v8, v3

    invoke-interface/range {v4 .. v9}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I

    move-result v2

    move v11, v2

    .line 3019
    :cond_bc
    invoke-direct {v1, v11}, Lcom/android/server/audio/AudioService;->setRingerModeExt(I)V

    .line 3021
    .end local v0    # "ringerModeInternal":I
    .end local v3    # "ringerModeExternal":I
    :cond_bf
    :goto_bf
    monitor-exit v14
    :try_end_c0
    .catchall {:try_start_7a .. :try_end_c0} :catchall_c5

    .line 3023
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3024
    nop

    .line 3025
    return-void

    .line 3021
    :catchall_c5
    move-exception v0

    :try_start_c6
    monitor-exit v14
    :try_end_c7
    .catchall {:try_start_c6 .. :try_end_c7} :catchall_c5

    :try_start_c7
    throw v0
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c8

    .line 3023
    :catchall_c8
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2987
    .end local v11    # "ringerMode":I
    .end local v12    # "identity":J
    .restart local p1    # "ringerMode":I
    :cond_cd
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad caller: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2970
    :cond_e4
    :goto_e4
    return-void
.end method

.method private setRingerModeExt(I)V
    .registers 4
    .param p1, "ringerMode"    # I

    .line 3028
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3029
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    if-ne p1, v1, :cond_9

    monitor-exit v0

    return-void

    .line 3030
    :cond_9
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    .line 3031
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_12

    .line 3033
    const-string v0, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 3034
    return-void

    .line 3031
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private setRingerModeInt(IZ)V
    .registers 13
    .param p1, "ringerMode"    # I
    .param p2, "persist"    # Z

    .line 3121
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3122
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    if-eq v1, p1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 3123
    .local v1, "change":Z
    :goto_a
    iput p1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    .line 3124
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->muteRingerModeStreams()V

    .line 3125
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_57

    .line 3130
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mBootCompelet:Z

    if-nez v0, :cond_3e

    if-eqz p2, :cond_3e

    .line 3131
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mode_ringer"

    iget v3, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3132
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRingerModeInt set ringerMode  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to database to avoid user-switch and data do not store in time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    :cond_3e
    if-eqz p2, :cond_4c

    .line 3138
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1f4

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3141
    :cond_4c
    if-eqz v1, :cond_56

    .line 3143
    const-string v0, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {p0, v0, p1}, Lcom/android/server/audio/AudioService;->broadcastRingerMode(Ljava/lang/String;I)V

    .line 3146
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->updateHeadsetNotificationStatus()V

    .line 3149
    :cond_56
    return-void

    .line 3125
    .end local v1    # "change":Z
    :catchall_57
    move-exception v1

    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v1
.end method

.method private setSafeMediaVolumeEnabled(ZLjava/lang/String;)V
    .registers 13
    .param p1, "on"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    .line 8202
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v0

    .line 8203
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 8204
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4d

    .line 8205
    const/4 v1, 0x3

    const/4 v3, 0x2

    if-eqz p1, :cond_2a

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_2a

    .line 8206
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 8207
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->enforceSafeMediaVolume(Ljava/lang/String;)V

    goto :goto_4d

    .line 8208
    :cond_2a
    if-nez p1, :cond_4d

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_4d

    .line 8209
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 8210
    iput v2, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    .line 8211
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->saveMusicActiveMs()V

    .line 8212
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0xe

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v9, 0xea60

    move-object v8, p2

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 8221
    :cond_4d
    :goto_4d
    monitor-exit v0

    .line 8222
    return-void

    .line 8221
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method private setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 26
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    .line 2274
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStreamVolume(stream="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", calling="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    const-string/jumbo v2, "vendor.mls.audio.session.status"

    const-string v3, "default"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2280
    .local v11, "value":Ljava/lang/String;
    const-string/jumbo v2, "started"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v3, v2, :cond_54

    .line 2281
    const-string v2, "AudioService"

    const-string/jumbo v3, "setStreamVolume() Ignore volume change during MirrorLink session"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    return-void

    .line 2285
    :cond_54
    iget-boolean v2, v7, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v2, :cond_59

    .line 2286
    return-void

    .line 2289
    :cond_59
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2290
    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v12, v2, v8

    .line 2291
    .local v12, "streamTypeAlias":I
    iget-object v2, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v13, v2, v12

    .line 2293
    .local v13, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v14

    .line 2298
    .local v14, "device":I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setStreamVolume() stream="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", callingPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    const/4 v2, 0x2

    if-ne v12, v2, :cond_f4

    if-eqz v10, :cond_f4

    new-instance v2, Ljava/lang/String;

    const-string v3, "android.media.cts"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2302
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f4

    .line 2303
    iget v2, v7, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    if-ge v0, v2, :cond_b7

    .line 2304
    iget v0, v7, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    .line 2306
    .end local p2    # "index":I
    .local v0, "index":I
    :cond_b7
    if-eqz v10, :cond_cc

    new-instance v2, Ljava/lang/String;

    const-string v3, "com.google.android.gms"

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cc

    .line 2307
    iget v2, v7, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    if-le v0, v2, :cond_cc

    .line 2308
    iget v0, v7, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    .line 2311
    :cond_cc
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "volume range fixed to ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] by system"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    .end local v0    # "index":I
    .local v2, "index":I
    :cond_f4
    move v2, v0

    and-int/lit16 v0, v14, 0x380

    if-nez v0, :cond_fe

    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_fe

    .line 2320
    return-void

    .line 2324
    :cond_fe
    const/16 v0, 0x3e8

    move/from16 v3, p6

    if-ne v3, v0, :cond_112

    .line 2325
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {v0, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 2328
    .end local p6    # "uid":I
    .local v0, "uid":I
    move v15, v0

    goto :goto_113

    .line 2328
    .end local v0    # "uid":I
    .restart local p6    # "uid":I
    :cond_112
    move v15, v3

    .line 2328
    .end local p6    # "uid":I
    .local v15, "uid":I
    :goto_113
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v3, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    aget v3, v3, v12

    invoke-virtual {v0, v3, v15, v9}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_120

    .line 2330
    return-void

    .line 2333
    :cond_120
    invoke-direct {v7, v9}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 2334
    invoke-direct {v7, v12, v2, v1}, Lcom/android/server/audio/AudioService;->getNewRingerMode(III)I

    move-result v0

    invoke-direct {v7, v0}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_141

    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 2335
    invoke-virtual {v0, v9}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_139

    goto :goto_141

    .line 2336
    :cond_139
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Not allowed to change Do Not Disturb state"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2339
    :cond_141
    :goto_141
    invoke-direct {v7, v12, v1}, Lcom/android/server/audio/AudioService;->volumeAdjustmentAllowedByDnd(II)Z

    move-result v0

    if-nez v0, :cond_148

    .line 2340
    return-void

    .line 2343
    :cond_148
    iget-object v6, v7, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v6

    .line 2345
    const/4 v0, 0x0

    :try_start_14c
    iput-object v0, v7, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 2347
    invoke-virtual {v13, v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    move v5, v0

    .line 2349
    .local v5, "oldIndex":I
    mul-int/lit8 v0, v2, 0xa

    invoke-direct {v7, v0, v8, v12}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v0

    move v2, v0

    .line 2351
    const/4 v0, 0x3

    if-ne v12, v0, :cond_17c

    and-int/lit16 v3, v14, 0x380

    if-eqz v3, :cond_17c

    and-int/lit8 v3, v1, 0x40

    if-nez v3, :cond_17c

    .line 2354
    iget-object v3, v7, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_168
    .catchall {:try_start_14c .. :try_end_168} :catchall_222

    .line 2355
    :try_start_168
    iget-object v4, v7, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v4, :cond_177

    iget-boolean v4, v7, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v4, :cond_177

    .line 2356
    iget-object v4, v7, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    div-int/lit8 v0, v2, 0xa

    invoke-virtual {v4, v0}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V

    .line 2358
    :cond_177
    monitor-exit v3

    goto :goto_17c

    :catchall_179
    move-exception v0

    monitor-exit v3
    :try_end_17b
    .catchall {:try_start_168 .. :try_end_17b} :catchall_179

    :try_start_17b
    throw v0

    .line 2361
    :cond_17c
    :goto_17c
    const/high16 v0, 0x8000000

    and-int/2addr v0, v14

    if-eqz v0, :cond_184

    .line 2362
    invoke-direct {v7, v2, v8}, Lcom/android/server/audio/AudioService;->setHearingAidVolume(II)V

    .line 2365
    :cond_184
    const/4 v0, 0x3

    if-ne v12, v0, :cond_18e

    .line 2366
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v0

    invoke-direct {v7, v5, v2, v0, v1}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V

    .line 2369
    :cond_18e
    and-int/lit8 v1, v1, -0x21

    .line 2370
    .end local p3    # "flags":I
    .local v1, "flags":I
    const/4 v0, 0x3

    if-ne v12, v0, :cond_1b7

    iget v0, v7, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v0, v14

    if-eqz v0, :cond_1b7

    .line 2372
    or-int/lit8 v1, v1, 0x20

    .line 2375
    if-eqz v2, :cond_1b7

    .line 2376
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1b0

    const v0, 0x400000c

    and-int/2addr v0, v14

    if-eqz v0, :cond_1b0

    .line 2378
    invoke-direct {v7, v14}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v0

    goto :goto_1b4

    .line 2380
    :cond_1b0
    invoke-virtual {v13}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0
    :try_end_1b4
    .catchall {:try_start_17b .. :try_end_1b4} :catchall_222

    .line 2385
    .end local v1    # "flags":I
    .end local v2    # "index":I
    .local v0, "index":I
    .local v3, "flags":I
    .local v4, "index":I
    :goto_1b4
    move v4, v0

    move v3, v1

    goto :goto_1b9

    .line 2385
    .end local v0    # "index":I
    .end local v3    # "flags":I
    .end local v4    # "index":I
    .restart local v1    # "flags":I
    .restart local v2    # "index":I
    :cond_1b7
    move v3, v1

    move v4, v2

    .line 2385
    .end local v1    # "flags":I
    .end local v2    # "index":I
    .restart local v3    # "flags":I
    .restart local v4    # "index":I
    :goto_1b9
    :try_start_1b9
    invoke-direct {v7, v12, v4, v14}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v0
    :try_end_1bd
    .catchall {:try_start_1b9 .. :try_end_1bd} :catchall_219

    if-nez v0, :cond_1ed

    .line 2386
    :try_start_1bf
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, v3}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 2387
    new-instance v0, Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    :try_end_1c6
    .catchall {:try_start_1bf .. :try_end_1c6} :catchall_1e1

    move-object v1, v0

    move-object v2, v7

    move/from16 v17, v3

    move v3, v8

    .line 2387
    .end local v3    # "flags":I
    .local v17, "flags":I
    move/from16 v16, v4

    .line 2387
    .end local v4    # "index":I
    .local v16, "index":I
    move v9, v5

    move/from16 v5, v17

    .line 2387
    .end local v5    # "oldIndex":I
    .local v9, "oldIndex":I
    move-object/from16 v18, v6

    move v6, v14

    :try_start_1d3
    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService$StreamVolumeCommand;-><init>(Lcom/android/server/audio/AudioService;IIII)V

    iput-object v0, v7, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;
    :try_end_1d8
    .catchall {:try_start_1d3 .. :try_end_1d8} :catchall_1db

    .line 2393
    move/from16 v2, v16

    goto :goto_208

    .line 2393
    .end local v9    # "oldIndex":I
    :catchall_1db
    move-exception v0

    move/from16 v2, v16

    move/from16 v1, v17

    goto :goto_225

    .line 2393
    .end local v16    # "index":I
    .end local v17    # "flags":I
    .restart local v3    # "flags":I
    .restart local v4    # "index":I
    :catchall_1e1
    move-exception v0

    move/from16 v17, v3

    move/from16 v16, v4

    move-object/from16 v18, v6

    move/from16 v2, v16

    move/from16 v1, v17

    .line 2393
    .end local v3    # "flags":I
    .end local v4    # "index":I
    .restart local v16    # "index":I
    .restart local v17    # "flags":I
    goto :goto_225

    .line 2390
    .end local v16    # "index":I
    .end local v17    # "flags":I
    .restart local v3    # "flags":I
    .restart local v4    # "index":I
    .restart local v5    # "oldIndex":I
    :cond_1ed
    move/from16 v17, v3

    move/from16 v16, v4

    move v9, v5

    move-object/from16 v18, v6

    .line 2390
    .end local v3    # "flags":I
    .end local v4    # "index":I
    .end local v5    # "oldIndex":I
    .restart local v9    # "oldIndex":I
    .restart local v16    # "index":I
    .restart local v17    # "flags":I
    move-object v1, v7

    move v2, v8

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v14

    move-object v6, v10

    :try_start_1fc
    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;)V

    .line 2391
    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v8

    invoke-virtual {v0, v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0
    :try_end_207
    .catchall {:try_start_1fc .. :try_end_207} :catchall_213

    .line 2393
    .end local v16    # "index":I
    .restart local v0    # "index":I
    move v2, v0

    .line 2393
    .end local v0    # "index":I
    .restart local v2    # "index":I
    :goto_208
    :try_start_208
    monitor-exit v18
    :try_end_209
    .catchall {:try_start_208 .. :try_end_209} :catchall_20f

    .line 2394
    move/from16 v1, v17

    invoke-virtual {v7, v8, v9, v2, v1}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    .line 2395
    .end local v17    # "flags":I
    .restart local v1    # "flags":I
    return-void

    .line 2393
    .end local v1    # "flags":I
    .end local v9    # "oldIndex":I
    .restart local v17    # "flags":I
    :catchall_20f
    move-exception v0

    move/from16 v1, v17

    goto :goto_218

    .line 2393
    .end local v2    # "index":I
    .restart local v16    # "index":I
    :catchall_213
    move-exception v0

    move/from16 v1, v17

    move/from16 v2, v16

    .line 2393
    .end local v16    # "index":I
    .end local v17    # "flags":I
    .restart local v1    # "flags":I
    .restart local v2    # "index":I
    :goto_218
    goto :goto_225

    .line 2393
    .end local v1    # "flags":I
    .end local v2    # "index":I
    .restart local v3    # "flags":I
    .restart local v4    # "index":I
    :catchall_219
    move-exception v0

    move v1, v3

    move/from16 v16, v4

    move-object/from16 v18, v6

    move/from16 v2, v16

    .line 2393
    .end local v3    # "flags":I
    .end local v4    # "index":I
    .restart local v1    # "flags":I
    .restart local v16    # "index":I
    goto :goto_225

    .line 2393
    .end local v1    # "flags":I
    .end local v16    # "index":I
    .restart local v2    # "index":I
    .restart local p3    # "flags":I
    :catchall_222
    move-exception v0

    move-object/from16 v18, v6

    .line 2393
    .end local p3    # "flags":I
    .restart local v1    # "flags":I
    :goto_225
    :try_start_225
    monitor-exit v18
    :try_end_226
    .catchall {:try_start_225 .. :try_end_226} :catchall_227

    throw v0

    :catchall_227
    move-exception v0

    goto :goto_225
.end method

.method private setStreamVolumeInt(IIIZLjava/lang/String;)V
    .registers 14
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I
    .param p4, "force"    # Z
    .param p5, "caller"    # Ljava/lang/String;

    .line 2570
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    .line 2572
    .local v0, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-virtual {v0, p2, p3, p5}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setIndex(IILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    if-eqz p4, :cond_17

    .line 2575
    :cond_c
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v4, p3

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2583
    :cond_17
    return-void
.end method

.method private setSystemAudioMute(Z)V
    .registers 7
    .param p1, "state"    # Z

    .line 2586
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v0, :cond_9

    goto :goto_30

    .line 2587
    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v0

    .line 2588
    :try_start_c
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-nez v1, :cond_12

    monitor-exit v0

    return-void

    .line 2589
    :cond_12
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v1
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_2d

    .line 2590
    :try_start_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_2a

    .line 2592
    .local v2, "token":J
    :try_start_19
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v4, p1}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioMute(Z)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_25

    .line 2594
    :try_start_1e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2595
    nop

    .line 2596
    .end local v2    # "token":J
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_2a

    .line 2597
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_2d

    .line 2598
    return-void

    .line 2594
    .restart local v2    # "token":J
    :catchall_25
    move-exception v4

    :try_start_26
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2596
    .end local v2    # "token":J
    :catchall_2a
    move-exception v2

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw v2

    .line 2597
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_2d

    throw v1

    .line 2586
    :cond_30
    :goto_30
    return-void
.end method

.method private setSystemAudioVolume(IIII)V
    .registers 10
    .param p1, "oldVolume"    # I
    .param p2, "newVolume"    # I
    .param p3, "maxVolume"    # I
    .param p4, "flags"    # I

    .line 2066
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_36

    if-eq p1, p2, :cond_36

    and-int/lit16 v0, p4, 0x100

    if-eqz v0, :cond_f

    goto :goto_36

    .line 2073
    :cond_f
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v0

    .line 2074
    :try_start_12
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-nez v1, :cond_18

    monitor-exit v0

    return-void

    .line 2075
    :cond_18
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_33

    .line 2076
    :try_start_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_30

    .line 2078
    .local v2, "token":J
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    invoke-virtual {v4, p1, p2, p3}, Landroid/hardware/hdmi/HdmiTvClient;->setSystemAudioVolume(III)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_2b

    .line 2080
    :try_start_24
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2081
    nop

    .line 2082
    .end local v2    # "token":J
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_30

    .line 2083
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_33

    .line 2084
    return-void

    .line 2080
    .restart local v2    # "token":J
    :catchall_2b
    move-exception v4

    :try_start_2c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2082
    .end local v2    # "token":J
    :catchall_30
    move-exception v2

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_30

    :try_start_32
    throw v2

    .line 2083
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_33

    throw v1

    .line 2069
    :cond_36
    :goto_36
    return-void
.end method

.method private shouldZenMuteStream(I)Z
    .registers 10
    .param p1, "streamType"    # I

    .line 4997
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    .line 4998
    return v1

    .line 5001
    :cond_b
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    .line 5002
    .local v0, "zenPolicy":Landroid/app/NotificationManager$Policy;
    iget v3, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_19

    move v3, v2

    goto :goto_1a

    :cond_19
    move v3, v1

    .line 5004
    .local v3, "muteAlarms":Z
    :goto_1a
    iget v4, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_22

    move v4, v2

    goto :goto_23

    :cond_22
    move v4, v1

    .line 5006
    .local v4, "muteMedia":Z
    :goto_23
    iget v5, v0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_2b

    move v5, v2

    goto :goto_2c

    :cond_2b
    move v5, v1

    .line 5008
    .local v5, "muteSystem":Z
    :goto_2c
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 5009
    invoke-virtual {v6}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v6

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyNotificationZenSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v6

    .line 5010
    .local v6, "muteNotificationAndRing":Z
    if-eqz v3, :cond_3e

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isAlarm(I)Z

    move-result v7

    if-nez v7, :cond_56

    :cond_3e
    if-eqz v4, :cond_46

    .line 5011
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isMedia(I)Z

    move-result v7

    if-nez v7, :cond_56

    :cond_46
    if-eqz v5, :cond_4e

    .line 5012
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isSystem(I)Z

    move-result v7

    if-nez v7, :cond_56

    :cond_4e
    if-eqz v6, :cond_58

    .line 5013
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isNotificationOrRinger(I)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 5010
    :cond_56
    move v1, v2

    goto :goto_59

    .line 5013
    :cond_58
    nop

    .line 5010
    :goto_59
    return v1
.end method

.method private updateA11yVolumeAlias(Z)V
    .registers 6
    .param p1, "a11VolEnabled"    # Z

    .line 8397
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accessibility volume enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8398
    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    if-eq v0, p1, :cond_36

    .line 8399
    sput-boolean p1, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    .line 8401
    const-string v0, "AudioService"

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService;->updateStreamVolumeAlias(ZLjava/lang/String;)V

    .line 8403
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    sget-boolean v2, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2a

    .line 8404
    goto :goto_2c

    .line 8405
    :cond_2a
    nop

    .line 8403
    move v1, v3

    :goto_2c
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->setA11yMode(I)V

    .line 8406
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    .line 8408
    :cond_36
    return-void
.end method

.method private updateAudioRoutes(II)V
    .registers 14
    .param p1, "device"    # I
    .param p2, "state"    # I

    .line 7287
    const/4 v0, 0x0

    .line 7289
    .local v0, "connType":I
    const/4 v1, 0x4

    if-ne p1, v1, :cond_6

    .line 7290
    const/4 v0, 0x1

    goto :goto_27

    .line 7291
    :cond_6
    const/16 v1, 0x8

    if-eq p1, v1, :cond_26

    const/high16 v1, 0x20000

    if-ne p1, v1, :cond_f

    goto :goto_26

    .line 7294
    :cond_f
    const/16 v1, 0x400

    if-eq p1, v1, :cond_23

    const/high16 v1, 0x40000

    if-ne p1, v1, :cond_18

    goto :goto_23

    .line 7297
    :cond_18
    const/16 v1, 0x4000

    if-eq p1, v1, :cond_20

    const/high16 v1, 0x4000000

    if-ne p1, v1, :cond_27

    .line 7299
    :cond_20
    const/16 v0, 0x10

    goto :goto_27

    .line 7296
    :cond_23
    :goto_23
    const/16 v0, 0x8

    goto :goto_27

    .line 7293
    :cond_26
    :goto_26
    const/4 v0, 0x2

    .line 7302
    :cond_27
    :goto_27
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v1

    .line 7303
    if-eqz v0, :cond_4f

    .line 7304
    :try_start_2c
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v2, v2, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 7305
    .local v2, "newConn":I
    if-eqz p2, :cond_34

    .line 7306
    or-int/2addr v2, v0

    goto :goto_36

    .line 7308
    :cond_34
    not-int v3, v0

    and-int/2addr v2, v3

    .line 7310
    :goto_36
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v3, v3, Landroid/media/AudioRoutesInfo;->mainType:I

    if-eq v2, v3, :cond_4f

    .line 7311
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput v2, v3, Landroid/media/AudioRoutesInfo;->mainType:I

    .line 7312
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0xc

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .end local v2    # "newConn":I
    goto :goto_4f

    .line 7316
    :catchall_4d
    move-exception v2

    goto :goto_51

    :cond_4f
    :goto_4f
    monitor-exit v1

    .line 7317
    return-void

    .line 7316
    :goto_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_2c .. :try_end_52} :catchall_4d

    throw v2
.end method

.method private updateDefaultStreamOverrideDelay(Z)V
    .registers 5
    .param p1, "touchExploreEnabled"    # Z

    .line 8375
    if-eqz p1, :cond_7

    .line 8376
    const/16 v0, 0x3e8

    sput v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    goto :goto_a

    .line 8378
    :cond_7
    const/4 v0, 0x0

    sput v0, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    .line 8380
    :goto_a
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Touch exploration enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " stream override delay is now "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/audio/AudioService;->sStreamOverrideDelayMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8382
    return-void
.end method

.method private updateDefaultVolumes()V
    .registers 5

    .line 1378
    const/4 v0, 0x0

    .local v0, "stream":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_23

    .line 1379
    sget-object v1, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v0

    if-eq v0, v1, :cond_20

    .line 1380
    sget-object v1, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v2, Landroid/media/AudioSystem;->DEFAULT_STREAM_VOLUME:[I

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v0

    aget v2, v2, v3

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v0

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v2

    aput v2, v1, v0

    .line 1378
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1386
    .end local v0    # "stream":I
    :cond_23
    return-void
.end method

.method private updateFlagsForSystemAudio(I)I
    .registers 4
    .param p1, "flags"    # I

    .line 2530
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v0, :cond_16

    .line 2531
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v0

    .line 2532
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eqz v1, :cond_11

    and-int/lit16 v1, p1, 0x100

    if-nez v1, :cond_11

    .line 2534
    and-int/lit8 p1, p1, -0x2

    .line 2536
    :cond_11
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1

    .line 2538
    :cond_16
    :goto_16
    return p1
.end method

.method private updateMasterMono(Landroid/content/ContentResolver;)V
    .registers 8
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .line 1489
    const-string/jumbo v0, "master_mono"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 1492
    .local v0, "masterMono":Z
    :goto_f
    const-string v3, "AudioService"

    const-string v4, "Master mono %b"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterMono(Z)I

    .line 1495
    return-void
.end method

.method private updateRingerAndZenModeAffectedStreams()Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mSettingsLock"
    .end annotation

    .line 5058
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->updateZenModeAffectedStreams()Z

    move-result v0

    .line 5059
    .local v0, "updatedZenModeAffectedStreams":Z
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "mode_ringer_streams_affected"

    const/4 v3, -0x2

    const/16 v4, 0xa6

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 5065
    .local v1, "ringerModeAffectedStreams":I
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v2, :cond_16

    .line 5066
    const/4 v1, 0x0

    goto :goto_20

    .line 5067
    :cond_16
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    if-eqz v2, :cond_20

    .line 5068
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeDelegate:Landroid/media/AudioManagerInternal$RingerModeDelegate;

    .line 5069
    invoke-interface {v2, v1}, Landroid/media/AudioManagerInternal$RingerModeDelegate;->getRingerModeAffectedStreams(I)I

    move-result v1

    .line 5071
    :cond_20
    :goto_20
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    if-eqz v2, :cond_27

    .line 5072
    and-int/lit16 v1, v1, -0x81

    goto :goto_29

    .line 5074
    :cond_27
    or-int/lit16 v1, v1, 0x80

    .line 5076
    :goto_29
    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/16 v4, 0x8

    aget v2, v2, v4

    const/4 v4, 0x2

    if-ne v2, v4, :cond_35

    .line 5077
    or-int/lit16 v1, v1, 0x100

    goto :goto_37

    .line 5079
    :cond_35
    and-int/lit16 v1, v1, -0x101

    .line 5082
    :goto_37
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    if-eq v1, v2, :cond_47

    .line 5083
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "mode_ringer_streams_affected"

    invoke-static {v2, v4, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 5087
    iput v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 5088
    const/4 v2, 0x1

    return v2

    .line 5090
    :cond_47
    return v0
.end method

.method private updateStreamVolumeAlias(ZLjava/lang/String;)V
    .registers 25
    .param p1, "updateVolumes"    # Z
    .param p2, "caller"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 1402
    move-object/from16 v2, p2

    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    const/4 v3, 0x3

    const/16 v4, 0xa

    if-eqz v0, :cond_d

    .line 1403
    move v0, v4

    goto :goto_e

    :cond_d
    move v0, v3

    :goto_e
    move v5, v0

    .line 1405
    .local v5, "a11yStreamAlias":I
    iget-boolean v0, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v0, :cond_19

    .line 1406
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_TELEVISION:[I

    sput-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1407
    const/4 v3, 0x3

    .local v3, "dtmfStreamAlias":I
    goto :goto_29

    .line 1409
    .end local v3    # "dtmfStreamAlias":I
    :cond_19
    iget v0, v1, Lcom/android/server/audio/AudioService;->mPlatformType:I

    const/4 v6, 0x1

    if-eq v0, v6, :cond_23

    .line 1415
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_DEFAULT:[I

    sput-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1416
    goto :goto_29

    .line 1411
    :cond_23
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_ALIAS_VOICE:[I

    sput-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    .line 1412
    const/4 v3, 0x2

    .line 1413
    .restart local v3    # "dtmfStreamAlias":I
    nop

    .line 1416
    :goto_29
    move v0, v3

    .line 1420
    .end local v3    # "dtmfStreamAlias":I
    .local v0, "dtmfStreamAlias":I
    iget-boolean v3, v1, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    const/4 v6, 0x0

    if-eqz v3, :cond_32

    .line 1421
    iput v6, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_46

    .line 1423
    :cond_32
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->isInCommunication()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1424
    const/4 v0, 0x0

    .line 1425
    iget v3, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v3, v3, -0x101

    iput v3, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_46

    .line 1427
    :cond_40
    iget v3, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v1, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    .line 1431
    .end local v0    # "dtmfStreamAlias":I
    .restart local v3    # "dtmfStreamAlias":I
    :goto_46
    move v3, v0

    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/16 v7, 0x8

    aput v3, v0, v7

    .line 1432
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aput v5, v0, v4

    .line 1434
    if-eqz p1, :cond_ca

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    if-eqz v0, :cond_ca

    .line 1435
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->updateDefaultVolumes()V

    .line 1437
    iget-object v8, v1, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1438
    :try_start_5d
    const-class v9, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v9
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_c7

    .line 1439
    :try_start_60
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v7

    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v10, v10, v3

    .line 1440
    invoke-virtual {v0, v10, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1441
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v4

    sget-object v10, Landroid/provider/Settings$System;->VOLUME_SETTINGS_INT:[Ljava/lang/String;

    aget-object v10, v10, v5

    # setter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1202(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)Ljava/lang/String;

    .line 1443
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v4

    iget-object v10, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v10, v10, v5

    invoke-virtual {v0, v10, v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->setAllIndexes(Lcom/android/server/audio/AudioService$VolumeStreamState;Ljava/lang/String;)V

    .line 1445
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v4

    sget-object v10, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v10, v10, v4

    invoke-virtual {v0, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->refreshRange(I)V

    .line 1447
    monitor-exit v9
    :try_end_8d
    .catchall {:try_start_60 .. :try_end_8d} :catchall_c4

    .line 1448
    :try_start_8d
    monitor-exit v8
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_c7

    .line 1449
    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    if-eqz v0, :cond_99

    .line 1451
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->readSettings()V

    .line 1455
    :cond_99
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v0

    invoke-direct {v1, v0, v6}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 1456
    iget-object v8, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v9, 0xa

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v13, v0, v7

    const/4 v14, 0x0

    invoke-static/range {v8 .. v14}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1462
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v16, 0xa

    const/16 v17, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v6, v1, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v20, v6, v4

    const/16 v21, 0x0

    move-object v15, v0

    invoke-static/range {v15 .. v21}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_ca

    .line 1447
    :catchall_c4
    move-exception v0

    :try_start_c5
    monitor-exit v9
    :try_end_c6
    .catchall {:try_start_c5 .. :try_end_c6} :catchall_c4

    :try_start_c6
    throw v0

    .line 1448
    :catchall_c7
    move-exception v0

    monitor-exit v8
    :try_end_c9
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_c7

    throw v0

    .line 1469
    :cond_ca
    :goto_ca
    return-void
.end method

.method private updateTwsPlusScoState(Landroid/bluetooth/BluetoothDevice;Ljava/lang/Integer;)V
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # Ljava/lang/Integer;

    .line 7553
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 7554
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 7555
    .local v0, "prevState":Ljava/lang/Integer;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTwsPlusScoState: prevState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7556
    if-eq p2, v0, :cond_3c

    .line 7557
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7558
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7560
    .end local v0    # "prevState":Ljava/lang/Integer;
    :cond_3c
    goto :goto_42

    .line 7561
    :cond_3d
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClientDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7563
    :goto_42
    return-void
.end method

.method private updateZenModeAffectedStreams()Z
    .registers 5

    .line 5029
    const/4 v0, 0x0

    .line 5030
    .local v0, "zenModeAffectedStreams":I
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    if-ne v1, v2, :cond_2c

    .line 5031
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v1

    .line 5032
    .local v1, "zenPolicy":Landroid/app/NotificationManager$Policy;
    iget v3, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_1c

    .line 5034
    or-int/lit8 v0, v0, 0x10

    .line 5037
    :cond_1c
    iget v3, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_24

    .line 5039
    or-int/lit8 v0, v0, 0x8

    .line 5042
    :cond_24
    iget v3, v1, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_2c

    .line 5044
    or-int/lit8 v0, v0, 0x2

    .line 5048
    .end local v1    # "zenPolicy":Landroid/app/NotificationManager$Policy;
    :cond_2c
    iget v1, p0, Lcom/android/server/audio/AudioService;->mZenModeAffectedStreams:I

    if-eq v1, v0, :cond_33

    .line 5049
    iput v0, p0, Lcom/android/server/audio/AudioService;->mZenModeAffectedStreams:I

    .line 5050
    return v2

    .line 5053
    :cond_33
    const/4 v1, 0x0

    return v1
.end method

.method private volumeAdjustmentAllowedByDnd(II)Z
    .registers 5
    .param p1, "streamTypeAlias"    # I
    .param p2, "flags"    # I

    .line 2399
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_20

    .line 2410
    return v1

    .line 2405
    :pswitch_b
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2406
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v0

    if-eq p1, v0, :cond_1e

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v1, 0x0

    nop

    .line 2405
    :cond_1e
    :goto_1e
    return v1

    .line 2401
    :pswitch_1f
    return v1

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method private waitForAudioHandlerCreation()V
    .registers 4

    .line 1309
    monitor-enter p0

    .line 1310
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-nez v0, :cond_12

    .line 1313
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_14

    .line 1316
    :goto_8
    goto :goto_1

    .line 1314
    :catch_9
    move-exception v0

    .line 1315
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_a
    const-string v1, "AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_8

    .line 1318
    :cond_12
    monitor-exit p0

    .line 1319
    return-void

    .line 1318
    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_14

    throw v0
.end method

.method private wasStreamActiveRecently(II)Z
    .registers 4
    .param p1, "stream"    # I
    .param p2, "delay_ms"    # I

    .line 5144
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_f

    .line 5145
    invoke-static {p1, p2}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 5144
    :goto_10
    return v0
.end method

.method private wouldToggleZenMode(I)Z
    .registers 4
    .param p1, "newMode"    # I

    .line 2146
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    if-eqz p1, :cond_a

    .line 2148
    return v1

    .line 2149
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    if-eqz v0, :cond_13

    if-nez p1, :cond_13

    .line 2151
    return v1

    .line 2153
    :cond_13
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method IsOnEUArea(Ljava/lang/String;)Z
    .registers 43
    .param p1, "Listeningarea"    # Ljava/lang/String;

    .line 1131
    const-string v0, "ca_ES"

    const-string v1, "ca_AD"

    const-string v2, "ca_FR"

    const-string v3, "ca_IT"

    const-string v4, "cs_CZ"

    const-string v5, "de_DE"

    const-string v6, "de_AT"

    const-string v7, "de_BE"

    const-string v8, "de_LU"

    const-string/jumbo v9, "hr_HR"

    const-string/jumbo v10, "it_IT"

    const-string v11, "en_GB"

    const-string v12, "en_AT"

    const-string v13, "en_BE"

    const-string v14, "en_CY"

    const-string v15, "en_DK"

    const-string v16, "en_FI"

    const-string v17, "en_DE"

    const-string v18, "en_IE"

    const-string v19, "en_MT"

    const-string v20, "en_NL"

    const-string v21, "en_SI"

    const-string v22, "en_SE"

    const-string v23, "es_ES"

    const-string v24, "fr_BE"

    const-string v25, "fr_FR"

    const-string v26, "fr_LU"

    const-string/jumbo v27, "hu_HU"

    const-string/jumbo v28, "nl_BE"

    const-string/jumbo v29, "nl_NL"

    const-string/jumbo v30, "pl_PL"

    const-string/jumbo v31, "pt_PT"

    const-string/jumbo v32, "ro_RO"

    const-string/jumbo v33, "sk_SK"

    const-string v34, "fi_FI"

    const-string/jumbo v35, "sv_SE"

    const-string/jumbo v36, "sv_FI"

    const-string/jumbo v37, "tr_CY"

    const-string v38, "el_GR"

    const-string v39, "el_CY"

    const-string v40, "da_DK"

    filled-new-array/range {v0 .. v40}, [Ljava/lang/String;

    move-result-object v0

    .line 1138
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    move v2, v1

    .line 1138
    .local v2, "i":I
    :goto_64
    array-length v3, v0

    if-ge v2, v3, :cond_76

    .line 1139
    aget-object v3, v0, v2

    move-object/from16 v4, p1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 1140
    const/4 v1, 0x1

    return v1

    .line 1138
    :cond_73
    add-int/lit8 v2, v2, 0x1

    goto :goto_64

    .line 1143
    .end local v2    # "i":I
    :cond_76
    move-object/from16 v4, p1

    return v1
.end method

.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I
    .registers 6
    .param p1, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;
    .param p4, "callingPackageName"    # Ljava/lang/String;

    .line 8011
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/audio/MediaFocusControl;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public addMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I
    .registers 6
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8931
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    if-eqz v0, :cond_26

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMixForPolicy for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8933
    :cond_26
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8934
    :try_start_29
    const-string v1, "Cannot add AudioMix in audio policy"

    .line 8935
    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    .line 8936
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-nez v1, :cond_34

    .line 8937
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 8939
    :cond_34
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->addMixes(Ljava/util/ArrayList;)V

    .line 8940
    .end local v1    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    monitor-exit v0

    .line 8941
    const/4 v0, 0x0

    return v0

    .line 8940
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_29 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public adjustStreamVolume(IIILjava/lang/String;)V
    .registers 14
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 1780
    const/16 v0, 0xa

    if-ne p1, v0, :cond_21

    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->canChangeAccessibilityVolume()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1781
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to call adjustStreamVolume() for a11y withoutCHANGE_ACCESSIBILITY_VOLUME / callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    return-void

    .line 1785
    :cond_21
    iget-object v7, p0, Lcom/android/server/audio/AudioService;->mVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v8, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v2, 0x1

    move-object v1, v8

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1787
    nop

    .line 1788
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1787
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1789
    return-void
.end method

.method protected adjustStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V
    .registers 40
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;
    .param p6, "uid"    # I

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v10, p5

    .line 1793
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustStreamVolume() stream="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", dir="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", caller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    const-string/jumbo v2, "vendor.mls.audio.session.status"

    const-string v3, "default"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1798
    .local v11, "value":Ljava/lang/String;
    const-string/jumbo v2, "started"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v12, 0x1

    if-ne v12, v2, :cond_53

    .line 1799
    const-string v2, "AudioService"

    const-string v3, "adjustStreamVolume() Ignore volume change during MirrorLink session"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    return-void

    .line 1803
    :cond_53
    iget-boolean v2, v8, Lcom/android/server/audio/AudioService;->mUseFixedVolume:Z

    if-eqz v2, :cond_60

    .line 1805
    const-string v2, "AudioService"

    const-string/jumbo v3, "mUseFixedVolume!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    return-void

    .line 1810
    :cond_60
    invoke-direct {v8, v0}, Lcom/android/server/audio/AudioService;->ensureValidDirection(I)V

    .line 1811
    invoke-direct/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 1813
    invoke-direct {v8, v0}, Lcom/android/server/audio/AudioService;->isMuteAdjust(I)Z

    move-result v13

    .line 1815
    .local v13, "isMuteAdjust":Z
    if-eqz v13, :cond_7a

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->isStreamAffectedByMute(I)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 1817
    const-string v2, "AudioService"

    const-string v3, "be mute!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    return-void

    .line 1824
    :cond_7a
    if-eqz v13, :cond_af

    if-nez v9, :cond_af

    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    .line 1826
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_af

    .line 1829
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MODIFY_PHONE_STATE Permission Denial: adjustStreamVolume from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1829
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    return-void

    .line 1837
    :cond_af
    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v15, v2, v9

    .line 1839
    .local v15, "streamTypeAlias":I
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v14, v2, v15

    .line 1841
    .local v14, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    invoke-direct {v8, v15}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v7

    .line 1843
    .local v7, "device":I
    invoke-virtual {v14, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 1844
    .local v2, "aliasIndex":I
    const/16 v16, 0x1

    .line 1849
    .local v16, "adjustVolume":Z
    const/4 v5, -0x1

    const/16 v3, 0xa

    const/4 v4, 0x2

    if-ne v15, v4, :cond_11e

    if-eqz v10, :cond_11e

    new-instance v4, Ljava/lang/String;

    const-string v6, "android.media.cts"

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1850
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11e

    .line 1851
    if-ne v0, v5, :cond_dd

    iget v4, v8, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    mul-int/2addr v4, v3

    if-le v2, v4, :cond_e4

    :cond_dd
    if-ne v0, v12, :cond_10d

    iget v4, v8, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    mul-int/2addr v4, v3

    if-lt v2, v4, :cond_10d

    .line 1853
    :cond_e4
    const-string v4, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "volume range fixed to ["

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] by system"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    const/4 v0, 0x0

    .line 1858
    .end local p2    # "direction":I
    .local v0, "direction":I
    :cond_10d
    const/16 v6, -0x64

    if-eq v0, v6, :cond_115

    const/16 v4, 0x64

    if-ne v0, v4, :cond_120

    .line 1859
    :cond_115
    iget v4, v8, Lcom/android/server/audio/AudioService;->mOnePlusFixedRingerMode:I

    if-ne v4, v12, :cond_11b

    const/4 v4, 0x0

    goto :goto_11c

    :cond_11b
    move v4, v0

    :goto_11c
    move v0, v4

    goto :goto_120

    .line 1866
    .end local v0    # "direction":I
    .restart local p2    # "direction":I
    :cond_11e
    const/16 v6, -0x64

    .line 1866
    .end local p2    # "direction":I
    .local v5, "direction":I
    :cond_120
    :goto_120
    move v5, v0

    and-int/lit16 v0, v7, 0x380

    if-nez v0, :cond_132

    and-int/lit8 v0, v1, 0x40

    if-eqz v0, :cond_132

    .line 1869
    const-string v0, "AudioService"

    const-string/jumbo v3, "skip a2dp absolute volume control!"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    return-void

    .line 1876
    :cond_132
    const/16 v0, 0x3e8

    move/from16 v4, p6

    if-ne v4, v0, :cond_146

    .line 1877
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getCurrentUserId()I

    move-result v0

    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    invoke-static {v0, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 1880
    .end local p6    # "uid":I
    .local v0, "uid":I
    move v6, v0

    goto :goto_147

    .line 1880
    .end local v0    # "uid":I
    .restart local p6    # "uid":I
    :cond_146
    move v6, v4

    .line 1880
    .end local p6    # "uid":I
    .local v6, "uid":I
    :goto_147
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v4, Lcom/android/server/audio/AudioService;->STREAM_VOLUME_OPS:[I

    aget v4, v4, v15

    move-object/from16 v12, p4

    invoke-virtual {v0, v4, v6, v12}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_15d

    .line 1883
    const-string v0, "AudioService"

    const-string v3, "NOT ALLOWE!"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    return-void

    .line 1889
    :cond_15d
    iget-object v4, v8, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v4

    .line 1890
    const/4 v0, 0x0

    :try_start_161
    iput-object v0, v8, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 1891
    monitor-exit v4
    :try_end_164
    .catchall {:try_start_161 .. :try_end_164} :catchall_3c7

    .line 1893
    and-int/lit8 v0, v1, -0x21

    .line 1894
    .end local p3    # "flags":I
    .local v0, "flags":I
    const/4 v4, 0x3

    if-ne v15, v4, :cond_18b

    iget v1, v8, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v1, v7

    if-eqz v1, :cond_18b

    .line 1896
    or-int/lit8 v0, v0, 0x20

    .line 1901
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_183

    const v1, 0x400000c

    and-int/2addr v1, v7

    if-eqz v1, :cond_183

    .line 1903
    invoke-direct {v8, v7}, Lcom/android/server/audio/AudioService;->safeMediaVolumeIndex(I)I

    move-result v1

    .line 1903
    .local v1, "step":I
    goto :goto_187

    .line 1905
    .end local v1    # "step":I
    :cond_183
    invoke-virtual {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    .line 1907
    .restart local v1    # "step":I
    :goto_187
    if-eqz v2, :cond_18f

    .line 1908
    move v2, v1

    goto :goto_18f

    .line 1912
    .end local v1    # "step":I
    :cond_18b
    invoke-direct {v8, v3, v9, v15}, Lcom/android/server/audio/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 1912
    .end local v2    # "aliasIndex":I
    .restart local v1    # "step":I
    .local v23, "aliasIndex":I
    :cond_18f
    :goto_18f
    move/from16 v23, v2

    move/from16 v27, v1

    .line 1917
    .end local v1    # "step":I
    .local v27, "step":I
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_1a6

    .line 1918
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getUiSoundsStreamType()I

    move-result v1

    if-ne v15, v1, :cond_19e

    goto :goto_1a6

    .line 1941
    :cond_19e
    move/from16 v24, v6

    move v10, v7

    move-object/from16 v28, v11

    move v7, v0

    move v11, v5

    goto :goto_1e3

    .line 1919
    :cond_1a6
    :goto_1a6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v3

    .line 1921
    .local v3, "ringerMode":I
    const/4 v1, 0x1

    if-ne v3, v1, :cond_1af

    .line 1922
    and-int/lit8 v0, v0, -0x11

    .line 1926
    :cond_1af
    nop

    .line 1927
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v17

    .line 1926
    move-object v1, v8

    move/from16 v2, v23

    move/from16 v18, v3

    move v3, v5

    .line 1926
    .end local v3    # "ringerMode":I
    .local v18, "ringerMode":I
    move-object/from16 v28, v11

    move v11, v4

    move/from16 v4, v27

    .line 1926
    .end local v11    # "value":Ljava/lang/String;
    .local v28, "value":Ljava/lang/String;
    move v11, v5

    move/from16 v5, v17

    .line 1926
    .end local v5    # "direction":I
    .local v11, "direction":I
    move/from16 v24, v6

    const/16 v10, -0x64

    move-object v6, v12

    .line 1926
    .end local v6    # "uid":I
    .local v24, "uid":I
    move v10, v7

    move v7, v0

    .line 1926
    .end local v7    # "device":I
    .local v10, "device":I
    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->checkForRingerModeChange(IIIZLjava/lang/String;I)I

    move-result v1

    .line 1928
    .local v1, "result":I
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1d3

    const/4 v2, 0x1

    goto :goto_1d4

    :cond_1d3
    const/4 v2, 0x0

    :goto_1d4
    move/from16 v16, v2

    .line 1930
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1dc

    .line 1931
    or-int/lit16 v0, v0, 0x80

    .line 1934
    :cond_1dc
    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_1e2

    .line 1935
    or-int/lit16 v0, v0, 0x800

    .line 1941
    .end local v0    # "flags":I
    .end local v1    # "result":I
    .end local v18    # "ringerMode":I
    .local v7, "flags":I
    :cond_1e2
    move v7, v0

    :goto_1e3
    invoke-direct {v8, v15, v7}, Lcom/android/server/audio/AudioService;->volumeAdjustmentAllowedByDnd(II)Z

    move-result v0

    if-nez v0, :cond_1eb

    .line 1942
    const/16 v16, 0x0

    .line 1944
    .end local v16    # "adjustVolume":Z
    .local v25, "adjustVolume":Z
    :cond_1eb
    move/from16 v25, v16

    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    .line 1946
    .local v6, "oldIndex":I
    if-eqz v25, :cond_36b

    if-eqz v11, :cond_36b

    .line 1947
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 1949
    if-eqz v13, :cond_242

    .line 1951
    const/16 v0, 0x65

    if-ne v11, v0, :cond_20d

    .line 1952
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 1952
    .local v0, "state":Z
    goto :goto_214

    .line 1954
    .end local v0    # "state":Z
    :cond_20d
    const/16 v0, -0x64

    if-ne v11, v0, :cond_213

    const/4 v0, 0x1

    goto :goto_214

    :cond_213
    const/4 v0, 0x0

    .line 1956
    .restart local v0    # "state":Z
    :goto_214
    const/4 v2, 0x3

    if-ne v15, v2, :cond_21a

    .line 1957
    invoke-direct {v8, v0}, Lcom/android/server/audio/AudioService;->setSystemAudioMute(Z)V

    .line 1959
    :cond_21a
    const/4 v2, 0x0

    .line 1959
    .local v2, "stream":I
    :goto_21b
    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    array-length v3, v3

    if-ge v2, v3, :cond_241

    .line 1960
    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, v2

    if-ne v15, v3, :cond_23e

    .line 1961
    invoke-direct/range {p0 .. p0}, Lcom/android/server/audio/AudioService;->readCameraSoundForced()Z

    move-result v3

    if-eqz v3, :cond_237

    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v2

    .line 1962
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getStreamType()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_23e

    .line 1964
    :cond_237
    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 1959
    :cond_23e
    add-int/lit8 v2, v2, 0x1

    goto :goto_21b

    .line 1968
    .end local v0    # "state":Z
    .end local v2    # "stream":I
    :cond_241
    goto :goto_268

    :cond_242
    const/4 v0, 0x1

    if-ne v11, v0, :cond_271

    add-int v0, v23, v27

    .line 1969
    invoke-direct {v8, v15, v0, v10}, Lcom/android/server/audio/AudioService;->checkSafeMediaVolume(III)Z

    move-result v0

    if-nez v0, :cond_271

    .line 1970
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustStreamVolume() safe volume index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, v7}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V

    .line 1997
    .end local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v15    # "streamTypeAlias":I
    .local v3, "streamTypeAlias":I
    .local v26, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :goto_268
    move-object/from16 v26, v14

    move v3, v15

    const/4 v0, 0x0

    const/4 v2, -0x1

    move-object/from16 v4, p5

    goto/16 :goto_2d5

    .line 1972
    .end local v3    # "streamTypeAlias":I
    .end local v26    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v15    # "streamTypeAlias":I
    :cond_271
    mul-int v5, v11, v27

    move-object/from16 v4, p5

    invoke-virtual {v14, v5, v10, v4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->adjustIndex(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_288

    .line 1973
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    if-eqz v0, :cond_282

    goto :goto_288

    .line 1997
    :cond_282
    move-object/from16 v26, v14

    move v3, v15

    const/4 v0, 0x0

    const/4 v2, -0x1

    goto :goto_2d5

    .line 1976
    :cond_288
    :goto_288
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v14}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v0

    if-eqz v0, :cond_2bd

    .line 1978
    const/4 v0, 0x1

    if-ne v11, v0, :cond_29a

    .line 1980
    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->mute(Z)V

    .line 1988
    move-object/from16 v26, v14

    move v3, v15

    const/4 v2, -0x1

    goto :goto_2c2

    .line 1981
    :cond_29a
    const/4 v0, 0x0

    const/4 v2, -0x1

    if-ne v11, v2, :cond_2b9

    .line 1982
    iget-boolean v3, v8, Lcom/android/server/audio/AudioService;->mIsSingleVolume:Z

    if-eqz v3, :cond_2b9

    .line 1983
    iget-object v3, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0x18

    const/16 v16, 0x2

    const/16 v19, 0x0

    const/16 v20, 0x15e

    move-object/from16 v26, v14

    move-object v14, v3

    .line 1983
    .end local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v26    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    move v3, v15

    move v15, v5

    .line 1983
    .end local v15    # "streamTypeAlias":I
    .restart local v3    # "streamTypeAlias":I
    move/from16 v17, v3

    move/from16 v18, v7

    invoke-static/range {v14 .. v20}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_2c2

    .line 1988
    .end local v3    # "streamTypeAlias":I
    .end local v26    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v15    # "streamTypeAlias":I
    :cond_2b9
    move-object/from16 v26, v14

    move v3, v15

    goto :goto_2c2

    :cond_2bd
    move-object/from16 v26, v14

    move v3, v15

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 1988
    .end local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v15    # "streamTypeAlias":I
    .restart local v3    # "streamTypeAlias":I
    .restart local v26    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    :goto_2c2
    iget-object v5, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v17, 0x0

    const/16 v18, 0x2

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v5

    move/from16 v19, v10

    move-object/from16 v21, v26

    invoke-static/range {v16 .. v22}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1997
    :goto_2d5
    iget-object v5, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v5, v5, v9

    invoke-virtual {v5, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v5

    .line 2000
    .local v5, "newIndex":I
    const/4 v14, 0x3

    if-ne v3, v14, :cond_2ff

    and-int/lit16 v14, v10, 0x380

    if-eqz v14, :cond_2ff

    and-int/lit8 v14, v7, 0x40

    if-nez v14, :cond_2ff

    .line 2003
    iget-object v14, v8, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v14

    .line 2004
    :try_start_2eb
    iget-object v15, v8, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v15, :cond_2fa

    iget-boolean v15, v8, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v15, :cond_2fa

    .line 2005
    iget-object v15, v8, Lcom/android/server/audio/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    div-int/lit8 v1, v5, 0xa

    invoke-virtual {v15, v1}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V

    .line 2007
    :cond_2fa
    monitor-exit v14

    goto :goto_2ff

    :catchall_2fc
    move-exception v0

    monitor-exit v14
    :try_end_2fe
    .catchall {:try_start_2eb .. :try_end_2fe} :catchall_2fc

    throw v0

    .line 2011
    :cond_2ff
    :goto_2ff
    const/high16 v1, 0x8000000

    and-int/2addr v1, v10

    if-eqz v1, :cond_307

    .line 2012
    invoke-direct {v8, v5, v9}, Lcom/android/server/audio/AudioService;->setHearingAidVolume(II)V

    .line 2016
    :cond_307
    const/4 v1, 0x3

    if-ne v3, v1, :cond_311

    .line 2017
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/AudioService;->getStreamMaxVolume(I)I

    move-result v1

    invoke-direct {v8, v6, v5, v1, v7}, Lcom/android/server/audio/AudioService;->setSystemAudioVolume(IIII)V

    .line 2019
    :cond_311
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_367

    .line 2020
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1

    .line 2022
    :try_start_318
    iget-boolean v14, v8, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    if-eqz v14, :cond_35b

    const/4 v14, 0x3

    if-ne v3, v14, :cond_35b

    if-eq v6, v5, :cond_35b

    .line 2025
    iget-object v14, v8, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    monitor-enter v14
    :try_end_324
    .catchall {:try_start_318 .. :try_end_324} :catchall_360

    .line 2026
    if-ne v11, v2, :cond_329

    const/16 v2, 0x19

    goto :goto_32b

    .line 2027
    :cond_329
    const/16 v2, 0x18

    .line 2028
    .local v2, "keyCode":I
    :goto_32b
    :try_start_32b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15
    :try_end_32f
    .catchall {:try_start_32b .. :try_end_32f} :catchall_354

    move-wide/from16 v29, v15

    .line 2030
    .local v29, "ident":J
    :try_start_331
    iget-object v15, v8, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v0, 0x1

    invoke-virtual {v15, v2, v0}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V

    .line 2031
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    const/4 v15, 0x0

    invoke-virtual {v0, v2, v15}, Landroid/hardware/hdmi/HdmiPlaybackClient;->sendKeyEvent(IZ)V
    :try_end_33d
    .catchall {:try_start_331 .. :try_end_33d} :catchall_349

    .line 2033
    move/from16 v32, v2

    move/from16 v31, v3

    move-wide/from16 v2, v29

    :try_start_343
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2034
    .end local v3    # "streamTypeAlias":I
    .end local v29    # "ident":J
    .local v2, "ident":J
    .local v31, "streamTypeAlias":I
    .local v32, "keyCode":I
    nop

    .line 2035
    .end local v2    # "ident":J
    .end local v32    # "keyCode":I
    monitor-exit v14

    goto :goto_35e

    .line 2033
    .end local v31    # "streamTypeAlias":I
    .local v2, "keyCode":I
    .restart local v3    # "streamTypeAlias":I
    .restart local v29    # "ident":J
    :catchall_349
    move-exception v0

    move/from16 v32, v2

    move/from16 v31, v3

    move-wide/from16 v2, v29

    .line 2033
    .end local v3    # "streamTypeAlias":I
    .end local v29    # "ident":J
    .local v2, "ident":J
    .restart local v31    # "streamTypeAlias":I
    .restart local v32    # "keyCode":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 2035
    .end local v2    # "ident":J
    .end local v31    # "streamTypeAlias":I
    .end local v32    # "keyCode":I
    .restart local v3    # "streamTypeAlias":I
    :catchall_354
    move-exception v0

    move/from16 v31, v3

    .line 2035
    .end local v3    # "streamTypeAlias":I
    .restart local v31    # "streamTypeAlias":I
    :goto_357
    monitor-exit v14
    :try_end_358
    .catchall {:try_start_343 .. :try_end_358} :catchall_359

    :try_start_358
    throw v0

    :catchall_359
    move-exception v0

    goto :goto_357

    .line 2037
    .end local v31    # "streamTypeAlias":I
    .restart local v3    # "streamTypeAlias":I
    :cond_35b
    move v15, v0

    move/from16 v31, v3

    .line 2037
    .end local v3    # "streamTypeAlias":I
    .restart local v31    # "streamTypeAlias":I
    :goto_35e
    monitor-exit v1

    goto :goto_372

    .line 2037
    .end local v31    # "streamTypeAlias":I
    .restart local v3    # "streamTypeAlias":I
    :catchall_360
    move-exception v0

    move/from16 v31, v3

    .line 2037
    .end local v3    # "streamTypeAlias":I
    .restart local v31    # "streamTypeAlias":I
    :goto_363
    monitor-exit v1
    :try_end_364
    .catchall {:try_start_358 .. :try_end_364} :catchall_365

    throw v0

    :catchall_365
    move-exception v0

    goto :goto_363

    .line 2040
    .end local v5    # "newIndex":I
    .end local v31    # "streamTypeAlias":I
    .restart local v3    # "streamTypeAlias":I
    :cond_367
    move v15, v0

    move/from16 v31, v3

    .line 2040
    .end local v3    # "streamTypeAlias":I
    .restart local v31    # "streamTypeAlias":I
    goto :goto_372

    .line 2040
    .end local v26    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v31    # "streamTypeAlias":I
    .restart local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v15    # "streamTypeAlias":I
    :cond_36b
    move-object/from16 v26, v14

    move/from16 v31, v15

    move-object/from16 v4, p5

    const/4 v15, 0x0

    .line 2040
    .end local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v15    # "streamTypeAlias":I
    .restart local v26    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v31    # "streamTypeAlias":I
    :goto_372
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v10}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    .line 2041
    .local v0, "index":I
    invoke-virtual {v8, v9, v6, v0, v7}, Lcom/android/server/audio/AudioService;->sendVolumeUpdate(IIII)V

    .line 2044
    const/4 v14, 0x2

    if-ne v9, v14, :cond_3c2

    if-eqz v0, :cond_3c2

    if-ne v10, v14, :cond_3c2

    .line 2045
    nop

    .line 2045
    .local v15, "i":I
    :goto_385
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v9

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v15, v1, :cond_3c2

    .line 2046
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, v9

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMap:Landroid/util/SparseIntArray;
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$1300(Lcom/android/server/audio/AudioService$VolumeStreamState;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 2047
    .local v5, "mapDevice":I
    if-eq v5, v14, :cond_3b5

    .line 2048
    const/16 v16, 0x0

    move-object v1, v8

    move v2, v9

    move/from16 v17, v31

    move v3, v0

    .line 2048
    .end local v31    # "streamTypeAlias":I
    .local v17, "streamTypeAlias":I
    move v4, v5

    move/from16 v18, v5

    move/from16 v5, v16

    .line 2048
    .end local v5    # "mapDevice":I
    .local v18, "mapDevice":I
    move/from16 v16, v6

    move-object/from16 v6, p5

    .line 2048
    .end local v6    # "oldIndex":I
    .local v16, "oldIndex":I
    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 2048
    .end local v18    # "mapDevice":I
    goto :goto_3b9

    .line 2045
    .end local v16    # "oldIndex":I
    .end local v17    # "streamTypeAlias":I
    .restart local v6    # "oldIndex":I
    .restart local v31    # "streamTypeAlias":I
    :cond_3b5
    move/from16 v16, v6

    move/from16 v17, v31

    .line 2045
    .end local v6    # "oldIndex":I
    .end local v31    # "streamTypeAlias":I
    .restart local v16    # "oldIndex":I
    .restart local v17    # "streamTypeAlias":I
    :goto_3b9
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, p5

    move/from16 v6, v16

    move/from16 v31, v17

    goto :goto_385

    .line 2053
    .end local v15    # "i":I
    .end local v16    # "oldIndex":I
    .end local v17    # "streamTypeAlias":I
    .restart local v6    # "oldIndex":I
    .restart local v31    # "streamTypeAlias":I
    :cond_3c2
    move/from16 v16, v6

    move/from16 v17, v31

    .line 2053
    .end local v6    # "oldIndex":I
    .end local v31    # "streamTypeAlias":I
    .restart local v16    # "oldIndex":I
    .restart local v17    # "streamTypeAlias":I
    return-void

    .line 1891
    .end local v0    # "index":I
    .end local v10    # "device":I
    .end local v17    # "streamTypeAlias":I
    .end local v23    # "aliasIndex":I
    .end local v24    # "uid":I
    .end local v25    # "adjustVolume":Z
    .end local v26    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v27    # "step":I
    .end local v28    # "value":Ljava/lang/String;
    .local v2, "aliasIndex":I
    .local v5, "direction":I
    .local v6, "uid":I
    .local v7, "device":I
    .local v11, "value":Ljava/lang/String;
    .restart local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .local v15, "streamTypeAlias":I
    .local v16, "adjustVolume":Z
    .restart local p3    # "flags":I
    :catchall_3c7
    move-exception v0

    move/from16 v24, v6

    move v10, v7

    move-object/from16 v28, v11

    move-object/from16 v26, v14

    move/from16 v17, v15

    move v11, v5

    .line 1891
    .end local v5    # "direction":I
    .end local v6    # "uid":I
    .end local v7    # "device":I
    .end local v14    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .end local v15    # "streamTypeAlias":I
    .restart local v10    # "device":I
    .local v11, "direction":I
    .restart local v17    # "streamTypeAlias":I
    .restart local v24    # "uid":I
    .restart local v26    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    .restart local v28    # "value":Ljava/lang/String;
    :goto_3d2
    :try_start_3d2
    monitor-exit v4
    :try_end_3d3
    .catchall {:try_start_3d2 .. :try_end_3d3} :catchall_3d4

    throw v0

    :catchall_3d4
    move-exception v0

    goto :goto_3d2
.end method

.method public adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 22
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    move-object/from16 v8, p0

    .line 1704
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mExtVolumeControllerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1705
    :try_start_5
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mExtVolumeController:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 1706
    .local v0, "extVolCtlr":Landroid/media/audiopolicy/IAudioPolicyCallback;
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_2c

    .line 1707
    if-eqz v0, :cond_18

    .line 1708
    iget-object v9, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v10, 0x1c

    const/4 v11, 0x2

    const/4 v13, 0x0

    const/4 v15, 0x0

    move/from16 v12, p1

    move-object v14, v0

    invoke-static/range {v9 .. v15}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_2b

    .line 1712
    :cond_18
    nop

    .line 1713
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1712
    move-object v1, v8

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 1715
    :goto_2b
    return-void

    .line 1706
    .end local v0    # "extVolCtlr":Landroid/media/audiopolicy/IAudioPolicyCallback;
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .registers 11
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "support"    # Z

    .line 7145
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7146
    :try_start_3
    iput-boolean p2, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    .line 7147
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x80

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 7150
    monitor-exit v0

    .line 7151
    return-void

    .line 7150
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .registers 4
    .param p1, "method"    # Ljava/lang/String;

    .line 5307
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    .line 5309
    const/4 v0, 0x1

    return v0

    .line 5311
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio Settings Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5312
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5313
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5314
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5315
    const/4 v1, 0x0

    return v1
.end method

.method public clearAllScoClients(IZ)V
    .registers 8
    .param p1, "exceptPid"    # I
    .param p2, "stopSco"    # Z

    .line 4326
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4327
    const/4 v1, 0x0

    .line 4328
    .local v1, "savedClient":Lcom/android/server/audio/AudioService$ScoClient;
    :try_start_4
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$ScoClient;

    .line 4329
    .local v3, "cl":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$ScoClient;->getPid()I

    move-result v4

    if-eq v4, p1, :cond_20

    .line 4330
    invoke-virtual {v3, p2}, Lcom/android/server/audio/AudioService$ScoClient;->clearCount(Z)V

    goto :goto_21

    .line 4332
    :cond_20
    move-object v1, v3

    .line 4334
    .end local v3    # "cl":Lcom/android/server/audio/AudioService$ScoClient;
    :goto_21
    goto :goto_a

    .line 4335
    :cond_22
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4336
    if-eqz v1, :cond_2e

    .line 4337
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4339
    .end local v1    # "savedClient":Lcom/android/server/audio/AudioService$ScoClient;
    :cond_2e
    monitor-exit v0

    .line 4340
    return-void

    .line 4339
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public disableRingtoneSync(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 9069
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 9070
    .local v0, "callingUserId":I
    if-eq v0, p1, :cond_f

    .line 9071
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v3, "disable sound settings syncing for another profile"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 9074
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 9077
    .local v1, "token":J
    :try_start_13
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "sync_parent_sounds"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_21

    .line 9080
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9081
    nop

    .line 9082
    return-void

    .line 9080
    :catchall_21
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public disableSafeMediaVolume(Ljava/lang/String;)V
    .registers 10
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 8263
    const-string v0, "disable the safe media volume"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 8264
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v0

    .line 8265
    const/4 v1, 0x0

    :try_start_9
    invoke-direct {p0, v1, p1}, Lcom/android/server/audio/AudioService;->setSafeMediaVolumeEnabled(ZLjava/lang/String;)V

    .line 8266
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    if-eqz v1, :cond_28

    .line 8267
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v3, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mStreamType:I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v4, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mIndex:I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v5, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mFlags:I

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    iget v6, v1, Lcom/android/server/audio/AudioService$StreamVolumeCommand;->mDevice:I

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->onSetStreamVolume(IIIILjava/lang/String;)V

    .line 8272
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    .line 8274
    :cond_28
    monitor-exit v0

    .line 8275
    return-void

    .line 8274
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_9 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method disconnectA2dp()V
    .registers 9

    .line 4690
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4691
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_51

    .line 4692
    const/4 v2, 0x0

    .line 4694
    .local v2, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_a
    :try_start_a
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/16 v6, 0x80

    if-ge v2, v5, :cond_32

    .line 4695
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 4696
    .local v5, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v7, v5, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    if-ne v7, v6, :cond_2f

    .line 4697
    if-eqz v4, :cond_24

    move-object v6, v4

    goto :goto_29

    :cond_24
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    :goto_29
    move-object v4, v6

    .line 4698
    iget-object v6, v5, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4694
    .end local v5    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 4701
    .end local v2    # "i":I
    :cond_32
    if-eqz v4, :cond_4b

    .line 4702
    invoke-direct {p0, v6, v3, v3}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(III)I

    move-result v2

    .line 4704
    .local v2, "delay":I
    nop

    .local v3, "i":I
    :goto_39
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v3, v5, :cond_4b

    .line 4705
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5, v2}, Lcom/android/server/audio/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;I)V

    .line 4704
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 4708
    .end local v2    # "delay":I
    .end local v3    # "i":I
    .end local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_a .. :try_end_4c} :catchall_4e

    .line 4709
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_51

    .line 4710
    return-void

    .line 4708
    :catchall_4e
    move-exception v2

    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    :try_start_50
    throw v2

    .line 4709
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_51

    throw v1
.end method

.method disconnectA2dpSink()V
    .registers 8

    .line 4713
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4714
    const/4 v1, 0x0

    .line 4716
    .local v1, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v2, 0x0

    move-object v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_7
    :try_start_7
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v1, v4, :cond_2f

    .line 4717
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 4718
    .local v4, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v5, v4, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    const/high16 v6, -0x7ffe0000

    if-ne v5, v6, :cond_2c

    .line 4719
    if-eqz v3, :cond_21

    move-object v5, v3

    goto :goto_26

    :cond_21
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    :goto_26
    move-object v3, v5

    .line 4720
    iget-object v5, v4, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4716
    .end local v4    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4723
    .end local v1    # "i":I
    :cond_2f
    if-eqz v3, :cond_45

    .line 4724
    nop

    .local v2, "i":I
    :goto_32
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 4725
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->makeA2dpSrcUnavailable(Ljava/lang/String;)V

    .line 4724
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_32

    .line 4728
    .end local v2    # "i":I
    .end local v3    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_45
    monitor-exit v0

    .line 4729
    return-void

    .line 4728
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_7 .. :try_end_49} :catchall_47

    throw v1
.end method

.method disconnectAllBluetoothProfiles()V
    .registers 1

    .line 4683
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->disconnectA2dp()V

    .line 4684
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->disconnectA2dpSink()V

    .line 4685
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->disconnectHeadset()V

    .line 4686
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->disconnectHearingAid()V

    .line 4687
    return-void
.end method

.method disconnectHeadset()V
    .registers 3

    .line 4732
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4733
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, v1}, Lcom/android/server/audio/AudioService;->setBtScoActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 4734
    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 4735
    monitor-exit v0

    .line 4736
    return-void

    .line 4735
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v1
.end method

.method disconnectHearingAid()V
    .registers 9

    .line 4739
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4740
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHearingAidLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_51

    .line 4741
    const/4 v2, 0x0

    .line 4743
    .local v2, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    move-object v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_a
    :try_start_a
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/high16 v6, 0x8000000

    if-ge v2, v5, :cond_32

    .line 4744
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 4745
    .local v5, "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v7, v5, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    if-ne v7, v6, :cond_2f

    .line 4746
    if-eqz v4, :cond_24

    move-object v6, v4

    goto :goto_29

    :cond_24
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    :goto_29
    move-object v4, v6

    .line 4747
    iget-object v6, v5, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4743
    .end local v5    # "deviceSpec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 4750
    .end local v2    # "i":I
    :cond_32
    if-eqz v4, :cond_4b

    .line 4751
    invoke-direct {p0, v6, v3, v3}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(III)I

    move-result v2

    .line 4753
    .local v2, "delay":I
    nop

    .local v3, "i":I
    :goto_39
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v3, v5, :cond_4b

    .line 4754
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/audio/AudioService;->makeHearingAidDeviceUnavailable(Ljava/lang/String;)V

    .line 4753
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 4757
    .end local v2    # "delay":I
    .end local v3    # "i":I
    .end local v4    # "toRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_a .. :try_end_4c} :catchall_4e

    .line 4758
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_51

    .line 4759
    return-void

    .line 4757
    :catchall_4e
    move-exception v2

    :try_start_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    :try_start_50
    throw v2

    .line 4758
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_51

    throw v1
.end method

.method public dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .registers 7
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "focusChange"    # I
    .param p3, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 9259
    if-eqz p1, :cond_2e

    .line 9262
    if-eqz p3, :cond_26

    .line 9265
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 9266
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 9269
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->dispatchFocusChange(Landroid/media/AudioFocusInfo;I)I

    move-result v1

    monitor-exit v0

    return v1

    .line 9267
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unregistered AudioPolicy for focus dispatch"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9270
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_7 .. :try_end_25} :catchall_23

    throw v1

    .line 9263
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioPolicy callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9260
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFocusInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 8496
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "AudioService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 8498
    :cond_b
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/MediaFocusControl;->dump(Ljava/io/PrintWriter;)V

    .line 8499
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpStreamStates(Ljava/io/PrintWriter;)V

    .line 8500
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpRingerMode(Ljava/io/PrintWriter;)V

    .line 8501
    const-string v0, "\nAudio routes:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8502
    const-string v0, "  mMainType=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mainType:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8503
    const-string v0, "  mBluetoothName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8505
    const-string v0, "\nOther state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8506
    const-string v0, "  mVolumeController="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8507
    const-string v0, "  mSafeMediaVolumeState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 8508
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->safeMediaVolumeStateToString(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8509
    const-string v0, "  mSafeMediaVolumeIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8510
    const-string v0, "  mSafeUsbMediaVolumeIndex="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8511
    const-string v0, "  mSafeUsbMediaVolumeDbfs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mSafeUsbMediaVolumeDbfs:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 8512
    const-string v0, "  sIndependentA11yVolume="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/audio/AudioService;->sIndependentA11yVolume:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8513
    const-string v0, "  mPendingVolumeCommand="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPendingVolumeCommand:Lcom/android/server/audio/AudioService$StreamVolumeCommand;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8514
    const-string v0, "  mMusicActiveMs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMusicActiveMs:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8515
    const-string v0, "  mMcc="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/audio/AudioService;->mMcc:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 8516
    const-string v0, "  mCameraSoundForced="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8517
    const-string v0, "  mHasVibrator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8518
    const-string v0, "  mVolumePolicy="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 8519
    const-string v0, "  mAvrcpAbsVolSupported="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mAvrcpAbsVolSupported:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 8521
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->dumpAudioPolicies(Ljava/io/PrintWriter;)V

    .line 8522
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 8524
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/PlaybackActivityMonitor;->dump(Ljava/io/PrintWriter;)V

    .line 8526
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/RecordingActivityMonitor;->dump(Ljava/io/PrintWriter;)V

    .line 8528
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8529
    const-string v0, "\nEvent logs:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8530
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 8531
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8532
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mWiredDevLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 8533
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8534
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 8535
    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8536
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 8537
    return-void
.end method

.method public forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    .registers 7
    .param p1, "startForcing"    # Z
    .param p2, "cb"    # Landroid/os/IBinder;

    .line 2673
    if-nez p2, :cond_3

    .line 2674
    return-void

    .line 2676
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_15

    .line 2678
    const-string v0, "AudioService"

    const-string v1, "Trying to call forceRemoteSubmixFullVolume() without CAPTURE_AUDIO_OUTPUT"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    return-void

    .line 2681
    :cond_15
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2682
    const/4 v1, 0x0

    .line 2683
    .local v1, "applyRequired":Z
    if-eqz p1, :cond_46

    .line 2684
    :try_start_1b
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->hasRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 2685
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolDeathHandlers:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;

    invoke-direct {v3, p0, p2}, Lcom/android/server/audio/AudioService$RmtSbmxFullVolDeathHandler;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2686
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v2, :cond_3d

    .line 2687
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    const v3, 0x8000

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 2688
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 2689
    const/4 v1, 0x1

    .line 2691
    :cond_3d
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    goto :goto_68

    .line 2708
    .end local v1    # "applyRequired":Z
    :catchall_44
    move-exception v1

    goto :goto_77

    .line 2694
    .restart local v1    # "applyRequired":Z
    :cond_46
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->discardRmtSbmxFullVolDeathHandlerFor(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_68

    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-lez v2, :cond_68

    .line 2695
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    .line 2696
    iget v2, p0, Lcom/android/server/audio/AudioService;->mRmtSbmxFullVolRefCount:I

    if-nez v2, :cond_68

    .line 2697
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    const v3, -0x8001

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFullVolumeDevices:I

    .line 2698
    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 2699
    const/4 v1, 0x1

    .line 2703
    :cond_68
    :goto_68
    if-eqz v1, :cond_75

    .line 2705
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->checkAllFixedVolumeDevices(I)V

    .line 2706
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v3, v2

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 2708
    .end local v1    # "applyRequired":Z
    :cond_75
    monitor-exit v0

    .line 2709
    return-void

    .line 2708
    :goto_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_1b .. :try_end_78} :catchall_44

    throw v1
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .registers 9
    .param p1, "streamType"    # I
    .param p2, "cb"    # Landroid/os/IBinder;

    .line 2415
    const-string v0, "AudioService"

    const-string v1, "forceVolumeControlStream(%d)"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2417
    :try_start_18
    iget v1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_21

    if-eq p1, v3, :cond_21

    .line 2418
    iput-boolean v2, p0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    .line 2420
    :cond_21
    iput p1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    .line 2421
    iget v1, p0, Lcom/android/server/audio/AudioService;->mVolumeControlStream:I

    if-ne v1, v3, :cond_36

    .line 2422
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    if-eqz v1, :cond_33

    .line 2423
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->release()V

    .line 2424
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 2426
    :cond_33
    iput-boolean v5, p0, Lcom/android/server/audio/AudioService;->mUserSelectedVolumeControlStream:Z

    goto :goto_72

    .line 2428
    :cond_36
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    if-nez v1, :cond_42

    .line 2429
    new-instance v1, Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-direct {v1, p0, p2}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    goto :goto_72

    .line 2431
    :cond_42
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p2, :cond_66

    .line 2432
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceVolumeControlStream cb:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is already linked."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    .line 2434
    :cond_66
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->release()V

    .line 2435
    new-instance v1, Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    invoke-direct {v1, p0, p2}, Lcom/android/server/audio/AudioService$ForceControlStreamClient;-><init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V

    iput-object v1, p0, Lcom/android/server/audio/AudioService;->mForceControlStreamClient:Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 2439
    :goto_72
    monitor-exit v0

    .line 2440
    return-void

    .line 2439
    :catchall_74
    move-exception v1

    monitor-exit v0
    :try_end_76
    .catchall {:try_start_18 .. :try_end_76} :catchall_74

    throw v1
.end method

.method public getActivePlaybackConfigurations()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation

    .line 9101
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 9102
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 9104
    .local v0, "isPrivileged":Z
    :goto_d
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->getActivePlaybackConfigurations(Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getActiveRecordingConfigurations()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    .line 9062
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 9063
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 9065
    .local v0, "isPrivileged":Z
    :goto_d
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v1, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->getActiveRecordingConfigurations(Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentAudioFocus()I
    .registers 2

    .line 8019
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0}, Lcom/android/server/audio/MediaFocusControl;->getCurrentAudioFocus()I

    move-result v0

    return v0
.end method

.method public getDeviceStreamVolume(II)I
    .registers 7
    .param p1, "streamType"    # I
    .param p2, "device"    # I

    .line 2787
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 2788
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 2790
    .local v1, "index":I
    if-eqz v1, :cond_22

    sget-object v2, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, p1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_22

    iget v2, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_22

    .line 2792
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v2

    move v1, v2

    .line 2794
    :cond_22
    add-int/lit8 v2, v1, 0x5

    div-int/lit8 v2, v2, 0xa

    monitor-exit v0

    return v2

    .line 2795
    .end local v1    # "index":I
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I
    .registers 4
    .param p1, "focusGain"    # I
    .param p2, "attr"    # Landroid/media/AudioAttributes;

    .line 8023
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {p1, p2}, Lcom/android/server/audio/MediaFocusControl;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v0

    return v0
.end method

.method public getHeadsetNotificationStatus()I
    .registers 2

    .line 3968
    iget v0, p0, Lcom/android/server/audio/AudioService;->mHeadsetNotication:I

    return v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .registers 4
    .param p1, "streamType"    # I

    .line 2813
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2814
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 2815
    .local v0, "device":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getMode()I
    .registers 2

    .line 3433
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    return v0
.end method

.method public getRingerModeExternal()I
    .registers 4

    .line 2876
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2879
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    .line 2880
    const-string v1, "AudioService"

    const-string v2, "DND is on!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2881
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2884
    :cond_1a
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerModeExternal:I

    monitor-exit v0

    return v1

    .line 2885
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public getRingerModeInternal()I
    .registers 3

    .line 2890
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2891
    :try_start_3
    iget v1, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    monitor-exit v0

    return v1

    .line 2892
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .registers 2

    .line 8129
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .registers 3
    .param p1, "streamType"    # I

    .line 2801
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2802
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamMinVolume(I)I
    .registers 3
    .param p1, "streamType"    # I

    .line 2807
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2808
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMinIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .registers 7
    .param p1, "streamType"    # I

    .line 2767
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2768
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 2769
    .local v0, "device":I
    const-class v1, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v1

    .line 2770
    :try_start_a
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v2

    .line 2773
    .local v2, "index":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2774
    const/4 v2, 0x0

    .line 2776
    :cond_1d
    if-eqz v2, :cond_34

    sget-object v3, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget v3, v3, p1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_34

    iget v3, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_34

    .line 2778
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v3

    move v2, v3

    .line 2780
    :cond_34
    add-int/lit8 v3, v2, 0x5

    div-int/lit8 v3, v3, 0xa

    monitor-exit v1

    return v3

    .line 2781
    .end local v2    # "index":I
    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_a .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method public getUiSoundsStreamType()I
    .registers 3

    .line 2820
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getVibrateSetting(I)I
    .registers 4
    .param p1, "vibrateType"    # I

    .line 3174
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 3175
    :cond_6
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public handleBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V
    .registers 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 5512
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5513
    :try_start_3
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x67

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 5519
    monitor-exit v0

    .line 5520
    return-void

    .line 5519
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public isASBluetoothA2dpOn()Z
    .registers 4

    .line 3931
    const-string v0, ""

    const/16 v1, 0x80

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 3933
    return v1

    .line 3934
    :cond_c
    const/16 v0, 0x100

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_17

    .line 3936
    return v1

    .line 3937
    :cond_17
    const/16 v0, 0x200

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_22

    .line 3939
    return v1

    .line 3941
    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public isAudioServerRunning()Z
    .registers 2

    .line 9357
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMonitorAudioServerStatePermission()V

    .line 9358
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isBluetoothA2dpOn()Z
    .registers 3

    .line 3918
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3919
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    monitor-exit v0

    return v1

    .line 3920
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isBluetoothScoOn()Z
    .registers 4

    .line 3892
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In isBluetoothScoOn(), mForcedUseForCommExt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3894
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method public isCameraSoundForced()Z
    .registers 3

    .line 8423
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8424
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    monitor-exit v0

    return v1

    .line 8425
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public isHasSpeakerAuthority(Ljava/lang/String;)Z
    .registers 6
    .param p1, "keys"    # Ljava/lang/String;

    .line 3709
    const/4 v0, 0x1

    .line 3710
    .local v0, "mIsTelName":Z
    const-string v1, "com.android.server.telecom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3711
    const/4 v0, 0x1

    goto :goto_c

    .line 3713
    :cond_b
    const/4 v0, 0x0

    .line 3715
    :goto_c
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isHasSpeakerAuthority APP keys: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",mIsTelName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3716
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->isInCallState()Z

    move-result v1

    if-eqz v1, :cond_35

    if-nez v0, :cond_35

    .line 3717
    const/4 v1, 0x0

    return v1

    .line 3719
    :cond_35
    const/4 v1, 0x1

    return v1
.end method

.method public isHdmiSystemAudioSupported()Z
    .registers 2

    .line 8340
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    return v0
.end method

.method public isInCallState()Z
    .registers 8

    .line 3696
    const/4 v0, 0x0

    .line 3697
    .local v0, "IsInCall":Z
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "telecom"

    .line 3698
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    .line 3699
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3700
    .local v2, "ident":J
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 3701
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3702
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isInCallState ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3703
    return v0
.end method

.method public isMasterMute()Z
    .registers 2

    .line 2757
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    return v0
.end method

.method public isSpeakerphoneOn()Z
    .registers 4

    .line 3755
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In isSpeakerphoneOn(), mForcedUseForCommExt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method

.method public isStreamAffectedByMute(I)Z
    .registers 5
    .param p1, "streamType"    # I

    .line 5095
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMuteAffectedStreams:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .registers 5
    .param p1, "streamType"    # I

    .line 4993
    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerModeAffectedStreams:I

    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public isStreamMute(I)Z
    .registers 4
    .param p1, "streamType"    # I

    .line 2602
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_8

    .line 2603
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->getActiveStreamType(I)I

    move-result p1

    .line 2605
    :cond_8
    const-class v0, Lcom/android/server/audio/AudioService$VolumeStreamState;

    monitor-enter v0

    .line 2606
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->ensureValidStreamType(I)V

    .line 2607
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIsMuted:Z
    invoke-static {v1}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$800(Lcom/android/server/audio/AudioService$VolumeStreamState;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2608
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public isValidRingerMode(I)Z
    .registers 3
    .param p1, "ringerMode"    # I

    .line 2903
    if-ltz p1, :cond_7

    const/4 v0, 0x2

    if-gt p1, v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public loadSoundEffects()Z
    .registers 11

    .line 3566
    const/4 v0, 0x3

    .line 3567
    .local v0, "attempts":I
    new-instance v1, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;

    invoke-direct {v1, p0}, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;-><init>(Lcom/android/server/audio/AudioService;)V

    .line 3569
    .local v1, "reply":Lcom/android/server/audio/AudioService$LoadSoundEffectReply;
    monitor-enter v1

    .line 3570
    :try_start_7
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x7

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, v1

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3571
    :goto_12
    iget v2, v1, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_36

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2e

    add-int/lit8 v2, v0, -0x1

    .line 3571
    .local v2, "attempts":I
    if-lez v0, :cond_2d

    .line 3573
    .end local v0    # "attempts":I
    const-wide/16 v3, 0x1388

    :try_start_1d
    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_21
    .catchall {:try_start_1d .. :try_end_20} :catchall_3c

    .line 3576
    :goto_20
    goto :goto_2b

    .line 3574
    :catch_21
    move-exception v0

    .line 3575
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_22
    const-string v3, "AudioService"

    const-string/jumbo v4, "loadSoundEffects Interrupted while waiting sound pool loaded."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_3c

    .line 3575
    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_20

    .line 3571
    :goto_2b
    move v0, v2

    goto :goto_12

    .line 3578
    :cond_2d
    move v0, v2

    .line 3578
    .end local v2    # "attempts":I
    .local v0, "attempts":I
    :cond_2e
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_36

    .line 3579
    iget v2, v1, Lcom/android/server/audio/AudioService$LoadSoundEffectReply;->mStatus:I

    if-nez v2, :cond_34

    goto :goto_35

    :cond_34
    const/4 v3, 0x0

    :goto_35
    return v3

    .line 3578
    :catchall_36
    move-exception v2

    move-object v9, v2

    move v2, v0

    move-object v0, v9

    .line 3578
    .end local v0    # "attempts":I
    .restart local v2    # "attempts":I
    :goto_3a
    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_3c

    throw v0

    :catchall_3c
    move-exception v0

    goto :goto_3a
.end method

.method public notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .registers 6
    .param p1, "controller"    # Landroid/media/IVolumeController;
    .param p2, "visible"    # Z

    .line 8608
    const-string/jumbo v0, "notify about volume controller visibility"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 8611
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 8612
    return-void

    .line 8615
    :cond_f
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$VolumeController;->setVisible(Z)V

    .line 8616
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume controller visible: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8617
    return-void
.end method

.method public onAccessibilityServicesStateChanged(Landroid/view/accessibility/AccessibilityManager;)V
    .registers 3
    .param p1, "accessibilityManager"    # Landroid/view/accessibility/AccessibilityManager;

    .line 8393
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isAccessibilityVolumeStreamActive()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->updateA11yVolumeAlias(Z)V

    .line 8394
    return-void
.end method

.method onAreaSystemReady()V
    .registers 6

    .line 1147
    const-string/jumbo v0, "persist.vendor.audio.EuropeanStandard"

    .line 1148
    .local v0, "KEY":Ljava/lang/String;
    const-string v1, "default"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1149
    .local v1, "value":Ljava/lang/String;
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAreaSystemReady persist.vendor.audio.EuropeanStandard:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mListeningarea:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mListeningarea:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1152
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mListeningarea:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->IsOnEUArea(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1153
    const-string v2, "EuropeanStandard=1"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_45

    .line 1155
    :cond_40
    const-string v2, "EuropeanStandard=0"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1158
    :cond_45
    :goto_45
    return-void
.end method

.method public onAudioServerDied()V
    .registers 12

    .line 1179
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-eqz v0, :cond_185

    .line 1180
    invoke-static {}, Landroid/media/AudioSystem;->checkAudioFlinger()I

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_185

    .line 1186
    :cond_c
    const-string v0, "AudioService"

    const-string v1, "Audioserver started."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const-string/jumbo v0, "restarting=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1194
    invoke-static {}, Lcom/android/server/audio/AudioService;->readAndSetLowRamDevice()V

    .line 1197
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1198
    const/4 v1, 0x0

    move v2, v1

    .line 1198
    .local v2, "i":I
    :goto_21
    :try_start_21
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_3e

    .line 1199
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/AudioService$DeviceListSpec;

    .line 1200
    .local v3, "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    iget v5, v3, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceType:I

    iget-object v6, v3, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceAddress:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/server/audio/AudioService$DeviceListSpec;->mDeviceName:Ljava/lang/String;

    invoke-static {v5, v4, v6, v7}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)I

    .line 1198
    .end local v3    # "spec":Lcom/android/server/audio/AudioService$DeviceListSpec;
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1206
    .end local v2    # "i":I
    :cond_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_21 .. :try_end_3f} :catchall_182

    .line 1208
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    invoke-static {v0}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v0

    if-nez v0, :cond_6e

    .line 1209
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mModeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAudioServerDied causes setPhoneState("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/audio/AudioService;->mMode:I

    .line 1210
    invoke-static {v5}, Landroid/media/AudioSystem;->modeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 1209
    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1214
    :cond_6e
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    iget v3, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const-string/jumbo v5, "onAudioServerDied"

    invoke-direct {v2, v1, v3, v5}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1216
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1217
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    iget v3, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const-string/jumbo v5, "onAudioServerDied"

    const/4 v6, 0x2

    invoke-direct {v2, v6, v3, v5}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1219
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    invoke-static {v6, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1221
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1222
    :try_start_9a
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mCameraSoundForced:Z

    if-eqz v0, :cond_a1

    .line 1223
    const/16 v0, 0xb

    goto :goto_a2

    :cond_a1
    move v0, v1

    .line 1224
    .local v0, "forSys":I
    :goto_a2
    monitor-exit v2
    :try_end_a3
    .catchall {:try_start_9a .. :try_end_a3} :catchall_17f

    .line 1225
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    const-string/jumbo v5, "onAudioServerDied"

    const/4 v6, 0x4

    invoke-direct {v3, v6, v0, v5}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1227
    invoke-static {v6, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1230
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    .line 1231
    .local v3, "numStreamTypes":I
    add-int/lit8 v2, v3, -0x1

    .line 1231
    .local v2, "streamType":I
    :goto_ba
    const/16 v5, 0xa

    if-ltz v2, :cond_d6

    .line 1232
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v6, v2

    .line 1233
    .local v6, "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    nop

    .line 1234
    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMin:I
    invoke-static {v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$600(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v7

    div-int/2addr v7, v5

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I
    invoke-static {v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v8

    div-int/2addr v8, v5

    .line 1233
    invoke-static {v2, v7, v8}, Landroid/media/AudioSystem;->initStreamVolume(III)I

    .line 1236
    invoke-virtual {v6}, Lcom/android/server/audio/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 1231
    .end local v6    # "streamState":Lcom/android/server/audio/AudioService$VolumeStreamState;
    add-int/lit8 v2, v2, -0x1

    goto :goto_ba

    .line 1240
    .end local v2    # "streamType":I
    :cond_d6
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->updateMasterMono(Landroid/content/ContentResolver;)V

    .line 1243
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 1246
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mMonitorRotation:Z

    if-eqz v2, :cond_e9

    .line 1247
    invoke-static {}, Lcom/android/server/audio/RotationHelper;->updateOrientation()V

    .line 1250
    :cond_e9
    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1251
    :try_start_ec
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v2, :cond_f2

    .line 1252
    move v5, v1

    nop

    :cond_f2
    move v2, v5

    .line 1253
    .local v2, "forMed":I
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v7, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    const-string/jumbo v8, "onAudioServerDied"

    invoke-direct {v7, v4, v2, v8}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1255
    invoke-static {v4, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1256
    .end local v2    # "forMed":I
    monitor-exit v6
    :try_end_104
    .catchall {:try_start_ec .. :try_end_104} :catchall_17c

    .line 1258
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1259
    :try_start_107
    iget-boolean v5, p0, Lcom/android/server/audio/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v5, :cond_10e

    .line 1260
    const/16 v1, 0x8

    nop

    .line 1261
    .local v1, "forDock":I
    :cond_10e
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v6, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    const-string/jumbo v7, "onAudioServerDied"

    const/4 v8, 0x3

    invoke-direct {v6, v8, v1, v7}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1263
    invoke-static {v8, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 1264
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "onAudioServerDied"

    invoke-direct {p0, v5, v6}, Lcom/android/server/audio/AudioService;->sendEncodedSurroundMode(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1265
    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0, v5, v4}, Lcom/android/server/audio/AudioService;->sendEnabledSurroundFormats(Landroid/content/ContentResolver;Z)V

    .line 1266
    .end local v1    # "forDock":I
    monitor-exit v2
    :try_end_12d
    .catchall {:try_start_107 .. :try_end_12d} :catchall_179

    .line 1267
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_142

    .line 1268
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1

    .line 1269
    :try_start_134
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v2, :cond_13d

    .line 1270
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->setHdmiSystemAudioSupported(Z)I

    .line 1272
    :cond_13d
    monitor-exit v1

    goto :goto_142

    :catchall_13f
    move-exception v2

    monitor-exit v1
    :try_end_141
    .catchall {:try_start_134 .. :try_end_141} :catchall_13f

    throw v2

    .line 1275
    :cond_142
    :goto_142
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v1

    .line 1276
    :try_start_145
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 1277
    .local v4, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->connectMixes()V

    .line 1278
    .end local v4    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    goto :goto_14f

    .line 1279
    :cond_15f
    monitor-exit v1
    :try_end_160
    .catchall {:try_start_145 .. :try_end_160} :catchall_176

    .line 1281
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 1283
    const-string/jumbo v1, "restarting=false"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1285
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0x1d

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1287
    return-void

    .line 1279
    :catchall_176
    move-exception v2

    :try_start_177
    monitor-exit v1
    :try_end_178
    .catchall {:try_start_177 .. :try_end_178} :catchall_176

    throw v2

    .line 1266
    :catchall_179
    move-exception v1

    :try_start_17a
    monitor-exit v2
    :try_end_17b
    .catchall {:try_start_17a .. :try_end_17b} :catchall_179

    throw v1

    .line 1256
    :catchall_17c
    move-exception v1

    :try_start_17d
    monitor-exit v6
    :try_end_17e
    .catchall {:try_start_17d .. :try_end_17e} :catchall_17c

    throw v1

    .line 1224
    .end local v0    # "forSys":I
    .end local v3    # "numStreamTypes":I
    :catchall_17f
    move-exception v0

    :try_start_180
    monitor-exit v2
    :try_end_181
    .catchall {:try_start_180 .. :try_end_181} :catchall_17f

    throw v0

    .line 1206
    :catchall_182
    move-exception v1

    :try_start_183
    monitor-exit v0
    :try_end_184
    .catchall {:try_start_183 .. :try_end_184} :catchall_182

    throw v1

    .line 1181
    :cond_185
    :goto_185
    const-string v0, "AudioService"

    const-string v1, "Audioserver died."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f4

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1184
    return-void
.end method

.method onIndicateSystemReady()V
    .registers 9

    .line 1166
    invoke-static {}, Landroid/media/AudioSystem;->systemReady()I

    move-result v0

    if-nez v0, :cond_7

    .line 1167
    return-void

    .line 1169
    :cond_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e8

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1176
    return-void
.end method

.method public onPlaySilentBuffer()V
    .registers 2

    .line 1033
    new-instance v0, Lcom/android/server/audio/AudioService$playSilentBufferThread;

    invoke-direct {v0, p0}, Lcom/android/server/audio/AudioService$playSilentBufferThread;-><init>(Lcom/android/server/audio/AudioService;)V

    .line 1034
    .local v0, "onPlaySilentBufferThread":Lcom/android/server/audio/AudioService$playSilentBufferThread;
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$playSilentBufferThread;->start()V

    .line 1035
    return-void
.end method

.method public onSystemReady()V
    .registers 12

    .line 1072
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    .line 1073
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x7

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1076
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/audio/AudioService;->mScoConnectionState:I

    .line 1077
    const-string v0, "AudioService"

    const-string v1, "In onSystemReady(), calling resetBluetoothSco()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->resetBluetoothSco()V

    .line 1079
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->getBluetoothHeadset()Z

    .line 1082
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.SCO_AUDIO_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1083
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1085
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 1087
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 1088
    .local v1, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_45

    .line 1089
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v5, 0x2

    invoke-virtual {v1, v3, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 1091
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v5, 0x15

    invoke-virtual {v1, v3, v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 1095
    :cond_45
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.hdmi.cec"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 1096
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/hdmi/HdmiControlManager;

    iput-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    .line 1097
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v3

    .line 1098
    :try_start_62
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiControlManager;->getTvClient()Landroid/hardware/hdmi/HdmiTvClient;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    .line 1099
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-eqz v4, :cond_76

    .line 1100
    iget v4, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    const v5, -0x2c0003

    and-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/audio/AudioService;->mFixedVolumeDevices:I

    .line 1102
    :cond_76
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/audio/AudioService;->mHdmiPlaybackClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 1103
    iput-boolean v2, p0, Lcom/android/server/audio/AudioService;->mHdmiCecSink:Z

    .line 1104
    monitor-exit v3

    goto :goto_85

    :catchall_82
    move-exception v2

    monitor-exit v3
    :try_end_84
    .catchall {:try_start_62 .. :try_end_84} :catchall_82

    throw v2

    .line 1107
    :cond_85
    :goto_85
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 1109
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "AudioService"

    .line 1115
    const-string v3, "audio.safemedia.bypass"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_a6

    .line 1116
    nop

    .line 1109
    :goto_a4
    move v10, v2

    goto :goto_a9

    .line 1116
    :cond_a6
    const/16 v2, 0x7530

    goto :goto_a4

    .line 1109
    :goto_a9
    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1118
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->initA11yMonitoring()V

    .line 1119
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onIndicateSystemReady()V

    .line 1122
    invoke-static {}, Lcom/android/server/audio/AudioService;->isEnableEU()Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 1123
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->onAreaSystemReady()V

    .line 1126
    :cond_bb
    return-void
.end method

.method public onTouchExplorationStateChanged(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 8371
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->updateDefaultStreamOverrideDelay(Z)V

    .line 8372
    return-void
.end method

.method public playSoundEffect(I)V
    .registers 3
    .param p1, "effectType"    # I

    .line 3542
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->playSoundEffectVolume(IF)V

    .line 3543
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .registers 11
    .param p1, "effectType"    # I
    .param p2, "volume"    # F

    .line 3548
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->isStreamMutedByRingerOrZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3549
    return-void

    .line 3552
    :cond_8
    const/16 v0, 0xa

    if-ge p1, v0, :cond_1e

    if-gez p1, :cond_f

    goto :goto_1e

    .line 3557
    :cond_f
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, p2

    float-to-int v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-static/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3559
    return-void

    .line 3553
    :cond_1e
    :goto_1e
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioService effectType value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3554
    return-void
.end method

.method public playerAttributes(ILandroid/media/AudioAttributes;)V
    .registers 5
    .param p1, "piid"    # I
    .param p2, "attr"    # Landroid/media/AudioAttributes;

    .line 9112
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->playerAttributes(ILandroid/media/AudioAttributes;I)V

    .line 9113
    return-void
.end method

.method public playerEvent(II)V
    .registers 9
    .param p1, "piid"    # I
    .param p2, "event"    # I

    .line 9116
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->playerEvent(III)V

    .line 9119
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/audio/AudioService;->wasStreamActiveRecently(II)Z

    move-result v1

    .line 9120
    .local v1, "isMusicActive":Z
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v2

    .line 9121
    .local v2, "device":I
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "playerEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isMusicActive:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " device:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9123
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/AudioMonitor;

    if-eqz v3, :cond_4b

    .line 9124
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/AudioMonitor;

    invoke-virtual {v3, p1, v0, p2, v2}, Lcom/android/server/audio/AudioMonitor;->playerEvent(IIII)V

    .line 9127
    :cond_4b
    return-void
.end method

.method public playerHasOpPlayAudio(IZ)V
    .registers 5
    .param p1, "piid"    # I
    .param p2, "hasOpPlayAudio"    # Z

    .line 9130
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->playerHasOpPlayAudio(IZI)V

    .line 9131
    return-void
.end method

.method public registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZ)Ljava/lang/String;
    .registers 21
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p3, "hasFocusListener"    # Z
    .param p4, "isFocusPolicy"    # Z
    .param p5, "isVolumeController"    # Z

    move-object v8, p0

    .line 8849
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mDynPolicyCallback:Landroid/media/AudioSystem$DynamicPolicyCallback;

    invoke-static {v0}, Landroid/media/AudioSystem;->setDynamicPolicyCallback(Landroid/media/AudioSystem$DynamicPolicyCallback;)V

    .line 8851
    const/4 v9, 0x0

    .line 8853
    .local v9, "regId":Ljava/lang/String;
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 8854
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    move v0, v10

    :goto_15
    move v11, v0

    .line 8856
    .local v11, "hasPermissionForPolicy":Z
    const/4 v12, 0x0

    if-nez v11, :cond_45

    .line 8857
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t register audio policy for pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8858
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", need MODIFY_AUDIO_ROUTING"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8857
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8859
    return-object v12

    .line 8862
    :cond_45
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerAudioPolicy for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8863
    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " with config:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p1

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AudioService"

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 8862
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 8864
    iget-object v14, v8, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v14

    .line 8866
    :try_start_78
    iget-object v0, v8, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 8867
    const-string v0, "AudioService"

    const-string v1, "Cannot re-register policy"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_8b} :catch_b9
    .catchall {:try_start_78 .. :try_end_8b} :catchall_b5

    .line 8868
    :try_start_8b
    monitor-exit v14
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_b5

    return-object v12

    .line 8870
    :cond_8d
    :try_start_8d
    new-instance v0, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-object v1, v0

    move-object v2, v8

    move-object v3, v13

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZ)V

    .line 8872
    .local v0, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, v0, v10}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 8873
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->getRegistrationId()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .line 8874
    iget-object v1, v8, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p2 .. p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_b2} :catch_b9
    .catchall {:try_start_8d .. :try_end_b2} :catchall_b5

    .line 8880
    .end local v0    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    nop

    .line 8881
    :try_start_b3
    monitor-exit v14

    .line 8882
    return-object v9

    .line 8881
    :catchall_b5
    move-exception v0

    move-object/from16 v3, p2

    goto :goto_d9

    .line 8875
    :catch_b9
    move-exception v0

    .line 8877
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio policy registration failed, could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c6
    .catchall {:try_start_b3 .. :try_end_c6} :catchall_b5

    move-object/from16 v3, p2

    :try_start_c8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " binder death"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8879
    monitor-exit v14

    return-object v12

    .line 8881
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_d9
    monitor-exit v14
    :try_end_da
    .catchall {:try_start_c8 .. :try_end_da} :catchall_db

    throw v0

    :catchall_db
    move-exception v0

    goto :goto_d9
.end method

.method public registerAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V
    .registers 6
    .param p1, "asd"    # Landroid/media/IAudioServerStateDispatcher;

    .line 9326
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMonitorAudioServerStatePermission()V

    .line 9327
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 9328
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 9329
    const-string v1, "AudioService"

    const-string v2, "Cannot re-register audio server state dispatcher"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9330
    monitor-exit v0

    return-void

    .line 9332
    :cond_1b
    new-instance v1, Lcom/android/server/audio/AudioService$AsdProxy;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioService$AsdProxy;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/IAudioServerStateDispatcher;)V
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_35

    .line 9334
    .local v1, "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    :try_start_20
    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_28} :catch_29
    .catchall {:try_start_20 .. :try_end_28} :catchall_35

    .line 9337
    goto :goto_2a

    .line 9335
    :catch_29
    move-exception v2

    .line 9338
    :goto_2a
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9339
    .end local v1    # "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    monitor-exit v0

    .line 9340
    return-void

    .line 9339
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_35

    throw v1
.end method

.method public registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    .registers 4
    .param p1, "pcdb"    # Landroid/media/IPlaybackConfigDispatcher;

    .line 9090
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 9091
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 9093
    .local v0, "isPrivileged":Z
    :goto_d
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/PlaybackActivityMonitor;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;Z)V

    .line 9094
    return-void
.end method

.method public registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .registers 4
    .param p1, "rcdb"    # Landroid/media/IRecordingConfigDispatcher;

    .line 9051
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_AUDIO_ROUTING"

    .line 9052
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 9054
    .local v0, "isPrivileged":Z
    :goto_d
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;Z)V

    .line 9055
    return-void
.end method

.method public releasePlayer(I)V
    .registers 7
    .param p1, "piid"    # I

    .line 9134
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/audio/PlaybackActivityMonitor;->releasePlayer(II)V

    .line 9135
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v1

    .line 9138
    .local v1, "device":I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "releasePlayer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 9139
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/AudioMonitor;

    if-eqz v2, :cond_2f

    .line 9140
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/AudioMonitor;

    const/4 v3, 0x4

    invoke-virtual {v2, p1, v0, v3, v1}, Lcom/android/server/audio/AudioMonitor;->playerEvent(IIII)V

    .line 9143
    :cond_2f
    return-void
.end method

.method public reloadAudioSettings()V
    .registers 2

    .line 3648
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->readAudioSettings(Z)V

    .line 3649
    return-void
.end method

.method public removeMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I
    .registers 6
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8945
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    if-eqz v0, :cond_27

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeMixForPolicy for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with config:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8947
    :cond_27
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8948
    :try_start_2a
    const-string v1, "Cannot add AudioMix in audio policy"

    .line 8949
    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    .line 8950
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-nez v1, :cond_35

    .line 8951
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 8953
    :cond_35
    invoke-virtual {p1}, Landroid/media/audiopolicy/AudioPolicyConfig;->getMixes()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->removeMixes(Ljava/util/ArrayList;)V

    .line 8954
    .end local v1    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    monitor-exit v0

    .line 8955
    const/4 v0, 0x0

    return v0

    .line 8954
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_2a .. :try_end_41} :catchall_3f

    throw v1
.end method

.method public requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I
    .registers 25
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "durationHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "flags"    # I
    .param p8, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p9, "sdk"    # I

    move-object v1, p0

    .line 7986
    and-int/lit8 v0, p7, 0x4

    const/4 v2, 0x4

    if-ne v0, v2, :cond_45

    .line 7987
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    move-object/from16 v12, p5

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    .line 7988
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_47

    .line 7990
    const-string v0, "AudioService"

    const-string v3, "Invalid permission to (un)lock audio focus"

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7991
    return v2

    .line 7995
    :cond_28
    iget-object v3, v1, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v3

    .line 7996
    :try_start_2b
    iget-object v0, v1, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface/range {p8 .. p8}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 7997
    const-string v0, "AudioService"

    const-string v4, "Invalid unregistered AudioPolicy to (un)lock audio focus"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7998
    monitor-exit v3

    return v2

    .line 8000
    :cond_40
    monitor-exit v3

    goto :goto_47

    :catchall_42
    move-exception v0

    monitor-exit v3
    :try_end_44
    .catchall {:try_start_2b .. :try_end_44} :catchall_42

    throw v0

    .line 8004
    :cond_45
    move-object/from16 v12, p5

    :cond_47
    :goto_47
    iget-object v2, v1, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    .line 8006
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move-object/from16 v13, p1

    move/from16 v14, p2

    invoke-direct {v1, v13, v14, v0}, Lcom/android/server/audio/AudioService;->forceFocusDuckingForAccessibility(Landroid/media/AudioAttributes;II)Z

    move-result v11

    .line 8004
    move-object v3, v13

    move v4, v14

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v7, v12

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p9

    invoke-virtual/range {v2 .. v11}, Lcom/android/server/audio/MediaFocusControl;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;IIZ)I

    move-result v0

    return v0
.end method

.method protected sendVolumeUpdate(IIII)V
    .registers 6
    .param p1, "streamType"    # I
    .param p2, "oldIndex"    # I
    .param p3, "index"    # I
    .param p4, "flags"    # I

    .line 2519
    sget-object v0, Lcom/android/server/audio/AudioService;->mStreamVolumeAlias:[I

    aget p1, v0, p1

    .line 2521
    const/4 v0, 0x3

    if-ne p1, v0, :cond_b

    .line 2522
    invoke-direct {p0, p4}, Lcom/android/server/audio/AudioService;->updateFlagsForSystemAudio(I)I

    move-result p4

    .line 2524
    :cond_b
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1, p4}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V

    .line 2525
    return-void
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;II)I
    .registers 10
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I

    .line 5462
    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)I

    move-result v0

    return v0
.end method

.method public setBluetoothA2dpDeviceConnectionStateInt(Landroid/bluetooth/BluetoothDevice;IIZII)I
    .registers 23
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I
    .param p4, "suppressNoisyIntent"    # Z
    .param p5, "musicDevice"    # I
    .param p6, "a2dpVolume"    # I

    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    .line 5481
    const/4 v0, 0x2

    if-eq v10, v0, :cond_28

    const/16 v1, 0xb

    if-ne v10, v1, :cond_10

    goto :goto_28

    .line 5482
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5484
    :cond_28
    :goto_28
    iget-object v12, v8, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v12

    .line 5485
    const/4 v1, 0x0

    if-ne v10, v0, :cond_3e

    if-nez v11, :cond_3e

    .line 5486
    if-ne v9, v0, :cond_34

    const/4 v1, 0x1

    nop

    .line 5487
    .local v1, "intState":I
    :cond_34
    const/16 v2, 0x80

    move/from16 v13, p5

    :try_start_38
    invoke-direct {v8, v2, v1, v13}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(III)I

    move-result v2

    .line 5487
    .end local v1    # "intState":I
    move v1, v2

    .line 5489
    .local v1, "delay":I
    goto :goto_40

    .line 5490
    .end local v1    # "delay":I
    :cond_3e
    move/from16 v13, p5

    .line 5490
    .restart local v1    # "delay":I
    :goto_40
    move v14, v1

    .line 5493
    .end local v1    # "delay":I
    .local v14, "delay":I
    sget-boolean v1, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z

    if-eqz v1, :cond_77

    .line 5494
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBluetoothA2dpDeviceConnectionStateInt device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_52
    .catchall {:try_start_38 .. :try_end_52} :catchall_90

    move-object/from16 v15, p1

    :try_start_54
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " delay(ms): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " suppressNoisyIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 5499
    :cond_77
    move-object/from16 v15, p1

    :goto_79
    iget-object v2, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    .line 5500
    if-ne v10, v0, :cond_81

    .line 5501
    const/16 v0, 0x66

    .line 5499
    :goto_7f
    move v3, v0

    goto :goto_84

    .line 5501
    :cond_81
    const/16 v0, 0x65

    goto :goto_7f

    .line 5499
    :goto_84
    move-object v1, v8

    move v4, v9

    move/from16 v5, p6

    move-object v6, v15

    move v7, v14

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 5506
    monitor-exit v12

    move v0, v14

    .line 5507
    .end local v14    # "delay":I
    .local v0, "delay":I
    return v0

    .line 5506
    .end local v0    # "delay":I
    :catchall_90
    move-exception v0

    move-object/from16 v15, p1

    :goto_93
    monitor-exit v12
    :try_end_94
    .catchall {:try_start_54 .. :try_end_94} :catchall_95

    throw v0

    :catchall_95
    move-exception v0

    goto :goto_93
.end method

.method public setBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)I
    .registers 14
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I
    .param p4, "suppressNoisyIntent"    # Z
    .param p5, "a2dpVolume"    # I

    .line 5469
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1}, Lcom/android/server/audio/AudioService$AudioHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5470
    const/4 v0, 0x0

    return v0

    .line 5472
    :cond_c
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->setBluetoothA2dpDeviceConnectionStateInt(Landroid/bluetooth/BluetoothDevice;IIZII)I

    move-result v0

    return v0
.end method

.method public setBluetoothA2dpOn(Z)V
    .registers 11
    .param p1, "on"    # Z

    .line 3900
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBluetoothA2dpOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") from u/pid:"

    .line 3901
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3902
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3904
    .local v0, "eventSource":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3905
    :try_start_2a
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-ne v2, p1, :cond_30

    .line 3906
    monitor-exit v1

    return-void

    .line 3908
    :cond_30
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    .line 3909
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0xd

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 3911
    iget-boolean v6, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v6, :cond_3e

    const/4 v6, 0x0

    goto :goto_40

    :cond_3e
    const/16 v6, 0xa

    :goto_40
    const/4 v8, 0x0

    .line 3909
    move-object v7, v0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3913
    monitor-exit v1

    .line 3914
    return-void

    .line 3913
    :catchall_47
    move-exception v2

    monitor-exit v1
    :try_end_49
    .catchall {:try_start_2a .. :try_end_49} :catchall_47

    throw v2
.end method

.method public setBluetoothA2dpOnInt(ZLjava/lang/String;)V
    .registers 6
    .param p1, "on"    # Z
    .param p2, "eventSource"    # Ljava/lang/String;

    .line 8102
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v0

    .line 8103
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    .line 8104
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService$AudioHandler;->removeMessages(I)V

    .line 8105
    const/4 v1, 0x1

    .line 8106
    iget-boolean v2, p0, Lcom/android/server/audio/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v2, :cond_13

    const/4 v2, 0x0

    goto :goto_15

    :cond_13
    const/16 v2, 0xa

    .line 8105
    :goto_15
    invoke-direct {p0, v1, v2, p2}, Lcom/android/server/audio/AudioService;->setForceUseInt_SyncDevices(IILjava/lang/String;)V

    .line 8108
    monitor-exit v0

    .line 8109
    return-void

    .line 8108
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public setBluetoothCtsScoOn(Z)V
    .registers 13
    .param p1, "on"    # Z

    .line 3800
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3801
    return-void

    .line 3805
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x2710

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-lt v0, v1, :cond_20

    .line 3806
    if-eqz p1, :cond_19

    .line 3807
    iput v3, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    goto :goto_1f

    .line 3808
    :cond_19
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    if-ne v0, v3, :cond_1f

    .line 3809
    iput v2, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    .line 3810
    :cond_1f
    :goto_1f
    return-void

    .line 3814
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBluetoothScoOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") from u/pid:"

    .line 3815
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3816
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3817
    .local v0, "eventSource":Ljava/lang/String;
    if-eqz p1, :cond_4c

    .line 3818
    iput v3, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    goto :goto_52

    .line 3819
    :cond_4c
    iget v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    if-ne v1, v3, :cond_52

    .line 3820
    iput v2, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    .line 3822
    :cond_52
    :goto_52
    iget v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    iput v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    .line 3823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BT_SCO="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_66

    const-string/jumbo v2, "on"

    goto :goto_69

    :cond_66
    const-string/jumbo v2, "off"

    :goto_69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3824
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v5, 0x8

    const/4 v6, 0x2

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v10, 0x0

    move-object v9, v0

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3826
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v7, 0x2

    iget v8, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    invoke-static/range {v4 .. v10}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3828
    return-void
.end method

.method public setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)I
    .registers 14
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "suppressNoisyIntent"    # Z
    .param p4, "musicDevice"    # I

    .line 5442
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5443
    const/4 v1, 0x0

    if-nez p3, :cond_13

    .line 5444
    const/4 v2, 0x2

    if-ne p2, v2, :cond_b

    const/4 v1, 0x1

    nop

    .line 5445
    .local v1, "intState":I
    :cond_b
    const/high16 v2, 0x8000000

    :try_start_d
    invoke-direct {p0, v2, v1, p4}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(III)I

    move-result v2

    .end local v1    # "intState":I
    move v1, v2

    .line 5447
    .local v1, "delay":I
    goto :goto_14

    .line 5448
    .end local v1    # "delay":I
    :cond_13
    nop

    .line 5450
    .restart local v1    # "delay":I
    :goto_14
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x69

    const/4 v6, 0x0

    move-object v2, p0

    move v5, p2

    move-object v7, p1

    move v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 5456
    monitor-exit v0

    .line 5457
    return v1

    .line 5456
    .end local v1    # "delay":I
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_22

    throw v1
.end method

.method public setBluetoothScoOn(Z)V
    .registers 10
    .param p1, "on"    # Z

    .line 3762
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3763
    return-void

    .line 3766
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x2710

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-lt v0, v1, :cond_5f

    .line 3767
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In setBluetoothScoOn(), on: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ". The calling application Uid: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3768
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", is greater than FIRST_APPLICATION_UID exiting from setBluetoothScoOn()"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3767
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3770
    if-eqz p1, :cond_40

    .line 3771
    iput v3, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    goto :goto_46

    .line 3772
    :cond_40
    iget v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    if-ne v0, v3, :cond_46

    .line 3773
    iput v2, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    .line 3774
    :cond_46
    :goto_46
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In setbluetoothScoOn(), mForcedUseForCommExt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3776
    return-void

    .line 3780
    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setBluetoothScoOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") from u/pid:"

    .line 3781
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3782
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3783
    .local v0, "eventSource":Ljava/lang/String;
    const-string v1, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In setBluetoothScoOn(), eventSource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3784
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->setBluetoothScoOnInt(ZLjava/lang/String;)V

    .line 3787
    const/4 v1, 0x3

    .line 3788
    .local v1, "streamType":I
    const/16 v4, 0x20

    .line 3789
    .local v4, "device":I
    if-nez p1, :cond_b5

    iget v5, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    iget-object v6, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v6, v6, v3

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    if-eq v5, v6, :cond_b5

    .line 3790
    invoke-virtual {p0, v3, v2, v2, v7}, Lcom/android/server/audio/AudioService;->threeKeySetStreamVolume(IIII)V

    .line 3793
    :cond_b5
    return-void
.end method

.method public setBluetoothScoOnInt(ZLjava/lang/String;)V
    .registers 13
    .param p1, "on"    # Z
    .param p2, "eventSource"    # Ljava/lang/String;

    .line 3859
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothScoOnInt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3860
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eqz p1, :cond_65

    .line 3862
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3863
    :try_start_26
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v4, :cond_5e

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v5, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    .line 3864
    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_5e

    .line 3866
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->isBluetoothAudioNotConnectedToEarbud()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 3867
    iput v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    .line 3868
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBluetoothScoOnInt(true) failed because "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not in audio connected mode"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3870
    monitor-exit v3

    return-void

    .line 3873
    :cond_5e
    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_26 .. :try_end_5f} :catchall_62

    .line 3874
    iput v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    goto :goto_6b

    .line 3873
    :catchall_62
    move-exception v0

    :try_start_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    throw v0

    .line 3875
    :cond_65
    iget v3, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    if-ne v3, v1, :cond_6b

    .line 3876
    iput v0, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    .line 3878
    :cond_6b
    :goto_6b
    iget v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    iput v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    .line 3879
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In setbluetoothScoOnInt(), mForcedUseForCommExt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BT_SCO="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_97

    const-string/jumbo v3, "on"

    goto :goto_9a

    :cond_97
    const-string/jumbo v3, "off"

    :goto_9a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3882
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v9, 0x0

    move-object v8, p2

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3884
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/4 v6, 0x2

    iget v7, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    invoke-static/range {v3 .. v9}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3887
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/audio/AudioService;->setRingerModeInt(IZ)V

    .line 3888
    return-void
.end method

.method public setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .registers 10
    .param p1, "duckingBehavior"    # I
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8959
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_AP:Z

    if-eqz v0, :cond_27

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFocusPropertiesForPolicy() duck behavior="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " policy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8960
    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8959
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8961
    :cond_27
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8962
    :try_start_2a
    const-string v1, "Cannot change audio policy focus properties"

    .line 8963
    invoke-direct {p0, p2, v1}, Lcom/android/server/audio/AudioService;->checkUpdateForPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Ljava/lang/String;)Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    move-result-object v1

    .line 8964
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    const/4 v2, -0x1

    if-nez v1, :cond_35

    .line 8965
    monitor-exit v0

    return v2

    .line 8967
    :cond_35
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    .line 8968
    const-string v3, "AudioService"

    const-string v4, "Cannot change audio policy focus properties, unregistered policy"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8969
    monitor-exit v0

    return v2

    .line 8971
    :cond_4a
    const/4 v3, 0x1

    if-ne p1, v3, :cond_71

    .line 8973
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_57
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 8974
    .local v5, "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    iget v6, v5, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    if-ne v6, v3, :cond_70

    .line 8975
    const-string v3, "AudioService"

    const-string v4, "Cannot change audio policy ducking behavior, already handled"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8976
    monitor-exit v0

    return v2

    .line 8978
    .end local v5    # "policy":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    :cond_70
    goto :goto_57

    .line 8980
    :cond_71
    iput p1, v1, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->mFocusDuckBehavior:I

    .line 8981
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    const/4 v4, 0x0

    if-ne p1, v3, :cond_79

    goto :goto_7a

    :cond_79
    move v3, v4

    :goto_7a
    invoke-virtual {v2, v3}, Lcom/android/server/audio/MediaFocusControl;->setDuckingInExtPolicyAvailable(Z)V

    .line 8983
    .end local v1    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    monitor-exit v0

    .line 8984
    return v4

    .line 8983
    :catchall_7f
    move-exception v1

    monitor-exit v0
    :try_end_81
    .catchall {:try_start_2a .. :try_end_81} :catchall_7f

    throw v1
.end method

.method public setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 7
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I
    .param p3, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 9275
    if-eqz p1, :cond_2d

    .line 9278
    if-eqz p3, :cond_25

    .line 9281
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 9282
    :try_start_7
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 9285
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/audio/MediaFocusControl;->setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;I)V

    .line 9286
    monitor-exit v0

    .line 9287
    return-void

    .line 9283
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unregistered AudioPolicy for external focus"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9286
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw v1

    .line 9279
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioPolicy callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9276
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal null AudioFocusInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHdmiSystemAudioSupported(Z)I
    .registers 10
    .param p1, "on"    # Z

    .line 8314
    const/4 v0, 0x0

    .line 8315
    .local v0, "device":I
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    if-eqz v1, :cond_44

    .line 8316
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mHdmiManager:Landroid/hardware/hdmi/HdmiControlManager;

    monitor-enter v1

    .line 8317
    :try_start_8
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    if-nez v2, :cond_15

    .line 8318
    const-string v2, "AudioService"

    const-string v3, "Only Hdmi-Cec enabled TV device supports system audio mode."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8319
    monitor-exit v1

    return v0

    .line 8322
    :cond_15
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mHdmiTvClient:Landroid/hardware/hdmi/HdmiTvClient;

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_41

    .line 8323
    :try_start_18
    iget-boolean v3, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    if-eq v3, p1, :cond_35

    .line 8324
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService;->mHdmiSystemAudioSupported:Z

    .line 8325
    if-eqz p1, :cond_23

    const/16 v3, 0xc

    goto :goto_24

    .line 8326
    :cond_23
    const/4 v3, 0x0

    .line 8327
    .local v3, "config":I
    :goto_24
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mForceUseLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;

    const-string/jumbo v6, "setHdmiSystemAudioSupported"

    const/4 v7, 0x5

    invoke-direct {v5, v7, v3, v6}, Lcom/android/server/audio/AudioServiceEvents$ForceUseEvent;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 8329
    invoke-static {v7, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 8331
    .end local v3    # "config":I
    :cond_35
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/server/audio/AudioService;->getDevicesForStream(I)I

    move-result v3

    move v0, v3

    .line 8332
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_18 .. :try_end_3c} :catchall_3e

    .line 8333
    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_41

    goto :goto_44

    .line 8332
    :catchall_3e
    move-exception v3

    :try_start_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    :try_start_40
    throw v3

    .line 8333
    :catchall_41
    move-exception v2

    monitor-exit v1
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_41

    throw v2

    .line 8335
    :cond_44
    :goto_44
    return v0
.end method

.method public setHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .line 5431
    const-string v0, "AudioService"

    const-string/jumbo v1, "setBluetoothHearingAidDeviceConnectionState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5433
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/audio/AudioService;->setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)I

    .line 5435
    return-void
.end method

.method public setMasterMute(ZILjava/lang/String;I)V
    .registers 11
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 2761
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioService;->setMasterMuteInternal(ZILjava/lang/String;II)V

    .line 2763
    return-void
.end method

.method public setMicrophoneMute(ZLjava/lang/String;I)V
    .registers 11
    .param p1, "on"    # Z
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 2828
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PPD audioservice setMicrophoneMute Mute = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2829
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 2830
    .local v0, "stm":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_20
    if-ge v2, v1, :cond_3d

    aget-object v3, v0, v2

    .line 2831
    .local v3, "elem":Ljava/lang/StackTraceElement;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Elem: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    .end local v3    # "elem":Ljava/lang/StackTraceElement;
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 2836
    :cond_3d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2837
    .local v1, "uid":I
    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_4d

    .line 2838
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {p3, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 2841
    :cond_4d
    if-nez p1, :cond_5a

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3, v1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5a

    .line 2843
    return-void

    .line 2845
    :cond_5a
    const-string/jumbo v2, "setMicrophoneMute()"

    invoke-virtual {p0, v2}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 2846
    return-void

    .line 2848
    :cond_64
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-eq p3, v2, :cond_75

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 2849
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_75

    .line 2852
    return-void

    .line 2854
    :cond_75
    invoke-direct {p0, p1, p3}, Lcom/android/server/audio/AudioService;->setMicrophoneMuteNoCallerCheck(ZI)V

    .line 2855
    return-void
.end method

.method public setMode(ILandroid/os/IBinder;Ljava/lang/String;)V
    .registers 10
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 3245
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMode(mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callingPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Process ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3246
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3245
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3247
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_MODE:Z

    if-eqz v0, :cond_53

    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMode(mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3248
    :cond_53
    const-string/jumbo v0, "setMode()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 3249
    return-void

    .line 3252
    :cond_5d
    const/4 v0, 0x2

    if-ne p1, v0, :cond_91

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    .line 3253
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_91

    .line 3256
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MODIFY_PHONE_STATE Permission Denial: setMode(MODE_IN_CALL) from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3257
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3256
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    return-void

    .line 3261
    :cond_91
    const/4 v0, -0x1

    if-lt p1, v0, :cond_d4

    const/4 v1, 0x4

    if-lt p1, v1, :cond_98

    goto :goto_d4

    .line 3265
    :cond_98
    const/4 v1, 0x0

    .line 3266
    .local v1, "oldModeOwnerPid":I
    const/4 v2, 0x0

    .line 3267
    .local v2, "newModeOwnerPid":I
    iget-object v3, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v3

    .line 3268
    :try_start_9d
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b3

    .line 3269
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    invoke-virtual {v4}, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->getPid()I

    move-result v4

    move v1, v4

    .line 3271
    :cond_b3
    if-ne p1, v0, :cond_b8

    .line 3272
    iget v0, p0, Lcom/android/server/audio/AudioService;->mMode:I

    move p1, v0

    .line 3274
    :cond_b8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v0

    move v2, v0

    .line 3275
    monitor-exit v3
    :try_end_c2
    .catchall {:try_start_9d .. :try_end_c2} :catchall_d1

    .line 3278
    if-eq v2, v1, :cond_d0

    if-eqz v2, :cond_d0

    .line 3279
    const-string v0, "AudioService"

    const-string v3, "In setMode(), calling disconnectBluetoothSco()"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    invoke-direct {p0, v2}, Lcom/android/server/audio/AudioService;->disconnectBluetoothSco(I)V

    .line 3282
    :cond_d0
    return-void

    .line 3275
    :catchall_d1
    move-exception v0

    :try_start_d2
    monitor-exit v3
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    throw v0

    .line 3262
    .end local v1    # "oldModeOwnerPid":I
    .end local v2    # "newModeOwnerPid":I
    :cond_d4
    :goto_d4
    return-void
.end method

.method public setOnePlusFixedRingerMode(I)V
    .registers 5
    .param p1, "fixed"    # I

    .line 9388
    iput p1, p0, Lcom/android/server/audio/AudioService;->mOnePlusFixedRingerMode:I

    .line 9389
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fixed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9390
    return-void
.end method

.method public setOnePlusRingVolumeRange(II)V
    .registers 6
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 9375
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setOnePlusRingVolumeRange] min volume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " max volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9377
    iput p1, p0, Lcom/android/server/audio/AudioService;->mOnePlusMinRingVolumeIndex:I

    .line 9378
    iput p2, p0, Lcom/android/server/audio/AudioService;->mOnePlusMaxRingVolumeIndex:I

    .line 9379
    return-void
.end method

.method public setRingerModeExternal(ILjava/lang/String;)V
    .registers 5
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 2907
    invoke-direct {p0, p2}, Lcom/android/server/audio/AudioService;->isAndroidNPlus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->wouldToggleZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mNm:Landroid/app/NotificationManager;

    .line 2908
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_1d

    .line 2909
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not allowed to change Do Not Disturb state"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2912
    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 2913
    return-void
.end method

.method public setRingerModeInternal(ILjava/lang/String;)V
    .registers 4
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .line 2916
    const-string/jumbo v0, "setRingerModeInternal"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 2917
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/AudioService;->setRingerMode(ILjava/lang/String;Z)V

    .line 2918
    return-void
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .registers 5
    .param p1, "player"    # Landroid/media/IRingtonePlayer;

    .line 8123
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 8124
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    .line 8125
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .registers 11
    .param p1, "on"    # Z

    .line 3726
    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3727
    return-void

    .line 3730
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSpeakerphoneOn("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ") from u/pid:"

    .line 3731
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3732
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3733
    .local v0, "eventSource":Ljava/lang/String;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In setSpeakerphoneOn(), on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", eventSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    const/4 v1, 0x1

    if-eqz p1, :cond_66

    .line 3736
    iget v2, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_63

    .line 3737
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, v0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3741
    :cond_63
    iput v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    goto :goto_6d

    .line 3742
    :cond_66
    iget v2, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    if-ne v2, v1, :cond_6d

    .line 3743
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    .line 3746
    :cond_6d
    :goto_6d
    iget v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    iput v1, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    .line 3747
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In setSpeakerphoneOn(), mForcedUseForCommExt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioService;->mForcedUseForCommExt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/audio/AudioService;->mForcedUseForComm:I

    const/4 v8, 0x0

    move-object v7, v0

    invoke-static/range {v2 .. v8}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3751
    return-void
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .registers 16
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    move-object v7, p0

    move v8, p1

    .line 2193
    move-object v9, p4

    const/16 v0, 0xa

    if-ne v8, v0, :cond_24

    invoke-direct {v7}, Lcom/android/server/audio/AudioService;->canChangeAccessibilityVolume()Z

    move-result v0

    if-nez v0, :cond_24

    .line 2194
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to call setStreamVolume() for a11y without CHANGE_ACCESSIBILITY_VOLUME  callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    return-void

    .line 2198
    :cond_24
    if-nez v8, :cond_49

    if-nez p2, :cond_49

    iget-object v0, v7, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    .line 2200
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_49

    .line 2203
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to call setStreamVolume() for STREAM_VOICE_CALL and index 0 without MODIFY_PHONE_STATE  callingPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    return-void

    .line 2207
    :cond_49
    iget-object v6, v7, Lcom/android/server/audio/AudioService;->mVolumeLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v10, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;

    const/4 v1, 0x2

    move-object v0, v10

    move v2, v8

    move v3, p2

    move v4, p3

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/AudioServiceEvents$VolumeEvent;-><init>(IIIILjava/lang/String;)V

    invoke-virtual {v6, v10}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 2209
    nop

    .line 2210
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2209
    move-object v0, v7

    move v1, v8

    move v2, p2

    move v3, p3

    move-object v4, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolume(IIILjava/lang/String;Ljava/lang/String;I)V

    .line 2211
    return-void
.end method

.method public setVibrateSetting(II)V
    .registers 4
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .line 3181
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_5

    return-void

    .line 3183
    :cond_5
    iget v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioSystem;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mVibrateSetting:I

    .line 3187
    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService;->broadcastVibrateSetting(I)V

    .line 3189
    return-void
.end method

.method public setVolumeController(Landroid/media/IVolumeController;)V
    .registers 5
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .line 8577
    const-string/jumbo v0, "set the volume controller"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 8580
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 8581
    return-void

    .line 8585
    :cond_f
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$VolumeController;->postDismiss()V

    .line 8586
    if-eqz p1, :cond_25

    .line 8589
    :try_start_16
    invoke-interface {p1}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    new-instance v1, Lcom/android/server/audio/AudioService$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/AudioService$4;-><init>(Lcom/android/server/audio/AudioService;Landroid/media/IVolumeController;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_23} :catch_24

    .line 8600
    goto :goto_25

    .line 8598
    :catch_24
    move-exception v0

    .line 8602
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V

    .line 8603
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumeController:Lcom/android/server/audio/AudioService$VolumeController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8604
    return-void
.end method

.method public setVolumePolicy(Landroid/media/VolumePolicy;)V
    .registers 5
    .param p1, "policy"    # Landroid/media/VolumePolicy;

    .line 8621
    const-string/jumbo v0, "set volume policy"

    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->enforceVolumeController(Ljava/lang/String;)V

    .line 8622
    if-eqz p1, :cond_2a

    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {p1, v0}, Landroid/media/VolumePolicy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 8623
    iput-object p1, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 8624
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume policy changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mVolumePolicy:Landroid/media/VolumePolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8626
    :cond_2a
    return-void
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 25
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "caller"    # Ljava/lang/String;

    move-object/from16 v8, p0

    move/from16 v9, p2

    move-object/from16 v10, p4

    .line 5394
    iget-object v11, v8, Lcom/android/server/audio/AudioService;->mConnectedDevices:Landroid/util/ArrayMap;

    monitor-enter v11

    .line 5395
    :try_start_9
    sget-boolean v0, Lcom/android/server/audio/AudioService;->DEBUG_DEVICES:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_a0

    if-eqz v0, :cond_43

    .line 5396
    :try_start_d
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWiredDeviceConnectionState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " nm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " addr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_3c

    move-object/from16 v12, p3

    :try_start_2c
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 5425
    :catchall_3c
    move-exception v0

    move-object/from16 v12, p3

    :goto_3f
    move/from16 v13, p1

    goto/16 :goto_a5

    .line 5405
    :cond_43
    move-object/from16 v12, p3

    :goto_45
    const/4 v0, 0x0

    .line 5406
    .local v0, "delay":I
    const-string/jumbo v1, "not broadcast"

    invoke-virtual {v10, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_70

    .line 5407
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWiredDeviceConnectionState name:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5410
    iget v1, v8, Lcom/android/server/audio/AudioService;->mPreDelay:I

    move v0, v1

    .line 5411
    iput v3, v8, Lcom/android/server/audio/AudioService;->mPreDelay:I
    :try_end_6d
    .catchall {:try_start_2c .. :try_end_6d} :catchall_9e

    .line 5419
    move/from16 v13, p1

    goto :goto_79

    .line 5413
    :cond_70
    move/from16 v13, p1

    :try_start_72
    invoke-direct {v8, v13, v9, v3}, Lcom/android/server/audio/AudioService;->checkSendBecomingNoisyIntent(III)I

    move-result v1

    move v0, v1

    .line 5416
    iput v0, v8, Lcom/android/server/audio/AudioService;->mPreDelay:I

    .line 5419
    :goto_79
    iget-object v14, v8, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v15, 0x64

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-instance v18, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;

    move-object/from16 v1, v18

    move-object v2, v8

    move v3, v13

    move v4, v9

    move-object v5, v12

    move-object v6, v10

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService$WiredDeviceConnectionState;-><init>(Lcom/android/server/audio/AudioService;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v8

    move-object v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    move v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/audio/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 5425
    .end local v0    # "delay":I
    monitor-exit v11

    .line 5426
    return-void

    .line 5425
    :catchall_9e
    move-exception v0

    goto :goto_3f

    :catchall_a0
    move-exception v0

    move/from16 v13, p1

    move-object/from16 v12, p3

    :goto_a5
    monitor-exit v11
    :try_end_a6
    .catchall {:try_start_72 .. :try_end_a6} :catchall_a7

    throw v0

    :catchall_a7
    move-exception v0

    goto :goto_a5
.end method

.method public shouldVibrate(I)Z
    .registers 5
    .param p1, "vibrateType"    # I

    .line 3153
    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mHasVibrator:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 3155
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getVibrateSetting(I)I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_22

    .line 3168
    return v1

    .line 3161
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    if-ne v0, v2, :cond_17

    move v1, v2

    nop

    :cond_17
    return v1

    .line 3158
    :pswitch_18
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRingerModeExternal()I

    move-result v0

    if-eqz v0, :cond_20

    move v1, v2

    nop

    :cond_20
    return v1

    .line 3165
    :pswitch_21
    return v1

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_21
        :pswitch_18
        :pswitch_f
    .end packed-switch
.end method

.method public silenceRingerModeInternal(Ljava/lang/String;)V
    .registers 10
    .param p1, "reason"    # Ljava/lang/String;

    .line 2921
    const/4 v0, 0x0

    .line 2922
    .local v0, "effect":Landroid/os/VibrationEffect;
    const/4 v1, 0x0

    .line 2923
    .local v1, "ringerMode":I
    const/4 v2, 0x0

    .line 2925
    .local v2, "toastText":I
    const/4 v3, 0x0

    .line 2926
    .local v3, "silenceRingerSetting":I
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2927
    const v5, 0x11200d2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1e

    .line 2928
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "volume_hush_gesture"

    const/4 v7, -0x2

    invoke-static {v4, v6, v5, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    .line 2933
    :cond_1e
    packed-switch v3, :pswitch_data_46

    goto :goto_35

    .line 2935
    :pswitch_22
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 2936
    const/4 v1, 0x0

    .line 2937
    const v2, 0x10406be

    .line 2938
    goto :goto_35

    .line 2940
    :pswitch_2c
    const/4 v4, 0x5

    invoke-static {v4}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    .line 2941
    const/4 v1, 0x1

    .line 2942
    const v2, 0x10406bf

    .line 2945
    :goto_35
    invoke-direct {p0, v0}, Lcom/android/server/audio/AudioService;->maybeVibrate(Landroid/os/VibrationEffect;)Z

    .line 2946
    invoke-virtual {p0, v1, p1}, Lcom/android/server/audio/AudioService;->setRingerModeInternal(ILjava/lang/String;)V

    .line 2947
    iget-object v4, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2948
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_22
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;I)V
    .registers 5
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "targetSdkVersion"    # I

    .line 3997
    const-string v0, "AudioService"

    const-string v1, "In startBluetoothSco()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3999
    const/16 v0, 0x12

    if-ge p2, v0, :cond_d

    .line 4000
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    .line 4001
    .local v0, "scoAudioMode":I
    :goto_e
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    .line 4002
    return-void
.end method

.method startBluetoothScoInt(Landroid/os/IBinder;I)V
    .registers 6
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "scoAudioMode"    # I

    .line 4011
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In startBluetoothScoInt(), scoAudioMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4012
    const-string/jumbo v0, "startBluetoothSco()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v0, :cond_24

    goto :goto_34

    .line 4016
    :cond_24
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;

    move-result-object v0

    .line 4022
    .local v0, "client":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4023
    .local v1, "ident":J
    invoke-virtual {v0, p2}, Lcom/android/server/audio/AudioService$ScoClient;->incCount(I)V

    .line 4024
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4025
    return-void

    .line 4014
    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .end local v1    # "ident":J
    :cond_34
    :goto_34
    return-void
.end method

.method public startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "cb"    # Landroid/os/IBinder;

    .line 4006
    const-string v0, "AudioService"

    const-string v1, "In startBluetoothScoVirtualCall()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4007
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->startBluetoothScoInt(Landroid/os/IBinder;I)V

    .line 4008
    return-void
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .registers 5
    .param p1, "observer"    # Landroid/media/IAudioRoutesObserver;

    .line 8134
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v0

    .line 8135
    :try_start_3
    new-instance v1, Landroid/media/AudioRoutesInfo;

    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v1, v2}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 8136
    .local v1, "routes":Landroid/media/AudioRoutesInfo;
    iget-object v2, p0, Lcom/android/server/audio/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 8137
    monitor-exit v0

    return-object v1

    .line 8138
    .end local v1    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "cb"    # Landroid/os/IBinder;

    .line 4029
    const-string v0, "AudioService"

    const-string v1, "In stopBluetoothSco()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4030
    const-string/jumbo v0, "stopBluetoothSco()"

    invoke-virtual {p0, v0}, Lcom/android/server/audio/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/android/server/audio/AudioService;->mSystemReady:Z

    if-nez v0, :cond_15

    goto :goto_27

    .line 4034
    :cond_15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/audio/AudioService;->getScoClient(Landroid/os/IBinder;Z)Lcom/android/server/audio/AudioService$ScoClient;

    move-result-object v0

    .line 4038
    .local v0, "client":Lcom/android/server/audio/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 4039
    .local v1, "ident":J
    if-eqz v0, :cond_23

    .line 4040
    invoke-virtual {v0}, Lcom/android/server/audio/AudioService$ScoClient;->decCount()V

    .line 4042
    :cond_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4043
    return-void

    .line 4032
    .end local v0    # "client":Lcom/android/server/audio/AudioService$ScoClient;
    .end local v1    # "ident":J
    :cond_27
    :goto_27
    return-void
.end method

.method public systemReady()V
    .registers 8

    .line 1039
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x15

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1044
    :try_start_c
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/AudioMonitor;

    if-eqz v0, :cond_15

    .line 1045
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioMonitor:Lcom/android/server/audio/AudioMonitor;

    invoke-virtual {v0}, Lcom/android/server/audio/AudioMonitor;->systemReady()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_16

    .line 1049
    :cond_15
    goto :goto_1f

    .line 1047
    :catch_16
    move-exception v0

    .line 1048
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "AudioService"

    const-string/jumbo v2, "mAudioMonitor.systemReady ERROR!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1f
    return-void
.end method

.method public threeKeySetStreamVolume(IIII)V
    .registers 14
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "device"    # I

    .line 2218
    const/4 v0, 0x3

    if-ne p1, v0, :cond_59

    const/4 v1, 0x2

    if-ne p4, v1, :cond_59

    .line 2219
    const/16 v1, -0x64

    const/4 v2, -0x1

    if-ne p3, v1, :cond_2c

    .line 2220
    iget v1, p0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    if-ne v1, v2, :cond_19

    .line 2221
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, p4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    .line 2223
    :cond_19
    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "ThreeKeySpeakerMediaVolume"

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 2225
    const-string v1, "AudioService"

    const-string/jumbo v2, "threeKeySetStreamVolume  set speaker music mute"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 2226
    :cond_2c
    const/16 v1, 0x64

    if-ne p3, v1, :cond_59

    .line 2227
    iget v1, p0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    if-ne v1, v2, :cond_35

    .line 2228
    return-void

    .line 2230
    :cond_35
    const/4 v4, 0x3

    iget v5, p0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v8, "ThreeKeySpeakerMediaVolume"

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 2232
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "threeKeySetStreamVolume  restore speaker music "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/audio/AudioService;->mPerSpeakerMediaVolume:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    :cond_59
    :goto_59
    if-ne p1, v0, :cond_c7

    const/16 v0, 0x20

    if-ne p4, v0, :cond_c7

    .line 2236
    const/16 v0, 0x1e

    if-ne p2, v0, :cond_9c

    .line 2237
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    if-gez v0, :cond_71

    .line 2238
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p4}, Lcom/android/server/audio/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    .line 2240
    :cond_71
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mStreamStates:[Lcom/android/server/audio/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    # getter for: Lcom/android/server/audio/AudioService$VolumeStreamState;->mIndexMax:I
    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeStreamState;->access$700(Lcom/android/server/audio/AudioService$VolumeStreamState;)I

    move-result v3

    const/4 v5, 0x0

    const-string v6, "ThreeKeySpeakerMediaVolume"

    move-object v1, p0

    move v2, p1

    move v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 2241
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "threeKeySetStreamVolume  set sco music volume to max + mPerScoMediaVolume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7

    .line 2242
    :cond_9c
    if-nez p2, :cond_c7

    .line 2243
    iget v0, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    if-gez v0, :cond_a3

    .line 2244
    return-void

    .line 2246
    :cond_a3
    iget v3, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    const/4 v5, 0x0

    const-string v6, "ThreeKeySpeakerMediaVolume"

    move-object v1, p0

    move v2, p1

    move v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/audio/AudioService;->setStreamVolumeInt(IIIZLjava/lang/String;)V

    .line 2247
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "threeKeySetStreamVolume  restore soc  music volume to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mPerScoMediaVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    :cond_c7
    :goto_c7
    return-void
.end method

.method public trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I
    .registers 3
    .param p1, "pic"    # Landroid/media/PlayerBase$PlayerIdCard;

    .line 9108
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I

    move-result v0

    return v0
.end method

.method public unloadSoundEffects()V
    .registers 8

    .line 3588
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioHandler:Lcom/android/server/audio/AudioService$AudioHandler;

    const/16 v1, 0x14

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3589
    return-void
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .registers 3
    .param p1, "clientId"    # Ljava/lang/String;

    .line 8015
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mMediaFocusControl:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/MediaFocusControl;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 8016
    return-void
.end method

.method public unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 7
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 8886
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mDynPolicyLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterAudioPolicyAsync for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8887
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "AudioService"

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v1

    .line 8886
    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 8888
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    monitor-enter v0

    .line 8889
    :try_start_29
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioPolicies:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$AudioPolicyProxy;

    .line 8890
    .local v1, "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    if-nez v1, :cond_5f

    .line 8891
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to unregister unknown audio policy for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8892
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8891
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8893
    monitor-exit v0

    return-void

    .line 8895
    :cond_5f
    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 8897
    invoke-virtual {v1}, Lcom/android/server/audio/AudioService$AudioPolicyProxy;->release()V

    .line 8898
    .end local v1    # "app":Lcom/android/server/audio/AudioService$AudioPolicyProxy;
    monitor-exit v0

    .line 8900
    return-void

    .line 8898
    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_29 .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method public unregisterAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V
    .registers 7
    .param p1, "asd"    # Landroid/media/IAudioServerStateDispatcher;

    .line 9343
    invoke-direct {p0}, Lcom/android/server/audio/AudioService;->checkMonitorAudioServerStatePermission()V

    .line 9344
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    monitor-enter v0

    .line 9345
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/AudioService;->mAudioServerStateListeners:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/AudioService$AsdProxy;

    .line 9346
    .local v1, "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    if-nez v1, :cond_3c

    .line 9347
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to unregister unknown audioserver state dispatcher for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9348
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9347
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9349
    monitor-exit v0

    return-void

    .line 9351
    :cond_3c
    invoke-interface {p1}, Landroid/media/IAudioServerStateDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 9353
    .end local v1    # "asdp":Lcom/android/server/audio/AudioService$AsdProxy;
    monitor-exit v0

    .line 9354
    return-void

    .line 9353
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_6 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    .registers 3
    .param p1, "pcdb"    # Landroid/media/IPlaybackConfigDispatcher;

    .line 9097
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mPlaybackMonitor:Lcom/android/server/audio/PlaybackActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/PlaybackActivityMonitor;->unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V

    .line 9098
    return-void
.end method

.method public unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .registers 3
    .param p1, "rcdb"    # Landroid/media/IRecordingConfigDispatcher;

    .line 9058
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mRecordMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V

    .line 9059
    return-void
.end method

.method public updateCallInfoBroadcastStatus()V
    .registers 5

    .line 3989
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "oem_call_information_broadcast"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mCallInfoBroadcast:I

    .line 3991
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCallInfoBroadcastStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mCallInfoBroadcast:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3992
    return-void
.end method

.method public updateHeadsetNotificationStatus()V
    .registers 6

    .line 3971
    iget-object v0, p0, Lcom/android/server/audio/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "oem_notification_ringtone"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService;->mHeadsetNotication:I

    .line 3973
    iget v0, p0, Lcom/android/server/audio/AudioService;->mHeadsetNotication:I

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-ne v0, v1, :cond_19

    .line 3974
    invoke-static {v4, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_2c

    .line 3976
    :cond_19
    iget v0, p0, Lcom/android/server/audio/AudioService;->mHeadsetNotication:I

    if-ne v0, v3, :cond_29

    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    if-eq v0, v3, :cond_25

    iget v0, p0, Lcom/android/server/audio/AudioService;->mRingerMode:I

    if-nez v0, :cond_29

    .line 3978
    :cond_25
    invoke-static {v4, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_2c

    .line 3981
    :cond_29
    invoke-static {v4, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 3983
    :goto_2c
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateHeadsetNotificationStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/audio/AudioService;->mHeadsetNotication:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Force for notification "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3984
    return-void
.end method
