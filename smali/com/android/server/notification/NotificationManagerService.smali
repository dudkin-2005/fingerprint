.class public Lcom/android/server/notification/NotificationManagerService;
.super Lcom/android/server/SystemService;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationManagerService$ShellCmd;,
        Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;,
        Lcom/android/server/notification/NotificationManagerService$DumpFilter;,
        Lcom/android/server/notification/NotificationManagerService$NotificationListeners;,
        Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;,
        Lcom/android/server/notification/NotificationManagerService$TrimCache;,
        Lcom/android/server/notification/NotificationManagerService$FlagChecker;,
        Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;,
        Lcom/android/server/notification/NotificationManagerService$WorkerHandler;,
        Lcom/android/server/notification/NotificationManagerService$PostNotificationRunnable;,
        Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;,
        Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;,
        Lcom/android/server/notification/NotificationManagerService$SettingsObserver;,
        Lcom/android/server/notification/NotificationManagerService$ToastRecord;,
        Lcom/android/server/notification/NotificationManagerService$Archive;
    }
.end annotation


# static fields
.field private static final ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

.field private static final APPLOCKER_SEPARATOR:Ljava/lang/String; = "|"

.field private static final APP_LOCKER_SWITCH_OFF:I = 0x0

.field private static final APP_LOCKER_SWITCH_ON:I = 0x1

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field static final DBG:Z

.field static final DBG_ONEPLUS:Z

.field private static final DB_VERSION:I = 0x1

.field static final DEBUG_INTERRUPTIVENESS:Z

.field static final DEFAULT_MAX_NOTIFICATION_ENQUEUE_RATE:F = 5.0f

.field static final DEFAULT_STREAM_TYPE:I = 0x5

.field static final DEFAULT_VIBRATE_PATTERN:[J

.field private static final DELAY_FOR_ASSISTANT_TIME:J = 0x64L

.field static final ENABLE_BLOCKED_TOASTS:Z = true

.field public static final ENABLE_CHILD_NOTIFICATIONS:Z

.field private static final EVENTLOG_ENQUEUE_STATUS_IGNORED:I = 0x2

.field private static final EVENTLOG_ENQUEUE_STATUS_NEW:I = 0x0

.field private static final EVENTLOG_ENQUEUE_STATUS_UPDATE:I = 0x1

.field private static final EXTRA_KEY:Ljava/lang/String; = "key"

.field static final FINISH_TOKEN_TIMEOUT:I = 0x2af8

.field static final LONG_DELAY:I = 0xdac

.field static final MATCHES_CALL_FILTER_CONTACTS_TIMEOUT_MS:I = 0xbb8

.field static final MATCHES_CALL_FILTER_TIMEOUT_AFFINITY:F = 1.0f

.field static final MAX_PACKAGE_NOTIFICATIONS:I = 0x32

.field static final MESSAGE_DURATION_REACHED:I = 0x2

.field static final MESSAGE_FINISH_TOKEN_TIMEOUT:I = 0x7

.field static final MESSAGE_LISTENER_HINTS_CHANGED:I = 0x5

.field static final MESSAGE_LISTENER_NOTIFICATION_FILTER_CHANGED:I = 0x6

.field private static final MESSAGE_RANKING_SORT:I = 0x3e9

.field private static final MESSAGE_RECONSIDER_RANKING:I = 0x3e8

.field static final MESSAGE_SAVE_POLICY_FILE:I = 0x3

.field static final MESSAGE_SEND_RANKING_UPDATE:I = 0x4

.field private static final MIN_PACKAGE_OVERRATE_LOG_INTERVAL:J = 0x1388L

.field private static final MY_PID:I

.field private static final MY_UID:I

.field private static final REQUEST_CODE_TIMEOUT:I = 0x1

.field private static final SCHEME_TIMEOUT:Ljava/lang/String; = "timeout"

.field static final SHORT_DELAY:I = 0x7d0

.field static final SNOOZE_UNTIL_UNSPECIFIED:J = -0x1L

.field static final TAG:Ljava/lang/String; = "NotificationService"

.field private static final TAG_NOTIFICATION_POLICY:Ljava/lang/String; = "notification-policy"

.field static final VIBRATE_PATTERN_MAXLEN:I = 0x11

.field private static final WHITELIST_TOKEN:Landroid/os/IBinder;

.field private static mNotificationVibrationController:Lcom/oneplus/notification/NotificationVibrationController;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAllowedManagedServicePackages:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAm:Landroid/app/IActivityManager;

.field private mAppLockerSwitch:I

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

.field private mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

.field mAttentionLight:Lcom/android/server/lights/Light;

.field mAudioManager:Landroid/media/AudioManager;

.field mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field final mAutobundledSummaries:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCallNotificationToken:Landroid/os/Binder;

.field private mCallState:I

.field private mCompanionManager:Landroid/companion/ICompanionDeviceManager;

.field private mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private mDisableNotificationEffects:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

.field private mESportModeOn:Z

.field private mEffectsSuppressors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field final mEnqueuedNotifications:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mFallbackVibrationPattern:[J

.field final mForegroundToken:Landroid/os/IBinder;

.field private mGroupHelper:Lcom/android/server/notification/GroupHelper;

.field private mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

.field protected mInCall:Z

.field private mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

.field private mInCallNotificationUri:Landroid/net/Uri;

.field private mInCallNotificationVolume:F

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

.field private mInterruptionFilter:I

.field private mIsTelevision:Z

.field private mLastOverRateLogTime:J

.field mLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListenerHints:I

.field private mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field private final mListenersDisablingEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mLockAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxPackageEnqueueRate:F

.field private mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field final mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mNotificationLight:Lcom/android/server/lights/Light;

.field private mNotificationLightController:Lcom/oneplus/notification/NotificationLightController;

.field final mNotificationList:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mNotificationLock:Ljava/lang/Object;

.field private mNotificationPulseEnabled:Z

.field private final mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

.field final mNotificationsByKey:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mPackageManagerClient:Landroid/content/pm/PackageManager;

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private mRankingHandler:Lcom/android/server/notification/RankingHandler;

.field private mRankingHelper:Lcom/android/server/notification/RankingHelper;

.field private final mRankingThread:Landroid/os/HandlerThread;

.field final mRecentApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Landroid/service/notification/NotifyingApp;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRestoreReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenOn:Z

.field private final mService:Landroid/os/IBinder;

.field private mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

.field private mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

.field private mSoundNotificationKey:Ljava/lang/String;

.field mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field final mSummaryByGroupKey:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field mSystemReady:Z

.field final mToastQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationManagerService$ToastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mUnlockAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field private mUseAttentionLight:Z

.field private final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

.field private mVibrateNotificationKey:Ljava/lang/String;

.field private mVibrateWhenMute:I

.field mVibrator:Landroid/os/Vibrator;

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field protected mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 271
    const-string v0, "NotificationService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 272
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG_ONEPLUS:Z

    .line 273
    const-string v0, "debug.child_notifs"

    .line 274
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->ENABLE_CHILD_NOTIFICATIONS:Z

    .line 276
    const-string v0, "debug.notification.interruptiveness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    .line 300
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_54

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/notification/NotificationManagerService;

    .line 333
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    .line 426
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    .line 427
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    .line 428
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->WHITELIST_TOKEN:Landroid/os/IBinder;

    return-void

    :array_54
    .array-data 8
        0x0
        0xfa
        0xfa
        0xfa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 1403
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 352
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    .line 354
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ranker"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    .line 369
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    .line 373
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 376
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    .line 377
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    .line 384
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationToken:Landroid/os/Binder;

    .line 388
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 389
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 391
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 393
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 395
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    .line 397
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 398
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 399
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mRecentApps:Landroid/util/ArrayMap;

    .line 402
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    .line 420
    new-instance v2, Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v2}, Lcom/android/server/notification/ManagedServices$UserProfiles;-><init>()V

    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 431
    const/high16 v2, 0x40a00000    # 5.0f

    iput v2, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    .line 439
    iput v1, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateWhenMute:I

    .line 446
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mLockAppList:Ljava/util/List;

    .line 447
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mUnlockAppList:Ljava/util/List;

    .line 448
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppLockerSwitch:I

    .line 454
    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mESportModeOn:Z

    .line 723
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$1;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    .line 1012
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$2;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1024
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$3;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRestoreReceiver:Landroid/content/BroadcastReceiver;

    .line 1044
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$4;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

    .line 1067
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$5;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1180
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$6;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2177
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$11;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$11;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    .line 4256
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$12;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$12;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    .line 1404
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->WHITELIST_TOKEN:Landroid/os/IBinder;

    sput-object v0, Landroid/app/Notification;->processWhitelistToken:Landroid/os/IBinder;

    .line 1405
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .line 269
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .line 269
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .registers 1

    .line 269
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 269
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$1300()I
    .registers 1

    .line 269
    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    return v0
.end method

.method static synthetic access$1400()I
    .registers 1

    .line 269
    sget v0, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .line 269
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationPulse()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/lights/Light;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->exitIdle()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->initLockAppList()V

    return-void
.end method

.method static synthetic access$2200()Lcom/oneplus/notification/NotificationVibrationController;
    .registers 1

    .line 269
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationVibrationController:Lcom/oneplus/notification/NotificationVibrationController;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/notification/NotificationManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .line 269
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/notification/NotificationManagerService;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    return v0
.end method

.method static synthetic access$2402(Lcom/android/server/notification/NotificationManagerService;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # F

    .line 269
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    return p1
.end method

.method static synthetic access$2502(Lcom/android/server/notification/NotificationManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .line 269
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateWhenMute:I

    return p1
.end method

.method static synthetic access$2602(Lcom/android/server/notification/NotificationManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .line 269
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAppLockerSwitch:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/notification/NotificationManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Z

    .line 269
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mESportModeOn:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 269
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->clearSoundLocked()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateInterruptionFilterLocked()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/app/IAppOpsService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLockAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 269
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->createAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/notification/NotificationManagerService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->clearAutogroupSummaryLocked(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 269
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->clearVibrateLocked()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUnlockAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/app/NotificationChannelGroup;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .line 269
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/app/NotificationChannel;
    .param p4, "x4"    # Z

    .line 269
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationChannelInt(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/SnoozeHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "x2"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "x2"    # I

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "x2"    # I

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateListenerHintsLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->clearLightsLocked()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->updateEffectsSuppressorLocked()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 269
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;
    .param p2, "x2"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/notification/NotificationManagerService;Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpProto(Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/io/PrintWriter;
    .param p2, "x2"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/notification/NotificationManagerService;)Landroid/util/AtomicFile;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/MetricsLogger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/notification/NotificationManagerService;Ljava/io/OutputStream;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/io/OutputStream;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;Z)V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrShell()V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/function/Predicate;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Ljava/util/function/Predicate;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # Landroid/service/notification/Adjustment;

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->applyAdjustment(Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/notification/NotificationManagerService;)Lcom/oneplus/notification/NotificationLightController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLightController:Lcom/oneplus/notification/NotificationLightController;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .registers 7
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 269
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .line 269
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Ljava/lang/String;

    .line 269
    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/RankingHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 269
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService;->handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .line 269
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->isPackageSuspendedLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7200(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;

    .line 269
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Landroid/service/notification/StatusBarNotification;

    .line 269
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->hasAutoGroupSummaryLocked(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/GroupHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Binder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationToken:Landroid/os/Binder;

    return-object v0
.end method

.method static synthetic access$7602(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Binder;)Landroid/os/Binder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Landroid/os/Binder;

    .line 269
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationToken:Landroid/os/Binder;

    return-object p1
.end method

.method static synthetic access$7700(Lcom/android/server/notification/NotificationManagerService;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/server/notification/NotificationManagerService;)Landroid/media/AudioAttributes;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/server/notification/NotificationManagerService;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationVolume:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 269
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleDurationReached(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/android/server/notification/NotificationManagerService;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 269
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleKillTokenTimeout(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSendRankingUpdate()V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .line 269
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerHintsChanged(I)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/server/notification/NotificationManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .line 269
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleListenerInterruptionFilterChanged(I)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Landroid/os/Message;

    .line 269
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->handleRankingReconsideration(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$8700(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V
    .registers 8
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Z
    .param p7, "x7"    # Ljava/lang/String;

    .line 269
    invoke-direct/range {p0 .. p7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z
    .param p6, "x6"    # Lcom/android/server/notification/NotificationManagerService$FlagChecker;

    .line 269
    invoke-direct/range {p0 .. p6}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V
    .registers 14
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .param p8, "x8"    # Z
    .param p9, "x9"    # I
    .param p10, "x10"    # Z
    .param p11, "x11"    # I
    .param p12, "x12"    # Ljava/lang/String;
    .param p13, "x13"    # Z

    .line 269
    invoke-direct/range {p0 .. p13}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsByListLocked(Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/server/notification/NotificationManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 269
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    return v0
.end method

.method static synthetic access$9002(Lcom/android/server/notification/NotificationManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # I

    .line 269
    iput p1, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    return p1
.end method

.method static synthetic access$9100(I)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # I

    .line 269
    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9300(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 269
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9400(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p1, "x1"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 269
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    return v0
.end method

.method private addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .registers 11
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "overrideGroupKey"    # Ljava/lang/String;

    .line 3890
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3891
    .local v0, "signals":Landroid/os/Bundle;
    const-string/jumbo v1, "key_group_key"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3892
    new-instance v7, Landroid/service/notification/Adjustment;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 3893
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    move-object v1, v7

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Landroid/service/notification/Adjustment;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/CharSequence;I)V

    .line 3894
    .local v1, "adjustment":Landroid/service/notification/Adjustment;
    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->addAdjustment(Landroid/service/notification/Adjustment;)V

    .line 3895
    return-void
.end method

.method private addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 5
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hint"    # I

    .line 2015
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_12

    .line 2016
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2019
    :cond_12
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 2020
    .local v0, "hintListeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2021
    return-void
.end method

.method private addDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 4
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"    # I

    .line 2001
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_8

    .line 2002
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 2005
    :cond_8
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_10

    .line 2006
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 2009
    :cond_10
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_18

    .line 2010
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->addDisabledHint(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 2012
    :cond_18
    return-void
.end method

.method private applyAdjustment(Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;)V
    .registers 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "adjustment"    # Landroid/service/notification/Adjustment;

    .line 3854
    if-nez p1, :cond_3

    .line 3855
    return-void

    .line 3857
    :cond_3
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 3858
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3859
    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationRecord;->addAdjustment(Landroid/service/notification/Adjustment;)V

    .line 3861
    :cond_14
    return-void
.end method

.method private applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 5706
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->shouldIntercept(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setIntercepted(Z)Z

    .line 5707
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 5708
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 5709
    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 5708
    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setSuppressedVisualEffects(I)V

    goto :goto_1f

    .line 5711
    :cond_1b
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setSuppressedVisualEffects(I)V

    .line 5713
    :goto_1f
    return-void
.end method

.method private static audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;
    .registers 6
    .param p0, "n"    # Landroid/app/Notification;

    .line 5313
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    if-eqz v0, :cond_11

    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iget-object v1, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 5314
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 5316
    iget-object v0, p0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    return-object v0

    .line 5317
    :cond_11
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    if-ltz v0, :cond_2d

    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 5319
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p0, Landroid/app/Notification;->audioStreamType:I

    .line 5320
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 5321
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 5319
    return-object v0

    .line 5322
    :cond_2d
    iget v0, p0, Landroid/app/Notification;->audioStreamType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_35

    .line 5323
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    return-object v0

    .line 5325
    :cond_35
    const-string v0, "NotificationService"

    const-string v1, "Invalid stream type: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Landroid/app/Notification;->audioStreamType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5326
    sget-object v0, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method private calculateHints()I
    .registers 6

    .line 2024
    const/4 v0, 0x0

    .line 2025
    .local v0, "hints":I
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_23

    .line 2026
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2027
    .local v2, "hint":I
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 2029
    .local v3, "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_20

    .line 2030
    or-int/2addr v0, v2

    .line 2025
    .end local v2    # "hint":I
    .end local v3    # "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2034
    .end local v1    # "i":I
    :cond_23
    return v0
.end method

.method private calculateSuppressedEffects()J
    .registers 6

    .line 2038
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateHints()I

    move-result v0

    .line 2039
    .local v0, "hints":I
    const-wide/16 v1, 0x0

    .line 2041
    .local v1, "suppressedEffects":J
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_d

    .line 2042
    const-wide/16 v3, 0x3

    or-long/2addr v1, v3

    .line 2045
    :cond_d
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_14

    .line 2046
    const-wide/16 v3, 0x1

    or-long/2addr v1, v3

    .line 2049
    :cond_14
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1b

    .line 2050
    const-wide/16 v3, 0x2

    or-long/2addr v1, v3

    .line 2053
    :cond_1b
    return-wide v1
.end method

.method private static callStateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 6681
    packed-switch p0, :pswitch_data_1e

    .line 6685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CALL_STATE_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6684
    :pswitch_15
    const-string v0, "CALL_STATE_OFFHOOK"

    return-object v0

    .line 6683
    :pswitch_18
    const-string v0, "CALL_STATE_RINGING"

    return-object v0

    .line 6682
    :pswitch_1b
    const-string v0, "CALL_STATE_IDLE"

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method private cancelAllNotificationsByListLocked(Ljava/util/ArrayList;IILjava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;Z)V
    .registers 30
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "nullPkgIndicatesUserSwitch"    # Z
    .param p6, "channelId"    # Ljava/lang/String;
    .param p7, "flagChecker"    # Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .param p8, "includeCurrentProfiles"    # Z
    .param p9, "userId"    # I
    .param p10, "sendDelete"    # Z
    .param p11, "reason"    # I
    .param p12, "listenerName"    # Ljava/lang/String;
    .param p13, "wasPosted"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;II",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationManagerService$FlagChecker;",
            "ZIZI",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move/from16 v11, p9

    .line 6253
    const/4 v0, 0x0

    .line 6254
    .local v0, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object v12, v0

    .end local v0    # "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    .local v1, "i":I
    .local v12, "canceledNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    :goto_12
    move v6, v1

    .end local v1    # "i":I
    .local v6, "i":I
    if-ltz v6, :cond_c7

    .line 6255
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/notification/NotificationRecord;

    .line 6259
    .local v13, "r":Lcom/android/server/notification/NotificationRecord;
    const/16 v0, 0x14

    move/from16 v14, p11

    if-ne v14, v0, :cond_53

    .line 6260
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 6261
    .local v0, "notification":Landroid/app/Notification;
    if-eqz v0, :cond_53

    .line 6262
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "appPackage"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6263
    .local v1, "appPackage":Ljava/lang/String;
    if-eqz v9, :cond_53

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 6264
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_5c

    .line 6265
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "REASON_ONEPLUS_FORCESTOP pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 6273
    .end local v0    # "notification":Landroid/app/Notification;
    .end local v1    # "appPackage":Ljava/lang/String;
    :cond_53
    if-eqz p8, :cond_60

    .line 6274
    invoke-direct {v7, v13, v11}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v0

    if-nez v0, :cond_67

    .line 6275
    nop

    .line 6254
    .end local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_5c
    :goto_5c
    move-object/from16 v5, p7

    goto/16 :goto_c3

    .line 6277
    .restart local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_60
    invoke-direct {v7, v13, v11}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v0

    if-nez v0, :cond_67

    .line 6278
    goto :goto_5c

    .line 6281
    :cond_67
    if-eqz p5, :cond_73

    if-nez v9, :cond_73

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_73

    .line 6282
    goto :goto_5c

    .line 6284
    :cond_73
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v0

    move-object/from16 v5, p7

    invoke-interface {v5, v0}, Lcom/android/server/notification/NotificationManagerService$FlagChecker;->apply(I)Z

    move-result v0

    if-nez v0, :cond_80

    .line 6285
    goto :goto_c3

    .line 6287
    :cond_80
    if-eqz v9, :cond_8f

    iget-object v0, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 6288
    goto :goto_c3

    .line 6290
    :cond_8f
    if-eqz v10, :cond_a0

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    .line 6291
    goto :goto_c3

    .line 6293
    :cond_a0
    if-nez v12, :cond_a8

    .line 6294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 6296
    :cond_a8
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6297
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6298
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6299
    move-object v0, v7

    move-object v1, v13

    move/from16 v2, p10

    move v3, v14

    move/from16 v4, p13

    move-object/from16 v5, p12

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V

    .line 6254
    .end local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    :goto_c3
    add-int/lit8 v1, v6, -0x1

    .end local v6    # "i":I
    .local v1, "i":I
    goto/16 :goto_12

    .line 6301
    .end local v1    # "i":I
    :cond_c7
    move/from16 v14, p11

    if-eqz v12, :cond_ee

    .line 6302
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 6303
    .local v13, "M":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d0
    move v6, v0

    .end local v0    # "i":I
    .restart local v6    # "i":I
    if-ge v6, v13, :cond_eb

    .line 6304
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    const/4 v5, 0x0

    move-object v0, v7

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p12

    move v15, v6

    move-object/from16 v6, p7

    .end local v6    # "i":I
    .local v15, "i":I
    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    .line 6303
    add-int/lit8 v0, v15, 0x1

    .end local v15    # "i":I
    .restart local v0    # "i":I
    goto :goto_d0

    .line 6307
    .end local v0    # "i":I
    :cond_eb
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 6309
    .end local v13    # "M":I
    :cond_ee
    return-void
.end method

.method private cancelGroupChildrenByListLocked(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V
    .registers 30
    .param p2, "parentNotification"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "listenerName"    # Ljava/lang/String;
    .param p6, "sendDelete"    # Z
    .param p7, "wasPosted"    # Z
    .param p8, "flagChecker"    # Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Lcom/android/server/notification/NotificationRecord;",
            "II",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/android/server/notification/NotificationManagerService$FlagChecker;",
            ")V"
        }
    .end annotation

    .local p1, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    move-object/from16 v0, p1

    .line 6413
    move-object/from16 v1, p8

    move-object/from16 v2, p2

    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 6414
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v14

    .line 6415
    .local v14, "userId":I
    const/16 v15, 0xc

    .line 6416
    .local v15, "reason":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_18
    move v13, v4

    .end local v4    # "i":I
    .local v13, "i":I
    if-ltz v13, :cond_a4

    .line 6417
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/android/server/notification/NotificationRecord;

    .line 6418
    .local v12, "childR":Lcom/android/server/notification/NotificationRecord;
    iget-object v11, v12, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 6419
    .local v11, "childSbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_9a

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-nez v4, :cond_9a

    .line 6420
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 6421
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x40

    if-nez v4, :cond_9a

    if-eqz v1, :cond_5b

    .line 6422
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getFlags()I

    move-result v4

    invoke-interface {v1, v4}, Lcom/android/server/notification/NotificationManagerService$FlagChecker;->apply(I)Z

    move-result v4

    if-eqz v4, :cond_57

    goto :goto_5b

    .line 6416
    .end local v11    # "childSbn":Landroid/service/notification/StatusBarNotification;
    .end local v12    # "childR":Lcom/android/server/notification/NotificationRecord;
    :cond_57
    move-object/from16 v4, p0

    move v1, v13

    goto :goto_9d

    .line 6423
    .restart local v11    # "childSbn":Landroid/service/notification/StatusBarNotification;
    .restart local v12    # "childR":Lcom/android/server/notification/NotificationRecord;
    :cond_5b
    :goto_5b
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    .line 6424
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xc

    .line 6423
    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v3

    move v9, v14

    move-object/from16 v18, v11

    move/from16 v11, v16

    .end local v11    # "childSbn":Landroid/service/notification/StatusBarNotification;
    .local v18, "childSbn":Landroid/service/notification/StatusBarNotification;
    move-object/from16 v19, v12

    move/from16 v12, v17

    .end local v12    # "childR":Lcom/android/server/notification/NotificationRecord;
    .local v19, "childR":Lcom/android/server/notification/NotificationRecord;
    move v1, v13

    move-object/from16 v13, p5

    .end local v13    # "i":I
    .local v1, "i":I
    invoke-static/range {v4 .. v13}, Lcom/android/server/EventLogTags;->writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V

    .line 6425
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6426
    move-object/from16 v4, p0

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    move-object/from16 v11, v19

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    .end local v19    # "childR":Lcom/android/server/notification/NotificationRecord;
    .local v11, "childR":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6427
    const/16 v8, 0xc

    move-object v5, v4

    move-object v6, v11

    move/from16 v7, p6

    move/from16 v9, p7

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V

    .end local v11    # "childR":Lcom/android/server/notification/NotificationRecord;
    .end local v18    # "childSbn":Landroid/service/notification/StatusBarNotification;
    goto :goto_9d

    .line 6416
    .end local v1    # "i":I
    .restart local v13    # "i":I
    :cond_9a
    move-object/from16 v4, p0

    move v1, v13

    .end local v13    # "i":I
    .restart local v1    # "i":I
    :goto_9d
    add-int/lit8 v1, v1, -0x1

    move v4, v1

    move-object/from16 v1, p8

    goto/16 :goto_18

    .line 6430
    .end local v1    # "i":I
    :cond_a4
    move-object/from16 v4, p0

    return-void
.end method

.method private cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V
    .registers 20
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "listenerName"    # Ljava/lang/String;
    .param p5, "sendDelete"    # Z
    .param p6, "flagChecker"    # Lcom/android/server/notification/NotificationManagerService$FlagChecker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    move-object v9, p0

    .line 6391
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v10

    .line 6392
    .local v10, "n":Landroid/app/Notification;
    invoke-virtual {v10}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-nez v0, :cond_c

    .line 6393
    return-void

    .line 6396
    :cond_c
    move-object v11, p1

    iget-object v0, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 6398
    .local v12, "pkg":Ljava/lang/String;
    if-nez v12, :cond_34

    .line 6399
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_33

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package for group summary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6400
    :cond_33
    return-void

    .line 6403
    :cond_34
    iget-object v1, v9, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    const/4 v7, 0x1

    move-object v0, v9

    move-object v2, v11

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenByListLocked(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    .line 6405
    iget-object v1, v9, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenByListLocked(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    .line 6407
    return-void
.end method

.method private cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V
    .registers 26
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I
    .param p4, "rank"    # I
    .param p5, "count"    # I
    .param p6, "wasPosted"    # Z
    .param p7, "listenerName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p3

    .line 5881
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v12

    .line 5884
    .local v12, "canceledKey":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->recordCallerLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 5886
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->getDismissalSurface()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1c

    .line 5887
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/android/server/notification/NotificationRecord;->recordDismissalSurface(I)V

    .line 5891
    :cond_1c
    if-eqz p2, :cond_4d

    .line 5892
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_4d

    .line 5894
    :try_start_26
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_2f
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_26 .. :try_end_2f} :catch_30

    .line 5899
    goto :goto_4d

    .line 5895
    :catch_30
    move-exception v0

    .line 5898
    .local v0, "ex":Landroid/app/PendingIntent$CanceledException;
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canceled PendingIntent for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5904
    .end local v0    # "ex":Landroid/app/PendingIntent$CanceledException;
    :cond_4d
    :goto_4d
    if-eqz p6, :cond_b9

    .line 5906
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 5907
    const/16 v0, 0x12

    if-eq v11, v0, :cond_60

    .line 5908
    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 5910
    :cond_60
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getStats()Landroid/service/notification/NotificationStats;

    move-result-object v4

    invoke-virtual {v0, v2, v11, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRemovedLocked(Lcom/android/server/notification/NotificationRecord;ILandroid/service/notification/NotificationStats;)V

    .line 5911
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v4, Lcom/android/server/notification/NotificationManagerService$14;

    invoke-direct {v4, v1, v2}, Lcom/android/server/notification/NotificationManagerService$14;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v0, v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 5920
    :cond_73
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_98

    .line 5921
    iput-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    .line 5922
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 5924
    .local v5, "identity":J
    :try_start_82
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v0

    .line 5925
    .local v0, "player":Landroid/media/IRingtonePlayer;
    if-eqz v0, :cond_94

    .line 5926
    invoke-interface {v0}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_8d} :catch_93
    .catchall {:try_start_82 .. :try_end_8d} :catchall_8e

    .end local v0    # "player":Landroid/media/IRingtonePlayer;
    goto :goto_94

    .line 5930
    :catchall_8e
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 5928
    :catch_93
    move-exception v0

    .line 5930
    .end local v5    # "identity":J
    :cond_94
    :goto_94
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5931
    nop

    .line 5935
    :cond_98
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 5936
    iput-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 5937
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5939
    .local v4, "identity":J
    :try_start_a6
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V
    :try_end_ab
    .catchall {:try_start_a6 .. :try_end_ab} :catchall_af

    .line 5942
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5943
    goto :goto_b4

    .line 5942
    :catchall_af
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 5947
    .end local v4    # "identity":J
    :cond_b4
    :goto_b4
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5952
    :cond_b9
    packed-switch v11, :pswitch_data_180

    packed-switch v11, :pswitch_data_188

    goto :goto_cc

    .line 5961
    :pswitch_c0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationUsageStats;->registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_cc

    .line 5957
    :pswitch_c6
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v0, v2}, Lcom/android/server/notification/NotificationUsageStats;->registerDismissedByUser(Lcom/android/server/notification/NotificationRecord;)V

    .line 5958
    nop

    .line 5965
    :goto_cc
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    .line 5966
    .local v0, "groupKey":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/android/server/notification/NotificationRecord;

    .line 5967
    .local v13, "groupSummary":Lcom/android/server/notification/NotificationRecord;
    if-eqz v13, :cond_ea

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ea

    .line 5968
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5970
    :cond_ea
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/util/ArrayMap;

    .line 5971
    .local v10, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v10, :cond_11e

    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11e

    .line 5972
    iget-object v4, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5976
    :cond_11e
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4, v5}, Lcom/android/server/notification/NotificationManagerService$Archive;->record(Landroid/service/notification/StatusBarNotification;)V

    .line 5978
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 5979
    .local v8, "now":J
    invoke-virtual {v2, v8, v9}, Lcom/android/server/notification/NotificationRecord;->getLogMaker(J)Landroid/metrics/LogMaker;

    move-result-object v4

    const/16 v5, 0x80

    .line 5980
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v4

    const/4 v5, 0x5

    .line 5981
    invoke-virtual {v4, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v4

    .line 5982
    invoke-virtual {v4, v11}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v7

    .line 5983
    .local v7, "logMaker":Landroid/metrics/LogMaker;
    move/from16 v6, p4

    if-eq v6, v3, :cond_159

    move/from16 v5, p5

    if-eq v5, v3, :cond_15b

    .line 5984
    const/16 v3, 0x31e

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    const/16 v4, 0x573

    .line 5985
    move-object v14, v0

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .end local v0    # "groupKey":Ljava/lang/String;
    .local v14, "groupKey":Ljava/lang/String;
    invoke-virtual {v3, v4, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    goto :goto_15c

    .line 5987
    .end local v14    # "groupKey":Ljava/lang/String;
    .restart local v0    # "groupKey":Ljava/lang/String;
    :cond_159
    move/from16 v5, p5

    :cond_15b
    move-object v14, v0

    .end local v0    # "groupKey":Ljava/lang/String;
    .restart local v14    # "groupKey":Ljava/lang/String;
    :goto_15c
    invoke-static {v7}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 5988
    nop

    .line 5989
    invoke-virtual {v2, v8, v9}, Lcom/android/server/notification/NotificationRecord;->getLifespanMs(J)I

    move-result v0

    invoke-virtual {v2, v8, v9}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v15

    invoke-virtual {v2, v8, v9}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    move-result v16

    .line 5988
    move-object v3, v12

    move v4, v11

    move v5, v0

    move v6, v15

    move-object v0, v7

    move/from16 v7, v16

    .end local v7    # "logMaker":Landroid/metrics/LogMaker;
    .local v0, "logMaker":Landroid/metrics/LogMaker;
    move-wide v15, v8

    move/from16 v8, p4

    .end local v8    # "now":J
    .local v15, "now":J
    move/from16 v9, p5

    move-object/from16 v17, v10

    move-object/from16 v10, p7

    .end local v10    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v17, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {v3 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationCanceled(Ljava/lang/String;IIIIIILjava/lang/String;)V

    .line 5991
    return-void

    :pswitch_data_180
    .packed-switch 0x2
        :pswitch_c6
        :pswitch_c6
    .end packed-switch

    :pswitch_data_188
    .packed-switch 0x8
        :pswitch_c0
        :pswitch_c0
        :pswitch_c6
        :pswitch_c6
    .end packed-switch
.end method

.method private cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V
    .registers 14
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "sendDelete"    # Z
    .param p3, "reason"    # I
    .param p4, "wasPosted"    # Z
    .param p5, "listenerName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 5875
    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIIIZLjava/lang/String;)V

    .line 5876
    return-void
.end method

.method private checkCallerIsSameApp(Ljava/lang/String;)V
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;

    .line 6664
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6666
    .local v0, "uid":I
    :try_start_4
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    .line 6667
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 6666
    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 6668
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_44

    .line 6671
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 6677
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    nop

    .line 6678
    return-void

    .line 6672
    .restart local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1b
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " gave package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " which is owned by uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6669
    :cond_44
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_5b} :catch_5b

    .line 6675
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_5b
    move-exception v1

    .line 6676
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private checkCallerIsSystem()V
    .registers 4

    .line 6629
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6630
    return-void

    .line 6632
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disallowed call for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 6636
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6637
    return-void

    .line 6639
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSameApp(Ljava/lang/String;)V

    .line 6640
    return-void
.end method

.method private checkCallerIsSystemOrShell()V
    .registers 3

    .line 6622
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_9

    .line 6623
    return-void

    .line 6625
    :cond_9
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystem()V

    .line 6626
    return-void
.end method

.method private checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;Z)Z
    .registers 26
    .param p1, "userId"    # I
    .param p2, "callingUid"    # I
    .param p3, "id"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p6, "isAutogroup"    # Z

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p5

    .line 4510
    iget-object v0, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4511
    .local v4, "pkg":Ljava/lang/String;
    nop

    .line 4512
    move/from16 v5, p2

    invoke-virtual {v1, v5}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_22

    const-string v0, "android"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_22

    :cond_20
    move v0, v7

    goto :goto_23

    :cond_22
    :goto_22
    move v0, v6

    :goto_23
    move v8, v0

    .line 4513
    .local v8, "isSystemNotification":Z
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isListenerPackage(Ljava/lang/String;)Z

    move-result v9

    .line 4516
    .local v9, "isNotificationFromListener":Z
    const/4 v0, 0x0

    .line 4517
    .local v0, "mustShow":Z
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget-object v10, v10, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 4518
    .local v10, "b":Landroid/os/Bundle;
    if-eqz v10, :cond_3a

    .line 4519
    const-string/jumbo v11, "oneplus.mustShow"

    invoke-virtual {v10, v11, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4525
    .end local v0    # "mustShow":Z
    .local v11, "mustShow":Z
    :cond_3a
    move v11, v0

    if-nez v8, :cond_135

    if-nez v9, :cond_135

    if-nez v11, :cond_135

    .line 4530
    iget-object v12, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v12

    .line 4531
    :try_start_44
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v13, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_12a

    if-nez v0, :cond_7e

    :try_start_52
    invoke-direct {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->isCallerInstantApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_7e

    .line 4536
    :cond_59
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Instant app "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " cannot create notifications"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_75
    .catchall {:try_start_52 .. :try_end_75} :catchall_75

    .line 4566
    :catchall_75
    move-exception v0

    move/from16 v7, p3

    move/from16 v16, v8

    .line 4566
    .end local v8    # "isSystemNotification":Z
    .local v16, "isSystemNotification":Z
    :goto_7a
    move-object/from16 v8, p4

    goto/16 :goto_131

    .line 4541
    .end local v16    # "isSystemNotification":Z
    .restart local v8    # "isSystemNotification":Z
    :cond_7e
    :goto_7e
    :try_start_7e
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v13, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_8a
    .catchall {:try_start_7e .. :try_end_8a} :catchall_12a

    if-eqz v0, :cond_f4

    .line 4542
    :try_start_8c
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result v0

    if-nez v0, :cond_f4

    if-nez p6, :cond_f4

    .line 4545
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v0, v4}, Lcom/android/server/notification/NotificationUsageStats;->getAppEnqueueRate(Ljava/lang/String;)F

    move-result v0

    .line 4546
    .local v0, "appEnqueueRate":F
    iget v14, v1, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    cmpl-float v14, v0, v14

    if-lez v14, :cond_f4

    .line 4547
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v6, v4}, Lcom/android/server/notification/NotificationUsageStats;->registerOverRateQuota(Ljava/lang/String;)V

    .line 4548
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14
    :try_end_ad
    .catchall {:try_start_8c .. :try_end_ad} :catchall_ee

    .line 4549
    .local v14, "now":J
    move/from16 v16, v8

    :try_start_af
    iget-wide v7, v1, Lcom/android/server/notification/NotificationManagerService;->mLastOverRateLogTime:J

    .line 4549
    .end local v8    # "isSystemNotification":Z
    .restart local v16    # "isSystemNotification":Z
    sub-long v6, v14, v7

    const-wide/16 v17, 0x1388

    cmp-long v6, v6, v17

    if-lez v6, :cond_e7

    .line 4550
    const-string v6, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package enqueue rate is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ". Shedding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4551
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ". package="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4550
    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4552
    iput-wide v14, v1, Lcom/android/server/notification/NotificationManagerService;->mLastOverRateLogTime:J

    .line 4554
    :cond_e7
    monitor-exit v12
    :try_end_e8
    .catchall {:try_start_af .. :try_end_e8} :catchall_ea

    const/4 v6, 0x0

    return v6

    .line 4566
    .end local v0    # "appEnqueueRate":F
    .end local v14    # "now":J
    :catchall_ea
    move-exception v0

    move/from16 v7, p3

    goto :goto_7a

    .line 4566
    .end local v16    # "isSystemNotification":Z
    .restart local v8    # "isSystemNotification":Z
    :catchall_ee
    move-exception v0

    move/from16 v16, v8

    move/from16 v7, p3

    goto :goto_12f

    .line 4559
    :cond_f4
    move/from16 v16, v8

    .line 4559
    .end local v8    # "isSystemNotification":Z
    .restart local v16    # "isSystemNotification":Z
    move/from16 v7, p3

    move-object/from16 v8, p4

    :try_start_fa
    invoke-virtual {v1, v4, v2, v7, v8}, Lcom/android/server/notification/NotificationManagerService;->getNotificationCountLocked(Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    .line 4560
    .local v0, "count":I
    const/16 v14, 0x32

    if-lt v0, v14, :cond_128

    .line 4561
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v6, v4}, Lcom/android/server/notification/NotificationUsageStats;->registerOverCountQuota(Ljava/lang/String;)V

    .line 4562
    const-string v6, "NotificationService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Package has already posted or enqueued "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " notifications.  Not showing more.  package="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4564
    monitor-exit v12

    const/4 v6, 0x0

    return v6

    .line 4566
    .end local v0    # "count":I
    :cond_128
    monitor-exit v12

    goto :goto_13b

    .line 4566
    .end local v16    # "isSystemNotification":Z
    .restart local v8    # "isSystemNotification":Z
    :catchall_12a
    move-exception v0

    move/from16 v7, p3

    move/from16 v16, v8

    :goto_12f
    move-object/from16 v8, p4

    .line 4566
    .end local v8    # "isSystemNotification":Z
    .restart local v16    # "isSystemNotification":Z
    :goto_131
    monitor-exit v12
    :try_end_132
    .catchall {:try_start_fa .. :try_end_132} :catchall_133

    throw v0

    :catchall_133
    move-exception v0

    goto :goto_131

    .line 4570
    .end local v16    # "isSystemNotification":Z
    .restart local v8    # "isSystemNotification":Z
    :cond_135
    move/from16 v7, p3

    move/from16 v16, v8

    move-object/from16 v8, p4

    .line 4570
    .end local v8    # "isSystemNotification":Z
    .restart local v16    # "isSystemNotification":Z
    :goto_13b
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v2, v4, v12}, Lcom/android/server/notification/SnoozeHelper;->isSnoozed(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_189

    .line 4571
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v0

    const/4 v6, 0x6

    .line 4572
    invoke-virtual {v0, v6}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    const/16 v6, 0x33f

    .line 4573
    invoke-virtual {v0, v6}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v0

    .line 4571
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 4574
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_17f

    .line 4581
    const-string v0, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignored enqueue from \'"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\' for snoozed notification "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4584
    :cond_17f
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/SnoozeHelper;->update(ILcom/android/server/notification/NotificationRecord;)V

    .line 4585
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    .line 4586
    const/4 v0, 0x0

    return v0

    .line 4591
    :cond_189
    const/4 v0, 0x0

    iget-object v12, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v1, v3, v12}, Lcom/android/server/notification/NotificationManagerService;->isBlocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationUsageStats;)Z

    move-result v12

    if-eqz v12, :cond_193

    .line 4592
    return v0

    .line 4595
    :cond_193
    return v6
.end method

.method static clamp(III)I
    .registers 4
    .param p0, "x"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 5828
    if-ge p0, p1, :cond_4

    move v0, p1

    goto :goto_9

    :cond_4
    if-le p0, p2, :cond_8

    move v0, p2

    goto :goto_9

    :cond_8
    move v0, p0

    :goto_9
    return v0
.end method

.method private clearAutogroupSummaryLocked(ILjava/lang/String;)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 3900
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 3901
    .local v0, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_2e

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 3903
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v1

    .line 3904
    .local v1, "removed":Lcom/android/server/notification/NotificationRecord;
    if-eqz v1, :cond_2e

    .line 3905
    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v8

    .line 3906
    .local v8, "wasPosted":Z
    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v1

    move v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/notification/NotificationRecord;ZIZLjava/lang/String;)V

    .line 3909
    .end local v1    # "removed":Lcom/android/server/notification/NotificationRecord;
    .end local v8    # "wasPosted":Z
    :cond_2e
    return-void
.end method

.method private clearLightsLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 1008
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1009
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 1010
    return-void
.end method

.method private clearSoundLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 981
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    .line 982
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 984
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v2

    .line 985
    .local v2, "player":Landroid/media/IRingtonePlayer;
    if-eqz v2, :cond_19

    .line 986
    invoke-interface {v2}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_12} :catch_18
    .catchall {:try_start_7 .. :try_end_12} :catchall_13

    .end local v2    # "player":Landroid/media/IRingtonePlayer;
    goto :goto_19

    .line 990
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 988
    :catch_18
    move-exception v2

    .line 990
    :cond_19
    :goto_19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 991
    nop

    .line 992
    return-void
.end method

.method private clearVibrateLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 996
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 997
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 999
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_11

    .line 1001
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1002
    nop

    .line 1003
    return-void

    .line 1001
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private createAutoGroupSummary(ILjava/lang/String;Ljava/lang/String;)V
    .registers 32
    .param p1, "userId"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "triggeringKey"    # Ljava/lang/String;

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    .line 3919
    const/4 v1, 0x0

    .line 3920
    .local v1, "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    iget-object v2, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3921
    :try_start_8
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_15d

    move-object/from16 v10, p3

    :try_start_c
    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_15b

    .line 3922
    .local v0, "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    if-nez v0, :cond_1b

    .line 3925
    :try_start_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_16

    return-void

    .line 3973
    .end local v0    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    :catchall_16
    move-exception v0

    move/from16 v11, p1

    goto/16 :goto_164

    .line 3927
    .restart local v0    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    :cond_1b
    :try_start_1b
    iget-object v3, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 3928
    .local v3, "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4
    :try_end_25
    .catchall {:try_start_1b .. :try_end_25} :catchall_15b

    move v11, v4

    .line 3929
    .end local p1    # "userId":I
    .local v11, "userId":I
    :try_start_26
    iget-object v4, v8, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;
    :try_end_32
    .catchall {:try_start_26 .. :try_end_32} :catchall_157

    .line 3930
    .local v4, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v4, :cond_3a

    .line 3931
    :try_start_34
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_166

    move-object v4, v5

    .line 3933
    :cond_3a
    :try_start_3a
    iget-object v5, v8, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3934
    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12a

    .line 3936
    nop

    .line 3937
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.appInfo"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 3939
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 3940
    .local v6, "extras":Landroid/os/Bundle;
    const-string v7, "android.appInfo"

    invoke-virtual {v6, v7, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3941
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v7

    .line 3942
    .local v7, "channelId":Ljava/lang/String;
    new-instance v12, Landroid/app/Notification$Builder;

    .line 3943
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3944
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v12

    .line 3945
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v12

    const/4 v14, 0x2

    .line 3946
    invoke-virtual {v12, v14}, Landroid/app/Notification$Builder;->setGroupAlertBehavior(I)Landroid/app/Notification$Builder;

    move-result-object v12

    const-string/jumbo v14, "ranker_group"

    .line 3947
    invoke-virtual {v12, v14}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v12

    const/16 v14, 0x400

    .line 3948
    invoke-virtual {v12, v14, v13}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v12

    const/16 v14, 0x200

    .line 3949
    invoke-virtual {v12, v14, v13}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    move-result-object v12

    .line 3950
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v14

    iget v14, v14, Landroid/app/Notification;->color:I

    invoke-virtual {v12, v14}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v12

    .line 3951
    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v12

    .line 3952
    invoke-virtual {v12}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    .line 3953
    .local v12, "summaryNotification":Landroid/app/Notification;
    iget-object v13, v12, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v13, v6}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3954
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13
    :try_end_bf
    .catchall {:try_start_3a .. :try_end_bf} :catchall_157

    move-object/from16 v25, v13

    .line 3955
    .local v25, "appIntent":Landroid/content/Intent;
    if-eqz v25, :cond_d9

    .line 3956
    nop

    .line 3957
    :try_start_c4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static {v11}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v19

    .line 3956
    move-object/from16 v16, v25

    invoke-static/range {v14 .. v19}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v13

    iput-object v13, v12, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;
    :try_end_d9
    .catchall {:try_start_c4 .. :try_end_d9} :catchall_166

    .line 3959
    :cond_d9
    :try_start_d9
    new-instance v26, Landroid/service/notification/StatusBarNotification;

    .line 3960
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 3961
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v15

    const v16, 0x7fffffff

    const-string/jumbo v17, "ranker_group"

    .line 3963
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v18

    .line 3964
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v19

    .line 3965
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v21

    const-string/jumbo v22, "ranker_group"

    .line 3966
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    move-object/from16 v13, v26

    move-object/from16 v20, v12

    invoke-direct/range {v13 .. v24}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    move-object/from16 v13, v26

    .line 3967
    .local v13, "summarySbn":Landroid/service/notification/StatusBarNotification;
    new-instance v14, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v15
    :try_end_10b
    .catchall {:try_start_d9 .. :try_end_10b} :catchall_157

    .line 3968
    move-object/from16 v27, v1

    :try_start_10d
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v1

    .line 3968
    .end local v1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .local v27, "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {v14, v15, v13, v1}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V
    :try_end_114
    .catchall {:try_start_10d .. :try_end_114} :catchall_126

    move-object v1, v14

    .line 3969
    .end local v27    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    nop

    .line 3970
    :try_start_116
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getIsAppImportanceLocked()Z

    move-result v14

    .line 3969
    invoke-virtual {v1, v14}, Lcom/android/server/notification/NotificationRecord;->setIsAppImportanceLocked(Z)V

    .line 3971
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v9, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_124
    .catchall {:try_start_116 .. :try_end_124} :catchall_166

    .line 3973
    .end local v0    # "notificationRecord":Lcom/android/server/notification/NotificationRecord;
    .end local v3    # "adjustedSbn":Landroid/service/notification/StatusBarNotification;
    .end local v4    # "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "extras":Landroid/os/Bundle;
    .end local v7    # "channelId":Ljava/lang/String;
    .end local v12    # "summaryNotification":Landroid/app/Notification;
    .end local v13    # "summarySbn":Landroid/service/notification/StatusBarNotification;
    .end local v25    # "appIntent":Landroid/content/Intent;
    move-object v12, v1

    goto :goto_12e

    .line 3973
    .end local v1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v27    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :catchall_126
    move-exception v0

    move-object/from16 v1, v27

    goto :goto_164

    .line 3973
    .end local v27    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :cond_12a
    move-object/from16 v27, v1

    move-object/from16 v12, v27

    .line 3973
    .end local v1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .local v12, "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :goto_12e
    :try_start_12e
    monitor-exit v2
    :try_end_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_154

    .line 3974
    if-eqz v12, :cond_153

    sget v3, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    iget-object v0, v12, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 3975
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    iget-object v0, v12, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    .line 3974
    move-object v1, v8

    move v2, v11

    move-object v6, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService;->checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v0

    if-eqz v0, :cond_153

    .line 3976
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    invoke-direct {v1, v8, v11, v12}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 3978
    :cond_153
    return-void

    .line 3973
    :catchall_154
    move-exception v0

    move-object v1, v12

    goto :goto_164

    .line 3973
    .end local v12    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    .restart local v1    # "summaryRecord":Lcom/android/server/notification/NotificationRecord;
    :catchall_157
    move-exception v0

    move-object/from16 v27, v1

    goto :goto_164

    .line 3973
    .end local v11    # "userId":I
    .restart local p1    # "userId":I
    :catchall_15b
    move-exception v0

    goto :goto_160

    :catchall_15d
    move-exception v0

    move-object/from16 v10, p3

    .line 3973
    .end local p1    # "userId":I
    .restart local v11    # "userId":I
    :goto_160
    move-object/from16 v27, v1

    move/from16 v11, p1

    :goto_164
    :try_start_164
    monitor-exit v2
    :try_end_165
    .catchall {:try_start_164 .. :try_end_165} :catchall_166

    throw v0

    :catchall_166
    move-exception v0

    goto :goto_164
.end method

.method private createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "group"    # Landroid/app/NotificationChannelGroup;
    .param p4, "fromApp"    # Z
    .param p5, "fromListener"    # Z

    .line 1931
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1932
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 1935
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/notification/RankingHelper;->getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object v0

    .line 1936
    .local v0, "preUpdate":Landroid/app/NotificationChannelGroup;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/notification/RankingHelper;->createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Z)V

    .line 1938
    if-nez p4, :cond_1a

    .line 1939
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifyChannelGroupOwner(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)V

    .line 1941
    :cond_1a
    if-nez p5, :cond_2a

    .line 1942
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 1943
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x1

    .line 1942
    invoke-virtual {v1, p1, v2, p3, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelGroupChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    .line 1946
    :cond_2a
    return-void
.end method

.method private disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 3981
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    if-eqz v0, :cond_7

    .line 3982
    const-string v0, "booleanState"

    return-object v0

    .line 3984
    :cond_7
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    .line 3985
    const-string/jumbo v0, "listenerHints"

    return-object v0

    .line 3987
    :cond_11
    iget v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 3988
    const-string v0, "callState"

    return-object v0

    .line 3990
    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method private doChannelWarningToast(Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "toastText"    # Ljava/lang/CharSequence;

    .line 4480
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 4481
    .local v0, "defaultWarningEnabled":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_notification_channel_warnings"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    move v1, v2

    .line 4483
    .local v1, "warningEnabled":Z
    :goto_17
    if-eqz v1, :cond_2a

    .line 4484
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {v3, v4, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 4486
    .local v2, "toast":Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 4488
    .end local v2    # "toast":Landroid/widget/Toast;
    :cond_2a
    return-void
.end method

.method private dumpJson(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 3994
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3996
    .local v0, "dump":Lorg/json/JSONObject;
    :try_start_5
    const-string/jumbo v1, "service"

    const-string v2, "Notification Manager"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3997
    const-string v1, "bans"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/notification/RankingHelper;->dumpBansJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3998
    const-string/jumbo v1, "ranking"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/notification/RankingHelper;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3999
    const-string/jumbo v1, "stats"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v2, p2}, Lcom/android/server/notification/NotificationUsageStats;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4000
    const-string v1, "channels"

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v2, p2}, Lcom/android/server/notification/RankingHelper;->dumpChannelsJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3b} :catch_3c

    .line 4003
    goto :goto_40

    .line 4001
    :catch_3c
    move-exception v1

    .line 4002
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 4004
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_40
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4005
    return-void
.end method

.method private dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 4080
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4082
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4083
    .local v1, "N":I
    if-lez v1, :cond_3b

    .line 4084
    const-string v2, "  Notification List:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4085
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_36

    .line 4086
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 4087
    .local v3, "nr":Lcom/android/server/notification/NotificationRecord;
    iget-boolean v4, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v4, :cond_28

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_28

    .end local v3    # "nr":Lcom/android/server/notification/NotificationRecord;
    goto :goto_33

    .line 4088
    .restart local v3    # "nr":Lcom/android/server/notification/NotificationRecord;
    :cond_28
    const-string v4, "    "

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v6, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 4085
    .end local v3    # "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 4090
    .end local v2    # "i":I
    :cond_36
    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4092
    .end local v1    # "N":I
    :cond_3b
    monitor-exit v0

    .line 4093
    return-void

    .line 4092
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method private dumpProto(Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 22
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    move-object/from16 v1, p0

    .line 4008
    move-object/from16 v2, p2

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v3, p1

    invoke-direct {v0, v3}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v10, v0

    .line 4009
    .local v10, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v11, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v11

    .line 4010
    :try_start_f
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4011
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    move v13, v4

    .end local v4    # "i":I
    .local v13, "i":I
    if-ge v13, v0, :cond_3f

    .line 4012
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    move-object v14, v4

    .line 4013
    .local v14, "nr":Lcom/android/server/notification/NotificationRecord;
    iget-boolean v4, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v4, :cond_2f

    iget-object v4, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_2f

    .end local v14    # "nr":Lcom/android/server/notification/NotificationRecord;
    goto :goto_3c

    .line 4014
    .restart local v14    # "nr":Lcom/android/server/notification/NotificationRecord;
    :cond_2f
    const-wide v6, 0x20b00000001L

    iget-boolean v8, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v9, 0x1

    move-object v4, v14

    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    .line 4011
    .end local v14    # "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_3c
    add-int/lit8 v4, v13, 0x1

    .end local v13    # "i":I
    .restart local v4    # "i":I
    goto :goto_16

    .line 4017
    .end local v4    # "i":I
    :cond_3f
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v0, v4

    .line 4018
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_47
    move v13, v4

    .end local v4    # "i":I
    .restart local v13    # "i":I
    if-ge v13, v0, :cond_70

    .line 4019
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    move-object v14, v4

    .line 4020
    .restart local v14    # "nr":Lcom/android/server/notification/NotificationRecord;
    iget-boolean v4, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v4, :cond_60

    iget-object v4, v14, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_60

    .end local v14    # "nr":Lcom/android/server/notification/NotificationRecord;
    goto :goto_6d

    .line 4021
    .restart local v14    # "nr":Lcom/android/server/notification/NotificationRecord;
    :cond_60
    const-wide v6, 0x20b00000001L

    iget-boolean v8, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v9, 0x0

    move-object v4, v14

    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    .line 4018
    .end local v14    # "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_6d
    add-int/lit8 v4, v13, 0x1

    .end local v13    # "i":I
    .restart local v4    # "i":I
    goto :goto_47

    .line 4024
    .end local v4    # "i":I
    :cond_70
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v4}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed()Ljava/util/List;

    move-result-object v4

    move-object v13, v4

    .line 4025
    .local v13, "snoozed":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    move v0, v4

    .line 4026
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_7d
    move v14, v4

    .end local v4    # "i":I
    .local v14, "i":I
    if-ge v14, v0, :cond_a4

    .line 4027
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    move-object v15, v4

    .line 4028
    .local v15, "nr":Lcom/android/server/notification/NotificationRecord;
    iget-boolean v4, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v4, :cond_94

    iget-object v4, v15, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-nez v4, :cond_94

    .end local v15    # "nr":Lcom/android/server/notification/NotificationRecord;
    goto :goto_a1

    .line 4029
    .restart local v15    # "nr":Lcom/android/server/notification/NotificationRecord;
    :cond_94
    const-wide v6, 0x20b00000001L

    iget-boolean v8, v2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    const/4 v9, 0x2

    move-object v4, v15

    move-object v5, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/NotificationRecord;->dump(Landroid/util/proto/ProtoOutputStream;JZI)V

    .line 4026
    .end local v15    # "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_a1
    add-int/lit8 v4, v14, 0x1

    .end local v14    # "i":I
    .restart local v4    # "i":I
    goto :goto_7d

    .line 4033
    .end local v4    # "i":I
    :cond_a4
    const-wide v4, 0x10b00000002L

    invoke-virtual {v10, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 4034
    .local v4, "zenLog":J
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v6, v10}, Lcom/android/server/notification/ZenModeHelper;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 4035
    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_cd

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 4036
    .local v7, "suppressor":Landroid/content/ComponentName;
    const-wide v8, 0x20b00000004L

    invoke-virtual {v7, v10, v8, v9}, Landroid/content/ComponentName;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4037
    .end local v7    # "suppressor":Landroid/content/ComponentName;
    goto :goto_b8

    .line 4038
    :cond_cd
    invoke-virtual {v10, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4040
    const-wide v6, 0x10b00000003L

    invoke-virtual {v10, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 4041
    .local v6, "listenersToken":J
    iget-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v8, v10, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4042
    invoke-virtual {v10, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4044
    const-wide v8, 0x10500000004L

    iget v14, v1, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    invoke-virtual {v10, v8, v9, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4046
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_ec
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_142

    .line 4047
    const-wide v14, 0x20b00000005L

    invoke-virtual {v10, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 4050
    .local v14, "effectsToken":J
    move-object/from16 v16, v13

    const-wide v12, 0x10500000001L

    .end local v13    # "snoozed":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .local v16, "snoozed":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 4051
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 4050
    invoke-virtual {v10, v12, v13, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4052
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 4053
    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/ArraySet;

    .line 4054
    .local v9, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_116
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-ge v12, v13, :cond_134

    .line 4055
    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 4056
    .local v13, "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    move-wide/from16 v17, v4

    const-wide v3, 0x20b00000002L

    .end local v4    # "zenLog":J
    .local v17, "zenLog":J
    const/4 v5, 0x0

    invoke-virtual {v13, v10, v3, v4, v5}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->writeToProto(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/notification/ManagedServices;)V

    .line 4054
    .end local v13    # "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v4, v17

    move-object/from16 v3, p1

    goto :goto_116

    .line 4059
    .end local v12    # "j":I
    .end local v17    # "zenLog":J
    .restart local v4    # "zenLog":J
    :cond_134
    move-wide/from16 v17, v4

    .end local v4    # "zenLog":J
    .restart local v17    # "zenLog":J
    invoke-virtual {v10, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4046
    .end local v9    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    .end local v14    # "effectsToken":J
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v13, v16

    move-wide/from16 v4, v17

    move-object/from16 v3, p1

    goto :goto_ec

    .line 4062
    .end local v8    # "i":I
    .end local v16    # "snoozed":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v17    # "zenLog":J
    .restart local v4    # "zenLog":J
    .local v13, "snoozed":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    :cond_142
    move-wide/from16 v17, v4

    move-object/from16 v16, v13

    .end local v4    # "zenLog":J
    .end local v13    # "snoozed":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v16    # "snoozed":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .restart local v17    # "zenLog":J
    const-wide v3, 0x10b00000006L

    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 4064
    .local v3, "assistantsToken":J
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v5, v10, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4065
    invoke-virtual {v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4067
    const-wide v8, 0x10b00000007L

    invoke-virtual {v10, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 4068
    .local v8, "conditionsToken":J
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v5, v10, v2}, Lcom/android/server/notification/ConditionProviders;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4069
    invoke-virtual {v10, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4071
    const-wide v12, 0x10b00000008L

    invoke-virtual {v10, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 4072
    .local v12, "rankingToken":J
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v5, v10, v2}, Lcom/android/server/notification/RankingHelper;->dump(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4073
    invoke-virtual {v10, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4074
    .end local v0    # "N":I
    .end local v3    # "assistantsToken":J
    .end local v6    # "listenersToken":J
    .end local v8    # "conditionsToken":J
    .end local v12    # "rankingToken":J
    .end local v16    # "snoozed":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v17    # "zenLog":J
    monitor-exit v11
    :try_end_17a
    .catchall {:try_start_f .. :try_end_17a} :catchall_17e

    .line 4076
    invoke-virtual {v10}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 4077
    return-void

    .line 4074
    :catchall_17e
    move-exception v0

    :try_start_17f
    monitor-exit v11
    :try_end_180
    .catchall {:try_start_17f .. :try_end_180} :catchall_17e

    throw v0
.end method

.method private exitIdle()V
    .registers 3

    .line 1865
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    if-eqz v0, :cond_c

    .line 1866
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    const-string/jumbo v1, "notification interaction"

    invoke-interface {v0, v1}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    .line 1869
    :cond_c
    goto :goto_e

    .line 1868
    :catch_d
    move-exception v0

    .line 1870
    :goto_e
    return-void
.end method

.method private findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 10
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "groupKey"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 6487
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6488
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6489
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_34

    .line 6490
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 6491
    .local v3, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v3, p4}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 6492
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 6493
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6489
    .end local v3    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 6496
    .end local v2    # "i":I
    :cond_34
    return-object v0
.end method

.method private findNotificationByKeyLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 6505
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    move-object v1, v0

    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v0, :cond_a

    .line 6506
    return-object v1

    .line 6508
    :cond_a
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_14

    .line 6509
    return-object v1

    .line 6511
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method private findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 6
    .param p2, "key"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/notification/NotificationRecord;"
        }
    .end annotation

    .line 6544
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6545
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_21

    .line 6546
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 6547
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    return-object v2

    .line 6545
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 6550
    .end local v1    # "i":I
    :cond_21
    const/4 v1, 0x0

    return-object v1
.end method

.method private findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .registers 10
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/android/server/notification/NotificationRecord;"
        }
    .end annotation

    .line 6530
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6531
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_37

    .line 6532
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 6533
    .local v2, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-direct {p0, v2, p5}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    if-ne v3, p4, :cond_34

    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 6534
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 6535
    return-object v2

    .line 6531
    .end local v2    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 6538
    .end local v1    # "i":I
    :cond_37
    const/4 v1, 0x0

    return-object v1
.end method

.method private findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I
    .registers 4
    .param p1, "target"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 5717
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/RankingHelper;->indexOf(Ljava/util/ArrayList;Lcom/android/server/notification/NotificationRecord;)I

    move-result v0

    return v0
.end method

.method static getDefaultVibration()[J
    .registers 1

    .line 1398
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationVibrationController:Lcom/oneplus/notification/NotificationVibrationController;

    invoke-static {}, Lcom/oneplus/notification/NotificationVibrationController;->getDefaultVibration()[J

    move-result-object v0

    return-object v0
.end method

.method private getGroupHelper()Lcom/android/server/notification/GroupHelper;
    .registers 3

    .line 1788
    new-instance v0, Lcom/android/server/notification/GroupHelper;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$10;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationManagerService$10;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-direct {v0, v1}, Lcom/android/server/notification/GroupHelper;-><init>(Lcom/android/server/notification/GroupHelper$Callback;)V

    return-object v0
.end method

.method static getLongArray(Landroid/content/res/Resources;II[J)[J
    .registers 10
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I
    .param p2, "maxlen"    # I
    .param p3, "def"    # [J

    .line 1383
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 1384
    .local v0, "ar":[I
    if-nez v0, :cond_7

    .line 1385
    return-object p3

    .line 1387
    :cond_7
    array-length v1, v0

    if-le v1, p2, :cond_c

    move v1, p2

    goto :goto_d

    :cond_c
    array-length v1, v0

    .line 1388
    .local v1, "len":I
    :goto_d
    new-array v2, v1, [J

    .line 1389
    .local v2, "out":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v1, :cond_1a

    .line 1390
    aget v4, v0, v3

    int-to-long v4, v4

    aput-wide v4, v2, v3

    .line 1389
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 1392
    .end local v3    # "i":I
    :cond_1a
    return-object v2
.end method

.method private getRealUserId(I)I
    .registers 3
    .param p1, "userId"    # I

    .line 2169
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_6

    :cond_5
    move v0, p1

    :goto_6
    return v0
.end method

.method private getSuppressors()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 1968
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1969
    .local v0, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_30

    .line 1970
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 1972
    .local v2, "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1973
    .local v4, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    iget-object v5, v4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1974
    .end local v4    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    goto :goto_1b

    .line 1969
    .end local v2    # "serviceInfoList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 1977
    .end local v1    # "i":I
    :cond_30
    return-object v0
.end method

.method private grantUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V
    .registers 16
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "sourceUid"    # I
    .param p4, "targetPkg"    # Ljava/lang/String;
    .param p5, "targetUserId"    # I

    .line 6071
    if-eqz p2, :cond_35

    const-string v0, "content"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_35

    .line 6073
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6075
    .local v0, "ident":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    .line 6076
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x1

    .line 6078
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {p2, v3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v8

    .line 6075
    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move v9, p5

    invoke-interface/range {v2 .. v9}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_29} :catch_2f
    .catchall {:try_start_13 .. :try_end_29} :catchall_2a

    goto :goto_30

    .line 6083
    :catchall_2a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 6080
    :catch_2f
    move-exception v2

    .line 6083
    :goto_30
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6084
    nop

    .line 6085
    return-void

    .line 6071
    .end local v0    # "ident":J
    :cond_35
    :goto_35
    return-void
.end method

.method private handleDurationReached(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .registers 5
    .param p1, "record"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 5543
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_26

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5544
    :cond_26
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 5545
    :try_start_29
    iget-object v1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v1

    .line 5546
    .local v1, "index":I
    if-ltz v1, :cond_36

    .line 5547
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService;->cancelToastLocked(I)V

    .line 5549
    .end local v1    # "index":I
    :cond_36
    monitor-exit v0

    .line 5550
    return-void

    .line 5549
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private handleGroupedNotificationLocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;II)V
    .registers 22
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "callingUid"    # I
    .param p4, "callingPid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 5088
    iget-object v10, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5089
    .local v10, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    .line 5090
    .local v11, "n":Landroid/app/Notification;
    invoke-virtual {v11}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 5093
    iget v0, v11, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, v11, Landroid/app/Notification;->flags:I

    .line 5096
    :cond_1e
    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v12

    .line 5097
    .local v12, "group":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v13

    .line 5099
    .local v13, "isSummary":Z
    const/4 v0, 0x0

    if-eqz v9, :cond_30

    iget-object v1, v9, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    goto :goto_31

    :cond_30
    move-object v1, v0

    :goto_31
    move-object v14, v1

    .line 5100
    .local v14, "oldN":Landroid/app/Notification;
    if-eqz v9, :cond_3b

    iget-object v0, v9, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    nop

    :cond_3b
    move-object v15, v0

    .line 5101
    .local v15, "oldGroup":Ljava/lang/String;
    if-eqz v9, :cond_46

    invoke-virtual {v14}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x1

    goto :goto_47

    :cond_46
    const/4 v0, 0x0

    :goto_47
    move/from16 v16, v0

    .line 5103
    .local v16, "oldIsSummary":Z
    if-eqz v16, :cond_80

    .line 5104
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 5105
    .local v0, "removedSummary":Lcom/android/server/notification/NotificationRecord;
    if-eq v0, v9, :cond_80

    .line 5107
    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_5e

    :cond_5c
    const-string v1, "<null>"

    .line 5108
    .local v1, "removedKey":Ljava/lang/String;
    :goto_5e
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed summary didn\'t match old notification: old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", removed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5112
    .end local v0    # "removedSummary":Lcom/android/server/notification/NotificationRecord;
    .end local v1    # "removedKey":Ljava/lang/String;
    :cond_80
    if-eqz v13, :cond_87

    .line 5113
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5120
    :cond_87
    if-eqz v16, :cond_9d

    if-eqz v13, :cond_91

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 5121
    :cond_91
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, v9

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService;->cancelGroupChildrenLocked(Lcom/android/server/notification/NotificationRecord;IILjava/lang/String;ZLcom/android/server/notification/NotificationManagerService$FlagChecker;)V

    .line 5124
    :cond_9d
    return-void
.end method

.method private handleKillTokenTimeout(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .line 5562
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_1a

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kill Token Timeout token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5563
    :cond_1a
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 5564
    :try_start_1d
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->finishTokenLocked(Landroid/os/IBinder;)V

    .line 5565
    monitor-exit v0

    .line 5566
    return-void

    .line 5565
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    throw v1
.end method

.method private handleListenerHintsChanged(I)V
    .registers 4
    .param p1, "hints"    # I

    .line 5740
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5741
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyListenerHintsChangedLocked(I)V

    .line 5742
    monitor-exit v0

    .line 5743
    return-void

    .line 5742
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private handleListenerInterruptionFilterChanged(I)V
    .registers 4
    .param p1, "interruptionFilter"    # I

    .line 5746
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5747
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyInterruptionFilterChanged(I)V

    .line 5748
    monitor-exit v0

    .line 5749
    return-void

    .line 5748
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private handleRankingReconsideration(Landroid/os/Message;)V
    .registers 15
    .param p1, "message"    # Landroid/os/Message;

    .line 5617
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/notification/RankingReconsideration;

    if-nez v0, :cond_7

    return-void

    .line 5618
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/notification/RankingReconsideration;

    .line 5619
    .local v0, "recon":Lcom/android/server/notification/RankingReconsideration;
    invoke-virtual {v0}, Lcom/android/server/notification/RankingReconsideration;->run()V

    .line 5621
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5622
    :try_start_11
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lcom/android/server/notification/RankingReconsideration;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 5623
    .local v2, "record":Lcom/android/server/notification/NotificationRecord;
    if-nez v2, :cond_21

    .line 5624
    monitor-exit v1

    return-void

    .line 5626
    :cond_21
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v3

    .line 5627
    .local v3, "indexBefore":I
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v4

    .line 5628
    .local v4, "interceptBefore":Z
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v5

    .line 5629
    .local v5, "contactAffinityBefore":F
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v6

    .line 5630
    .local v6, "visibilityBefore":I
    invoke-virtual {v0, v2}, Lcom/android/server/notification/RankingReconsideration;->applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 5631
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->applyZenModeLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 5632
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 5633
    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->findNotificationRecordIndexLocked(Lcom/android/server/notification/NotificationRecord;)I

    move-result v7

    .line 5634
    .local v7, "indexAfter":I
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v8

    .line 5635
    .local v8, "interceptAfter":Z
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v9

    .line 5636
    .local v9, "contactAffinityAfter":F
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v10

    .line 5637
    .local v10, "visibilityAfter":I
    if-ne v3, v7, :cond_57

    if-ne v4, v8, :cond_57

    if-eq v6, v10, :cond_55

    goto :goto_57

    :cond_55
    const/4 v11, 0x0

    goto :goto_58

    :cond_57
    :goto_57
    const/4 v11, 0x1

    .line 5639
    .local v11, "changed":Z
    :goto_58
    if-eqz v4, :cond_65

    if-nez v8, :cond_65

    .line 5640
    invoke-static {v5, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v12

    if-eqz v12, :cond_65

    .line 5641
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 5643
    .end local v2    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v3    # "indexBefore":I
    .end local v4    # "interceptBefore":Z
    .end local v5    # "contactAffinityBefore":F
    .end local v6    # "visibilityBefore":I
    .end local v7    # "indexAfter":I
    .end local v8    # "interceptAfter":Z
    .end local v9    # "contactAffinityAfter":F
    .end local v10    # "visibilityAfter":I
    :cond_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_11 .. :try_end_66} :catchall_6f

    move v1, v11

    .line 5644
    .end local v11    # "changed":Z
    .local v1, "changed":Z
    if-eqz v1, :cond_6e

    .line 5645
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleSendRankingUpdate()V

    .line 5647
    :cond_6e
    return-void

    .line 5643
    .end local v1    # "changed":Z
    :catchall_6f
    move-exception v2

    :try_start_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v2
.end method

.method private handleSavePolicyFile()V
    .registers 6

    .line 632
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "NotificationService"

    const-string/jumbo v1, "handleSavePolicyFile"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_c
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 636
    :try_start_f
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_15} :catch_3d
    .catchall {:try_start_f .. :try_end_15} :catchall_3b

    .line 640
    .local v1, "stream":Ljava/io/FileOutputStream;
    nop

    .line 639
    nop

    .line 643
    const/4 v2, 0x0

    :try_start_18
    invoke-direct {p0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;Z)V

    .line 644
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_20} :catch_21
    .catchall {:try_start_18 .. :try_end_20} :catchall_3b

    .line 648
    goto :goto_2e

    .line 645
    :catch_21
    move-exception v2

    .line 646
    .local v2, "e":Ljava/io/IOException;
    :try_start_22
    const-string v3, "NotificationService"

    const-string v4, "Failed to save policy file, restoring backup"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 647
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 649
    .end local v1    # "stream":Ljava/io/FileOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_3b

    .line 650
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 651
    return-void

    .line 649
    :catchall_3b
    move-exception v1

    goto :goto_47

    .line 637
    :catch_3d
    move-exception v1

    .line 638
    .local v1, "e":Ljava/io/IOException;
    :try_start_3e
    const-string v2, "NotificationService"

    const-string v3, "Failed to save policy file"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 639
    monitor-exit v0

    return-void

    .line 649
    .end local v1    # "e":Ljava/io/IOException;
    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_3b

    throw v1
.end method

.method private handleSendRankingUpdate()V
    .registers 4

    .line 5721
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5722
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyRankingUpdateLocked(Ljava/util/List;)V

    .line 5723
    monitor-exit v0

    .line 5724
    return-void

    .line 5723
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private hasAutoGroupSummaryLocked(Landroid/service/notification/StatusBarNotification;)Z
    .registers 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 3913
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAutobundledSummaries:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 3914
    .local v0, "summaries":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return v1
.end method

.method private initLockAppList()V
    .registers 14

    .line 7701
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mLockAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7703
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 7704
    .local v1, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 7705
    .local v2, "userId":I
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 7706
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v5

    .line 7707
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 7708
    .local v6, "packageCount":I
    const-string v7, "NotificationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "initLockAppList for userId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7709
    nop

    .line 7709
    .local v4, "p":I
    :goto_52
    if-ge v4, v6, :cond_b5

    .line 7710
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 7711
    .local v7, "packageName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 7713
    .local v8, "key":Ljava/lang/StringBuilder;
    :try_start_61
    invoke-virtual {v3, v7, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v9

    .line 7714
    .local v9, "uid":I
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v11, 0x3f

    invoke-interface {v10, v11, v9, v7}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v10

    if-nez v10, :cond_9a

    .line 7716
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7717
    const-string/jumbo v10, "|"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7718
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 7719
    iget-object v10, p0, Lcom/android/server/notification/NotificationManagerService;->mLockAppList:Ljava/util/List;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7720
    const-string v10, "NotificationService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " is locked"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_9a} :catch_9b

    .line 7724
    .end local v9    # "uid":I
    :cond_9a
    goto :goto_b2

    .line 7722
    :catch_9b
    move-exception v9

    .line 7723
    .local v9, "e":Ljava/lang/Exception;
    const-string v10, "NotificationService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fail to get app lock mode for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7709
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/StringBuilder;
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_b2
    add-int/lit8 v4, v4, 0x1

    goto :goto_52

    .line 7726
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    .end local v2    # "userId":I
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v4    # "p":I
    .end local v5    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v6    # "packageCount":I
    :cond_b5
    goto/16 :goto_15

    .line 7727
    :cond_b7
    return-void
.end method

.method private isCallerInstantApp(Ljava/lang/String;)Z
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;

    .line 6644
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 6645
    return v1

    .line 6648
    :cond_8
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 6651
    :try_start_11
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 6652
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 6651
    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 6653
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_22

    .line 6656
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v1

    return v1

    .line 6654
    :cond_22
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_39} :catch_39

    .line 6657
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_39
    move-exception v0

    .line 6658
    .local v0, "re":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 7
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .line 5408
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5410
    .local v0, "token":J
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_2b

    .line 5412
    .local v2, "currentUser":I
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5413
    nop

    .line 5412
    nop

    .line 5414
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_29

    .line 5415
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v3

    if-eq v3, v2, :cond_29

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 5416
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v3

    if-eqz v3, :cond_27

    goto :goto_29

    :cond_27
    const/4 v3, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v3, 0x1

    .line 5414
    :goto_2a
    return v3

    .line 5412
    .end local v2    # "currentUser":I
    :catchall_2b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isPackageSuspendedForUser(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 6848
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6849
    .local v0, "identity":J
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 6851
    .local v2, "userId":I
    :try_start_8
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, v2}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v3
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_e} :catch_14
    .catchall {:try_start_8 .. :try_end_e} :catchall_12

    .line 6858
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6851
    return v3

    .line 6858
    :catchall_12
    move-exception v3

    goto :goto_23

    .line 6854
    :catch_14
    move-exception v3

    .line 6856
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x0

    .line 6858
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6856
    return v4

    .line 6852
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1a
    move-exception v3

    .line 6853
    .local v3, "re":Landroid/os/RemoteException;
    :try_start_1b
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Could not talk to package manager service"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_12

    .line 6858
    .end local v3    # "re":Landroid/os/RemoteException;
    :goto_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private isPackageSuspendedLocked(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 4810
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4811
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    .line 4813
    .local v1, "callingUid":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v2

    return v2
.end method

.method private isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 4
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 6840
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 6841
    const/4 v0, 0x0

    return v0

    .line 6844
    :cond_c
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$playVibration$0(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V
    .registers 8
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "effect"    # Landroid/os/VibrationEffect;

    .line 5386
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 5388
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 5386
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I

    move-result v0

    .line 5389
    .local v0, "waitMs":I
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_2b

    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delaying vibration by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5391
    :cond_2b
    int-to-long v1, v0

    :try_start_2c
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_30

    .line 5392
    goto :goto_31

    :catch_30
    move-exception v1

    .line 5393
    :goto_31
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v3

    .line 5394
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 5393
    invoke-virtual {v1, v2, v3, p2, v4}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 5395
    return-void
.end method

.method private listenForCallState()V
    .registers 4

    .line 6690
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$18;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationManagerService$18;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 6698
    return-void
.end method

.method private loadPolicyFile()V
    .registers 6

    .line 603
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "NotificationService"

    const-string/jumbo v1, "loadPolicyFile"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :cond_c
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 606
    const/4 v1, 0x0

    .line 608
    .local v1, "infile":Ljava/io/InputStream;
    const/4 v2, 0x0

    :try_start_11
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v1, v3

    .line 609
    invoke-virtual {p0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;Z)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_1b} :catch_42
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1b} :catch_36
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_1b} :catch_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_1b} :catch_1e
    .catchall {:try_start_11 .. :try_end_1b} :catchall_1c

    goto :goto_46

    .line 621
    :catchall_1c
    move-exception v2

    goto :goto_4c

    .line 618
    :catch_1e
    move-exception v2

    .line 619
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1f
    const-string v3, "NotificationService"

    const-string v4, "Unable to parse notification policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_1c

    .line 621
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_26
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_50

    goto :goto_49

    .line 616
    :catch_2a
    move-exception v2

    .line 617
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_2b
    const-string v3, "NotificationService"

    const-string v4, "Unable to parse notification policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_1c

    .line 621
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :try_start_32
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_50

    goto :goto_49

    .line 614
    :catch_36
    move-exception v2

    .line 615
    .local v2, "e":Ljava/io/IOException;
    :try_start_37
    const-string v3, "NotificationService"

    const-string v4, "Unable to read notification policy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_1c

    .line 621
    .end local v2    # "e":Ljava/io/IOException;
    :try_start_3e
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_50

    goto :goto_49

    .line 610
    :catch_42
    move-exception v3

    .line 613
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_43
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->readDefaultApprovedServices(I)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_1c

    .line 621
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_46
    :try_start_46
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 622
    :goto_49
    nop

    .line 623
    .end local v1    # "infile":Ljava/io/InputStream;
    monitor-exit v0

    .line 624
    return-void

    .line 621
    .restart local v1    # "infile":Ljava/io/InputStream;
    :goto_4c
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    .line 623
    .end local v1    # "infile":Ljava/io/InputStream;
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_50

    throw v1
.end method

.method private makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;
    .registers 41
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    move-object/from16 v0, p0

    .line 6706
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6707
    .local v1, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6708
    .local v2, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6709
    .local v3, "interceptedKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6710
    .local v4, "importance":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 6711
    .local v5, "overrideGroupKeys":Landroid/os/Bundle;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v15, v6

    .line 6712
    .local v15, "visibilityOverrides":Landroid/os/Bundle;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v14, v6

    .line 6713
    .local v14, "suppressedVisualEffects":Landroid/os/Bundle;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v13, v6

    .line 6714
    .local v13, "explanation":Landroid/os/Bundle;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v12, v6

    .line 6715
    .local v12, "channels":Landroid/os/Bundle;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v11, v6

    .line 6716
    .local v11, "overridePeople":Landroid/os/Bundle;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v10, v6

    .line 6717
    .local v10, "snoozeCriteria":Landroid/os/Bundle;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v9, v6

    .line 6718
    .local v9, "showBadge":Landroid/os/Bundle;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v8, v6

    .line 6719
    .local v8, "userSentiment":Landroid/os/Bundle;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v7, v6

    .line 6723
    .local v7, "hidden":Landroid/os/Bundle;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6724
    .local v6, "isLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    move-object/from16 v22, v6

    new-instance v6, Ljava/util/ArrayList;

    .line 6724
    .end local v6    # "isLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v22, "isLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 6725
    .local v6, "lockedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v23, v7

    iget v7, v0, Lcom/android/server/notification/NotificationManagerService;->mAppLockerSwitch:I

    .line 6725
    .end local v7    # "hidden":Landroid/os/Bundle;
    .local v23, "hidden":Landroid/os/Bundle;
    move-object/from16 v24, v8

    .line 6725
    .end local v8    # "userSentiment":Landroid/os/Bundle;
    .local v24, "userSentiment":Landroid/os/Bundle;
    const/4 v8, 0x1

    if-ne v7, v8, :cond_94

    .line 6726
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mLockAppList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    .line 6727
    .local v7, "L":I
    const/16 v16, 0x0

    .line 6727
    .local v16, "l":I
    :goto_6f
    move/from16 v26, v16

    .line 6727
    .end local v16    # "l":I
    .local v26, "l":I
    move/from16 v8, v26

    if-ge v8, v7, :cond_94

    .line 6728
    .end local v26    # "l":I
    .local v8, "l":I
    move/from16 v28, v7

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mLockAppList:Ljava/util/List;

    .line 6728
    .end local v7    # "L":I
    .local v28, "L":I
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 6729
    .local v7, "item":Ljava/lang/String;
    move-object/from16 v29, v9

    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService;->mUnlockAppList:Ljava/util/List;

    .line 6729
    .end local v9    # "showBadge":Landroid/os/Bundle;
    .local v29, "showBadge":Landroid/os/Bundle;
    invoke-interface {v9, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8c

    .line 6730
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6727
    .end local v7    # "item":Ljava/lang/String;
    :cond_8c
    add-int/lit8 v16, v8, 0x1

    .line 6727
    .end local v8    # "l":I
    .restart local v16    # "l":I
    move/from16 v7, v28

    move-object/from16 v9, v29

    const/4 v8, 0x1

    goto :goto_6f

    .line 6736
    .end local v16    # "l":I
    .end local v28    # "L":I
    .end local v29    # "showBadge":Landroid/os/Bundle;
    .restart local v9    # "showBadge":Landroid/os/Bundle;
    :cond_94
    move-object/from16 v29, v9

    .line 6736
    .end local v9    # "showBadge":Landroid/os/Bundle;
    .restart local v29    # "showBadge":Landroid/os/Bundle;
    const/4 v7, 0x0

    .line 6736
    .local v7, "i":I
    :goto_97
    if-ge v7, v1, :cond_18b

    .line 6737
    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/NotificationRecord;

    .line 6738
    .local v8, "record":Lcom/android/server/notification/NotificationRecord;
    iget-object v9, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    move/from16 v30, v1

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v9

    .line 6738
    .end local v1    # "N":I
    .local v30, "N":I
    if-nez v9, :cond_b9

    .line 6739
    nop

    .line 6736
    move-object/from16 v1, v22

    move-object/from16 v33, v23

    move-object/from16 v32, v24

    move-object/from16 v31, v29

    .line 6736
    .end local v8    # "record":Lcom/android/server/notification/NotificationRecord;
    .end local v22    # "isLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v23    # "hidden":Landroid/os/Bundle;
    .end local v24    # "userSentiment":Landroid/os/Bundle;
    .end local v29    # "showBadge":Landroid/os/Bundle;
    .local v1, "isLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v31, "showBadge":Landroid/os/Bundle;
    .local v32, "userSentiment":Landroid/os/Bundle;
    .local v33, "hidden":Landroid/os/Bundle;
    :goto_b6
    const/4 v0, 0x0

    goto/16 :goto_17b

    .line 6741
    .end local v1    # "isLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v31    # "showBadge":Landroid/os/Bundle;
    .end local v32    # "userSentiment":Landroid/os/Bundle;
    .end local v33    # "hidden":Landroid/os/Bundle;
    .restart local v8    # "record":Lcom/android/server/notification/NotificationRecord;
    .restart local v22    # "isLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v23    # "hidden":Landroid/os/Bundle;
    .restart local v24    # "userSentiment":Landroid/os/Bundle;
    .restart local v29    # "showBadge":Landroid/os/Bundle;
    :cond_b9
    iget-object v9, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 6742
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6743
    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6744
    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_da

    .line 6745
    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanation()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v13, v9, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 6747
    :cond_da
    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 6748
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6751
    :cond_e3
    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v0

    invoke-virtual {v14, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6752
    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v0

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_f9

    .line 6754
    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v0

    invoke-virtual {v15, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6756
    :cond_f9
    iget-object v0, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6757
    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v0

    invoke-virtual {v12, v9, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 6758
    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v11, v9, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6759
    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v10, v9, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6760
    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v0

    move-object/from16 v1, v29

    invoke-virtual {v1, v9, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6761
    .end local v29    # "showBadge":Landroid/os/Bundle;
    .local v1, "showBadge":Landroid/os/Bundle;
    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v0

    move-object/from16 v31, v1

    move-object/from16 v1, v24

    invoke-virtual {v1, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6762
    .end local v24    # "userSentiment":Landroid/os/Bundle;
    .local v1, "userSentiment":Landroid/os/Bundle;
    .restart local v31    # "showBadge":Landroid/os/Bundle;
    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->isHidden()Z

    move-result v0

    move-object/from16 v32, v1

    move-object/from16 v1, v23

    invoke-virtual {v1, v9, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6767
    .end local v23    # "hidden":Landroid/os/Bundle;
    .local v1, "hidden":Landroid/os/Bundle;
    .restart local v32    # "userSentiment":Landroid/os/Bundle;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6768
    .local v0, "applock":Ljava/lang/StringBuilder;
    move-object/from16 v33, v1

    iget-object v1, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 6768
    .end local v1    # "hidden":Landroid/os/Bundle;
    .restart local v33    # "hidden":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6769
    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6770
    iget-object v1, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 6771
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16d

    .line 6772
    move-object/from16 v34, v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 6772
    .end local v0    # "applock":Ljava/lang/StringBuilder;
    .local v34, "applock":Ljava/lang/StringBuilder;
    move-object/from16 v1, v22

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6772
    .end local v22    # "isLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v1, "isLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    goto/16 :goto_b6

    .line 6774
    .end local v1    # "isLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v34    # "applock":Ljava/lang/StringBuilder;
    .restart local v0    # "applock":Ljava/lang/StringBuilder;
    .restart local v22    # "isLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_16d
    move-object/from16 v34, v0

    move-object/from16 v1, v22

    .line 6774
    .end local v0    # "applock":Ljava/lang/StringBuilder;
    .end local v22    # "isLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v1    # "isLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v34    # "applock":Ljava/lang/StringBuilder;
    move-object/from16 v36, v8

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 6774
    .end local v8    # "record":Lcom/android/server/notification/NotificationRecord;
    .local v36, "record":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6736
    .end local v9    # "key":Ljava/lang/String;
    .end local v34    # "applock":Ljava/lang/StringBuilder;
    .end local v36    # "record":Lcom/android/server/notification/NotificationRecord;
    :goto_17b
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v22, v1

    move/from16 v1, v30

    move-object/from16 v29, v31

    move-object/from16 v24, v32

    move-object/from16 v23, v33

    move-object/from16 v0, p0

    goto/16 :goto_97

    .line 6779
    .end local v7    # "i":I
    .end local v30    # "N":I
    .end local v31    # "showBadge":Landroid/os/Bundle;
    .end local v32    # "userSentiment":Landroid/os/Bundle;
    .end local v33    # "hidden":Landroid/os/Bundle;
    .local v1, "N":I
    .restart local v22    # "isLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v23    # "hidden":Landroid/os/Bundle;
    .restart local v24    # "userSentiment":Landroid/os/Bundle;
    .restart local v29    # "showBadge":Landroid/os/Bundle;
    :cond_18b
    move/from16 v30, v1

    move-object/from16 v1, v22

    move-object/from16 v33, v23

    move-object/from16 v32, v24

    move-object/from16 v31, v29

    const/4 v0, 0x0

    .line 6779
    .end local v22    # "isLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .end local v23    # "hidden":Landroid/os/Bundle;
    .end local v24    # "userSentiment":Landroid/os/Bundle;
    .end local v29    # "showBadge":Landroid/os/Bundle;
    .local v1, "isLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v30    # "N":I
    .restart local v31    # "showBadge":Landroid/os/Bundle;
    .restart local v32    # "userSentiment":Landroid/os/Bundle;
    .restart local v33    # "hidden":Landroid/os/Bundle;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 6780
    .local v9, "M":I
    new-array v7, v9, [Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v22, v7

    check-cast v22, [Ljava/lang/String;

    .line 6781
    .local v22, "keysAr":[Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v23, v7

    check-cast v23, [Ljava/lang/String;

    .line 6782
    .local v23, "interceptedKeysAr":[Ljava/lang/String;
    new-array v8, v9, [I

    .line 6783
    .local v8, "importanceAr":[I
    move v7, v0

    .line 6783
    .restart local v7    # "i":I
    :goto_1b5
    if-ge v7, v9, :cond_1c9

    .line 6784
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v8, v7

    .line 6783
    add-int/lit8 v7, v7, 0x1

    const/4 v0, 0x0

    goto :goto_1b5

    .line 6789
    .end local v7    # "i":I
    :cond_1c9
    new-array v0, v9, [Z

    .line 6790
    .local v0, "isLockAr":[Z
    const/16 v37, 0x0

    .line 6790
    .local v37, "i":I
    :goto_1cd
    move/from16 v7, v37

    .line 6790
    .end local v37    # "i":I
    .restart local v7    # "i":I
    if-ge v7, v9, :cond_1e6

    .line 6791
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v38, v1

    move-object/from16 v1, v16

    check-cast v1, Ljava/lang/Boolean;

    .line 6791
    .end local v1    # "isLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v38, "isLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    aput-boolean v1, v0, v7

    .line 6790
    add-int/lit8 v37, v7, 0x1

    .line 6790
    .end local v7    # "i":I
    .restart local v37    # "i":I
    move-object/from16 v1, v38

    goto :goto_1cd

    .line 6793
    .end local v37    # "i":I
    .end local v38    # "isLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v1    # "isLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_1e6
    move-object/from16 v38, v1

    .line 6793
    .end local v1    # "isLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .restart local v38    # "isLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 6796
    .local v1, "lockedAppsAr":[Ljava/lang/String;
    new-instance v24, Landroid/service/notification/NotificationRankingUpdate;

    move-object/from16 v26, v6

    move-object/from16 v25, v38

    move-object/from16 v6, v24

    .line 6796
    .end local v6    # "lockedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v38    # "isLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v25, "isLock":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v26, "lockedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v27, v33

    move-object/from16 v7, v22

    .line 6796
    .end local v33    # "hidden":Landroid/os/Bundle;
    .local v27, "hidden":Landroid/os/Bundle;
    move-object/from16 v29, v8

    move-object/from16 v28, v32

    move-object/from16 v8, v23

    .line 6796
    .end local v8    # "importanceAr":[I
    .end local v32    # "userSentiment":Landroid/os/Bundle;
    .local v28, "userSentiment":Landroid/os/Bundle;
    .local v29, "importanceAr":[I
    move/from16 v32, v9

    move-object v9, v15

    .line 6796
    .end local v9    # "M":I
    .local v32, "M":I
    move-object/from16 v33, v10

    move-object v10, v14

    .line 6796
    .end local v10    # "snoozeCriteria":Landroid/os/Bundle;
    .local v33, "snoozeCriteria":Landroid/os/Bundle;
    move-object/from16 v34, v11

    move-object/from16 v11, v29

    .line 6796
    .end local v11    # "overridePeople":Landroid/os/Bundle;
    .local v34, "overridePeople":Landroid/os/Bundle;
    move-object/from16 v35, v12

    move-object v12, v13

    .line 6796
    .end local v12    # "channels":Landroid/os/Bundle;
    .local v35, "channels":Landroid/os/Bundle;
    move-object/from16 v36, v13

    move-object v13, v5

    .line 6796
    .end local v13    # "explanation":Landroid/os/Bundle;
    .local v36, "explanation":Landroid/os/Bundle;
    move-object/from16 v37, v14

    move-object/from16 v14, v35

    .line 6796
    .end local v14    # "suppressedVisualEffects":Landroid/os/Bundle;
    .local v37, "suppressedVisualEffects":Landroid/os/Bundle;
    move-object/from16 v38, v15

    move-object/from16 v15, v34

    .line 6796
    .end local v15    # "visibilityOverrides":Landroid/os/Bundle;
    .local v38, "visibilityOverrides":Landroid/os/Bundle;
    move-object/from16 v16, v33

    move-object/from16 v17, v31

    move-object/from16 v18, v28

    move-object/from16 v19, v27

    move-object/from16 v20, v0

    move-object/from16 v21, v1

    invoke-direct/range {v6 .. v21}, Landroid/service/notification/NotificationRankingUpdate;-><init>([Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;[ILandroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;[Z[Ljava/lang/String;)V

    return-object v24
.end method

.method private maybeNotifyChannelGroupOwner(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Landroid/app/NotificationChannelGroup;)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "preUpdate"    # Landroid/app/NotificationChannelGroup;
    .param p4, "update"    # Landroid/app/NotificationChannelGroup;

    .line 1951
    :try_start_0
    invoke-virtual {p3}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v0

    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v1

    if-eq v0, v1, :cond_3f

    .line 1952
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.NOTIFICATION_CHANNEL_GROUP_BLOCK_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.app.extra.NOTIFICATION_CHANNEL_GROUP_ID"

    .line 1955
    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1954
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.app.extra.BLOCKED_STATE"

    .line 1957
    invoke-virtual {p4}, Landroid/app/NotificationChannelGroup;->isBlocked()Z

    move-result v3

    .line 1956
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 1958
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 1959
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1960
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    .line 1952
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3f} :catch_40

    .line 1964
    :cond_3f
    goto :goto_48

    .line 1962
    :catch_40
    move-exception v0

    .line 1963
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "NotificationService"

    const-string v2, "Can\'t notify app about group change"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1965
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_48
    return-void
.end method

.method private maybeNotifyChannelOwner(Ljava/lang/String;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "preUpdate"    # Landroid/app/NotificationChannel;
    .param p4, "update"    # Landroid/app/NotificationChannel;

    .line 1910
    :try_start_0
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_c

    .line 1911
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_18

    .line 1912
    :cond_c
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-eqz v0, :cond_52

    .line 1913
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_52

    .line 1914
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.NOTIFICATION_CHANNEL_BLOCK_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.app.extra.NOTIFICATION_CHANNEL_ID"

    .line 1917
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    .line 1916
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.app.extra.BLOCKED_STATE"

    .line 1919
    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    if-nez v3, :cond_37

    const/4 v3, 0x1

    goto :goto_38

    :cond_37
    const/4 v3, 0x0

    .line 1918
    :goto_38
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 1920
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 1921
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1922
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    .line 1914
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_52} :catch_53

    .line 1926
    :cond_52
    goto :goto_5b

    .line 1924
    :catch_53
    move-exception v0

    .line 1925
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "NotificationService"

    const-string v2, "Can\'t notify app about channel change"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1927
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_5b
    return-void
.end method

.method private notificationMatchesCurrentProfiles(Lcom/android/server/notification/NotificationRecord;I)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"    # I

    .line 6194
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 6195
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 6194
    :goto_16
    return v0
.end method

.method private notificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;I)Z
    .registers 5
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "userId"    # I

    .line 6179
    const/4 v0, -0x1

    if-eq p2, v0, :cond_12

    .line 6183
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    if-eq v1, v0, :cond_12

    .line 6185
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    .line 6179
    :goto_13
    return v0
.end method

.method private playSound(Lcom/android/server/notification/NotificationRecord;Landroid/net/Uri;)Z
    .registers 15
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "soundUri"    # Landroid/net/Uri;

    .line 5332
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 5338
    .local v0, "looping":Z
    :goto_f
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 5339
    .local v3, "ntf":Landroid/app/Notification;
    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->audioAttributesForNotification(Landroid/app/Notification;)Landroid/media/AudioAttributes;

    move-result-object v4

    .line 5342
    .local v4, "audioAttributes":Landroid/media/AudioAttributes;
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v5

    if-nez v5, :cond_29

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v5

    if-eqz v5, :cond_33

    :cond_29
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getHeadsetNotificationStatus()I

    move-result v5

    if-ne v5, v2, :cond_33

    move v5, v2

    goto :goto_34

    :cond_33
    move v5, v1

    .line 5344
    .local v5, "alwaysInHeadset":Z
    :goto_34
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isAudioFocusExclusive()Z

    move-result v6

    if-nez v6, :cond_50

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v6

    if-eq v6, v2, :cond_50

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 5345
    invoke-static {v4}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    if-gtz v6, :cond_52

    :cond_50
    if-eqz v5, :cond_a0

    .line 5348
    :cond_52
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 5350
    .local v6, "identity":J
    :try_start_56
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v8

    .line 5351
    .local v8, "player":Landroid/media/IRingtonePlayer;
    if-eqz v8, :cond_9c

    .line 5352
    sget-boolean v9, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v9, :cond_84

    const-string v9, "NotificationService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Playing sound "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " with attributes "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5353
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 5352
    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5354
    :cond_84
    iget-object v9, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    .line 5355
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v10

    .line 5354
    invoke-interface {v8, p2, v9, v0, v10}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_91} :catch_9b
    .catchall {:try_start_56 .. :try_end_91} :catchall_96

    .line 5356
    nop

    .line 5360
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5356
    return v2

    .line 5360
    .end local v8    # "player":Landroid/media/IRingtonePlayer;
    :catchall_96
    move-exception v1

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 5358
    :catch_9b
    move-exception v2

    .line 5360
    .end local v6    # "identity":J
    :cond_9c
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5361
    nop

    .line 5363
    :cond_a0
    return v1
.end method

.method private playVibration(Lcom/android/server/notification/NotificationRecord;[JZ)Z
    .registers 12
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "vibration"    # [J
    .param p3, "delayVibForSound"    # Z

    .line 5370
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5374
    .local v0, "identity":J
    nop

    .line 5375
    const/4 v2, 0x0

    :try_start_6
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x1

    if-eqz v3, :cond_13

    move v3, v4

    goto :goto_14

    :cond_13
    move v3, v2

    .line 5376
    .local v3, "insistent":Z
    :goto_14
    nop

    .line 5377
    if-eqz v3, :cond_19

    .line 5376
    move v5, v2

    goto :goto_1a

    .line 5377
    :cond_19
    const/4 v5, -0x1

    .line 5376
    :goto_1a
    invoke-static {p2, v5}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v5
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_1e} :catch_4d
    .catchall {:try_start_6 .. :try_end_1e} :catchall_4b

    .end local v3    # "insistent":Z
    move-object v2, v5

    .line 5382
    .local v2, "effect":Landroid/os/VibrationEffect;
    nop

    .line 5381
    nop

    .line 5383
    if-eqz p3, :cond_31

    .line 5384
    :try_start_23
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$VixLwsYU0BcPccdsEjIXUFUzzx4;

    invoke-direct {v5, p0, p1, v2}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$VixLwsYU0BcPccdsEjIXUFUzzx4;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/os/VibrationEffect;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5395
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_46

    .line 5397
    :cond_31
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    iget-object v5, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v5

    iget-object v6, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v6

    .line 5398
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v7

    .line 5397
    invoke-virtual {v3, v5, v6, v2, v7}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    :try_end_46
    .catchall {:try_start_23 .. :try_end_46} :catchall_4b

    .line 5400
    :goto_46
    nop

    .line 5402
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5400
    return v4

    .line 5402
    .end local v2    # "effect":Landroid/os/VibrationEffect;
    :catchall_4b
    move-exception v2

    goto :goto_6d

    .line 5378
    :catch_4d
    move-exception v3

    .line 5379
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_4e
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error creating vibration waveform with pattern: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5380
    invoke-static {p2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5379
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catchall {:try_start_4e .. :try_end_68} :catchall_4b

    .line 5381
    nop

    .line 5402
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5381
    return v2

    .line 5402
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :goto_6d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private recordCallerLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 5698
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5699
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ZenModeHelper;->recordCaller(Lcom/android/server/notification/NotificationRecord;)V

    .line 5701
    :cond_d
    return-void
.end method

.method private removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 3
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 1981
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    move-result v0

    return v0
.end method

.method private removeDisabledHints(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z
    .registers 9
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p2, "hints"    # I

    .line 1985
    const/4 v0, 0x0

    .line 1987
    .local v0, "removed":Z
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_2f

    .line 1988
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1989
    .local v3, "hint":I
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 1990
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 1992
    .local v4, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    if-eqz p2, :cond_1f

    and-int v5, v3, p2

    if-ne v5, v3, :cond_2c

    .line 1993
    :cond_1f
    if-nez v0, :cond_2a

    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v5, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    move v5, v2

    :goto_2b
    move v0, v5

    .line 1987
    .end local v3    # "hint":I
    .end local v4    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    :cond_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1997
    .end local v1    # "i":I
    :cond_2f
    return v0
.end method

.method private removeFromNotificationListsLocked(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 6
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 5857
    const/4 v0, 0x0

    .line 5858
    .local v0, "wasPosted":Z
    const/4 v1, 0x0

    .line 5859
    .local v1, "recordInList":Lcom/android/server/notification/NotificationRecord;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_20

    .line 5861
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5862
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v3, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5863
    const/4 v0, 0x1

    .line 5865
    :cond_20
    :goto_20
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_33

    .line 5867
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_20

    .line 5869
    :cond_33
    return v0
.end method

.method private resolveNotificationUid(Ljava/lang/String;II)I
    .registers 5
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I

    .line 4492
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1e

    const-string v0, "android"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 4494
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4495
    invoke-virtual {v0, p1, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1c} :catch_1d

    .line 4494
    return v0

    .line 4496
    :catch_1d
    move-exception v0

    .line 4500
    :cond_1e
    return p2
.end method

.method private revokeUriPermission(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .registers 10
    .param p1, "owner"    # Landroid/os/IBinder;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "sourceUid"    # I

    .line 6088
    if-eqz p2, :cond_31

    const-string v0, "content"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_31

    .line 6090
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6092
    .local v0, "ident":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    .line 6093
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    .line 6095
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {p2, v5}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    .line 6092
    invoke-interface {v2, p1, v3, v4, v5}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_25} :catch_2b
    .catchall {:try_start_13 .. :try_end_25} :catchall_26

    goto :goto_2c

    .line 6099
    :catchall_26
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 6096
    :catch_2b
    move-exception v2

    .line 6099
    :goto_2c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6100
    nop

    .line 6101
    return-void

    .line 6088
    .end local v0    # "ident":J
    :cond_31
    :goto_31
    return-void
.end method

.method private scheduleDurationReachedLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mToastQueue"
    .end annotation

    .line 5535
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5536
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5537
    .local v0, "m":Landroid/os/Message;
    iget v1, p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->duration:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    const-wide/16 v1, 0xdac

    goto :goto_16

    :cond_14
    const-wide/16 v1, 0x7d0

    .line 5538
    .local v1, "delay":J
    :goto_16
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5539
    return-void
.end method

.method private scheduleInterruptionFilterChanged(I)V
    .registers 5
    .param p1, "listenerInterruptionFilter"    # I

    .line 5732
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 5733
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 5736
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5737
    return-void
.end method

.method private scheduleKillTokenTimeout(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mToastQueue"
    .end annotation

    .line 5555
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5556
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5557
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const-wide/16 v2, 0x2af8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5558
    return-void
.end method

.method private scheduleListenerHintsChanged(I)V
    .registers 5
    .param p1, "state"    # I

    .line 5727
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 5728
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5729
    return-void
.end method

.method private sendRegisteredOnlyBroadcast(Ljava/lang/String;)V
    .registers 6
    .param p1, "action"    # Ljava/lang/String;

    .line 1818
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1819
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1818
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1820
    return-void
.end method

.method private updateEffectsSuppressorLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 1854
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateSuppressedEffects()J

    move-result-wide v0

    .line 1855
    .local v0, "updatedSuppressedEffects":J
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v2}, Lcom/android/server/notification/ZenModeHelper;->getSuppressedEffects()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_f

    return-void

    .line 1856
    :cond_f
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->getSuppressors()Ljava/util/ArrayList;

    move-result-object v2

    .line 1857
    .local v2, "suppressors":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-static {v3, v2, v0, v1}, Lcom/android/server/notification/ZenLog;->traceEffectsSuppressorChanged(Ljava/util/List;Ljava/util/List;J)V

    .line 1858
    iput-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    .line 1859
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/notification/ZenModeHelper;->setSuppressedEffects(J)V

    .line 1860
    const-string v3, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-direct {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V

    .line 1861
    return-void
.end method

.method private updateInterruptionFilterLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 2058
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v0

    .line 2059
    .local v0, "interruptionFilter":I
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    if-ne v0, v1, :cond_b

    return-void

    .line 2060
    :cond_b
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 2061
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleInterruptionFilterChanged(I)V

    .line 2062
    return-void
.end method

.method private updateListenerHintsLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 1845
    invoke-direct {p0}, Lcom/android/server/notification/NotificationManagerService;->calculateHints()I

    move-result v0

    .line 1846
    .local v0, "hints":I
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    if-ne v0, v1, :cond_9

    return-void

    .line 1847
    :cond_9
    iget v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEffectsSuppressors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/server/notification/ZenLog;->traceListenerHintsChanged(III)V

    .line 1848
    iput v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    .line 1849
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleListenerHintsChanged(I)V

    .line 1850
    return-void
.end method

.method private updateNotificationChannelInt(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
    .registers 26
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "channel"    # Landroid/app/NotificationChannel;
    .param p4, "fromListener"    # Z

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move-object/from16 v14, p3

    .line 1874
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    const/4 v15, 0x0

    if-nez v0, :cond_60

    .line 1876
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1877
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const/16 v9, 0x11

    const/4 v10, 0x0

    .line 1876
    move-object v0, v11

    move-object v3, v12

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 1879
    invoke-virtual {v11, v13}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1880
    iget-object v0, v11, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()[I

    move-result-object v10

    .line 1881
    .local v10, "profileIds":[I
    array-length v9, v10

    .line 1882
    .local v9, "N":I
    move v0, v15

    .local v0, "i":I
    :goto_34
    move v8, v0

    .end local v0    # "i":I
    .local v8, "i":I
    if-ge v8, v9, :cond_60

    .line 1883
    aget v16, v10, v8

    .line 1884
    .local v16, "profileId":I
    sget v1, Lcom/android/server/notification/NotificationManagerService;->MY_UID:I

    sget v2, Lcom/android/server/notification/NotificationManagerService;->MY_PID:I

    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v17, 0x11

    const/16 v18, 0x0

    move-object v0, v11

    move-object v3, v12

    move/from16 v19, v8

    move/from16 v8, v16

    .end local v8    # "i":I
    .local v19, "i":I
    move/from16 v20, v9

    move/from16 v9, v17

    .end local v9    # "N":I
    .local v20, "N":I
    move-object/from16 v17, v10

    move-object/from16 v10, v18

    .end local v10    # "profileIds":[I
    .local v17, "profileIds":[I
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 1882
    .end local v16    # "profileId":I
    add-int/lit8 v0, v19, 0x1

    .end local v19    # "i":I
    .restart local v0    # "i":I
    move-object/from16 v10, v17

    move/from16 v9, v20

    goto :goto_34

    .line 1890
    .end local v0    # "i":I
    .end local v17    # "profileIds":[I
    .end local v20    # "N":I
    :cond_60
    iget-object v0, v11, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 1891
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/android/server/notification/RankingHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v0

    .line 1893
    .local v0, "preUpdate":Landroid/app/NotificationChannel;
    iget-object v1, v11, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v1, v12, v13, v14, v2}, Lcom/android/server/notification/RankingHelper;->updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    .line 1894
    invoke-direct {v11, v12, v13, v0, v14}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifyChannelOwner(Ljava/lang/String;ILandroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    .line 1896
    if-nez p4, :cond_89

    .line 1897
    iget-object v2, v11, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 1898
    invoke-virtual/range {p3 .. p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v12, v13, v3, v15}, Lcom/android/server/notification/RankingHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v2

    .line 1899
    .local v2, "modifiedChannel":Landroid/app/NotificationChannel;
    iget-object v3, v11, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 1900
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v5, 0x2

    .line 1899
    invoke-virtual {v3, v12, v4, v2, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 1904
    .end local v2    # "modifiedChannel":Landroid/app/NotificationChannel;
    :cond_89
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    .line 1905
    return-void
.end method

.method private updateNotificationPulse()V
    .registers 3

    .line 6601
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6602
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 6603
    monitor-exit v0

    .line 6604
    return-void

    .line 6603
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private writePolicyXml(Ljava/io/OutputStream;Z)V
    .registers 7
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 654
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 655
    .local v0, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 656
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 657
    const-string/jumbo v2, "notification-policy"

    invoke-interface {v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 658
    const-string/jumbo v2, "version"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 659
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1, v0, p2, v3}, Lcom/android/server/notification/ZenModeHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;ZLjava/lang/Integer;)V

    .line 660
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/RankingHelper;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 661
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 662
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 663
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/notification/ConditionProviders;->writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 664
    const-string/jumbo v1, "notification-policy"

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 665
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 666
    return-void
.end method


# virtual methods
.method addAutogroupKeyLocked(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 3865
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 3866
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v0, :cond_b

    .line 3867
    return-void

    .line 3869
    :cond_b
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_21

    .line 3870
    const-string/jumbo v1, "ranker_group"

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 3871
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeNotificationAutogrouped(Ljava/lang/String;)V

    .line 3872
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v1}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 3874
    :cond_21
    return-void
.end method

.method addEnqueuedNotification(Lcom/android/server/notification/NotificationRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1468
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1469
    return-void
.end method

.method addNotification(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1459
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1460
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1461
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1462
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    :cond_21
    return-void
.end method

.method buzzBeepBlinkLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 23
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p0

    .line 5146
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 5147
    .local v2, "buzz":Z
    const/4 v3, 0x0

    .line 5148
    .local v3, "beep":Z
    const/4 v4, 0x0

    .line 5150
    .local v4, "blink":Z
    iget-object v5, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 5151
    .local v5, "notification":Landroid/app/Notification;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 5155
    .local v6, "key":Ljava/lang/String;
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v7}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result v7

    const/4 v8, 0x3

    const/4 v10, 0x1

    if-ne v7, v8, :cond_21

    iget v7, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateWhenMute:I

    if-ne v7, v10, :cond_21

    move v7, v10

    goto :goto_22

    :cond_21
    const/4 v7, 0x0

    .line 5159
    .local v7, "vibrateWhenSilent":Z
    :goto_22
    nop

    .line 5160
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v11

    if-lt v11, v8, :cond_2b

    move v8, v10

    goto :goto_2c

    :cond_2b
    const/4 v8, 0x0

    .line 5163
    .local v8, "aboveThreshold":Z
    :goto_2c
    if-eqz v6, :cond_38

    iget-object v11, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_38

    move v11, v10

    goto :goto_39

    :cond_38
    const/4 v11, 0x0

    .line 5164
    .local v11, "wasBeep":Z
    :goto_39
    if-eqz v6, :cond_45

    iget-object v12, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_45

    move v12, v10

    goto :goto_46

    :cond_45
    const/4 v12, 0x0

    .line 5166
    .local v12, "wasBuzz":Z
    :goto_46
    const/4 v13, 0x0

    .line 5167
    .local v13, "hasValidVibrate":Z
    const/4 v14, 0x0

    .line 5168
    .local v14, "hasValidSound":Z
    const/4 v15, 0x0

    .line 5171
    .local v15, "sentAccessibilityEvent":Z
    iget-boolean v9, v1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-nez v9, :cond_5d

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v9

    if-le v9, v10, :cond_5d

    .line 5172
    iget-object v9, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Lcom/android/server/notification/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 5173
    const/4 v15, 0x1

    .line 5176
    :cond_5d
    if-eqz v8, :cond_14f

    invoke-direct/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->isNotificationForCurrentUser(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v9

    if-eqz v9, :cond_14f

    .line 5178
    iget-boolean v9, v0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    if-eqz v9, :cond_14f

    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v9, :cond_14f

    .line 5179
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v9

    .line 5180
    .local v9, "soundUri":Landroid/net/Uri;
    if-eqz v9, :cond_7d

    sget-object v10, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v10, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7d

    const/4 v10, 0x1

    goto :goto_7e

    :cond_7d
    const/4 v10, 0x0

    :goto_7e
    move v14, v10

    .line 5181
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getVibration()[J

    move-result-object v10

    .line 5183
    .local v10, "vibration":[J
    if-nez v10, :cond_ab

    if-eqz v14, :cond_ab

    move/from16 v17, v2

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 5185
    .end local v2    # "buzz":Z
    .local v17, "buzz":Z
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    move/from16 v18, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_af

    .end local v3    # "beep":Z
    .local v18, "beep":Z
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 5188
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v3

    .line 5187
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_af

    .line 5191
    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationVibrationController:Lcom/oneplus/notification/NotificationVibrationController;

    invoke-static {}, Lcom/oneplus/notification/NotificationVibrationController;->getDefaultVibration()[J

    move-result-object v10

    goto :goto_af

    .line 5194
    .end local v17    # "buzz":Z
    .end local v18    # "beep":Z
    .restart local v2    # "buzz":Z
    .restart local v3    # "beep":Z
    :cond_ab
    move/from16 v17, v2

    move/from16 v18, v3

    .end local v2    # "buzz":Z
    .end local v3    # "beep":Z
    .restart local v17    # "buzz":Z
    .restart local v18    # "beep":Z
    :cond_af
    :goto_af
    if-eqz v10, :cond_b3

    const/4 v2, 0x1

    goto :goto_b4

    :cond_b3
    const/4 v2, 0x0

    :goto_b4
    move v13, v2

    .line 5196
    if-nez v14, :cond_bc

    if-eqz v13, :cond_ba

    goto :goto_bc

    :cond_ba
    const/4 v2, 0x0

    goto :goto_bd

    :cond_bc
    :goto_bc
    const/4 v2, 0x1

    .line 5198
    .local v2, "hasAudibleAlert":Z
    :goto_bd
    if-eqz v2, :cond_153

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationManagerService;->shouldMuteNotificationLocked(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v3

    if-nez v3, :cond_153

    .line 5199
    invoke-static {}, Lcom/oneplus/scene/OimcBrickModeObserver;->getInstance()Lcom/oneplus/scene/OimcBrickModeObserver;

    move-result-object v3

    move/from16 v19, v2

    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .end local v2    # "hasAudibleAlert":Z
    .local v19, "hasAudibleAlert":Z
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/oneplus/scene/OimcBrickModeObserver;->shouldBlockNotifSound(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_153

    .line 5200
    if-nez v15, :cond_e3

    .line 5201
    iget-object v2, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Lcom/android/server/notification/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    .line 5202
    const/4 v15, 0x1

    .line 5206
    :cond_e3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {v2, v3}, Lcom/oneplus/util/OemSceneCallBlocker;->isNotificationMutedByCallBlocker(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_f7

    .line 5207
    const-string v2, "NotificationService"

    const-string v3, "Mute in gaming mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5208
    return-void

    .line 5210
    :cond_f7
    iget-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService;->mESportModeOn:Z

    if-eqz v2, :cond_10f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {v2, v3}, Lcom/oneplus/util/OemSceneCallBlocker;->isNotificationMutedByESport(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_10f

    .line 5211
    const-string v2, "NotificationService"

    const-string v3, "Mute on esport mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5212
    return-void

    .line 5216
    :cond_10f
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG_ONEPLUS:Z

    if-eqz v2, :cond_11a

    const-string v2, "NotificationService"

    const-string v3, "Interrupting!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5218
    :cond_11a
    if-eqz v14, :cond_12d

    .line 5219
    iput-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    .line 5220
    iget-boolean v2, v0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    if-eqz v2, :cond_128

    .line 5221
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->playInCallNotification()V

    .line 5222
    const/4 v2, 0x1

    .line 5228
    .end local v18    # "beep":Z
    .local v2, "beep":Z
    .restart local v3    # "beep":Z
    :goto_126
    move v3, v2

    goto :goto_12f

    .line 5224
    .end local v2    # "beep":Z
    .end local v3    # "beep":Z
    .restart local v18    # "beep":Z
    :cond_128
    invoke-direct {v0, v1, v9}, Lcom/android/server/notification/NotificationManagerService;->playSound(Lcom/android/server/notification/NotificationRecord;Landroid/net/Uri;)Z

    move-result v2

    goto :goto_126

    .line 5228
    :cond_12d
    move/from16 v3, v18

    .end local v18    # "beep":Z
    .restart local v3    # "beep":Z
    :goto_12f
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 5229
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v2

    if-nez v2, :cond_139

    const/4 v2, 0x1

    goto :goto_13a

    :cond_139
    const/4 v2, 0x0

    .line 5231
    .local v2, "ringerModeSilent":Z
    :goto_13a
    move/from16 v20, v3

    iget-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    .end local v3    # "beep":Z
    .local v20, "beep":Z
    if-nez v3, :cond_14c

    if-eqz v13, :cond_14c

    if-nez v2, :cond_14c

    .line 5232
    iput-object v6, v0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    .line 5234
    invoke-direct {v0, v1, v10, v14}, Lcom/android/server/notification/NotificationManagerService;->playVibration(Lcom/android/server/notification/NotificationRecord;[JZ)Z

    move-result v2

    .line 5241
    .end local v9    # "soundUri":Landroid/net/Uri;
    .end local v10    # "vibration":[J
    .end local v17    # "buzz":Z
    .end local v19    # "hasAudibleAlert":Z
    .local v2, "buzz":Z
    move/from16 v17, v2

    .end local v2    # "buzz":Z
    .end local v20    # "beep":Z
    .restart local v17    # "buzz":Z
    .restart local v18    # "beep":Z
    :cond_14c
    move/from16 v18, v20

    goto :goto_153

    .end local v17    # "buzz":Z
    .end local v18    # "beep":Z
    .restart local v2    # "buzz":Z
    .restart local v3    # "beep":Z
    :cond_14f
    move/from16 v17, v2

    move/from16 v18, v3

    .end local v2    # "buzz":Z
    .end local v3    # "beep":Z
    .restart local v17    # "buzz":Z
    .restart local v18    # "beep":Z
    :cond_153
    :goto_153
    if-eqz v11, :cond_15a

    if-nez v14, :cond_15a

    .line 5242
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->clearSoundLocked()V

    .line 5244
    :cond_15a
    if-eqz v12, :cond_161

    if-nez v13, :cond_161

    .line 5245
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->clearVibrateLocked()V

    .line 5250
    :cond_161
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 5251
    .local v2, "wasShowLights":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v3

    if-eqz v3, :cond_18a

    if-eqz v8, :cond_18a

    .line 5252
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_18a

    .line 5253
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5254
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 5255
    iget-boolean v3, v0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    if-eqz v3, :cond_188

    .line 5256
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    invoke-virtual {v3}, Lcom/android/server/lights/Light;->pulse()V

    .line 5258
    :cond_188
    const/4 v4, 0x1

    goto :goto_18f

    .line 5259
    :cond_18a
    if-eqz v2, :cond_18f

    .line 5260
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->updateLightsLocked()V

    .line 5262
    :cond_18f
    :goto_18f
    if-nez v17, :cond_195

    if-nez v18, :cond_195

    if-eqz v4, :cond_1d6

    .line 5263
    :cond_195
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/notification/NotificationRecord;->setInterruptive(Z)V

    .line 5264
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v9

    const/16 v10, 0xc7

    .line 5265
    invoke-virtual {v9, v10}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v9

    .line 5266
    invoke-virtual {v9, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v9

    .line 5267
    if-eqz v17, :cond_1ab

    move v10, v3

    goto :goto_1ac

    :cond_1ab
    const/4 v10, 0x0

    :goto_1ac
    if-eqz v18, :cond_1b1

    const/16 v16, 0x2

    goto :goto_1b3

    :cond_1b1
    const/16 v16, 0x0

    :goto_1b3
    or-int v10, v10, v16

    if-eqz v4, :cond_1ba

    const/16 v16, 0x4

    goto :goto_1bc

    :cond_1ba
    const/16 v16, 0x0

    :goto_1bc
    or-int v10, v10, v16

    invoke-virtual {v9, v10}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v9

    .line 5264
    invoke-static {v9}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 5268
    if-eqz v17, :cond_1c9

    move v9, v3

    goto :goto_1ca

    :cond_1c9
    const/4 v9, 0x0

    :goto_1ca
    if-eqz v18, :cond_1ce

    move v10, v3

    goto :goto_1cf

    :cond_1ce
    const/4 v10, 0x0

    :goto_1cf
    if-eqz v4, :cond_1d2

    goto :goto_1d3

    :cond_1d2
    const/4 v3, 0x0

    :goto_1d3
    invoke-static {v6, v9, v10, v3}, Lcom/android/server/EventLogTags;->writeNotificationAlert(Ljava/lang/String;III)V

    .line 5270
    :cond_1d6
    return-void
.end method

.method protected calculateSuppressedVisualEffects(Landroid/app/NotificationManager$Policy;Landroid/app/NotificationManager$Policy;I)I
    .registers 9
    .param p1, "incomingPolicy"    # Landroid/app/NotificationManager$Policy;
    .param p2, "currPolicy"    # Landroid/app/NotificationManager$Policy;
    .param p3, "targetSdkVersion"    # I

    .line 2082
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 2083
    iget v0, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    return v0

    .line 2085
    :cond_8
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_6a

    .line 2095
    .local v0, "effectsIntroducedInP":[I
    iget v1, p1, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 2096
    .local v1, "newSuppressedVisualEffects":I
    const/16 v2, 0x1c

    const/4 v3, 0x0

    if-ge p3, v2, :cond_36

    .line 2098
    nop

    .local v3, "i":I
    :goto_16
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    array-length v3, v0

    if-ge v2, v3, :cond_27

    .line 2099
    aget v3, v0, v2

    not-int v3, v3

    and-int/2addr v1, v3

    .line 2100
    iget v3, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    aget v4, v0, v2

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 2098
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_16

    .line 2104
    .end local v3    # "i":I
    :cond_27
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2f

    .line 2105
    or-int/lit8 v1, v1, 0x8

    .line 2106
    or-int/lit8 v1, v1, 0x4

    .line 2108
    :cond_2f
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_68

    .line 2109
    or-int/lit8 v1, v1, 0x10

    goto :goto_68

    .line 2112
    :cond_36
    add-int/lit8 v2, v1, -0x2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    if-lez v2, :cond_3e

    move v3, v4

    nop

    :cond_3e
    move v2, v3

    .line 2115
    .local v2, "hasNewEffects":Z
    if-eqz v2, :cond_58

    .line 2117
    and-int/lit8 v1, v1, -0x4

    .line 2121
    and-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_49

    .line 2122
    or-int/lit8 v1, v1, 0x2

    .line 2124
    :cond_49
    and-int/lit8 v3, v1, 0x8

    if-eqz v3, :cond_68

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_68

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_68

    .line 2129
    or-int/lit8 v1, v1, 0x1

    goto :goto_68

    .line 2133
    :cond_58
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_62

    .line 2134
    or-int/lit8 v1, v1, 0x8

    .line 2135
    or-int/lit8 v1, v1, 0x4

    .line 2136
    or-int/lit16 v1, v1, 0x80

    .line 2138
    :cond_62
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_68

    .line 2139
    or-int/lit8 v1, v1, 0x10

    .line 2144
    .end local v2    # "hasNewEffects":Z
    :cond_68
    :goto_68
    return v1

    nop

    :array_6a
    .array-data 4
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data
.end method

.method canUseManagedServices(Ljava/lang/String;)Z
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6864
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.type.watch"

    .line 6865
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_16

    :cond_14
    move v0, v1

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v0, 0x1

    .line 6867
    .local v0, "canUseManagedServices":Z
    :goto_17
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_27
    if-ge v1, v3, :cond_35

    aget-object v4, v2, v1

    .line 6869
    .local v4, "whitelisted":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 6870
    const/4 v0, 0x1

    .line 6867
    .end local v4    # "whitelisted":Ljava/lang/String;
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 6874
    :cond_35
    return v0
.end method

.method cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V
    .registers 18
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "userId"    # I
    .param p4, "reason"    # I
    .param p5, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p6, "includeCurrentProfiles"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 6356
    move-object v8, p0

    iget-object v9, v8, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v10, Lcom/android/server/notification/NotificationManagerService$17;

    move-object v0, v10

    move-object v1, v8

    move-object/from16 v2, p5

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService$17;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IIIIZ)V

    invoke-virtual {v9, v10}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 6385
    return-void
.end method

.method cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 26
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "channelId"    # Ljava/lang/String;
    .param p5, "mustHaveFlags"    # I
    .param p6, "mustNotHaveFlags"    # I
    .param p7, "doit"    # Z
    .param p8, "userId"    # I
    .param p9, "reason"    # I
    .param p10, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 6205
    move-object v12, p0

    iget-object v13, v12, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v14, Lcom/android/server/notification/NotificationManagerService$16;

    move-object v0, v14

    move-object v1, v12

    move-object/from16 v2, p10

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p8

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p9

    move/from16 v10, p7

    move-object/from16 v11, p4

    invoke-direct/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService$16;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;IIIIZLjava/lang/String;)V

    invoke-virtual {v13, v14}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 6241
    return-void
.end method

.method cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 31
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "mustHaveFlags"    # I
    .param p7, "mustNotHaveFlags"    # I
    .param p8, "sendDelete"    # Z
    .param p9, "userId"    # I
    .param p10, "reason"    # I
    .param p11, "rank"    # I
    .param p12, "count"    # I
    .param p13, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 6128
    move-object/from16 v15, p0

    iget-object v14, v15, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v13, Lcom/android/server/notification/NotificationManagerService$15;

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, p13

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p4

    move/from16 v8, p9

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p10

    move/from16 v12, p8

    move-object v15, v13

    move/from16 v13, p11

    move-object/from16 v16, v15

    move-object v15, v14

    move/from16 v14, p12

    invoke-direct/range {v0 .. v14}, Lcom/android/server/notification/NotificationManagerService$15;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;ILjava/lang/String;IIIIZII)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 6172
    return-void
.end method

.method cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 26
    .param p1, "callingUid"    # I
    .param p2, "callingPid"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "id"    # I
    .param p6, "mustHaveFlags"    # I
    .param p7, "mustNotHaveFlags"    # I
    .param p8, "sendDelete"    # Z
    .param p9, "userId"    # I
    .param p10, "reason"    # I
    .param p11, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 6111
    const/4 v11, -0x1

    const/4 v12, -0x1

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 6113
    return-void
.end method

.method cancelToastLocked(I)V
    .registers 7
    .param p1, "index"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mToastQueue"
    .end annotation

    .line 5483
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 5486
    .local v0, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->isSupportFrozenApp()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 5487
    if-eqz v0, :cond_17

    .line 5488
    iget v1, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->uid:I

    const-string v2, "cancelToastLocked"

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 5494
    :cond_17
    :try_start_17
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v1}, Landroid/app/ITransientNotification;->hide()V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1d

    .line 5500
    goto :goto_40

    .line 5495
    :catch_1d
    move-exception v1

    .line 5496
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object died trying to hide notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5502
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_40
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 5504
    .local v1, "lastToast":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v4}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 5511
    iget-object v2, v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->scheduleKillTokenTimeout(Landroid/os/IBinder;)V

    .line 5513
    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveIfNeededLocked(I)V

    .line 5514
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_65

    .line 5518
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->showNextToastLocked()V

    .line 5520
    :cond_65
    return-void
.end method

.method clearNotifications()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1451
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1452
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1453
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1454
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1455
    return-void
.end method

.method dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 4096
    const-string v0, "Current Notification Manager state"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4097
    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v0, :cond_16

    .line 4098
    const-string v0, " (filtered to "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4100
    :cond_16
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(C)V

    .line 4102
    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    iget-boolean v0, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->zen:Z

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    move v0, v1

    .line 4104
    .local v0, "zenOnly":Z
    :goto_27
    if-nez v0, :cond_56

    .line 4105
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 4106
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4107
    .local v3, "N":I
    if-lez v3, :cond_51

    .line 4108
    const-string v4, "  Toast Queue:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4109
    move v4, v1

    .line 4109
    .local v4, "i":I
    :goto_3a
    if-ge v4, v3, :cond_4c

    .line 4110
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    const-string v6, "    "

    invoke-virtual {v5, p1, v6, p2}, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4109
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 4112
    .end local v4    # "i":I
    :cond_4c
    const-string v4, "  "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4114
    :cond_51
    monitor-exit v2

    goto :goto_56

    .line 4114
    .end local v3    # "N":I
    :catchall_53
    move-exception v1

    monitor-exit v2
    :try_end_55
    .catchall {:try_start_2c .. :try_end_55} :catchall_53

    throw v1

    .line 4117
    :cond_56
    :goto_56
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4118
    if-nez v0, :cond_1eb

    .line 4121
    :try_start_5b
    iget-boolean v3, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->normalPriority:Z

    if-nez v3, :cond_62

    .line 4122
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->dumpNotificationRecords(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4124
    :cond_62
    iget-boolean v3, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-nez v3, :cond_14c

    .line 4125
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4126
    .restart local v3    # "N":I
    if-lez v3, :cond_98

    .line 4127
    const-string v4, "  Lights List:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4128
    move v4, v1

    .line 4128
    .restart local v4    # "i":I
    :goto_74
    if-ge v4, v3, :cond_93

    .line 4129
    add-int/lit8 v5, v3, -0x1

    if-ne v4, v5, :cond_80

    .line 4130
    const-string v5, "  > "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_85

    .line 4132
    :cond_80
    const-string v5, "    "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4134
    :goto_85
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4128
    add-int/lit8 v4, v4, 0x1

    goto :goto_74

    .line 4136
    .end local v4    # "i":I
    :cond_93
    const-string v4, "  "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4138
    :cond_98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mUseAttentionLight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mNotificationPulseEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSoundNotificationKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mSoundNotificationKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mVibrateNotificationKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrateNotificationKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mDisableNotificationEffects="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mCallState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService;->mCallState:I

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->callStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSystemReady="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mMaxPackageEnqueueRate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4147
    .end local v3    # "N":I
    :cond_14c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mArchive="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationManagerService$Archive;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4148
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$Archive;->descendingIterator()Ljava/util/Iterator;

    move-result-object v3

    .line 4149
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    move v4, v1

    .line 4150
    .local v4, "j":I
    :goto_16d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a8

    .line 4151
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/StatusBarNotification;

    .line 4152
    .local v5, "sbn":Landroid/service/notification/StatusBarNotification;
    if-eqz p2, :cond_182

    invoke-virtual {p2, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    if-nez v6, :cond_182

    .line 4152
    .end local v5    # "sbn":Landroid/service/notification/StatusBarNotification;
    goto :goto_16d

    .line 4153
    .restart local v5    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_182
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4154
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x5

    if-lt v4, v6, :cond_1a7

    .line 4155
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a8

    const-string v6, "    ..."

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1a8

    .line 4158
    .end local v5    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_1a7
    goto :goto_16d

    .line 4160
    :cond_1a8
    :goto_1a8
    if-nez v0, :cond_1eb

    .line 4161
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 4162
    .local v5, "N":I
    if-lez v5, :cond_1e2

    .line 4163
    const-string v6, "  Enqueued Notification List:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4164
    move v6, v1

    .line 4164
    .local v6, "i":I
    :goto_1b8
    if-ge v6, v5, :cond_1dd

    .line 4165
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 4166
    .local v7, "nr":Lcom/android/server/notification/NotificationRecord;
    iget-boolean v8, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v8, :cond_1cf

    iget-object v8, v7, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, v8}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/service/notification/StatusBarNotification;)Z

    move-result v8

    if-nez v8, :cond_1cf

    .line 4166
    .end local v7    # "nr":Lcom/android/server/notification/NotificationRecord;
    goto :goto_1da

    .line 4167
    .restart local v7    # "nr":Lcom/android/server/notification/NotificationRecord;
    :cond_1cf
    const-string v8, "    "

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-boolean v10, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v7, p1, v8, v9, v10}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 4164
    .end local v7    # "nr":Lcom/android/server/notification/NotificationRecord;
    :goto_1da
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b8

    .line 4169
    .end local v6    # "i":I
    :cond_1dd
    const-string v6, "  "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4172
    :cond_1e2
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/notification/SnoozeHelper;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4172
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/service/notification/StatusBarNotification;>;"
    .end local v4    # "j":I
    .end local v5    # "N":I
    goto :goto_1eb

    .line 4233
    :catchall_1e8
    move-exception v1

    goto/16 :goto_379

    .line 4176
    :cond_1eb
    :goto_1eb
    if-nez v0, :cond_27a

    .line 4177
    const-string v3, "\n  Ranking Config:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4178
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    const-string v4, "    "

    invoke-virtual {v3, p1, v4, p2}, Lcom/android/server/notification/RankingHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4180
    const-string v3, "\n  Notification listeners:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4181
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4182
    const-string v3, "    mListenerHints: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenerHints:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 4183
    const-string v3, "    mListenersDisablingEffects: ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4184
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 4185
    .local v3, "N":I
    move v4, v1

    .line 4185
    .local v4, "i":I
    :goto_219
    if-ge v4, v3, :cond_26b

    .line 4186
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 4187
    .local v5, "hint":I
    if-lez v4, :cond_228

    const/16 v6, 0x3b

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 4188
    :cond_228
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hint["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4190
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mListenersDisablingEffects:Landroid/util/SparseArray;

    .line 4191
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 4192
    .local v6, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v7

    .line 4194
    .local v7, "listenerSize":I
    move v8, v1

    .line 4194
    .local v8, "j":I
    :goto_24f
    if-ge v8, v7, :cond_268

    .line 4195
    if-lez v4, :cond_258

    const/16 v9, 0x2c

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(C)V

    .line 4196
    :cond_258
    invoke-virtual {v6, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 4197
    .local v9, "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    if-eqz v9, :cond_265

    .line 4198
    iget-object v10, v9, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4194
    .end local v9    # "listener":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    :cond_265
    add-int/lit8 v8, v8, 0x1

    goto :goto_24f

    .line 4185
    .end local v5    # "hint":I
    .end local v6    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;>;"
    .end local v7    # "listenerSize":I
    .end local v8    # "j":I
    :cond_268
    add-int/lit8 v4, v4, 0x1

    goto :goto_219

    .line 4202
    .end local v4    # "i":I
    :cond_26b
    const/16 v4, 0x29

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(C)V

    .line 4203
    const-string v4, "\n  Notification assistant services:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4204
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4207
    .end local v3    # "N":I
    :cond_27a
    iget-boolean v3, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->filtered:Z

    if-eqz v3, :cond_280

    if-eqz v0, :cond_2a0

    .line 4208
    :cond_280
    const-string v3, "\n  Zen Mode:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4209
    const-string v3, "    mInterruptionFilter="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 4210
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v4, "    "

    invoke-virtual {v3, p1, v4}, Lcom/android/server/notification/ZenModeHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4212
    const-string v3, "\n  Zen Log:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4213
    const-string v3, "    "

    invoke-static {p1, v3}, Lcom/android/server/notification/ZenLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4216
    :cond_2a0
    const-string v3, "\n  Condition providers:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4217
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/ConditionProviders;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4219
    const-string v3, "\n  Group summaries:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4220
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 4221
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 4222
    .local v5, "r":Lcom/android/server/notification/NotificationRecord;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4223
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v5, :cond_30d

    .line 4224
    const-string v6, "!!!!!!LEAK: Record not found in mNotificationsByKey."

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4225
    const-string v6, "      "

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-boolean v8, p2, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->redact:Z

    invoke-virtual {v5, p1, v6, v7, v8}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 4227
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .end local v5    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_30d
    goto :goto_2b9

    .line 4229
    :cond_30e
    if-nez v0, :cond_31c

    .line 4230
    const-string v3, "\n  Usage Stats:"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4231
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    const-string v4, "    "

    invoke-virtual {v3, p1, v4, p2}, Lcom/android/server/notification/NotificationUsageStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 4233
    :cond_31c
    monitor-exit v2
    :try_end_31d
    .catchall {:try_start_5b .. :try_end_31d} :catchall_1e8

    .line 4236
    const-string v2, "\n  App locker:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4237
    const-string v2, "    mAppLockerSwitch: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAppLockerSwitch:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 4238
    const-string v2, "    mLockAppList ["

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4239
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mLockAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 4240
    .local v2, "N":I
    move v3, v1

    .line 4240
    .local v3, "i":I
    :goto_338
    if-ge v3, v2, :cond_34d

    .line 4241
    const-string v4, "      "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mLockAppList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4240
    add-int/lit8 v3, v3, 0x1

    goto :goto_338

    .line 4243
    .end local v3    # "i":I
    :cond_34d
    const-string v3, "    ]"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4244
    const-string v3, "    mUnlockAppList ["

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4245
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mUnlockAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 4246
    nop

    .line 4246
    .local v1, "i":I
    :goto_35e
    if-ge v1, v2, :cond_373

    .line 4247
    const-string v3, "      "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mUnlockAppList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4246
    add-int/lit8 v1, v1, 0x1

    goto :goto_35e

    .line 4249
    .end local v1    # "i":I
    :cond_373
    const-string v1, "    ]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4251
    return-void

    .line 4233
    .end local v2    # "N":I
    :goto_379
    :try_start_379
    monitor-exit v2
    :try_end_37a
    .catchall {:try_start_379 .. :try_end_37a} :catchall_1e8

    throw v1
.end method

.method enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;I)V
    .registers 38
    .param p1, "oriPkg"    # Ljava/lang/String;
    .param p2, "oriOpPkg"    # Ljava/lang/String;
    .param p3, "oriCallingUid"    # I
    .param p4, "callingPid"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "notification"    # Landroid/app/Notification;
    .param p8, "incomingUserId"    # I

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v7, p6

    move-object/from16 v6, p7

    .line 4313
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_3d

    .line 4314
    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueNotificationInternal: oriPkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",oriOpPkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " notification="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 4329
    :cond_3d
    move-object/from16 v5, p2

    :goto_3f
    const-string v0, "com.coloros.mcs"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x10000000

    const/4 v2, -0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_7d

    .line 4330
    iget-object v0, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "appPackage"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4331
    .local v3, "pkg":Ljava/lang/String;
    iget-object v0, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v10, "appPackage"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4332
    .local v10, "opPkg":Ljava/lang/String;
    move v11, v2

    .line 4334
    .local v11, "callingUid":I
    :try_start_5c
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 4335
    invoke-interface {v0, v3, v1, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4338
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_6a

    .line 4339
    iget v12, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_68} :catch_74
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_68} :catch_6b

    move v0, v12

    .line 4345
    .end local v11    # "callingUid":I
    .local v0, "callingUid":I
    move v11, v0

    .line 4345
    .end local v0    # "callingUid":I
    .restart local v11    # "callingUid":I
    :cond_6a
    :goto_6a
    goto :goto_83

    .line 4343
    :catch_6b
    move-exception v0

    .line 4344
    .local v0, "e":Ljava/lang/Exception;
    const-string v12, "NotificationService"

    const-string v13, "get pkg uid exception"

    invoke-static {v12, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4344
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_6a

    .line 4341
    :catch_74
    move-exception v0

    .line 4342
    .local v0, "e":Landroid/os/RemoteException;
    const-string v12, "NotificationService"

    const-string v13, "Could not contact PackageManager"

    invoke-static {v12, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4342
    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_6a

    .line 4347
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v10    # "opPkg":Ljava/lang/String;
    .end local v11    # "callingUid":I
    :cond_7d
    move-object v0, v9

    .line 4348
    .local v0, "pkg":Ljava/lang/String;
    move-object v3, v5

    .line 4349
    .local v3, "opPkg":Ljava/lang/String;
    move/from16 v11, p3

    move-object v10, v3

    move-object v3, v0

    .line 4353
    .end local v0    # "pkg":Ljava/lang/String;
    .local v3, "pkg":Ljava/lang/String;
    .restart local v10    # "opPkg":Ljava/lang/String;
    .restart local v11    # "callingUid":I
    :goto_83
    invoke-direct {v8, v3}, Lcom/android/server/notification/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 4355
    const/4 v15, 0x1

    const/16 v16, 0x0

    const-string v17, "enqueueNotification"

    move/from16 v12, p4

    move v13, v11

    move/from16 v14, p8

    move-object/from16 v18, v3

    invoke-static/range {v12 .. v18}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v15

    .line 4357
    .local v15, "userId":I
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v15}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v18, v0

    .line 4359
    .local v18, "user":Landroid/os/UserHandle;
    if-eqz v3, :cond_2d3

    if-eqz v6, :cond_2d3

    .line 4365
    invoke-direct {v8, v10, v11, v15}, Lcom/android/server/notification/NotificationManagerService;->resolveNotificationUid(Ljava/lang/String;II)I

    move-result v0

    move v14, v0

    .line 4369
    .local v14, "notificationUid":I
    :try_start_a6
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 4371
    if-ne v15, v2, :cond_ac

    .line 4369
    move v2, v4

    goto :goto_ad

    :cond_ac
    move v2, v15

    :goto_ad
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4372
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-static {v0, v6}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/pm/ApplicationInfo;Landroid/app/Notification;)V

    .line 4374
    iget-object v1, v8, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v2, "android.permission.USE_COLORIZED_NOTIFICATIONS"

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_bc
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a6 .. :try_end_bc} :catch_2c2

    .line 4376
    .local v1, "canColorize":I
    if-nez v1, :cond_d0

    .line 4377
    :try_start_be
    iget v2, v6, Landroid/app/Notification;->flags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v6, Landroid/app/Notification;->flags:I
    :try_end_c4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_be .. :try_end_c4} :catch_c5

    goto :goto_d6

    .line 4382
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "canColorize":I
    :catch_c5
    move-exception v0

    move-object v9, v6

    move-object/from16 v23, v10

    move v13, v11

    move v2, v15

    move v10, v7

    move v15, v14

    move-object v14, v3

    goto/16 :goto_2cb

    .line 4379
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "canColorize":I
    :cond_d0
    :try_start_d0
    iget v2, v6, Landroid/app/Notification;->flags:I

    and-int/lit16 v2, v2, -0x801

    iput v2, v6, Landroid/app/Notification;->flags:I
    :try_end_d6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d0 .. :try_end_d6} :catch_2c2

    .line 4385
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "canColorize":I
    :goto_d6
    nop

    .line 4387
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v0, v3}, Lcom/android/server/notification/NotificationUsageStats;->registerEnqueuedByApp(Ljava/lang/String;)V

    .line 4390
    invoke-virtual/range {p7 .. p7}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 4391
    .local v0, "channelId":Ljava/lang/String;
    iget-boolean v1, v8, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    if-eqz v1, :cond_f8

    new-instance v1, Landroid/app/Notification$TvExtender;

    invoke-direct {v1, v6}, Landroid/app/Notification$TvExtender;-><init>(Landroid/app/Notification;)V

    invoke-virtual {v1}, Landroid/app/Notification$TvExtender;->getChannelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f8

    .line 4392
    new-instance v1, Landroid/app/Notification$TvExtender;

    invoke-direct {v1, v6}, Landroid/app/Notification$TvExtender;-><init>(Landroid/app/Notification;)V

    invoke-virtual {v1}, Landroid/app/Notification$TvExtender;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 4394
    :cond_f8
    iget-object v1, v8, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v1, v3, v14, v0, v4}, Lcom/android/server/notification/RankingHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v2

    .line 4396
    .local v2, "channel":Landroid/app/NotificationChannel;
    if-nez v2, :cond_19a

    .line 4397
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No Channel found for pkg="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", channelId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", tag="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v13, p5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", opPkg="

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", callingUid="

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", userId="

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", incomingUserId="

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p8

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", notificationUid="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", notification="

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4408
    .local v1, "noChannelStr":Ljava/lang/String;
    const-string v12, "NotificationService"

    invoke-static {v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4409
    iget-object v12, v8, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v12, v3, v14}, Lcom/android/server/notification/RankingHelper;->getImportance(Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_16d

    const/16 v22, 0x1

    goto :goto_16f

    :cond_16d
    const/16 v22, 0x0

    :goto_16f
    move/from16 v12, v22

    .line 4412
    .local v12, "appNotificationsOff":Z
    if-nez v12, :cond_197

    .line 4413
    move-object/from16 v23, v1

    new-instance v1, Ljava/lang/StringBuilder;

    .line 4413
    .end local v1    # "noChannelStr":Ljava/lang/String;
    .local v23, "noChannelStr":Ljava/lang/String;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Developer warning for package \""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"\nFailed to post notification on channel \""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\"\nSee log for more details"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/android/server/notification/NotificationManagerService;->doChannelWarningToast(Ljava/lang/CharSequence;)V

    goto :goto_199

    .line 4417
    .end local v23    # "noChannelStr":Ljava/lang/String;
    .restart local v1    # "noChannelStr":Ljava/lang/String;
    :cond_197
    move-object/from16 v23, v1

    .line 4417
    .end local v1    # "noChannelStr":Ljava/lang/String;
    .restart local v23    # "noChannelStr":Ljava/lang/String;
    :goto_199
    return-void

    .line 4420
    .end local v12    # "appNotificationsOff":Z
    .end local v23    # "noChannelStr":Ljava/lang/String;
    :cond_19a
    move-object/from16 v13, p5

    new-instance v1, Landroid/service/notification/StatusBarNotification;

    const/16 v19, 0x0

    .line 4422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-object/from16 v23, v10

    move-object v10, v1

    .line 4422
    .end local v10    # "opPkg":Ljava/lang/String;
    .local v23, "opPkg":Ljava/lang/String;
    move v4, v11

    move-object v11, v3

    .line 4422
    .end local v11    # "callingUid":I
    .local v4, "callingUid":I
    move-object/from16 v12, v23

    move v13, v7

    move/from16 v24, v14

    move-object/from16 v14, p5

    .line 4422
    .end local v14    # "notificationUid":I
    .local v24, "notificationUid":I
    move/from16 v25, v15

    move/from16 v15, v24

    .line 4422
    .end local v15    # "userId":I
    .local v25, "userId":I
    move/from16 v16, p4

    move-object/from16 v17, v6

    invoke-direct/range {v10 .. v21}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    .line 4423
    .local v10, "n":Landroid/service/notification/StatusBarNotification;
    new-instance v1, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v1, v11, v10, v2}, Lcom/android/server/notification/NotificationRecord;-><init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Landroid/app/NotificationChannel;)V

    move-object v11, v1

    .line 4424
    .local v11, "r":Lcom/android/server/notification/NotificationRecord;
    iget-object v1, v8, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v1, v3, v4}, Lcom/android/server/notification/RankingHelper;->getIsAppImportanceLocked(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v11, v1}, Lcom/android/server/notification/NotificationRecord;->setIsAppImportanceLocked(Z)V

    .line 4426
    iget v1, v6, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_246

    .line 4427
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isFgServiceShown()Z

    move-result v1

    .line 4428
    .local v1, "fgServiceShown":Z
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getUserLockedFields()I

    move-result v12

    const/4 v13, 0x4

    and-int/2addr v12, v13

    if-eqz v12, :cond_1e2

    if-nez v1, :cond_1f0

    .line 4430
    :cond_1e2
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v12

    const/4 v14, 0x1

    if-eq v12, v14, :cond_20c

    .line 4431
    invoke-virtual {v11}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v12

    if-nez v12, :cond_1f0

    goto :goto_20c

    .line 4446
    :cond_1f0
    if-nez v1, :cond_208

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_208

    const-string/jumbo v12, "miscellaneous"

    .line 4447
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_208

    .line 4448
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/app/NotificationChannel;->setFgServiceShown(Z)V

    .line 4449
    invoke-virtual {v11, v2}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 4453
    .end local v1    # "fgServiceShown":Z
    .end local v24    # "notificationUid":I
    .local v15, "notificationUid":I
    :cond_208
    move/from16 v15, v24

    const/4 v13, 0x0

    goto :goto_249

    .line 4434
    .end local v15    # "notificationUid":I
    .restart local v1    # "fgServiceShown":Z
    .restart local v24    # "notificationUid":I
    :cond_20c
    :goto_20c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const/4 v14, 0x2

    if-nez v12, :cond_23c

    const-string/jumbo v12, "miscellaneous"

    .line 4435
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_221

    .line 4436
    move/from16 v15, v24

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto :goto_240

    .line 4438
    :cond_221
    invoke-virtual {v2, v14}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 4439
    if-nez v1, :cond_22e

    .line 4440
    invoke-virtual {v2, v13}, Landroid/app/NotificationChannel;->unlockFields(I)V

    .line 4441
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/app/NotificationChannel;->setFgServiceShown(Z)V

    goto :goto_22f

    .line 4443
    :cond_22e
    const/4 v12, 0x1

    :goto_22f
    iget-object v13, v8, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    move/from16 v15, v24

    const/4 v14, 0x0

    invoke-virtual {v13, v3, v15, v2, v14}, Lcom/android/server/notification/RankingHelper;->updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    .line 4444
    .end local v24    # "notificationUid":I
    .restart local v15    # "notificationUid":I
    invoke-virtual {v11, v2}, Lcom/android/server/notification/NotificationRecord;->updateNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 4453
    move v13, v14

    goto :goto_249

    .line 4436
    .end local v15    # "notificationUid":I
    .restart local v24    # "notificationUid":I
    :cond_23c
    move/from16 v15, v24

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 4436
    .end local v24    # "notificationUid":I
    .restart local v15    # "notificationUid":I
    :goto_240
    const-string v12, "Bumped for foreground service"

    invoke-virtual {v11, v14, v12}, Lcom/android/server/notification/NotificationRecord;->setImportance(ILjava/lang/CharSequence;)V

    goto :goto_249

    .line 4453
    .end local v1    # "fgServiceShown":Z
    .end local v15    # "notificationUid":I
    .restart local v24    # "notificationUid":I
    :cond_246
    move/from16 v15, v24

    const/4 v13, 0x0

    .line 4453
    .end local v24    # "notificationUid":I
    .restart local v15    # "notificationUid":I
    :goto_249
    iget-object v1, v11, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4454
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_254

    .line 4453
    const/16 v26, 0x1

    goto :goto_257

    .line 4454
    :cond_254
    nop

    .line 4453
    move/from16 v26, v13

    :goto_257
    move-object v1, v8

    move-object v12, v2

    move/from16 v2, v25

    .line 4453
    .end local v2    # "channel":Landroid/app/NotificationChannel;
    .local v12, "channel":Landroid/app/NotificationChannel;
    move-object v14, v3

    move v3, v15

    .line 4453
    .end local v3    # "pkg":Ljava/lang/String;
    .local v14, "pkg":Ljava/lang/String;
    move/from16 v16, v13

    move v13, v4

    move v4, v7

    .line 4453
    .end local v4    # "callingUid":I
    .local v13, "callingUid":I
    move-object/from16 v5, p5

    move-object v9, v6

    move-object v6, v11

    move-object/from16 v27, v10

    move v10, v7

    move/from16 v7, v26

    .line 4453
    .end local v10    # "n":Landroid/service/notification/StatusBarNotification;
    .local v27, "n":Landroid/service/notification/StatusBarNotification;
    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/NotificationManagerService;->checkDisqualifyingFeatures(IIILjava/lang/String;Lcom/android/server/notification/NotificationRecord;Z)Z

    move-result v1

    if-nez v1, :cond_271

    .line 4455
    return-void

    .line 4459
    :cond_271
    iget-object v1, v9, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    if-eqz v1, :cond_2b3

    .line 4460
    iget-object v1, v9, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 4461
    .local v1, "intentCount":I
    if-lez v1, :cond_2b3

    .line 4462
    const-class v2, Landroid/app/ActivityManagerInternal;

    .line 4463
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManagerInternal;

    .line 4464
    .local v2, "am":Landroid/app/ActivityManagerInternal;
    const-class v3, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DeviceIdleController$LocalService;

    .line 4465
    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController$LocalService;->getNotificationWhitelistDuration()J

    move-result-wide v3

    .line 4466
    .local v3, "duration":J
    nop

    .line 4466
    .local v16, "i":I
    :goto_292
    move/from16 v5, v16

    .line 4466
    .end local v16    # "i":I
    .local v5, "i":I
    if-ge v5, v1, :cond_2b3

    .line 4467
    iget-object v6, v9, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/PendingIntent;

    .line 4468
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v6, :cond_2ac

    .line 4469
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v7

    move-object/from16 v28, v0

    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->WHITELIST_TOKEN:Landroid/os/IBinder;

    .line 4469
    .end local v0    # "channelId":Ljava/lang/String;
    .local v28, "channelId":Ljava/lang/String;
    invoke-virtual {v2, v7, v0, v3, v4}, Landroid/app/ActivityManagerInternal;->setPendingIntentWhitelistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;J)V

    .line 4469
    .end local v6    # "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_2ae

    .line 4466
    .end local v28    # "channelId":Ljava/lang/String;
    .restart local v0    # "channelId":Ljava/lang/String;
    :cond_2ac
    move-object/from16 v28, v0

    .line 4466
    .end local v0    # "channelId":Ljava/lang/String;
    .restart local v28    # "channelId":Ljava/lang/String;
    :goto_2ae
    add-int/lit8 v16, v5, 0x1

    .line 4466
    .end local v5    # "i":I
    .restart local v16    # "i":I
    move-object/from16 v0, v28

    goto :goto_292

    .line 4476
    .end local v1    # "intentCount":I
    .end local v2    # "am":Landroid/app/ActivityManagerInternal;
    .end local v3    # "duration":J
    .end local v16    # "i":I
    .end local v28    # "channelId":Ljava/lang/String;
    .restart local v0    # "channelId":Ljava/lang/String;
    :cond_2b3
    move-object/from16 v28, v0

    .line 4476
    .end local v0    # "channelId":Ljava/lang/String;
    .restart local v28    # "channelId":Ljava/lang/String;
    iget-object v0, v8, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    move/from16 v2, v25

    invoke-direct {v1, v8, v2, v11}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;)V

    .line 4476
    .end local v25    # "userId":I
    .local v2, "userId":I
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 4477
    return-void

    .line 4382
    .end local v2    # "userId":I
    .end local v12    # "channel":Landroid/app/NotificationChannel;
    .end local v13    # "callingUid":I
    .end local v23    # "opPkg":Ljava/lang/String;
    .end local v27    # "n":Landroid/service/notification/StatusBarNotification;
    .end local v28    # "channelId":Ljava/lang/String;
    .local v3, "pkg":Ljava/lang/String;
    .local v10, "opPkg":Ljava/lang/String;
    .local v11, "callingUid":I
    .local v14, "notificationUid":I
    .local v15, "userId":I
    :catch_2c2
    move-exception v0

    move-object v9, v6

    move-object/from16 v23, v10

    move v13, v11

    move v2, v15

    move v10, v7

    move v15, v14

    move-object v14, v3

    .line 4383
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v10    # "opPkg":Ljava/lang/String;
    .end local v11    # "callingUid":I
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "userId":I
    .restart local v13    # "callingUid":I
    .local v14, "pkg":Ljava/lang/String;
    .local v15, "notificationUid":I
    .restart local v23    # "opPkg":Ljava/lang/String;
    :goto_2cb
    const-string v1, "NotificationService"

    const-string v3, "Cannot create a context for sending app"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4384
    return-void

    .line 4360
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "userId":I
    .end local v13    # "callingUid":I
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v23    # "opPkg":Ljava/lang/String;
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v10    # "opPkg":Ljava/lang/String;
    .restart local v11    # "callingUid":I
    .local v15, "userId":I
    :cond_2d3
    move-object v14, v3

    move-object v9, v6

    move-object/from16 v23, v10

    move v13, v11

    move v2, v15

    move v10, v7

    .line 4360
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v10    # "opPkg":Ljava/lang/String;
    .end local v11    # "callingUid":I
    .end local v15    # "userId":I
    .restart local v2    # "userId":I
    .restart local v13    # "callingUid":I
    .restart local v14    # "pkg":Ljava/lang/String;
    .restart local v23    # "opPkg":Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "null not allowed: pkg="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " notification="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method findGroupNotificationsLocked(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "groupKey"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 6476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6477
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6478
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 6479
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->findGroupNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 6478
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6480
    return-object v0
.end method

.method findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;
    .registers 13
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 6517
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    move-object v1, v0

    .local v1, "r":Lcom/android/server/notification/NotificationRecord;
    if-eqz v0, :cond_f

    .line 6518
    return-object v1

    .line 6520
    :cond_f
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/NotificationManagerService;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1e

    .line 6522
    return-object v1

    .line 6524
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method finishTokenLocked(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "t"    # Landroid/os/IBinder;

    .line 5523
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5528
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->removeWindowToken(Landroid/os/IBinder;ZI)V

    .line 5530
    return-void
.end method

.method getBinderService()Landroid/app/INotificationManager;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2066
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    return-object v0
.end method

.method protected getCompanionManager()Landroid/companion/ICompanionDeviceManager;
    .registers 2

    .line 6835
    const-string v0, "companiondevice"

    .line 6836
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 6835
    invoke-static {v0}, Landroid/companion/ICompanionDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method getInternalService()Lcom/android/server/notification/NotificationManagerInternal;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2174
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    return-object v0
.end method

.method protected getNotificationCountLocked(Ljava/lang/String;IILjava/lang/String;)I
    .registers 11
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "excludedId"    # I
    .param p4, "excludedTag"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 4601
    const/4 v0, 0x0

    .line 4602
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4603
    .local v1, "N":I
    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "count":I
    :goto_a
    if-ge v0, v1, :cond_42

    .line 4604
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 4605
    .local v4, "existing":Lcom/android/server/notification/NotificationRecord;
    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4606
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    if-ne v5, p2, :cond_3f

    .line 4607
    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    if-ne v5, p3, :cond_3d

    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4608
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 4609
    goto :goto_3f

    .line 4611
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    .line 4603
    .end local v4    # "existing":Lcom/android/server/notification/NotificationRecord;
    :cond_3f
    :goto_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 4614
    .end local v0    # "i":I
    :cond_42
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4615
    .local v0, "M":I
    nop

    .local v2, "i":I
    :goto_49
    if-ge v2, v0, :cond_6c

    .line 4616
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 4617
    .restart local v4    # "existing":Lcom/android/server/notification/NotificationRecord;
    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    iget-object v5, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 4618
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    if-ne v5, p2, :cond_69

    .line 4619
    add-int/lit8 v3, v3, 0x1

    .line 4615
    .end local v4    # "existing":Lcom/android/server/notification/NotificationRecord;
    :cond_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 4622
    .end local v2    # "i":I
    :cond_6c
    return v3
.end method

.method getNotificationRecord(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1473
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    return-object v0
.end method

.method getNotificationRecordCount()I
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1432
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1433
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mSummaryByGroupKey:Landroid/util/ArrayMap;

    .line 1434
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 1436
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 1437
    .local v3, "posted":Lcom/android/server/notification/NotificationRecord;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 1438
    add-int/lit8 v1, v1, -0x1

    .line 1440
    :cond_3e
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 1441
    add-int/lit8 v1, v1, -0x1

    .line 1443
    .end local v3    # "posted":Lcom/android/server/notification/NotificationRecord;
    :cond_52
    goto :goto_24

    .line 1445
    :cond_53
    monitor-exit v0

    return v1

    .line 1446
    .end local v1    # "count":I
    :catchall_55
    move-exception v1

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_55

    throw v1
.end method

.method handleRankingSort()V
    .registers 16

    .line 5650
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    if-nez v0, :cond_5

    return-void

    .line 5651
    :cond_5
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5652
    :try_start_8
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5654
    .local v1, "N":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5655
    .local v2, "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v3, v1, [I

    .line 5656
    .local v3, "visibilities":[I
    new-array v4, v1, [Z

    .line 5657
    .local v4, "showBadges":[Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5658
    .local v5, "channelBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/NotificationChannel;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5659
    .local v6, "groupKeyBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5660
    .local v7, "overridePeopleBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5661
    .local v8, "snoozeCriteriaBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/service/notification/SnoozeCriterion;>;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5662
    .local v9, "userSentimentBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5663
    .local v10, "suppressVisuallyBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    move v12, v11

    .local v12, "i":I
    :goto_37
    if-ge v12, v1, :cond_8e

    .line 5664
    iget-object v13, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/notification/NotificationRecord;

    .line 5665
    .local v13, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5666
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v14

    aput v14, v3, v12

    .line 5667
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v14

    aput-boolean v14, v4, v12

    .line 5668
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5669
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5670
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5671
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5672
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5673
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5674
    iget-object v14, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v14, v13}, Lcom/android/server/notification/RankingHelper;->extractSignals(Lcom/android/server/notification/NotificationRecord;)V

    .line 5663
    .end local v13    # "r":Lcom/android/server/notification/NotificationRecord;
    add-int/lit8 v12, v12, 0x1

    goto :goto_37

    .line 5676
    .end local v12    # "i":I
    :cond_8e
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    iget-object v13, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Lcom/android/server/notification/RankingHelper;->sort(Ljava/util/ArrayList;)V

    .line 5677
    nop

    .local v11, "i":I
    :goto_96
    if-ge v11, v1, :cond_128

    .line 5678
    iget-object v12, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/notification/NotificationRecord;

    .line 5679
    .local v12, "r":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_121

    aget v13, v3, v11

    .line 5680
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getPackageVisibilityOverride()I

    move-result v14

    if-ne v13, v14, :cond_121

    aget-boolean v13, v4, v11

    .line 5681
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->canShowBadge()Z

    move-result v14

    if-ne v13, v14, :cond_121

    .line 5682
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_121

    .line 5683
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_121

    .line 5684
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getPeopleOverride()Ljava/util/ArrayList;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_121

    .line 5685
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getSnoozeCriteria()Ljava/util/ArrayList;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_121

    .line 5686
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getUserSentiment()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_121

    .line 5687
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 5688
    invoke-virtual {v12}, Lcom/android/server/notification/NotificationRecord;->getSuppressedVisualEffects()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 5687
    invoke-static {v13, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11d

    goto :goto_121

    .line 5677
    .end local v12    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_11d
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_96

    .line 5689
    .restart local v12    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_121
    :goto_121
    iget-object v13, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v13}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleSendRankingUpdate()V

    .line 5690
    monitor-exit v0

    return-void

    .line 5693
    .end local v1    # "N":I
    .end local v2    # "orderBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "visibilities":[I
    .end local v4    # "showBadges":[Z
    .end local v5    # "channelBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/NotificationChannel;>;"
    .end local v6    # "groupKeyBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "overridePeopleBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v8    # "snoozeCriteriaBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/service/notification/SnoozeCriterion;>;>;"
    .end local v9    # "userSentimentBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "suppressVisuallyBefore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "i":I
    .end local v12    # "r":Lcom/android/server/notification/NotificationRecord;
    :cond_128
    monitor-exit v0

    .line 5694
    return-void

    .line 5693
    :catchall_12a
    move-exception v1

    monitor-exit v0
    :try_end_12c
    .catchall {:try_start_8 .. :try_end_12c} :catchall_12a

    throw v1
.end method

.method hasCompanionDevice(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z
    .registers 9
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 6808
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    if-nez v0, :cond_a

    .line 6809
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getCompanionManager()Landroid/companion/ICompanionDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    .line 6812
    :cond_a
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 6813
    return v1

    .line 6815
    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 6817
    .local v2, "identity":J
    :try_start_14
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    iget-object v4, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 6818
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 6817
    invoke-interface {v0, v4, v5}, Landroid/companion/ICompanionDeviceManager;->getAssociations(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 6819
    .local v0, "associations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4
    :try_end_26
    .catch Ljava/lang/SecurityException; {:try_start_14 .. :try_end_26} :catch_54
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_26} :catch_47
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_26} :catch_2f
    .catchall {:try_start_14 .. :try_end_26} :catchall_2d

    if-nez v4, :cond_55

    .line 6820
    const/4 v1, 0x1

    .line 6829
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6820
    return v1

    .line 6829
    .end local v0    # "associations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2d
    move-exception v0

    goto :goto_50

    .line 6826
    :catch_2f
    move-exception v0

    .line 6827
    .local v0, "e":Ljava/lang/Exception;
    :try_start_30
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot verify listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_55

    .line 6824
    :catch_47
    move-exception v0

    .line 6825
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "NotificationService"

    const-string v5, "Cannot reach companion device service"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_30 .. :try_end_4f} :catchall_2d

    .end local v0    # "re":Landroid/os/RemoteException;
    goto :goto_55

    .line 6829
    :goto_50
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 6822
    :catch_54
    move-exception v0

    .line 6829
    :cond_55
    :goto_55
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6830
    nop

    .line 6831
    return v1
.end method

.method protected hideNotificationsForPackages([Ljava/lang/String;)V
    .registers 9
    .param p1, "pkgs"    # [Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6566
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6567
    :try_start_3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 6568
    .local v1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6569
    .local v2, "changedNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6570
    .local v3, "numNotifications":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_13
    if-ge v4, v3, :cond_33

    .line 6571
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 6572
    .local v5, "rec":Lcom/android/server/notification/NotificationRecord;
    iget-object v6, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 6573
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/server/notification/NotificationRecord;->setHidden(Z)V

    .line 6574
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6570
    .end local v5    # "rec":Lcom/android/server/notification/NotificationRecord;
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 6578
    .end local v4    # "i":I
    :cond_33
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v4, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyHiddenLocked(Ljava/util/List;)V

    .line 6579
    .end local v1    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "changedNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v3    # "numNotifications":I
    monitor-exit v0

    .line 6580
    return-void

    .line 6579
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method indexOfNotificationLocked(Ljava/lang/String;)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 6555
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6556
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 6557
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 6558
    return v1

    .line 6556
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 6561
    .end local v1    # "i":I
    :cond_1f
    const/4 v1, -0x1

    return v1
.end method

.method indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/app/ITransientNotification;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mToastQueue"
    .end annotation

    .line 5571
    invoke-interface {p2}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 5572
    .local v0, "cbak":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 5573
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5574
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_2b

    .line 5575
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 5576
    .local v4, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    iget-object v5, v4, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v5}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 5577
    return v3

    .line 5574
    .end local v4    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 5580
    .end local v3    # "i":I
    :cond_2b
    const/4 v3, -0x1

    return v3
.end method

.method indexOfToastPackageLocked(Ljava/lang/String;)I
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mToastQueue"
    .end annotation

    .line 5586
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 5587
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5588
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_1b

    .line 5589
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 5590
    .local v3, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 5591
    return v2

    .line 5588
    .end local v3    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 5594
    .end local v2    # "i":I
    :cond_1b
    const/4 v2, -0x1

    return v2
.end method

.method init(Landroid/os/Looper;Landroid/content/pm/IPackageManager;Landroid/content/pm/PackageManager;Lcom/android/server/lights/LightsManager;Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ConditionProviders;Landroid/companion/ICompanionDeviceManager;Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationUsageStats;Landroid/util/AtomicFile;Landroid/app/ActivityManager;Lcom/android/server/notification/GroupHelper;Landroid/app/IActivityManager;Landroid/app/usage/UsageStatsManagerInternal;Landroid/app/admin/DevicePolicyManagerInternal;)V
    .registers 38
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "packageManager"    # Landroid/content/pm/IPackageManager;
    .param p3, "packageManagerClient"    # Landroid/content/pm/PackageManager;
    .param p4, "lightsManager"    # Lcom/android/server/lights/LightsManager;
    .param p5, "notificationListeners"    # Lcom/android/server/notification/NotificationManagerService$NotificationListeners;
    .param p6, "notificationAssistants"    # Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
    .param p7, "conditionProviders"    # Lcom/android/server/notification/ConditionProviders;
    .param p8, "companionManager"    # Landroid/companion/ICompanionDeviceManager;
    .param p9, "snoozeHelper"    # Lcom/android/server/notification/SnoozeHelper;
    .param p10, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;
    .param p11, "policyFile"    # Landroid/util/AtomicFile;
    .param p12, "activityManager"    # Landroid/app/ActivityManager;
    .param p13, "groupHelper"    # Lcom/android/server/notification/GroupHelper;
    .param p14, "am"    # Landroid/app/IActivityManager;
    .param p15, "appUsageStats"    # Landroid/app/usage/UsageStatsManagerInternal;
    .param p16, "dpm"    # Landroid/app/admin/DevicePolicyManagerInternal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    .line 1532
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1533
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "max_notification_enqueue_rate"

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lcom/android/server/notification/NotificationManagerService;->mMaxPackageEnqueueRate:F

    .line 1537
    nop

    .line 1538
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "accessibility"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1539
    move-object/from16 v5, p14

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    .line 1540
    move-object/from16 v6, p2

    iput-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 1541
    move-object/from16 v7, p3

    iput-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    .line 1542
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v8, "appops"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1543
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v8, "vibrator"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    .line 1544
    move-object/from16 v8, p15

    iput-object v8, v1, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1545
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v9, "alarm"

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1546
    move-object/from16 v9, p8

    iput-object v9, v1, Lcom/android/server/notification/NotificationManagerService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    .line 1547
    move-object/from16 v10, p12

    iput-object v10, v1, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 1548
    const-string v0, "deviceidle"

    .line 1549
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1548
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 1550
    move-object/from16 v11, p16

    iput-object v11, v1, Lcom/android/server/notification/NotificationManagerService;->mDpm:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1552
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 1553
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1556
    const v0, 0x107003a

    const/4 v12, 0x0

    :try_start_93
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_97
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_93 .. :try_end_97} :catch_9b

    .line 1559
    .local v0, "extractorNames":[Ljava/lang/String;
    nop

    .line 1558
    .end local v0    # "extractorNames":[Ljava/lang/String;
    .local v19, "extractorNames":[Ljava/lang/String;
    :goto_98
    move-object/from16 v19, v0

    goto :goto_a0

    .line 1557
    .end local v19    # "extractorNames":[Ljava/lang/String;
    :catch_9b
    move-exception v0

    move-object v13, v0

    .line 1558
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    new-array v0, v12, [Ljava/lang/String;

    .line 1558
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_98

    .line 1560
    .restart local v19    # "extractorNames":[Ljava/lang/String;
    :goto_a0
    move-object/from16 v15, p10

    iput-object v15, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 1561
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 1562
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;

    iget-object v13, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingThread:Landroid/os/HandlerThread;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v0, v1, v13}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 1563
    move-object/from16 v14, p7

    iput-object v14, v1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    .line 1564
    new-instance v0, Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v13

    iget-object v12, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-direct {v0, v13, v12, v5}, Lcom/android/server/notification/ZenModeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/ConditionProviders;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 1565
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v5, Lcom/android/server/notification/NotificationManagerService$7;

    invoke-direct {v5, v1}, Lcom/android/server/notification/NotificationManagerService$7;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    invoke-virtual {v0, v5}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 1590
    new-instance v0, Lcom/android/server/notification/RankingHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v12, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    iget-object v13, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    iget-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    move-object/from16 v16, v13

    move-object v13, v0

    move-object v14, v5

    move-object v15, v12

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v19}, Lcom/android/server/notification/RankingHelper;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/server/notification/RankingHandler;Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/NotificationUsageStats;[Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 1596
    move-object/from16 v5, p9

    iput-object v5, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    .line 1597
    move-object/from16 v6, p13

    iput-object v6, v1, Lcom/android/server/notification/NotificationManagerService;->mGroupHelper:Lcom/android/server/notification/GroupHelper;

    .line 1600
    move-object/from16 v7, p5

    iput-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 1603
    move-object/from16 v12, p6

    iput-object v12, v1, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 1606
    new-instance v0, Lcom/android/server/notification/-$$Lambda$ouaYRM5YVYoMkUW8dm6TnIjLfgg;

    invoke-direct {v0, v1}, Lcom/android/server/notification/-$$Lambda$ouaYRM5YVYoMkUW8dm6TnIjLfgg;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Ljava/util/function/Predicate;

    .line 1608
    move-object/from16 v13, p11

    iput-object v13, v1, Lcom/android/server/notification/NotificationManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 1609
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->loadPolicyFile()V

    .line 1611
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1612
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_128

    .line 1613
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mStatusBar:Lcom/android/server/statusbar/StatusBarManagerInternal;

    iget-object v14, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v0, v14}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNotificationDelegate(Lcom/android/server/notification/NotificationDelegate;)V

    .line 1616
    :cond_128
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    .line 1617
    const/4 v14, 0x5

    invoke-virtual {v3, v14}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v14

    iput-object v14, v1, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 1619
    const v14, 0x1070039

    const/16 v15, 0x11

    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    invoke-static {v4, v14, v15, v0}, Lcom/android/server/notification/NotificationManagerService;->getLongArray(Landroid/content/res/Resources;II[J)[J

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J

    .line 1623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "file://"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v14, 0x1040163

    .line 1624
    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1623
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationUri:Landroid/net/Uri;

    .line 1625
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1626
    const/4 v14, 0x4

    invoke-virtual {v0, v14}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v14, 0x2

    .line 1627
    invoke-virtual {v0, v14}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1628
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationAudioAttributes:Landroid/media/AudioAttributes;

    .line 1629
    const v0, 0x1050042

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, v1, Lcom/android/server/notification/NotificationManagerService;->mInCallNotificationVolume:F

    .line 1631
    const v0, 0x11200c6

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUseAttentionLight:Z

    .line 1637
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v14, "device_provisioned"

    const/4 v15, 0x0

    invoke-static {v0, v14, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v14, 0x1

    if-nez v0, :cond_19c

    .line 1639
    iput-boolean v14, v1, Lcom/android/server/notification/NotificationManagerService;->mDisableNotificationEffects:Z

    .line 1641
    :cond_19c
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->initZenMode()V

    .line 1642
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeListenerInterruptionFilter()I

    move-result v0

    iput v0, v1, Lcom/android/server/notification/NotificationManagerService;->mInterruptionFilter:I

    .line 1644
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 1645
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->listenForCallState()V

    .line 1647
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    iget-object v14, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-direct {v0, v1, v14}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    .line 1649
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$Archive;

    const v14, 0x10e0075

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    invoke-direct {v0, v14}, Lcom/android/server/notification/NotificationManagerService$Archive;-><init>(I)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mArchive:Lcom/android/server/notification/NotificationManagerService$Archive;

    .line 1652
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v14, "android.software.leanback"

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e2

    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerClient:Landroid/content/pm/PackageManager;

    const-string v14, "android.hardware.type.television"

    .line 1653
    invoke-virtual {v0, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e1

    goto :goto_1e2

    :cond_1e1
    goto :goto_1e3

    :cond_1e2
    :goto_1e2
    const/4 v15, 0x1

    :goto_1e3
    iput-boolean v15, v1, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    .line 1657
    new-instance v0, Lcom/oneplus/notification/NotificationLightController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v0, v14, v2}, Lcom/oneplus/notification/NotificationLightController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLightController:Lcom/oneplus/notification/NotificationLightController;

    .line 1658
    new-instance v0, Lcom/oneplus/notification/NotificationVibrationController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v0, v14}, Lcom/oneplus/notification/NotificationVibrationController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationVibrationController:Lcom/oneplus/notification/NotificationVibrationController;

    .line 1659
    sget-object v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationVibrationController:Lcom/oneplus/notification/NotificationVibrationController;

    iget-object v14, v1, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J

    invoke-virtual {v0, v14}, Lcom/oneplus/notification/NotificationVibrationController;->setFallbackVibrationPattern([J)V

    .line 1661
    return-void
.end method

.method protected isBlocked(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationUsageStats;)Z
    .registers 13
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    .line 4626
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4627
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    .line 4629
    .local v1, "callingUid":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v2

    .line 4630
    .local v2, "isPackageSuspended":Z
    if-eqz v2, :cond_1d

    .line 4631
    const-string v3, "NotificationService"

    const-string v4, "Suppressing notification from package due to package suspended by administrator."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4633
    invoke-virtual {p2, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerSuspendedByAdmin(Lcom/android/server/notification/NotificationRecord;)V

    .line 4634
    return v2

    .line 4644
    :cond_1d
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/notification/RankingHelper;->isGroupBlocked(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    .line 4645
    .local v3, "isGroupBlocked":Z
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v4, v0, v1}, Lcom/android/server/notification/RankingHelper;->getImportance(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_37

    move v4, v6

    goto :goto_38

    :cond_37
    move v4, v5

    .line 4646
    .local v4, "isRankingImportanceNone":Z
    :goto_38
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v7

    if-nez v7, :cond_44

    move v7, v6

    goto :goto_45

    :cond_44
    move v7, v5

    .line 4647
    .local v7, "isRecordImportanceNone":Z
    :goto_45
    if-nez v3, :cond_4d

    if-nez v4, :cond_4d

    if-eqz v7, :cond_4c

    goto :goto_4d

    :cond_4c
    goto :goto_4e

    :cond_4d
    :goto_4d
    move v5, v6

    .line 4648
    .local v5, "isBlocked":Z
    :goto_4e
    if-eqz v5, :cond_79

    .line 4650
    const-string v6, "NotificationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Suppressing notification from package by user request. isGroupBlocked: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isRankingImportanceNone: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isRecordImportanceNone: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4654
    invoke-virtual {p2, p1}, Lcom/android/server/notification/NotificationUsageStats;->registerBlocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 4657
    :cond_79
    return v5
.end method

.method protected isCallerSystemOrPhone()Z
    .registers 2

    .line 6618
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->isUidSystemOrPhone(I)Z

    move-result v0

    return v0
.end method

.method protected isCallingUidSystem()Z
    .registers 3

    .line 6607
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6608
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method protected isUidSystemOrPhone(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 6612
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 6613
    .local v0, "appid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_11

    if-nez p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v1, 0x1

    :goto_12
    return v1
.end method

.method protected isVisuallyInterruptive(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 21
    .param p1, "old"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "r"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p1

    .line 4928
    move-object/from16 v2, p2

    const/4 v0, 0x1

    if-nez v1, :cond_2b

    .line 4929
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v3, :cond_2a

    .line 4930
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INTERRUPTIVENESS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4931
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is interruptive: new notification"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4930
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4933
    :cond_2a
    return v0

    .line 4936
    :cond_2b
    const/4 v3, 0x0

    if-nez v2, :cond_52

    .line 4937
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_51

    .line 4938
    const-string v0, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INTERRUPTIVENESS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4939
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not interruptive: null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4938
    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4941
    :cond_51
    return v3

    .line 4944
    :cond_52
    iget-object v4, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 4945
    .local v4, "oldN":Landroid/app/Notification;
    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    .line 4947
    .local v5, "newN":Landroid/app/Notification;
    iget-object v6, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v6, :cond_2e2

    iget-object v6, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v6, :cond_68

    goto/16 :goto_2e2

    .line 4957
    :cond_68
    iget-object v6, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_98

    .line 4958
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_97

    .line 4959
    const-string v0, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INTERRUPTIVENESS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4960
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not interruptive: foreground service"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4959
    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4962
    :cond_97
    return v3

    .line 4966
    :cond_98
    iget-object v6, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v6

    if-eqz v6, :cond_d0

    iget-object v6, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v6

    if-eqz v6, :cond_d0

    .line 4967
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_cf

    .line 4968
    const-string v0, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INTERRUPTIVENESS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4969
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not interruptive: summary"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4968
    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4971
    :cond_cf
    return v3

    .line 4974
    :cond_d0
    iget-object v6, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.title"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 4975
    .local v6, "oldTitle":Ljava/lang/String;
    iget-object v7, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v8, "android.title"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 4976
    .local v7, "newTitle":Ljava/lang/String;
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x3

    if-nez v8, :cond_174

    .line 4977
    sget-boolean v8, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v8, :cond_173

    .line 4978
    const-string v8, "NotificationService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "INTERRUPTIVENESS: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4979
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is interruptive: changed title"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 4978
    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4980
    const-string v8, "NotificationService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "INTERRUPTIVENESS: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "   old title: %s (%s@0x%08x)"

    new-array v13, v10, [Ljava/lang/Object;

    aput-object v6, v13, v3

    .line 4981
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v13, v0

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v9

    .line 4980
    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4982
    const-string v8, "NotificationService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "INTERRUPTIVENESS: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "   new title: %s (%s@0x%08x)"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v7, v10, v3

    .line 4983
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v10, v0

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v9

    .line 4982
    invoke-static {v12, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4985
    :cond_173
    return v0

    .line 4988
    :cond_174
    iget-object v8, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v11, "android.text"

    invoke-virtual {v8, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 4989
    .local v8, "oldText":Ljava/lang/String;
    iget-object v11, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v12, "android.text"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 4990
    .local v11, "newText":Ljava/lang/String;
    invoke-static {v8, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_218

    .line 4991
    sget-boolean v12, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v12, :cond_216

    .line 4992
    const-string v12, "NotificationService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "INTERRUPTIVENESS: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4993
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " is interruptive: changed text"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 4992
    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4994
    const-string v12, "NotificationService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "INTERRUPTIVENESS: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "   old text: %s (%s@0x%08x)"

    new-array v15, v10, [Ljava/lang/Object;

    aput-object v8, v15, v3

    .line 4995
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    aput-object v16, v15, v0

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v15, v9

    .line 4994
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4996
    const-string v0, "NotificationService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "INTERRUPTIVENESS: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "   new text: %s (%s@0x%08x)"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v11, v10, v3

    .line 4997
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v14, 0x1

    aput-object v3, v10, v14

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v10, v9

    .line 4996
    invoke-static {v13, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4999
    :cond_216
    const/4 v0, 0x1

    return v0

    .line 5001
    :cond_218
    invoke-virtual {v4}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result v0

    invoke-virtual {v5}, Landroid/app/Notification;->hasCompletedProgress()Z

    move-result v9

    if-eq v0, v9, :cond_247

    .line 5002
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_245

    .line 5003
    const-string v0, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INTERRUPTIVENESS: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5004
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is interruptive: completed progress"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5003
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5006
    :cond_245
    const/4 v0, 0x1

    return v0

    .line 5009
    :cond_247
    invoke-static {v4, v5}, Landroid/app/Notification;->areActionsVisiblyDifferent(Landroid/app/Notification;Landroid/app/Notification;)Z

    move-result v0

    if-eqz v0, :cond_272

    .line 5010
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_270

    .line 5011
    const-string v0, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "INTERRUPTIVENESS: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5012
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is interruptive: changed actions"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5011
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5014
    :cond_270
    const/4 v0, 0x1

    return v0

    .line 5018
    :cond_272
    :try_start_272
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 5019
    .local v0, "oldB":Landroid/app/Notification$Builder;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v5}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 5022
    .local v9, "newB":Landroid/app/Notification$Builder;
    invoke-static {v0, v9}, Landroid/app/Notification;->areStyledNotificationsVisiblyDifferent(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z

    move-result v10

    if-eqz v10, :cond_2ad

    .line 5023
    sget-boolean v10, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v10, :cond_2ab

    .line 5024
    const-string v10, "NotificationService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "INTERRUPTIVENESS: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5025
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " is interruptive: styles differ"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 5024
    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5027
    :cond_2ab
    const/4 v3, 0x1

    return v3

    .line 5031
    :cond_2ad
    invoke-static {v0, v9}, Landroid/app/Notification;->areRemoteViewsChanged(Landroid/app/Notification$Builder;Landroid/app/Notification$Builder;)Z

    move-result v10

    if-eqz v10, :cond_2d8

    .line 5032
    sget-boolean v10, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v10, :cond_2d6

    .line 5033
    const-string v10, "NotificationService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "INTERRUPTIVENESS: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5034
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " is interruptive: remoteviews differ"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 5033
    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d6
    .catch Ljava/lang/Exception; {:try_start_272 .. :try_end_2d6} :catch_2d9

    .line 5036
    :cond_2d6
    const/4 v3, 0x1

    return v3

    .line 5040
    .end local v0    # "oldB":Landroid/app/Notification$Builder;
    .end local v9    # "newB":Landroid/app/Notification$Builder;
    :cond_2d8
    goto :goto_2e1

    .line 5038
    :catch_2d9
    move-exception v0

    .line 5039
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "NotificationService"

    const-string v10, "error recovering builder"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5042
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2e1
    return v3

    .line 4948
    .end local v6    # "oldTitle":Ljava/lang/String;
    .end local v7    # "newTitle":Ljava/lang/String;
    .end local v8    # "oldText":Ljava/lang/String;
    .end local v11    # "newText":Ljava/lang/String;
    :cond_2e2
    :goto_2e2
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DEBUG_INTERRUPTIVENESS:Z

    if-eqz v0, :cond_305

    .line 4949
    const-string v0, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INTERRUPTIVENESS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4950
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not interruptive: no extras"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4949
    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4952
    :cond_305
    return v3
.end method

.method keepProcessAliveIfNeededLocked(I)V
    .registers 9
    .param p1, "pid"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mToastQueue"
    .end annotation

    .line 5600
    const/4 v0, 0x0

    .line 5601
    .local v0, "toastCount":I
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .line 5602
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5603
    .local v2, "N":I
    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    .line 5603
    .local v0, "i":I
    .local v4, "toastCount":I
    :goto_a
    if-ge v0, v2, :cond_1b

    .line 5604
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 5605
    .local v5, "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    iget v6, v5, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    if-ne v6, p1, :cond_18

    .line 5606
    add-int/lit8 v4, v4, 0x1

    .line 5603
    .end local v5    # "r":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 5610
    .end local v0    # "i":I
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    if-lez v4, :cond_23

    const/4 v3, 0x1

    nop

    :cond_23
    const-string/jumbo v6, "toast"

    invoke-interface {v0, v5, p1, v3, v6}, Landroid/app/IActivityManager;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_29} :catch_2a

    .line 5613
    goto :goto_2b

    .line 5611
    :catch_2a
    move-exception v0

    .line 5614
    :goto_2b
    return-void
.end method

.method protected logRecentLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5051
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v0, :cond_5

    .line 5052
    return-void

    .line 5054
    :cond_5
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mRecentApps:Landroid/util/ArrayMap;

    .line 5055
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 5056
    .local v0, "recentAppsForUser":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/NotifyingApp;>;"
    new-instance v1, Landroid/service/notification/NotifyingApp;

    invoke-direct {v1}, Landroid/service/notification/NotifyingApp;-><init>()V

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5057
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/service/notification/NotifyingApp;->setPackage(Ljava/lang/String;)Landroid/service/notification/NotifyingApp;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5058
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/service/notification/NotifyingApp;->setUid(I)Landroid/service/notification/NotifyingApp;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 5059
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/service/notification/NotifyingApp;->setLastNotified(J)Landroid/service/notification/NotifyingApp;

    move-result-object v1

    .line 5061
    .local v1, "na":Landroid/service/notification/NotifyingApp;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_48
    if-ltz v2, :cond_6f

    .line 5062
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/NotifyingApp;

    .line 5063
    .local v3, "naExisting":Landroid/service/notification/NotifyingApp;
    invoke-virtual {v1}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 5064
    invoke-virtual {v1}, Landroid/service/notification/NotifyingApp;->getUid()I

    move-result v4

    invoke-virtual {v3}, Landroid/service/notification/NotifyingApp;->getUid()I

    move-result v5

    if-ne v4, v5, :cond_6c

    .line 5065
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5066
    goto :goto_6f

    .line 5061
    .end local v3    # "naExisting":Landroid/service/notification/NotifyingApp;
    :cond_6c
    add-int/lit8 v2, v2, -0x1

    goto :goto_48

    .line 5070
    .end local v2    # "i":I
    :cond_6f
    :goto_6f
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5071
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_83

    .line 5072
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5074
    :cond_83
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mRecentApps:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5075
    return-void
.end method

.method protected maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 2149
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isInterruptive()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->hasRecordedInterruption()Z

    move-result v0

    if-nez v0, :cond_30

    .line 2150
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2151
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2152
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result v3

    .line 2150
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportInterruptiveNotification(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2153
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->logRecentLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 2154
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setRecordedInterruption(Z)V

    .line 2156
    :cond_30
    return-void
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 1824
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_2f

    .line 1826
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    .line 1829
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 1830
    const-class v0, Landroid/media/AudioManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    .line 1831
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1832
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->onSystemReady()V

    goto :goto_47

    .line 1833
    :cond_2f
    const/16 v0, 0x258

    if-ne p1, v0, :cond_47

    .line 1836
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mSettingsObserver:Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->observe()V

    .line 1837
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onBootPhaseAppsCanStart()V

    .line 1838
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onBootPhaseAppsCanStart()V

    .line 1839
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0}, Lcom/android/server/notification/ConditionProviders;->onBootPhaseAppsCanStart()V

    .line 1841
    :cond_47
    :goto_47
    return-void
.end method

.method public onStart()V
    .registers 25

    .line 1665
    move-object/from16 v15, p0

    new-instance v0, Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$8;

    invoke-direct {v2, v15}, Lcom/android/server/notification/NotificationManagerService$8;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iget-object v3, v15, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/SnoozeHelper;-><init>(Landroid/content/Context;Lcom/android/server/notification/SnoozeHelper$Callback;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    move-object/from16 v16, v0

    .line 1681
    .local v16, "snoozeHelper":Lcom/android/server/notification/SnoozeHelper;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v14, v0

    .line 1683
    .local v14, "systemDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    .line 1684
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-class v0, Lcom/android/server/lights/LightsManager;

    .line 1685
    invoke-virtual {v15, v0}, Lcom/android/server/notification/NotificationManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/lights/LightsManager;

    new-instance v12, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    .line 1686
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-direct {v12, v15, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/pm/IPackageManager;)V

    new-instance v13, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 1687
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v15, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    iget-object v5, v15, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 1688
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    move-object v1, v13

    move-object v2, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    new-instance v0, Lcom/android/server/notification/ConditionProviders;

    .line 1689
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v15, Lcom/android/server/notification/NotificationManagerService;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/notification/ConditionProviders;-><init>(Landroid/content/Context;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    new-instance v1, Lcom/android/server/notification/NotificationUsageStats;

    .line 1690
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/notification/NotificationUsageStats;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "notification_policy.xml"

    invoke-direct {v3, v14, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v4, "notification-policy"

    invoke-direct {v2, v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1692
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Landroid/app/ActivityManager;

    .line 1693
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getGroupHelper()Lcom/android/server/notification/GroupHelper;

    move-result-object v20

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v21

    const-class v3, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1694
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Landroid/app/usage/UsageStatsManagerInternal;

    const-class v3, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1695
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v23, v3

    check-cast v23, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1683
    const/4 v3, 0x0

    move-object v7, v15

    move-object v4, v14

    move-object v14, v0

    .line 1683
    .end local v14    # "systemDir":Ljava/io/File;
    .local v4, "systemDir":Ljava/io/File;
    move-object v5, v15

    move-object v15, v3

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    invoke-virtual/range {v7 .. v23}, Lcom/android/server/notification/NotificationManagerService;->init(Landroid/os/Looper;Landroid/content/pm/IPackageManager;Landroid/content/pm/PackageManager;Lcom/android/server/lights/LightsManager;Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ConditionProviders;Landroid/companion/ICompanionDeviceManager;Lcom/android/server/notification/SnoozeHelper;Lcom/android/server/notification/NotificationUsageStats;Landroid/util/AtomicFile;Landroid/app/ActivityManager;Lcom/android/server/notification/GroupHelper;Landroid/app/IActivityManager;Landroid/app/usage/UsageStatsManagerInternal;Landroid/app/admin/DevicePolicyManagerInternal;)V

    .line 1698
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v0

    .line 1699
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1700
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1701
    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1702
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1703
    const-string v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1704
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1705
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1706
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1707
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1708
    const-string v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1711
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v0, :cond_f6

    .line 1712
    const-string v0, "action.appboot.notification_listener_update"

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1715
    :cond_f6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v5, Lcom/android/server/notification/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1717
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v2, v0

    .line 1718
    .local v2, "pkgFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1719
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1720
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1721
    const-string v0, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1722
    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1723
    const-string/jumbo v0, "package"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1724
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v9, v2

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1727
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v3, v0

    .line 1728
    .local v3, "suspendedPkgFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1729
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1730
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v9, v3

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1733
    new-instance v0, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v0

    .line 1734
    .local v20, "sdFilter":Landroid/content/IntentFilter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v17

    iget-object v0, v5, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v19, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v22}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1737
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v6, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 1738
    .local v6, "timeoutFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "timeout"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1739
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v7, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationTimeoutReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v7, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1741
    new-instance v0, Landroid/content/IntentFilter;

    const-string v7, "android.os.action.SETTING_RESTORED"

    invoke-direct {v0, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 1742
    .local v7, "settingsRestoredFilter":Landroid/content/IntentFilter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v8, v5, Lcom/android/server/notification/NotificationManagerService;->mRestoreReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1744
    new-instance v0, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .line 1745
    .local v8, "localeChangedFilter":Landroid/content/IntentFilter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v9, v5, Lcom/android/server/notification/NotificationManagerService;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v9, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1747
    const-string/jumbo v0, "notification"

    iget-object v9, v5, Lcom/android/server/notification/NotificationManagerService;->mService:Landroid/os/IBinder;

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v5, v0, v9, v10, v11}, Lcom/android/server/notification/NotificationManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1749
    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    iget-object v9, v5, Lcom/android/server/notification/NotificationManagerService;->mInternalService:Lcom/android/server/notification/NotificationManagerInternal;

    invoke-virtual {v5, v0, v9}, Lcom/android/server/notification/NotificationManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1754
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    .line 1755
    .local v9, "b":Landroid/os/IBinder;
    invoke-static {v9}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, v5, Lcom/android/server/notification/NotificationManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 1756
    invoke-direct/range {p0 .. p0}, Lcom/android/server/notification/NotificationManagerService;->initLockAppList()V

    .line 1757
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$9;

    invoke-direct {v0, v5}, Lcom/android/server/notification/NotificationManagerService$9;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    iput-object v0, v5, Lcom/android/server/notification/NotificationManagerService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    .line 1779
    :try_start_1c8
    iget-object v0, v5, Lcom/android/server/notification/NotificationManagerService;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v10, 0x3f

    const/4 v11, 0x0

    iget-object v12, v5, Lcom/android/server/notification/NotificationManagerService;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v0, v10, v11, v12}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1d2
    .catch Landroid/os/RemoteException; {:try_start_1c8 .. :try_end_1d2} :catch_1d3

    .line 1782
    goto :goto_1d4

    .line 1781
    :catch_1d3
    move-exception v0

    .line 1785
    :goto_1d4
    return-void
.end method

.method protected playInCallNotification()V
    .registers 2

    .line 5420
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$13;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationManagerService$13;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    .line 5442
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$13;->start()V

    .line 5443
    return-void
.end method

.method protected readDefaultApprovedServices(I)V
    .registers 13
    .param p1, "userId"    # I

    .line 509
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104013f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "defaultListenerAccess":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_47

    .line 513
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v5, v1

    :goto_1b
    if-ge v5, v4, :cond_47

    aget-object v6, v3, v5

    .line 515
    .local v6, "whitelisted":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    const/high16 v8, 0xc0000

    .line 516
    invoke-virtual {v7, v6, v8, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->queryPackageForServices(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v7

    .line 519
    .local v7, "approvedListeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_44

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 521
    .local v9, "cn":Landroid/content/ComponentName;
    :try_start_37
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v10

    invoke-interface {v10, v9, p1, v2}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZ)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3e} :catch_3f

    .line 525
    goto :goto_43

    .line 523
    :catch_3f
    move-exception v10

    .line 524
    .local v10, "e":Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    .line 526
    .end local v9    # "cn":Landroid/content/ComponentName;
    .end local v10    # "e":Landroid/os/RemoteException;
    :goto_43
    goto :goto_2b

    .line 513
    .end local v6    # "whitelisted":Ljava/lang/String;
    .end local v7    # "approvedListeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    .line 530
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104013e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 532
    .local v3, "defaultDndAccess":Ljava/lang/String;
    if-eqz v0, :cond_72

    .line 534
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    :goto_5f
    if-ge v1, v5, :cond_72

    aget-object v6, v4, v1

    .line 536
    .restart local v6    # "whitelisted":Ljava/lang/String;
    :try_start_63
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v7

    invoke-interface {v7, v6, v2}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_6a} :catch_6b

    .line 539
    goto :goto_6f

    .line 537
    :catch_6b
    move-exception v7

    .line 538
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 534
    .end local v6    # "whitelisted":Ljava/lang/String;
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 543
    :cond_72
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->readDefaultAssistant(I)V

    .line 544
    return-void
.end method

.method protected readDefaultAssistant(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 547
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104013a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "defaultAssistantAccess":Ljava/lang/String;
    if-eqz v0, :cond_37

    .line 552
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    const/high16 v2, 0xc0000

    .line 553
    invoke-virtual {v1, v0, v2, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->queryPackageForServices(Ljava/lang/String;II)Ljava/util/Set;

    move-result-object v1

    .line 556
    .local v1, "approvedAssistants":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 558
    .local v3, "cn":Landroid/content/ComponentName;
    :try_start_29
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v3, p1, v5}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_31} :catch_32

    .line 562
    goto :goto_36

    .line 560
    :catch_32
    move-exception v4

    .line 561
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 563
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_36
    goto :goto_1d

    .line 565
    .end local v1    # "approvedAssistants":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_37
    return-void
.end method

.method readPolicyXml(Ljava/io/InputStream;Z)V
    .registers 8
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "forRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 569
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 570
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 571
    const-string/jumbo v1, "notification-policy"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 572
    const/4 v1, 0x0

    .line 573
    .local v1, "migratedManagedServices":Z
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 574
    .local v2, "outerDepth":I
    :cond_18
    :goto_18
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_94

    .line 575
    const-string/jumbo v3, "zen"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 576
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/notification/ZenModeHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_43

    .line 577
    :cond_31
    const-string/jumbo v3, "ranking"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 578
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/notification/RankingHelper;->readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    .line 580
    :cond_43
    :goto_43
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 581
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Ljava/util/function/Predicate;

    invoke-virtual {v3, v0, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/function/Predicate;)V

    .line 582
    const/4 v1, 0x1

    goto :goto_18

    .line 583
    :cond_5e
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 584
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Ljava/util/function/Predicate;

    invoke-virtual {v3, v0, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/function/Predicate;)V

    .line 585
    const/4 v1, 0x1

    goto :goto_18

    .line 586
    :cond_79
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v3}, Lcom/android/server/notification/ConditionProviders;->getConfig()Lcom/android/server/notification/ManagedServices$Config;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 587
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mAllowedManagedServicePackages:Ljava/util/function/Predicate;

    invoke-virtual {v3, v0, v4}, Lcom/android/server/notification/ConditionProviders;->readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/function/Predicate;)V

    .line 588
    const/4 v1, 0x1

    goto :goto_18

    .line 592
    :cond_94
    if-nez v1, :cond_a8

    .line 593
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->migrateToXml()V

    .line 594
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->migrateToXml()V

    .line 595
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v3}, Lcom/android/server/notification/ConditionProviders;->migrateToXml()V

    .line 596
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    .line 599
    :cond_a8
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->ensureAssistant()V

    .line 600
    return-void
.end method

.method removeAutogroupKeyLocked(Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 3878
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 3879
    .local v0, "r":Lcom/android/server/notification/NotificationRecord;
    if-nez v0, :cond_b

    .line 3880
    return-void

    .line 3882
    :cond_b
    iget-object v1, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 3883
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->addAutoGroupAdjustment(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 3884
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writeNotificationUnautogrouped(Ljava/lang/String;)V

    .line 3885
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {v1}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 3887
    :cond_1f
    return-void
.end method

.method protected reportSeen(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 2075
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2076
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result v2

    .line 2075
    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 2078
    return-void
.end method

.method protected reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/notification/NotificationRecord;

    .line 2163
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAppUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 2164
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/notification/NotificationManagerService;->getRealUserId(I)I

    move-result v2

    .line 2163
    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 2166
    return-void
.end method

.method public savePolicyFile()V
    .registers 3

    .line 627
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->removeMessages(I)V

    .line 628
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendEmptyMessage(I)Z

    .line 629
    return-void
.end method

.method scheduleTimeoutLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 9
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5129
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_60

    .line 5130
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/android/server/notification/NotificationManagerService;->ACTION_NOTIFICATION_TIMEOUT:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v4, "timeout"

    .line 5133
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 5134
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 5133
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 5135
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "key"

    .line 5136
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    .line 5130
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 5138
    .local v0, "pi":Landroid/app/PendingIntent;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    .line 5139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 5138
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 5141
    .end local v0    # "pi":Landroid/app/PendingIntent;
    :cond_60
    return-void
.end method

.method sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .registers 6
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "packageName"    # Ljava/lang/CharSequence;

    .line 5832
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 5833
    return-void

    .line 5836
    :cond_9
    const/16 v0, 0x40

    .line 5837
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 5838
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 5839
    const-class v1, Landroid/app/Notification;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 5840
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    .line 5841
    iget-object v1, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 5842
    .local v1, "tickerText":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 5843
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5846
    :cond_2d
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 5847
    return-void
.end method

.method setAccessibilityManager(Landroid/view/accessibility/AccessibilityManager;)V
    .registers 2
    .param p1, "am"    # Landroid/view/accessibility/AccessibilityManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1519
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1520
    return-void
.end method

.method setAudioManager(Landroid/media/AudioManager;)V
    .registers 2
    .param p1, "audioMananger"    # Landroid/media/AudioManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1410
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    .line 1411
    return-void
.end method

.method setFallbackVibrationPattern([J)V
    .registers 2
    .param p1, "vibrationPattern"    # [J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1489
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mFallbackVibrationPattern:[J

    .line 1490
    return-void
.end method

.method setHandler(Lcom/android/server/notification/NotificationManagerService$WorkerHandler;)V
    .registers 2
    .param p1, "handler"    # Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1484
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 1485
    return-void
.end method

.method setIsTelevision(Z)V
    .registers 2
    .param p1, "isTelevision"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1509
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mIsTelevision:Z

    .line 1510
    return-void
.end method

.method setLights(Lcom/android/server/lights/Light;)V
    .registers 3
    .param p1, "light"    # Lcom/android/server/lights/Light;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1420
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    .line 1421
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mAttentionLight:Lcom/android/server/lights/Light;

    .line 1422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    .line 1423
    return-void
.end method

.method setPackageManager(Landroid/content/pm/IPackageManager;)V
    .registers 2
    .param p1, "packageManager"    # Landroid/content/pm/IPackageManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1494
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 1495
    return-void
.end method

.method setRankingHandler(Lcom/android/server/notification/RankingHandler;)V
    .registers 2
    .param p1, "rankingHandler"    # Lcom/android/server/notification/RankingHandler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1504
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    .line 1505
    return-void
.end method

.method setRankingHelper(Lcom/android/server/notification/RankingHelper;)V
    .registers 2
    .param p1, "rankingHelper"    # Lcom/android/server/notification/RankingHelper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1499
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    .line 1500
    return-void
.end method

.method setScreenOn(Z)V
    .registers 2
    .param p1, "on"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1427
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    .line 1428
    return-void
.end method

.method setSystemReady(Z)V
    .registers 2
    .param p1, "systemReady"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1479
    iput-boolean p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSystemReady:Z

    .line 1480
    return-void
.end method

.method setUsageStats(Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 2
    .param p1, "us"    # Lcom/android/server/notification/NotificationUsageStats;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1514
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 1515
    return-void
.end method

.method setVibrator(Landroid/os/Vibrator;)V
    .registers 2
    .param p1, "vibrator"    # Landroid/os/Vibrator;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1415
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mVibrator:Landroid/os/Vibrator;

    .line 1416
    return-void
.end method

.method shouldMuteNotificationLocked(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 9
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 5275
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 5276
    .local v0, "notification":Landroid/app/Notification;
    iget-boolean v1, p1, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_10

    .line 5278
    return v2

    .line 5282
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService;->disableNotificationEffects(Lcom/android/server/notification/NotificationRecord;)Ljava/lang/String;

    move-result-object v1

    .line 5283
    .local v1, "disableEffects":Ljava/lang/String;
    if-eqz v1, :cond_1a

    .line 5284
    invoke-static {p1, v1}, Lcom/android/server/notification/ZenLog;->traceDisableEffects(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 5285
    return v2

    .line 5289
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 5290
    return v2

    .line 5294
    :cond_21
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 5295
    invoke-virtual {v0}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 5296
    return v2

    .line 5301
    :cond_30
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 5302
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationUsageStats;->isAlertRateLimited(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 5303
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Muting recently noisy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5304
    return v2

    .line 5307
    :cond_59
    const/4 v2, 0x0

    return v2
.end method

.method showNextToastLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mToastQueue"
    .end annotation

    .line 5447
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    .line 5448
    .local v0, "record":Lcom/android/server/notification/NotificationManagerService$ToastRecord;
    :goto_9
    if-eqz v0, :cond_96

    .line 5449
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v2, :cond_31

    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Show pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " callback="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5452
    :cond_31
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->isSupportFrozenApp()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 5453
    if-eqz v0, :cond_41

    .line 5454
    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->uid:I

    const-string/jumbo v3, "showNextToastLocked"

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 5460
    :cond_41
    :try_start_41
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->token:Landroid/os/Binder;

    invoke-interface {v2, v3}, Landroid/app/ITransientNotification;->show(Landroid/os/IBinder;)V

    .line 5461
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationManagerService;->scheduleDurationReachedLocked(Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4b} :catch_4c

    .line 5462
    return-void

    .line 5463
    :catch_4c
    move-exception v2

    .line 5464
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object died trying to show notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5467
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 5468
    .local v3, "index":I
    if-ltz v3, :cond_7c

    .line 5469
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5471
    :cond_7c
    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;->pid:I

    invoke-virtual {p0, v4}, Lcom/android/server/notification/NotificationManagerService;->keepProcessAliveIfNeededLocked(I)V

    .line 5472
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_93

    .line 5473
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    goto :goto_94

    .line 5475
    :cond_93
    const/4 v0, 0x0

    .line 5477
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "index":I
    :goto_94
    goto/16 :goto_9

    .line 5479
    :cond_96
    return-void
.end method

.method protected simulatePackageSuspendBroadcast(ZLjava/lang/String;)V
    .registers 8
    .param p1, "suspend"    # Z
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 7560
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7561
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "android.intent.extra.changed_package_list"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 7564
    if-eqz p1, :cond_15

    const-string v1, "android.intent.action.PACKAGES_SUSPENDED"

    goto :goto_17

    .line 7565
    :cond_15
    const-string v1, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 7566
    .local v1, "action":Ljava/lang/String;
    :goto_17
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7567
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 7569
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 7570
    return-void
.end method

.method snoozeNotificationInt(Ljava/lang/String;JLjava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 15
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "duration"    # J
    .param p4, "snoozeCriterionId"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 6313
    if-nez p5, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    iget-object v0, p5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    .line 6314
    .local v0, "listenerName":Ljava/lang/String;
    :goto_a
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_12

    if-eqz p4, :cond_14

    :cond_12
    if-nez p1, :cond_15

    .line 6315
    :cond_14
    return-void

    .line 6325
    :cond_15
    if-eqz p5, :cond_58

    .line 6326
    iget-object v1, p5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 6327
    .local v1, "listenerPkg":Ljava/lang/String;
    const-string v2, "com.google.android.apps.restore"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 6329
    const-string v2, "com.android.providers.downloads"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_35

    const-string v2, "com.android.vending"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 6330
    :cond_35
    sget-boolean v2, Lcom/android/server/notification/NotificationManagerService;->DBG_ONEPLUS:Z

    if-eqz v2, :cond_57

    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip snooze from \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6331
    :cond_57
    return-void

    .line 6335
    .end local v1    # "listenerPkg":Ljava/lang/String;
    :cond_58
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG_ONEPLUS:Z

    if-eqz v1, :cond_7b

    .line 6337
    const-string v1, "NotificationService"

    const-string/jumbo v2, "snooze event(%s, %d, %s, %s)"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    const/4 v4, 0x3

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6341
    :cond_7b
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v8, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/NotificationManagerService$SnoozeNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v1, v8}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 6342
    return-void
.end method

.method protected unhideNotificationsForPackages([Ljava/lang/String;)V
    .registers 10
    .param p1, "pkgs"    # [Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 6584
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6585
    :try_start_3
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 6586
    .local v1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6587
    .local v2, "changedNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6588
    .local v3, "numNotifications":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_14
    if-ge v5, v3, :cond_33

    .line 6589
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    .line 6590
    .local v6, "rec":Lcom/android/server/notification/NotificationRecord;
    iget-object v7, v6, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 6591
    invoke-virtual {v6, v4}, Lcom/android/server/notification/NotificationRecord;->setHidden(Z)V

    .line 6592
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6588
    .end local v6    # "rec":Lcom/android/server/notification/NotificationRecord;
    :cond_30
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 6596
    .end local v5    # "i":I
    :cond_33
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService;->mListeners:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    invoke-virtual {v4, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyUnhiddenLocked(Ljava/util/List;)V

    .line 6597
    .end local v1    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "changedNotifications":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/notification/NotificationRecord;>;"
    .end local v3    # "numNotifications":I
    monitor-exit v0

    .line 6598
    return-void

    .line 6597
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 6345
    if-nez p2, :cond_4

    const/4 v0, 0x0

    goto :goto_a

    :cond_4
    iget-object v0, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    .line 6346
    .local v0, "listenerName":Ljava/lang/String;
    :goto_a
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_23

    .line 6347
    const-string v1, "NotificationService"

    const-string/jumbo v2, "unsnooze event(%s, %s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6349
    :cond_23
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/SnoozeHelper;->repost(Ljava/lang/String;)V

    .line 6350
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    .line 6351
    return-void
.end method

.method updateLightsLocked()V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNotificationLock"
    .end annotation

    .line 6436
    const/4 v0, 0x0

    .line 6437
    .local v0, "ledNotification":Lcom/android/server/notification/NotificationRecord;
    :goto_1
    const/4 v1, 0x1

    if-nez v0, :cond_42

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_42

    .line 6438
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6439
    .local v1, "owner":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 6440
    if-nez v0, :cond_41

    .line 6441
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LED Notification does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 6442
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6444
    .end local v1    # "owner":Ljava/lang/String;
    :cond_41
    goto :goto_1

    .line 6447
    :cond_42
    if-eqz v0, :cond_ca

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService;->mInCall:Z

    if-nez v2, :cond_ca

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    if-nez v2, :cond_ca

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLightController:Lcom/oneplus/notification/NotificationLightController;

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 6450
    invoke-virtual {v2, v3}, Lcom/oneplus/notification/NotificationLightController;->showLight(Lcom/android/server/notification/ZenModeHelper;)Z

    move-result v2

    if-eqz v2, :cond_57

    goto :goto_ca

    .line 6454
    :cond_57
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v2

    .line 6455
    .local v2, "light":Lcom/android/server/notification/NotificationRecord$Light;
    if-eqz v2, :cond_cf

    iget-boolean v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    if-eqz v3, :cond_cf

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLightController:Lcom/oneplus/notification/NotificationLightController;

    iget-object v4, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 6458
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/notification/NotificationLightController;->isLightEnabledImpl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 6459
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG_ONEPLUS:Z

    if-eqz v3, :cond_be

    .line 6460
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " show light #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    .line 6461
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " channel #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6462
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getLightColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " sbn #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6463
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->ledARGB:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 6460
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6467
    :cond_be
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    iget v4, v2, Lcom/android/server/notification/NotificationRecord$Light;->color:I

    iget v5, v2, Lcom/android/server/notification/NotificationRecord$Light;->onMs:I

    iget v6, v2, Lcom/android/server/notification/NotificationRecord$Light;->offMs:I

    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    .end local v2    # "light":Lcom/android/server/notification/NotificationRecord$Light;
    goto :goto_cf

    .line 6452
    :cond_ca
    :goto_ca
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLight:Lcom/android/server/lights/Light;

    invoke-virtual {v1}, Lcom/android/server/lights/Light;->turnOff()V

    .line 6471
    :cond_cf
    :goto_cf
    return-void
.end method

.method updateUriPermissions(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V
    .registers 21
    .param p1, "newRecord"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "oldRecord"    # Lcom/android/server/notification/NotificationRecord;
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 5996
    if-eqz v8, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_11
    move-object v10, v0

    .line 5997
    .local v10, "key":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_2c

    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": updating permissions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5999
    :cond_2c
    const/4 v1, 0x0

    if-eqz v8, :cond_34

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getGrantableUris()Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_35

    :cond_34
    move-object v0, v1

    :goto_35
    move-object v11, v0

    .line 6000
    .local v11, "newUris":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    if-eqz v9, :cond_3d

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getGrantableUris()Landroid/util/ArraySet;

    move-result-object v0

    goto :goto_3e

    :cond_3d
    move-object v0, v1

    :goto_3e
    move-object v12, v0

    .line 6003
    .local v12, "oldUris":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    if-nez v11, :cond_44

    if-nez v12, :cond_44

    .line 6004
    return-void

    .line 6008
    :cond_44
    const/4 v0, 0x0

    .line 6009
    .local v0, "permissionOwner":Landroid/os/IBinder;
    if-eqz v8, :cond_4b

    if-nez v0, :cond_4b

    .line 6010
    iget-object v0, v8, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    .line 6012
    :cond_4b
    if-eqz v9, :cond_51

    if-nez v0, :cond_51

    .line 6013
    iget-object v0, v9, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    .line 6017
    .end local v0    # "permissionOwner":Landroid/os/IBinder;
    .local v2, "permissionOwner":Landroid/os/IBinder;
    :cond_51
    move-object v2, v0

    if-eqz v11, :cond_8a

    if-nez v2, :cond_8a

    .line 6019
    :try_start_56
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_70

    const-string v0, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": creating owner"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6020
    :cond_70
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NOTIF:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_87} :catch_89

    move-object v2, v0

    .line 6023
    goto :goto_8a

    .line 6021
    :catch_89
    move-exception v0

    .line 6027
    :cond_8a
    :goto_8a
    if-nez v11, :cond_c9

    if-eqz v2, :cond_c9

    .line 6028
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 6030
    .local v3, "ident":J
    :try_start_92
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v0, :cond_ac

    const-string v0, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": destroying owner"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6031
    :cond_ac
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    const/4 v5, -0x1

    .line 6032
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 6031
    invoke-interface {v0, v2, v1, v5, v6}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_ba
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_ba} :catch_c4
    .catchall {:try_start_92 .. :try_end_ba} :catchall_bf

    .line 6033
    const/4 v0, 0x0

    .line 6037
    .end local v2    # "permissionOwner":Landroid/os/IBinder;
    .restart local v0    # "permissionOwner":Landroid/os/IBinder;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6038
    goto :goto_ca

    .line 6037
    .end local v0    # "permissionOwner":Landroid/os/IBinder;
    .restart local v2    # "permissionOwner":Landroid/os/IBinder;
    :catchall_bf
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 6034
    :catch_c4
    move-exception v0

    .line 6037
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6038
    nop

    .line 6042
    .end local v3    # "ident":J
    :cond_c9
    move-object v0, v2

    .end local v2    # "permissionOwner":Landroid/os/IBinder;
    .restart local v0    # "permissionOwner":Landroid/os/IBinder;
    :goto_ca
    const/4 v13, 0x0

    if-eqz v11, :cond_114

    if-eqz v0, :cond_114

    .line 6043
    move v1, v13

    .local v1, "i":I
    :goto_d0
    move v14, v1

    .end local v1    # "i":I
    .local v14, "i":I
    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v14, v1, :cond_114

    .line 6044
    invoke-virtual {v11, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/net/Uri;

    .line 6045
    .local v15, "uri":Landroid/net/Uri;
    if-eqz v12, :cond_e6

    invoke-virtual {v12, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_111

    .line 6046
    :cond_e6
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_103

    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": granting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6047
    :cond_103
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v4

    move-object v1, v7

    move-object v2, v0

    move-object v3, v15

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->grantUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V

    .line 6043
    .end local v15    # "uri":Landroid/net/Uri;
    :cond_111
    add-int/lit8 v1, v14, 0x1

    .end local v14    # "i":I
    .restart local v1    # "i":I
    goto :goto_d0

    .line 6054
    .end local v1    # "i":I
    :cond_114
    if-eqz v12, :cond_155

    if-eqz v0, :cond_155

    .line 6055
    nop

    .local v13, "i":I
    :goto_119
    move v1, v13

    .end local v13    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v12}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_155

    .line 6056
    invoke-virtual {v12, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 6057
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v11, :cond_12e

    invoke-virtual {v11, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_152

    .line 6058
    :cond_12e
    sget-boolean v3, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v3, :cond_14b

    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": revoking "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6059
    :cond_14b
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v3

    invoke-direct {v7, v0, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->revokeUriPermission(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 6055
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_152
    add-int/lit8 v13, v1, 0x1

    .end local v1    # "i":I
    .restart local v13    # "i":I
    goto :goto_119

    .line 6064
    .end local v13    # "i":I
    :cond_155
    if-eqz v8, :cond_159

    .line 6065
    iput-object v0, v8, Lcom/android/server/notification/NotificationRecord;->permissionOwner:Landroid/os/IBinder;

    .line 6067
    :cond_159
    return-void
.end method
