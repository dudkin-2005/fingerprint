.class public Lcom/android/server/net/NetworkPolicyManagerService;
.super Landroid/net/INetworkPolicyManager$Stub;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;,
        Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;,
        Lcom/android/server/net/NetworkPolicyManagerService$ChainToggleType;,
        Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;,
        Lcom/android/server/net/NetworkPolicyManagerService$RestrictType;,
        Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;,
        Lcom/android/server/net/NetworkPolicyManagerService$SettingsObserver;,
        Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyConfigUpdater;,
        Lcom/android/server/net/NetworkPolicyManagerService$Stats;
    }
.end annotation


# static fields
.field private static final ACTION_ALLOW_BACKGROUND:Ljava/lang/String; = "com.android.server.net.action.ALLOW_BACKGROUND"

.field public static final ACTION_DATAUSAGE_ALARM:Ljava/lang/String; = "com.oneplus.security.action.DATAUSAGE_ALARM"

.field private static final ACTION_SNOOZE_RAPID:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_RAPID"

.field private static final ACTION_SNOOZE_WARNING:Ljava/lang/String; = "com.android.server.net.action.SNOOZE_WARNING"

.field private static ACTION_TEST_COMPRESS_FG_RESTRICT:Ljava/lang/String; = null

.field private static final AGGRESSIVE_POLICY:I = 0x1

.field private static final ATTR_APP_ID:Ljava/lang/String; = "appId"

.field private static final ATTR_CYCLE_DAY:Ljava/lang/String; = "cycleDay"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_CYCLE_END:Ljava/lang/String; = "cycleEnd"

.field private static final ATTR_CYCLE_PERIOD:Ljava/lang/String; = "cyclePeriod"

.field private static final ATTR_CYCLE_START:Ljava/lang/String; = "cycleStart"

.field private static final ATTR_CYCLE_TIMEZONE:Ljava/lang/String; = "cycleTimezone"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_INFERRED:Ljava/lang/String; = "inferred"

.field private static final ATTR_LAST_LIMIT_SNOOZE:Ljava/lang/String; = "lastLimitSnooze"

.field private static final ATTR_LAST_SNOOZE:Ljava/lang/String; = "lastSnooze"

.field private static final ATTR_LAST_WARNING_SNOOZE:Ljava/lang/String; = "lastWarningSnooze"

.field private static final ATTR_LIMIT_BEHAVIOR:Ljava/lang/String; = "limitBehavior"

.field private static final ATTR_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"

.field private static final ATTR_METERED:Ljava/lang/String; = "metered"

.field private static final ATTR_NETWORK_ID:Ljava/lang/String; = "networkId"

.field private static final ATTR_NETWORK_TEMPLATE:Ljava/lang/String; = "networkTemplate"

.field private static final ATTR_OWNER_PACKAGE:Ljava/lang/String; = "ownerPackage"

.field private static final ATTR_POLICY:Ljava/lang/String; = "policy"

.field private static final ATTR_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrictBackground"

.field private static final ATTR_SUBSCRIBER_ID:Ljava/lang/String; = "subscriberId"

.field private static final ATTR_SUB_ID:Ljava/lang/String; = "subId"

.field private static final ATTR_SUMMARY:Ljava/lang/String; = "summary"

.field private static final ATTR_TITLE:Ljava/lang/String; = "title"

.field private static final ATTR_UID:Ljava/lang/String; = "uid"

.field private static final ATTR_USAGE_BYTES:Ljava/lang/String; = "usageBytes"

.field private static final ATTR_USAGE_TIME:Ljava/lang/String; = "usageTime"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final ATTR_WARNING_BYTES:Ljava/lang/String; = "warningBytes"

.field private static final CHAIN_TOGGLE_DISABLE:I = 0x2

.field private static final CHAIN_TOGGLE_ENABLE:I = 0x1

.field private static final CHAIN_TOGGLE_NONE:I = 0x0

.field private static DEBUG_ONEPLUS:Z = false

.field private static final DEFAULT_POLICY:I = 0x0

.field private static final INVALID_UID:I = -0x1

.field private static LOGD:Z = false

.field private static LOGV:Z = false

.field private static final MSG_ADVISE_PERSIST_THRESHOLD:I = 0x7

.field private static final MSG_GET_ONLINECONFIG:I = 0x3e8

.field private static final MSG_LIMIT_REACHED:I = 0x5

.field private static final MSG_METERED_IFACES_CHANGED:I = 0x2

.field private static final MSG_METERED_RESTRICTED_PACKAGES_CHANGED:I = 0x11

.field private static final MSG_POLICIES_CHANGED:I = 0xd

.field private static final MSG_REMOVE_INTERFACE_QUOTA:I = 0xb

.field private static final MSG_RESET_FIREWALL_RULES_BY_UID:I = 0xf

.field private static final MSG_RESTRICT_BACKGROUND_CHANGED:I = 0x6

.field private static final MSG_RULES_CHANGED:I = 0x1

.field private static final MSG_SCREEN_ON_CHANGED:I = 0x8

.field private static final MSG_SET_NETWORK_TEMPLATE_ENABLED:I = 0x12

.field private static final MSG_SUBSCRIPTION_OVERRIDE:I = 0x10

.field private static final MSG_UPDATE_INTERFACE_QUOTA:I = 0xa

.field private static NETWORKPOLICY_CONFIG_NAME:Ljava/lang/String; = null

.field public static final OPPORTUNISTIC_QUOTA_UNKNOWN:I = -0x1

.field private static final PROP_SUB_PLAN_OWNER:Ljava/lang/String; = "persist.sys.sub_plan_owner"

.field private static final QUOTA_FRAC_JOBS_DEFAULT:F = 0.5f

.field private static final QUOTA_FRAC_MULTIPATH_DEFAULT:F = 0.5f

.field private static final QUOTA_LIMITED_DEFAULT:F = 0.1f

.field private static final QUOTA_UNLIMITED_DEFAULT:J

.field private static SCREEN_DOZE_NETWORKPOLICY:Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "NetworkPolicy"

.field private static final TAG_APP_POLICY:Ljava/lang/String; = "app-policy"

.field private static final TAG_NETWORK_POLICY:Ljava/lang/String; = "network-policy"

.field private static final TAG_POLICY_LIST:Ljava/lang/String; = "policy-list"

.field private static final TAG_RESTRICT_BACKGROUND:Ljava/lang/String; = "restrict-background"

.field private static final TAG_REVOKED_RESTRICT_BACKGROUND:Ljava/lang/String; = "revoked-restrict-background"

.field private static final TAG_SUBSCRIPTION_PLAN:Ljava/lang/String; = "subscription-plan"

.field private static final TAG_UID_POLICY:Ljava/lang/String; = "uid-policy"

.field private static final TAG_WHITELIST:Ljava/lang/String; = "whitelist"

.field public static final TYPE_LIMIT:I = 0x23
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TYPE_LIMIT_SNOOZED:I = 0x24
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TYPE_RAPID:I = 0x2d
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TYPE_RESTRICT_BACKGROUND:I = 0x1

.field private static final TYPE_RESTRICT_POWER:I = 0x2

.field public static final TYPE_WARNING:I = 0x22
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final UID_MSG_GONE:I = 0x65

.field private static final UID_MSG_STATE_CHANGED:I = 0x64

.field private static final VERSION_ADDED_CYCLE:I = 0xb

.field private static final VERSION_ADDED_INFERRED:I = 0x7

.field private static final VERSION_ADDED_METERED:I = 0x4

.field private static final VERSION_ADDED_NETWORK_ID:I = 0x9

.field private static final VERSION_ADDED_RESTRICT_BACKGROUND:I = 0x3

.field private static final VERSION_ADDED_SNOOZE:I = 0x2

.field private static final VERSION_ADDED_TIMEZONE:I = 0x6

.field private static final VERSION_INIT:I = 0x1

.field private static final VERSION_LATEST:I = 0xb

.field private static final VERSION_SPLIT_SNOOZE:I = 0x5

.field private static final VERSION_SWITCH_APP_ID:I = 0x8

.field private static final VERSION_SWITCH_UID:I = 0xa

.field private static final WAIT_FOR_ADMIN_DATA_TIMEOUT_MS:J = 0x2710L

.field private static isDozeChangeSupport:Z

.field private static mAlarmManager:Landroid/app/AlarmManager;

.field static mAllowFGNetworkAccess:Z

.field private static mDozeNetworkIntent:Landroid/content/Intent;

.field private static mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

.field private static mEnableCloseTempWhiteSocketFeature:Z

.field private static mEnableFGNetworkRestrictFeature:Z

.field static mFirstDeviceMode:Z

.field private static mFirstDeviceModeTime:J

.field private static mFirstFGRestrictDebug:Z

.field private static mPolicy:I

.field static sConfigLock:Ljava/lang/Object;

.field static screenOffCheckDelayTime:J


# instance fields
.field private isInEsportRestrictBackground:Z

.field private final mActiveNotifs:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;",
            ">;"
        }
    .end annotation
.end field

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field private final mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mAllowReceiver:Landroid/content/BroadcastReceiver;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

.field private final mClock:Ljava/time/Clock;

.field private mConnManager:Landroid/net/IConnectivityManager;

.field private mConnReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private mDeviceIdleLocalService:Lcom/android/server/DeviceIdleController$LocalService;

.field volatile mDeviceIdleMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mDozeChangeReceiver:Landroid/content/BroadcastReceiver;

.field final mFirewallChainStates:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mForceCloseSocketCallback:Ljava/lang/Runnable;

.field private mGeneralReceiver:Landroid/content/BroadcastReceiver;

.field final mHandler:Landroid/os/Handler;

.field private final mHandlerCallback:Landroid/os/Handler$Callback;

.field private final mIPm:Landroid/content/pm/IPackageManager;

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/INetworkPolicyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadedRestrictBackground:Z

.field private final mLogger:Lcom/android/server/net/NetworkPolicyLogger;

.field private mMergedSubscriberIds:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation
.end field

.field private mMeteredIfaces:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeteredRestrictedUids:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNetIdToSubId:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation
.end field

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private final mNetworkMetered:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation
.end field

.field final mNetworkPoliciesSecondLock:Ljava/lang/Object;

.field final mNetworkPolicy:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/NetworkTemplate;",
            "Landroid/net/NetworkPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkPolicyConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private final mNetworkRoaming:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation
.end field

.field private mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

.field private mNmi:Lcom/android/server/NetworkManagementInternal;

.field private final mOverLimitNotified:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/NetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private final mPolicyFile:Landroid/util/AtomicFile;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "allLocks"
    .end annotation
.end field

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

.field volatile mRestrictBackground:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private mRestrictBackgroundBeforeBsm:Z

.field volatile mRestrictBackgroundChangedInBsm:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private mRestrictBackgroundPowerState:Landroid/os/PowerSaveState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field volatile mRestrictPower:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsObserver:Lcom/android/server/net/NetworkPolicyManagerService$SettingsObserver;

.field private final mSnoozeReceiver:Landroid/content/BroadcastReceiver;

.field public final mStatLogger:Lcom/android/internal/util/StatLogger;

.field private final mStatsReceiver:Landroid/content/BroadcastReceiver;

.field private final mSubIdToSubscriberId:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation
.end field

.field final mSubscriptionPlans:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/telephony/SubscriptionPlan;",
            ">;"
        }
    .end annotation
.end field

.field final mSubscriptionPlansOwner:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuppressDefaultPolicy:Z

.field volatile mSystemReady:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "allLocks"
    .end annotation
.end field

.field public final mUidEventHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mUidEventHandlerCallback:Landroid/os/Handler$Callback;

.field private final mUidEventThread:Lcom/android/server/ServiceThread;

.field final mUidFirewallDozableRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field final mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field final mUidFirewallStandbyRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPolicy:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private final mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field final mUidRules:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field final mUidRulesFirstLock:Ljava/lang/Object;

.field final mUidState:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mUidRulesFirstLock"
    .end annotation
.end field

.field private mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiReceiver:Landroid/content/BroadcastReceiver;

.field private systemUIListener:Landroid/net/INetworkPolicyListener;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 327
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 328
    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 333
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->DEBUG_ONEPLUS:Z

    .line 339
    const-string v1, "NetworkPolicyOnlineConfig"

    sput-object v1, Lcom/android/server/net/NetworkPolicyManagerService;->NETWORKPOLICY_CONFIG_NAME:Ljava/lang/String;

    .line 341
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->mEnableFGNetworkRestrictFeature:Z

    .line 342
    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mEnableCloseTempWhiteSocketFeature:Z

    .line 343
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/server/net/NetworkPolicyManagerService;->sConfigLock:Ljava/lang/Object;

    .line 422
    sget-object v2, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v3, 0x14

    invoke-virtual {v2, v3, v4}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/net/NetworkPolicyManagerService;->QUOTA_UNLIMITED_DEFAULT:J

    .line 630
    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->isDozeChangeSupport:Z

    .line 638
    sput v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicy:I

    .line 642
    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstFGRestrictDebug:Z

    .line 1144
    const-string v2, "com.test.compress.fg.restrict"

    sput-object v2, Lcom/android/server/net/NetworkPolicyManagerService;->ACTION_TEST_COMPRESS_FG_RESTRICT:Ljava/lang/String;

    .line 3277
    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceMode:Z

    .line 3278
    const-wide/high16 v2, -0x8000000000000000L

    sput-wide v2, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceModeTime:J

    .line 3279
    const-wide/32 v2, 0x1b7740

    sput-wide v2, Lcom/android/server/net/NetworkPolicyManagerService;->screenOffCheckDelayTime:J

    .line 3283
    sput-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowFGNetworkAccess:Z

    .line 3286
    const-string v0, "com.oneplus.android.checkDozeNetworkplicy"

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->SCREEN_DOZE_NETWORKPOLICY:Ljava/lang/String;

    .line 3288
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "networkManagement"    # Landroid/os/INetworkManagementService;

    .line 659
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 660
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getDefaultClock()Ljava/time/Clock;

    move-result-object v5

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->getDefaultSystemDir()Ljava/io/File;

    move-result-object v6

    .line 659
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;Landroid/content/pm/IPackageManager;Ljava/time/Clock;Ljava/io/File;Z)V

    .line 661
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;Landroid/content/pm/IPackageManager;Ljava/time/Clock;Ljava/io/File;Z)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "networkManagement"    # Landroid/os/INetworkManagementService;
    .param p4, "pm"    # Landroid/content/pm/IPackageManager;
    .param p5, "clock"    # Ljava/time/Clock;
    .param p6, "systemDir"    # Ljava/io/File;
    .param p7, "suppressDefaultPolicy"    # Z

    .line 674
    invoke-direct {p0}, Landroid/net/INetworkPolicyManager$Stub;-><init>()V

    .line 479
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    .line 480
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    .line 492
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    .line 495
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    .line 499
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    .line 502
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    .line 506
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    .line 510
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    .line 512
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    .line 514
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 516
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 518
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 522
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 530
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    .line 538
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 541
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 547
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    .line 555
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 560
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 563
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    .line 567
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    .line 571
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    .line 575
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkMetered:Landroid/util/SparseBooleanArray;

    .line 578
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRoaming:Landroid/util/SparseBooleanArray;

    .line 582
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    .line 586
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    .line 589
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:[Ljava/lang/String;

    .line 596
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    .line 599
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    .line 617
    new-instance v0, Lcom/android/server/net/NetworkPolicyLogger;

    invoke-direct {v0}, Lcom/android/server/net/NetworkPolicyLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    .line 652
    new-instance v0, Lcom/android/internal/util/StatLogger;

    const-string/jumbo v1, "updateNetworkEnabledNL()"

    const-string/jumbo v2, "isUidNetworkingBlocked()"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$4;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$4;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    .line 1117
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$5;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$5;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    .line 1146
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$6;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$6;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    .line 1185
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mForceCloseSocketCallback:Ljava/lang/Runnable;

    .line 1234
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$7;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$7;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 1244
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$8;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$8;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 1264
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$9;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$9;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 1283
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$10;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$10;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 1321
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$11;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$11;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 1338
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$12;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$12;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    .line 1352
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$13;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$13;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    .line 1372
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$14;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$14;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    .line 1395
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$15;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$15;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1423
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$16;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$16;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 1765
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$17;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$17;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 1924
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$18;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkPolicyManagerService$18;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 3005
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->isInEsportRestrictBackground:Z

    .line 3006
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->systemUIListener:Landroid/net/INetworkPolicyListener;

    .line 3362
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$19;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$19;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDozeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 4859
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$20;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$20;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 4991
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService$21;

    invoke-direct {v2, p0}, Lcom/android/server/net/NetworkPolicyManagerService$21;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandlerCallback:Landroid/os/Handler$Callback;

    .line 675
    const-string/jumbo v2, "missing context"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 676
    const-string/jumbo v2, "missing activityManager"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IActivityManager;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 677
    const-string/jumbo v2, "missing networkManagement"

    invoke-static {p3, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkManagementService;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 678
    const-string v2, "deviceidle"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 680
    const-string/jumbo v2, "missing Clock"

    invoke-static {p5, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/Clock;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    .line 681
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 682
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    iput-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 683
    iput-object p4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    .line 685
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "NetworkPolicy"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 686
    .local v2, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 687
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v3, v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 690
    new-instance v3, Lcom/android/server/ServiceThread;

    const-string v4, "NetworkPolicy.uid"

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventThread:Lcom/android/server/ServiceThread;

    .line 692
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 693
    new-instance v0, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v3}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandler:Landroid/os/Handler;

    .line 695
    iput-boolean p7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    .line 697
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "netpolicy.xml"

    invoke-direct {v3, p6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v4, "net-policy"

    invoke-direct {v0, v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    .line 699
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 702
    const-class v0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;

    invoke-direct {v3, p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V

    invoke-static {v0, v3}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 707
    const-class v0, Lcom/android/server/NetworkManagementInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkManagementInternal;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNmi:Lcom/android/server/NetworkManagementInternal;

    .line 708
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService$SettingsObserver;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSettingsObserver:Lcom/android/server/net/NetworkPolicyManagerService$SettingsObserver;

    .line 709
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSettingsObserver:Lcom/android/server/net/NetworkPolicyManagerService$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService$SettingsObserver;->observe()V

    .line 716
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->initOnlineConfig()V

    .line 718
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/net/NetworkPolicyManagerService;Lorg/json/JSONArray;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->resolveNetworkPolicyConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$1000()Landroid/app/PendingIntent;
    .registers 1

    .line 318
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1100()Landroid/app/AlarmManager;
    .registers 1

    .line 318
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .registers 1

    .line 318
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->DEBUG_ONEPLUS:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/DeviceIdleController$LocalService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleLocalService:Lcom/android/server/DeviceIdleController$LocalService;

    return-object v0
.end method

.method static synthetic access$1400()Z
    .registers 1

    .line 318
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mEnableCloseTempWhiteSocketFeature:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/NetworkManagementInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNmi:Lcom/android/server/NetworkManagementInternal;

    return-object v0
.end method

.method static synthetic access$1600()Z
    .registers 1

    .line 318
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictionRulesForUidUL(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->onUidDeletedUL(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/net/NetworkPolicyManagerService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/net/NetworkPolicyManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Z

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeWifiMeteredOverrideAL()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkMetered:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z
    .registers 4
    .param p0, "x0"    # Landroid/util/SparseBooleanArray;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/net/Network;

    .line 318
    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkRoaming:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 318
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyAL(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/String;)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 318
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeUpdateMobilePolicyCycleAL(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 318
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 318
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"    # [Ljava/lang/String;

    .line 318
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkStatsManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"    # Z

    .line 318
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 318
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchUidPoliciesChanged(Landroid/net/INetworkPolicyListener;II)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/Boolean;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Boolean;

    .line 318
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->broadcastRestrictBackgroundChanged(ILjava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuota(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .line 318
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuota(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->resetUidFirewallRules(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;III)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/INetworkPolicyListener;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 318
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyManagerService;->dispatchSubscriptionOverride(Landroid/net/INetworkPolicyListener;III)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/Set;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Ljava/util/Set;
    .param p2, "x2"    # I

    .line 318
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredRestrictedPackagesInternal(Ljava/util/Set;I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;
    .param p2, "x2"    # Z

    .line 318
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabledInner(Landroid/net/NetworkTemplate;Z)V

    return-void
.end method

.method static synthetic access$4600(II)Z
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 318
    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/net/NetworkPolicyManagerService;IZ)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 318
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidNetworkingBlockedInternal(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForTempWhitelistChangeUL(I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/Network;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/Network;

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getSubIdLocked(Landroid/net/Network;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5100(Lcom/android/server/net/NetworkPolicyManagerService;I)Landroid/telephony/SubscriptionPlan;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # I

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/concurrent/CountDownLatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 318
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworksInternal()V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .registers 1

    .line 318
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->ACTION_TEST_COMPRESS_FG_RESTRICT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Z
    .registers 1

    .line 318
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->isDozeChangeSupport:Z

    return v0
.end method

.method static synthetic access$900()I
    .registers 1

    .line 318
    sget v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicy:I

    return v0
.end method

.method private addDefaultRestrictBackgroundWhitelistUidsUL(I)Z
    .registers 14
    .param p1, "userId"    # I

    .line 837
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 838
    .local v0, "sysConfig":Lcom/android/server/SystemConfig;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 839
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowInDataUsageSave()Landroid/util/ArraySet;

    move-result-object v2

    .line 840
    .local v2, "allowDataUsage":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 841
    .local v3, "changed":Z
    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    .local v3, "i":I
    .local v5, "changed":Z
    :goto_12
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v3, v6, :cond_ff

    .line 842
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 843
    .local v6, "pkg":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v7, :cond_40

    .line 844
    const-string v7, "NetworkPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checking restricted background whitelisting for package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " and user "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_40
    const/high16 v7, 0x100000

    :try_start_42
    invoke-virtual {v1, v6, v7, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_46
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_42 .. :try_end_46} :catch_df

    .line 853
    .local v7, "app":Landroid/content/pm/ApplicationInfo;
    nop

    .line 852
    nop

    .line 854
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v8

    if-nez v8, :cond_66

    .line 855
    const-string v8, "NetworkPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addDefaultRestrictBackgroundWhitelistUidsUL(): skipping non-privileged app  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    goto/16 :goto_fb

    .line 859
    :cond_66
    iget v8, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    .line 860
    .local v8, "uid":I
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    const/4 v10, 0x1

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 861
    sget-boolean v9, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v9, :cond_a2

    .line 862
    const-string v9, "NetworkPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Adding uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " (user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") to default restricted background whitelist. Revoked status: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 864
    invoke-virtual {v11, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 862
    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :cond_a2
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    if-nez v9, :cond_fb

    .line 866
    sget-boolean v9, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v9, :cond_d9

    .line 867
    const-string v9, "NetworkPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "adding default package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " (uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " for user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ") to restrict background whitelist"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :cond_d9
    const/4 v9, 0x4

    invoke-direct {p0, v8, v9, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    .line 870
    const/4 v5, 0x1

    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "uid":I
    goto :goto_fb

    .line 849
    .restart local v6    # "pkg":Ljava/lang/String;
    :catch_df
    move-exception v7

    .line 850
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v8, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v8, :cond_fa

    const-string v8, "NetworkPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No ApplicationInfo for package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_fa
    nop

    .line 841
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_fb
    :goto_fb
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_12

    .line 873
    .end local v3    # "i":I
    :cond_ff
    return v5
.end method

.method private adjustUidRulesForStandby(ILandroid/util/SparseIntArray;)Landroid/util/SparseIntArray;
    .registers 7
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;

    .line 5168
    move-object v0, p2

    .line 5169
    .local v0, "uidRulesTemp":Landroid/util/SparseIntArray;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2f

    .line 5170
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 5170
    .local v2, "index":I
    :goto_a
    if-ltz v2, :cond_18

    .line 5171
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-eq v3, v1, :cond_15

    .line 5172
    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 5170
    :cond_15
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 5175
    .end local v2    # "index":I
    :cond_18
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUidFirewallRules uidRulesTemp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5177
    :cond_2f
    return-object v0
.end method

.method private broadcastDataUsageAlarm()V
    .registers 3

    .line 5726
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.security.action.DATAUSAGE_ALARM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5727
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5728
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5729
    return-void
.end method

.method private broadcastRestrictBackgroundChanged(ILjava/lang/Boolean;)V
    .registers 12
    .param p1, "uid"    # I
    .param p2, "changed"    # Ljava/lang/Boolean;

    .line 5045
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 5046
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 5047
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_31

    .line 5048
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 5049
    .local v2, "userId":I
    array-length v3, v1

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_31

    aget-object v5, v1, v4

    .line 5050
    .local v5, "packageName":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5052
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5053
    const/high16 v7, 0x40000000    # 2.0f

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5054
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5049
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "intent":Landroid/content/Intent;
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 5057
    .end local v2    # "userId":I
    :cond_31
    return-void
.end method

.method private static buildAllowBackgroundDataIntent()Landroid/content/Intent;
    .registers 2

    .line 5297
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .registers 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 5315
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5316
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 5317
    const v1, 0x104016e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5316
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5318
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5319
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5320
    return-object v0
.end method

.method private static buildSnoozeRapidIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .registers 3
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .line 5308
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_RAPID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5309
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5310
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5311
    return-object v0
.end method

.method private static buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .registers 3
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .line 5301
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5302
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5303
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5304
    return-object v0
.end method

.method private static buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;
    .registers 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 5324
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5325
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 5326
    const v1, 0x1040137

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5325
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5327
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5328
    const-string v1, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5329
    return-object v0
.end method

.method private cancelNotification(Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;)V
    .registers 5
    .param p1, "notificationId"    # Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    .line 1757
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 1758
    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getId()I

    move-result v2

    .line 1757
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1759
    return-void
.end method

.method private static collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkState;)V
    .registers 6
    .param p1, "state"    # Landroid/net/NetworkState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/NetworkState;",
            ")V"
        }
    .end annotation

    .line 2061
    .local p0, "ifaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2062
    .local v0, "baseIface":Ljava/lang/String;
    if-eqz v0, :cond_b

    .line 2063
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2065
    :cond_b
    iget-object v1, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkProperties;

    .line 2066
    .local v2, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .line 2067
    .local v3, "stackedIface":Ljava/lang/String;
    if-eqz v3, :cond_2a

    .line 2068
    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2070
    .end local v2    # "stackedLink":Landroid/net/LinkProperties;
    .end local v3    # "stackedIface":Ljava/lang/String;
    :cond_2a
    goto :goto_15

    .line 2071
    :cond_2b
    return-void
.end method

.method private static collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V
    .registers 6
    .param p0, "source"    # Landroid/util/SparseIntArray;
    .param p1, "target"    # Landroid/util/SparseBooleanArray;

    .line 5367
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 5368
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_12

    .line 5369
    invoke-virtual {p0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5368
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 5371
    .end local v1    # "i":I
    :cond_12
    return-void
.end method

.method private static defeatNullable([Landroid/net/NetworkState;)[Landroid/net/NetworkState;
    .registers 2
    .param p0, "val"    # [Landroid/net/NetworkState;

    .line 5676
    if-eqz p0, :cond_4

    move-object v0, p0

    goto :goto_7

    :cond_4
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/net/NetworkState;

    :goto_7
    return-object v0
.end method

.method private dispatchMeteredIfacesChanged(Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V
    .registers 4
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "meteredIfaces"    # [Ljava/lang/String;

    .line 4814
    if-eqz p1, :cond_7

    .line 4816
    :try_start_2
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 4818
    goto :goto_7

    .line 4817
    :catch_6
    move-exception v0

    .line 4820
    :cond_7
    :goto_7
    return-void
.end method

.method private dispatchRestrictBackgroundChanged(Landroid/net/INetworkPolicyListener;Z)V
    .registers 5
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "restrictBackground"    # Z

    .line 4824
    if-eqz p1, :cond_1c

    .line 4827
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->isInEsportRestrictBackground:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->systemUIListener:Landroid/net/INetworkPolicyListener;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->systemUIListener:Landroid/net/INetworkPolicyListener;

    if-ne p1, v0, :cond_17

    .line 4828
    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "mute systemui listener by Esport!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4829
    return-void

    .line 4833
    :cond_17
    :try_start_17
    invoke-interface {p1, p2}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 4835
    goto :goto_1c

    .line 4834
    :catch_1b
    move-exception v0

    .line 4837
    :cond_1c
    :goto_1c
    return-void
.end method

.method private dispatchSubscriptionOverride(Landroid/net/INetworkPolicyListener;III)V
    .registers 6
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "subId"    # I
    .param p3, "overrideMask"    # I
    .param p4, "overrideValue"    # I

    .line 4851
    if-eqz p1, :cond_7

    .line 4853
    :try_start_2
    invoke-interface {p1, p2, p3, p4}, Landroid/net/INetworkPolicyListener;->onSubscriptionOverride(III)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 4855
    goto :goto_7

    .line 4854
    :catch_6
    move-exception v0

    .line 4857
    :cond_7
    :goto_7
    return-void
.end method

.method private dispatchUidPoliciesChanged(Landroid/net/INetworkPolicyListener;II)V
    .registers 5
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "uidPolicies"    # I

    .line 4841
    if-eqz p1, :cond_7

    .line 4843
    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onUidPoliciesChanged(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 4845
    goto :goto_7

    .line 4844
    :catch_6
    move-exception v0

    .line 4847
    :cond_7
    :goto_7
    return-void
.end method

.method private dispatchUidRulesChanged(Landroid/net/INetworkPolicyListener;II)V
    .registers 5
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;
    .param p2, "uid"    # I
    .param p3, "uidRules"    # I

    .line 4804
    if-eqz p1, :cond_7

    .line 4806
    :try_start_2
    invoke-interface {p1, p2, p3}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_5} :catch_6

    .line 4808
    goto :goto_7

    .line 4807
    :catch_6
    move-exception v0

    .line 4810
    :cond_7
    :goto_7
    return-void
.end method

.method private enableFirewallChainUL(IZ)V
    .registers 6
    .param p1, "chain"    # I
    .param p2, "enable"    # Z

    .line 5225
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_22

    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableFirewallChainUL, chain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5227
    :cond_22
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 5228
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, p2, :cond_33

    .line 5230
    return-void

    .line 5232
    :cond_33
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 5234
    :try_start_38
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V

    .line 5235
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->firewallChainEnabled(IZ)V
    :try_end_42
    .catch Ljava/lang/IllegalStateException; {:try_start_38 .. :try_end_42} :catch_45
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_42} :catch_43

    goto :goto_4e

    .line 5238
    :catch_43
    move-exception v0

    goto :goto_4f

    .line 5236
    :catch_45
    move-exception v0

    .line 5237
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem enable firewall chain"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5240
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_4e
    nop

    .line 5241
    :goto_4f
    return-void
.end method

.method private enforceSubscriptionPlanAccess(IILjava/lang/String;)V
    .registers 14
    .param p1, "subId"    # I
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 3387
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p2, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 3391
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3393
    .local v0, "token":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    .line 3394
    invoke-virtual {v2, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 3395
    .local v2, "si":Landroid/telephony/SubscriptionInfo;
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v3, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_ab

    .line 3397
    .local v3, "config":Landroid/os/PersistableBundle;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3398
    nop

    .line 3397
    nop

    .line 3401
    if-eqz v2, :cond_33

    .line 3402
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v4

    if-eqz v4, :cond_33

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, p3}, Landroid/telephony/SubscriptionInfo;->canManageSubscription(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 3403
    return-void

    .line 3408
    :cond_33
    const/4 v4, 0x0

    if-eqz v3, :cond_49

    .line 3409
    const-string v5, "config_plans_package_override_string"

    .line 3410
    invoke-virtual {v3, v5, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3411
    .local v5, "overridePackage":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_49

    .line 3412
    invoke-static {v5, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 3413
    return-void

    .line 3418
    .end local v5    # "overridePackage":Ljava/lang/String;
    :cond_49
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v5}, Landroid/telephony/CarrierConfigManager;->getDefaultCarrierServicePackageName()Ljava/lang/String;

    move-result-object v5

    .line 3419
    .local v5, "defaultPackage":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5c

    .line 3420
    invoke-static {v5, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 3421
    return-void

    .line 3425
    :cond_5c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "persist.sys.sub_plan_owner."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3426
    .local v6, "testPackage":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7f

    .line 3427
    invoke-static {v6, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 3428
    return-void

    .line 3432
    :cond_7f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fw.sub_plan_owner."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3433
    .local v4, "legacyTestPackage":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a1

    .line 3434
    invoke-static {v4, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a1

    .line 3435
    return-void

    .line 3439
    :cond_a1
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.MANAGE_SUBSCRIPTION_PLANS"

    const-string v9, "NetworkPolicy"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3440
    return-void

    .line 3397
    .end local v2    # "si":Landroid/telephony/SubscriptionInfo;
    .end local v3    # "config":Landroid/os/PersistableBundle;
    .end local v4    # "legacyTestPackage":Ljava/lang/String;
    .end local v5    # "defaultPackage":Ljava/lang/String;
    .end local v6    # "testPackage":Ljava/lang/String;
    :catchall_ab
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private enqueueNotification(Landroid/net/NetworkPolicy;IJLandroid/content/pm/ApplicationInfo;)V
    .registers 23
    .param p1, "policy"    # Landroid/net/NetworkPolicy;
    .param p2, "type"    # I
    .param p3, "totalBytes"    # J
    .param p5, "rapidBlame"    # Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    .line 1647
    move-object/from16 v5, p5

    new-instance v6, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    invoke-direct {v6, v0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkPolicy;I)V

    .line 1648
    .local v6, "notificationId":Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v9, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_ALERTS:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1650
    .local v7, "builder":Landroid/app/Notification$Builder;
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 1651
    const-wide/16 v9, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1652
    iget-object v9, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const v10, 0x1060157

    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1655
    iget-object v9, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1658
    .local v9, "res":Landroid/content/res/Resources;
    const/16 v10, 0x2d

    const/4 v13, 0x0

    if-eq v2, v10, :cond_111

    const/4 v10, 0x4

    packed-switch v2, :pswitch_data_198

    .line 1742
    return-void

    .line 1698
    :pswitch_3d
    iget-object v14, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v14}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v14

    if-eq v14, v8, :cond_50

    if-eq v14, v10, :cond_48

    .line 1706
    return-void

    .line 1703
    :cond_48
    const v10, 0x104019e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1704
    .local v10, "title":Ljava/lang/CharSequence;
    goto :goto_58

    .line 1700
    .end local v10    # "title":Ljava/lang/CharSequence;
    :cond_50
    const v10, 0x1040195

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1701
    .restart local v10    # "title":Ljava/lang/CharSequence;
    nop

    .line 1706
    :goto_58
    nop

    .line 1708
    iget-wide v14, v1, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long v14, v3, v14

    .line 1709
    .local v14, "overBytes":J
    const v12, 0x1040194

    new-array v11, v8, [Ljava/lang/Object;

    iget-object v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1710
    invoke-static {v8, v14, v15}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v13

    .line 1709
    invoke-virtual {v9, v12, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1712
    .local v8, "body":Ljava/lang/CharSequence;
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1713
    const v11, 0x1080078

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1714
    sget-object v11, Lcom/android/internal/notification/SystemNotificationChannels;->NETWORK_STATUS:Ljava/lang/String;

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1716
    iget-object v11, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v11

    .line 1717
    .local v11, "intent":Landroid/content/Intent;
    iget-object v12, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v12, v13, v11, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1719
    goto/16 :goto_160

    .line 1677
    .end local v8    # "body":Ljava/lang/CharSequence;
    .end local v10    # "title":Ljava/lang/CharSequence;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v14    # "overBytes":J
    :pswitch_90
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v2}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v2

    const/4 v8, 0x1

    if-eq v2, v8, :cond_a4

    if-eq v2, v10, :cond_9c

    .line 1685
    return-void

    .line 1682
    :cond_9c
    const v2, 0x104019f

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1683
    .local v2, "title":Ljava/lang/CharSequence;
    goto :goto_ac

    .line 1679
    .end local v2    # "title":Ljava/lang/CharSequence;
    :cond_a4
    const v2, 0x1040196

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1680
    .restart local v2    # "title":Ljava/lang/CharSequence;
    nop

    .line 1685
    :goto_ac
    move-object v10, v2

    .line 1687
    .end local v2    # "title":Ljava/lang/CharSequence;
    .restart local v10    # "title":Ljava/lang/CharSequence;
    const v2, 0x1040193

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 1689
    .restart local v8    # "body":Ljava/lang/CharSequence;
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1690
    const v2, 0x1080791

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1692
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v2

    .line 1693
    .local v2, "intent":Landroid/content/Intent;
    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v12, 0x8000000

    invoke-static {v11, v13, v2, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1695
    goto/16 :goto_160

    .line 1660
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v8    # "body":Ljava/lang/CharSequence;
    .end local v10    # "title":Ljava/lang/CharSequence;
    :pswitch_d1
    const v2, 0x104019d

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1661
    .restart local v10    # "title":Ljava/lang/CharSequence;
    const v2, 0x104019c

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1662
    invoke-static {v11, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v13

    .line 1661
    invoke-virtual {v9, v2, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1664
    .restart local v8    # "body":Ljava/lang/CharSequence;
    const v2, 0x1080078

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1666
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeWarningIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v2

    .line 1667
    .local v2, "snoozeIntent":Landroid/content/Intent;
    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v12, 0x8000000

    invoke-static {v11, v13, v2, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1670
    iget-object v11, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v11

    .line 1671
    .local v11, "viewIntent":Landroid/content/Intent;
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v14, v13, v11, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1674
    goto :goto_160

    .line 1722
    .end local v2    # "snoozeIntent":Landroid/content/Intent;
    .end local v8    # "body":Ljava/lang/CharSequence;
    .end local v10    # "title":Ljava/lang/CharSequence;
    .end local v11    # "viewIntent":Landroid/content/Intent;
    :cond_111
    const v2, 0x1040199

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 1723
    .restart local v10    # "title":Ljava/lang/CharSequence;
    if-eqz v5, :cond_131

    .line 1724
    const v2, 0x1040197

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 1725
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v8, v13

    .line 1724
    invoke-virtual {v9, v2, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "body":Ljava/lang/CharSequence;
    goto :goto_138

    .line 1727
    .end local v2    # "body":Ljava/lang/CharSequence;
    :cond_131
    const v2, 0x1040198

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "body":Ljava/lang/CharSequence;
    :goto_138
    move-object v8, v2

    .line 1730
    .end local v2    # "body":Ljava/lang/CharSequence;
    .restart local v8    # "body":Ljava/lang/CharSequence;
    const v2, 0x1080078

    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1732
    iget-object v2, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildSnoozeRapidIntent(Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v2

    .line 1733
    .local v2, "snoozeIntent":Landroid/content/Intent;
    iget-object v11, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const/high16 v12, 0x8000000

    invoke-static {v11, v13, v2, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1736
    iget-object v11, v1, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-static {v9, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->buildViewDataUsageIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v11

    .line 1737
    .restart local v11    # "viewIntent":Landroid/content/Intent;
    iget-object v14, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v14, v13, v11, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1739
    nop

    .line 1742
    .end local v2    # "snoozeIntent":Landroid/content/Intent;
    .end local v11    # "viewIntent":Landroid/content/Intent;
    :goto_160
    move-object v2, v10

    .line 1746
    .end local v10    # "title":Ljava/lang/CharSequence;
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1747
    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1748
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1749
    new-instance v10, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v10}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v10, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 1751
    iget-object v10, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v11, Landroid/app/NotificationManager;

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    invoke-virtual {v6}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getTag()Ljava/lang/String;

    move-result-object v11

    .line 1752
    invoke-virtual {v6}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getId()I

    move-result v12

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1751
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1753
    iget-object v10, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v10, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1754
    return-void

    nop

    :pswitch_data_198
    .packed-switch 0x22
        :pswitch_d1
        :pswitch_90
        :pswitch_3d
    .end packed-switch
.end method

.method private ensureActiveMobilePolicyAL()V
    .registers 4

    .line 2303
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_b

    const-string v0, "NetworkPolicy"

    const-string v1, "ensureActiveMobilePolicyAL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSuppressDefaultPolicy:Z

    if-eqz v0, :cond_10

    return-void

    .line 2306
    :cond_10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2d

    .line 2307
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 2308
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2310
    .local v2, "subscriberId":Ljava/lang/String;
    invoke-direct {p0, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyAL(ILjava/lang/String;)Z

    .line 2306
    .end local v1    # "subId":I
    .end local v2    # "subscriberId":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 2312
    .end local v0    # "i":I
    :cond_2d
    return-void
.end method

.method private ensureActiveMobilePolicyAL(ILjava/lang/String;)Z
    .registers 12
    .param p1, "subId"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;

    .line 2324
    new-instance v8, Landroid/net/NetworkIdentity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, v8

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 2326
    .local v0, "probeIdent":Landroid/net/NetworkIdentity;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_15
    if-ltz v1, :cond_50

    .line 2327
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    .line 2328
    .local v3, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v3, v0}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 2329
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v2, :cond_4b

    .line 2330
    const-string v2, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found template "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " which matches subscriber "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2331
    invoke-static {p2}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2330
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    :cond_4b
    const/4 v2, 0x0

    return v2

    .line 2326
    .end local v3    # "template":Landroid/net/NetworkTemplate;
    :cond_4d
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 2337
    .end local v1    # "i":I
    :cond_50
    const-string v1, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No policy for subscriber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; generating default policy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->buildDefaultMobilePolicy(ILjava/lang/String;)Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 2340
    .local v1, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->addNetworkPolicyAL(Landroid/net/NetworkPolicy;)V

    .line 2341
    return v2
.end method

.method private findRapidBlame(Landroid/net/NetworkTemplate;JJ)Landroid/content/pm/ApplicationInfo;
    .registers 20
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    move-object v1, p0

    .line 1569
    const-wide/16 v2, 0x0

    .line 1570
    .local v2, "totalBytes":J
    const-wide/16 v4, 0x0

    .line 1571
    .local v4, "maxBytes":J
    const/4 v0, 0x0

    .line 1573
    .local v0, "maxUid":I
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v6

    .line 1574
    .local v6, "stats":Landroid/net/NetworkStats;
    const/4 v7, 0x0

    .line 1575
    .local v7, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v8, 0x0

    move v9, v0

    move v0, v8

    .local v0, "i":I
    .local v9, "maxUid":I
    :goto_e
    invoke-virtual {v6}, Landroid/net/NetworkStats;->size()I

    move-result v10

    if-ge v0, v10, :cond_28

    .line 1576
    invoke-virtual {v6, v0, v7}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v7

    .line 1577
    iget-wide v10, v7, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v12, v7, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v10, v12

    .line 1578
    .local v10, "bytes":J
    add-long/2addr v2, v10

    .line 1579
    cmp-long v12, v10, v4

    if-lez v12, :cond_25

    .line 1580
    move-wide v4, v10

    .line 1581
    iget v9, v7, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1575
    .end local v10    # "bytes":J
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1587
    .end local v0    # "i":I
    :cond_28
    const-wide/16 v10, 0x0

    cmp-long v0, v4, v10

    if-lez v0, :cond_57

    const-wide/16 v10, 0x2

    div-long v10, v2, v10

    cmp-long v0, v4, v10

    if-lez v0, :cond_57

    .line 1588
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    .line 1589
    .local v10, "packageNames":[Ljava/lang/String;
    if-eqz v10, :cond_57

    array-length v0, v10

    const/4 v11, 0x1

    if-ne v0, v11, :cond_57

    .line 1591
    :try_start_46
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    aget-object v8, v10, v8

    const v11, 0x4c2200

    invoke-virtual {v0, v8, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_55
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_46 .. :try_end_55} :catch_56

    return-object v0

    .line 1594
    :catch_56
    move-exception v0

    .line 1599
    .end local v10    # "packageNames":[Ljava/lang/String;
    :cond_57
    const/4 v0, 0x0

    return-object v0
.end method

.method private findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I
    .registers 14
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 1613
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 1614
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1615
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1616
    .local v2, "subscriberId":Ljava/lang/String;
    new-instance v11, Landroid/net/NetworkIdentity;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v3, v11

    move-object v6, v2

    invoke-direct/range {v3 .. v10}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1619
    .local v3, "probeIdent":Landroid/net/NetworkIdentity;
    invoke-virtual {p1, v3}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1620
    return v1

    .line 1613
    .end local v1    # "subId":I
    .end local v2    # "subscriberId":Ljava/lang/String;
    .end local v3    # "probeIdent":Landroid/net/NetworkIdentity;
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1623
    .end local v0    # "i":I
    :cond_2e
    const/4 v0, -0x1

    return v0
.end method

.method private static getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "bundle"    # Landroid/os/PersistableBundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 5681
    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_8

    :cond_7
    move v0, p2

    :goto_8
    return v0
.end method

.method private static getDefaultClock()Ljava/time/Clock;
    .registers 5

    .line 668
    new-instance v0, Landroid/os/BestClock;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/time/Clock;

    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeClock()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 669
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/os/BestClock;-><init>(Ljava/time/ZoneId;[Ljava/time/Clock;)V

    .line 668
    return-object v0
.end method

.method private static getDefaultSystemDir()Ljava/io/File;
    .registers 3

    .line 664
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .registers 12
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 5268
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsManagerInternal;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    return-wide v0

    .line 5269
    :catch_a
    move-exception v0

    .line 5270
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read network stats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5271
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .registers 12
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 5277
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsManagerInternal;->getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 5278
    :catch_a
    move-exception v0

    .line 5279
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read network stats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5280
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    return-object v1
.end method

.method private getPlatformDefaultLimitBytes()J
    .registers 3

    .line 2355
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private getPlatformDefaultWarningBytes()J
    .registers 6

    .line 2345
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2347
    .local v0, "dataWarningConfig":I
    int-to-long v1, v0

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_15

    .line 2348
    return-wide v3

    .line 2350
    :cond_15
    int-to-long v1, v0

    const-wide/32 v3, 0x100000

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method private getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;
    .registers 8
    .param p1, "subId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

    .line 5617
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/SubscriptionPlan;

    .line 5618
    .local v0, "plans":[Landroid/telephony/SubscriptionPlan;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 5619
    array-length v1, v0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_39

    aget-object v3, v0, v2

    .line 5620
    .local v3, "plan":Landroid/telephony/SubscriptionPlan;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/RecurrenceRule;->isRecurring()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 5622
    return-object v3

    .line 5625
    :cond_1f
    invoke-virtual {v3}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Range;

    .line 5626
    .local v4, "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-static {v5}, Ljava/time/ZonedDateTime;->now(Ljava/time/Clock;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 5627
    return-object v3

    .line 5619
    .end local v3    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v4    # "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 5632
    :cond_39
    const/4 v1, 0x0

    return-object v1
.end method

.method private getSubIdLocked(Landroid/net/Network;)I
    .registers 5
    .param p1, "network"    # Landroid/net/Network;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mNetworkPoliciesSecondLock"
    .end annotation

    .line 5612
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    iget v1, p1, Landroid/net/Network;->netId:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method private getTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .registers 8
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5263
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getUidForPackage(Ljava/lang/String;I)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5587
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0x402000

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    return v0

    .line 5589
    :catch_e
    move-exception v0

    .line 5590
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, -0x1

    return v1
.end method

.method private handleRestrictedPackagesChangeUL(Ljava/util/Set;Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 5647
    .local p1, "oldRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p2, "newRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez p1, :cond_1b

    .line 5648
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5649
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 5650
    .end local v1    # "uid":I
    goto :goto_6

    .line 5651
    :cond_1a
    return-void

    .line 5653
    :cond_1b
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5654
    .restart local v1    # "uid":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 5655
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 5657
    .end local v1    # "uid":I
    :cond_3c
    goto :goto_1f

    .line 5658
    :cond_3d
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_41
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 5659
    .restart local v1    # "uid":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 5660
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 5662
    .end local v1    # "uid":I
    :cond_5e
    goto :goto_41

    .line 5663
    :cond_5f
    return-void
.end method

.method private hasInternetPermissions(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 4451
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mIPm:Landroid/content/pm/IPackageManager;

    const-string v1, "android.permission.INTERNET"

    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_d

    if-eqz v0, :cond_c

    .line 4453
    const/4 v0, 0x0

    return v0

    .line 4456
    :cond_c
    goto :goto_e

    .line 4455
    :catch_d
    move-exception v0

    .line 4457
    :goto_e
    const/4 v0, 0x1

    return v0
.end method

.method private static hasRule(II)Z
    .registers 3
    .param p0, "uidRules"    # I
    .param p1, "rule"    # I

    .line 5672
    and-int v0, p0, p1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private initService(Ljava/util/concurrent/CountDownLatch;)V
    .registers 19
    .param p1, "initCompleteSignal"    # Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v1, p0

    .line 877
    const-string/jumbo v0, "systemReady"

    const-wide/32 v2, 0x200000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 878
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    move v4, v0

    .line 881
    .local v4, "oldPriority":I
    const/4 v0, -0x2

    :try_start_15
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 882
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isBandwidthControlEnabled()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 883
    const-string v0, "NetworkPolicy"

    const-string v5, "bandwidth controls disabled, unable to enforce policy"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_206

    .line 1063
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1064
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 884
    return-void

    .line 887
    :cond_2c
    :try_start_2c
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 888
    const-class v0, Lcom/android/server/net/NetworkStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    .line 890
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_43
    .catchall {:try_start_2c .. :try_end_43} :catchall_206

    .line 891
    :try_start_43
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_203

    .line 892
    :try_start_46
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updatePowerSaveWhitelistUL()V

    .line 893
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 894
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v7, Lcom/android/server/net/NetworkPolicyManagerService$1;

    invoke-direct {v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 915
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v7, 0x6

    invoke-virtual {v0, v7}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    .line 918
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    .line 920
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->waitForAdminData()V

    .line 923
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->readPolicyAL()V

    .line 926
    iget-boolean v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    iput-boolean v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 927
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/16 v8, 0xa

    .line 928
    invoke-virtual {v7, v8}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundPowerState:Landroid/os/PowerSaveState;

    .line 929
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundPowerState:Landroid/os/PowerSaveState;

    iget-boolean v7, v7, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 931
    .local v7, "localRestrictBackground":Z
    if-eqz v7, :cond_8b

    iget-boolean v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    if-nez v8, :cond_8b

    .line 932
    iput-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 934
    :cond_8b
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService$2;

    invoke-direct {v8, v1}, Lcom/android/server/net/NetworkPolicyManagerService$2;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    invoke-virtual {v0, v8}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 949
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 950
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 953
    :cond_9e
    iget-boolean v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    invoke-direct {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Z)V

    .line 954
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    .line 955
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 956
    .end local v7    # "localRestrictBackground":Z
    monitor-exit v6
    :try_end_ab
    .catchall {:try_start_46 .. :try_end_ab} :catchall_200

    .line 957
    :try_start_ab
    monitor-exit v5
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_203

    .line 959
    :try_start_ac
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_206

    .line 961
    const/4 v5, 0x0

    :try_start_b7
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v7, 0x3

    const/4 v8, -0x1

    invoke-interface {v0, v6, v7, v8, v5}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 964
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v6}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_c7
    .catch Landroid/os/RemoteException; {:try_start_b7 .. :try_end_c7} :catch_c8
    .catchall {:try_start_b7 .. :try_end_c7} :catchall_206

    .line 967
    goto :goto_c9

    .line 965
    :catch_c8
    move-exception v0

    .line 971
    :goto_c9
    :try_start_c9
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 972
    .local v0, "screenFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 973
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7, v0, v5, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 977
    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 979
    .local v6, "whitelistFilter":Landroid/content/IntentFilter;
    iget-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8, v6, v5, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 981
    const-class v7, Lcom/android/server/DeviceIdleController$LocalService;

    .line 982
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/DeviceIdleController$LocalService;

    .line 987
    .local v7, "deviceIdleService":Lcom/android/server/DeviceIdleController$LocalService;
    iput-object v7, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleLocalService:Lcom/android/server/DeviceIdleController$LocalService;

    .line 995
    sget-boolean v8, Lcom/android/server/net/NetworkPolicyManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_fd

    .line 996
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->registerGeneralReceiver()V

    .line 1000
    :cond_fd
    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1001
    .local v8, "connFilter":Landroid/content/IntentFilter;
    iget-object v9, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    const-string v11, "android.permission.CONNECTIVITY_INTERNAL"

    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v10, v8, v11, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1004
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 1005
    .local v9, "packageFilter":Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1006
    const-string/jumbo v10, "package"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1007
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v9, v5, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1010
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v12, Landroid/content/IntentFilter;

    const-string v13, "android.intent.action.UID_REMOVED"

    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11, v12, v5, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1014
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 1015
    .local v10, "userFilter":Landroid/content/IntentFilter;
    const-string v11, "android.intent.action.USER_ADDED"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1016
    const-string v11, "android.intent.action.USER_REMOVED"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1017
    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v11, v12, v10, v5, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1020
    new-instance v11, Landroid/content/IntentFilter;

    const-string v12, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {v11, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1021
    .local v11, "statsFilter":Landroid/content/IntentFilter;
    iget-object v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    const-string v14, "android.permission.READ_NETWORK_USAGE_HISTORY"

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12, v13, v11, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1025
    new-instance v12, Landroid/content/IntentFilter;

    const-string v13, "com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-direct {v12, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1026
    .local v12, "allowFilter":Landroid/content/IntentFilter;
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowReceiver:Landroid/content/BroadcastReceiver;

    const-string v15, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13, v14, v12, v15, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1029
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/IntentFilter;

    const-string v14, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-direct {v13, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v14, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v13, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1031
    iget-object v2, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSnoozeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v13, Landroid/content/IntentFilter;

    const-string v14, "com.android.server.net.action.SNOOZE_RAPID"

    invoke-direct {v13, v14}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v14, "android.permission.MANAGE_NETWORK_POLICY"

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v13, v14, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1035
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1037
    .local v2, "wifiFilter":Landroid/content/IntentFilter;
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v13, v2, v5, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1040
    new-instance v3, Landroid/content/IntentFilter;

    const-string v13, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-direct {v3, v13}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1042
    .local v3, "carrierConfigFilter":Landroid/content/IntentFilter;
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigReceiver:Landroid/content/BroadcastReceiver;

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v13, v14, v3, v5, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1045
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v14, Landroid/net/ConnectivityManager;

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/ConnectivityManager;

    new-instance v14, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v14}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1046
    invoke-virtual {v14}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v14

    iget-object v15, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1045
    invoke-virtual {v13, v14, v15}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1048
    iget-object v13, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v14, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;

    invoke-direct {v14, v1, v5}, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V

    invoke-virtual {v13, v14}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 1051
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v13, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionManager;

    new-instance v13, Lcom/android/server/net/NetworkPolicyManagerService$3;

    iget-object v14, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 1052
    invoke-virtual {v14}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-direct {v13, v1, v14}, Lcom/android/server/net/NetworkPolicyManagerService$3;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Looper;)V

    .line 1051
    invoke-virtual {v5, v13}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 1060
    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1f5
    .catchall {:try_start_c9 .. :try_end_1f5} :catchall_206

    .line 1063
    .end local v0    # "screenFilter":Landroid/content/IntentFilter;
    .end local v2    # "wifiFilter":Landroid/content/IntentFilter;
    .end local v3    # "carrierConfigFilter":Landroid/content/IntentFilter;
    .end local v6    # "whitelistFilter":Landroid/content/IntentFilter;
    .end local v7    # "deviceIdleService":Lcom/android/server/DeviceIdleController$LocalService;
    .end local v8    # "connFilter":Landroid/content/IntentFilter;
    .end local v9    # "packageFilter":Landroid/content/IntentFilter;
    .end local v10    # "userFilter":Landroid/content/IntentFilter;
    .end local v11    # "statsFilter":Landroid/content/IntentFilter;
    .end local v12    # "allowFilter":Landroid/content/IntentFilter;
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1064
    const-wide/32 v2, 0x200000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1065
    nop

    .line 1066
    return-void

    .line 956
    :catchall_200
    move-exception v0

    :try_start_201
    monitor-exit v6
    :try_end_202
    .catchall {:try_start_201 .. :try_end_202} :catchall_200

    :try_start_202
    throw v0

    .line 957
    :catchall_203
    move-exception v0

    monitor-exit v5
    :try_end_205
    .catchall {:try_start_202 .. :try_end_205} :catchall_203

    :try_start_205
    throw v0
    :try_end_206
    .catchall {:try_start_205 .. :try_end_206} :catchall_206

    .line 1063
    :catchall_206
    move-exception v0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1064
    const-wide/32 v2, 0x200000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private isBandwidthControlEnabled()Z
    .registers 5

    .line 5285
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5287
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v2
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_a} :catch_13
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 5292
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5287
    return v2

    .line 5292
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 5288
    :catch_13
    move-exception v2

    .line 5290
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 5292
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5290
    return v3
.end method

.method static isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z
    .registers 6
    .param p0, "procState"    # I

    .line 4086
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mEnableFGNetworkRestrictFeature:Z

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_32

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->isDozeChangeSupport:Z

    if-nez v0, :cond_f

    sget v0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicy:I

    if-ne v0, v3, :cond_32

    :cond_f
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceMode:Z

    if-eqz v0, :cond_32

    .line 4093
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowFGNetworkAccess:Z

    if-nez v0, :cond_28

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstFGRestrictDebug:Z

    if-nez v0, :cond_28

    .line 4094
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_26

    const-string v0, "NetworkPolicy"

    const-string v4, "Start to restrict FG network access"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4095
    :cond_26
    sput-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstFGRestrictDebug:Z

    .line 4098
    :cond_28
    if-gt p0, v2, :cond_30

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowFGNetworkAccess:Z

    if-eqz v0, :cond_30

    move v1, v3

    nop

    :cond_30
    move v0, v1

    .line 4100
    .local v0, "res":Z
    return v0

    .line 4102
    .end local v0    # "res":Z
    :cond_32
    if-gt p0, v2, :cond_36

    move v1, v3

    nop

    :cond_36
    return v1
.end method

.method private isRestrictedByAdminUL(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 5666
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    .line 5667
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 5666
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 5668
    .local v0, "restrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_1a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method private isSystemUI(I)Z
    .registers 9
    .param p1, "uid"    # I

    .line 3008
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 3009
    .local v0, "packages":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3011
    .local v1, "userId":I
    const/4 v2, 0x0

    if-eqz v0, :cond_24

    .line 3012
    array-length v3, v0

    move v4, v2

    :goto_13
    if-ge v4, v3, :cond_24

    aget-object v5, v0, v4

    .line 3013
    .local v5, "packageName":Ljava/lang/String;
    const-string v6, "com.android.systemui"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 3014
    const/4 v2, 0x1

    return v2

    .line 3012
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 3018
    :cond_24
    return v2
.end method

.method private isUidForegroundOnRestrictBackgroundUL(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 3957
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x12

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 3958
    .local v0, "procState":I
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v1

    return v1
.end method

.method private isUidForegroundOnRestrictPowerUL(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 3962
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v1, 0x12

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 3963
    .local v0, "procState":I
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v1

    return v1
.end method

.method private isUidIdle(I)Z
    .registers 9
    .param p1, "uid"    # I

    .line 4431
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 4432
    .local v0, "packages":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4434
    .local v1, "userId":I
    if-eqz v0, :cond_23

    .line 4435
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    if-ge v4, v2, :cond_23

    aget-object v5, v0, v4

    .line 4436
    .local v5, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v6, v5, p1, v1}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdle(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_20

    .line 4437
    return v3

    .line 4435
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 4441
    :cond_23
    const/4 v2, 0x1

    return v2
.end method

.method private isUidNetworkingBlockedInternal(IZ)Z
    .registers 10
    .param p1, "uid"    # I
    .param p2, "isNetworkMetered"    # Z

    .line 5419
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5420
    :try_start_3
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 5421
    .local v1, "uidRules":I
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 5422
    .local v3, "isBackgroundRestricted":Z
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_5b

    .line 5423
    const/16 v0, 0x40

    invoke-static {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_1c

    .line 5424
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/net/NetworkPolicyLogger;->networkBlocked(II)V

    .line 5425
    return v4

    .line 5427
    :cond_1c
    if-nez p2, :cond_24

    .line 5428
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1, v4}, Lcom/android/server/net/NetworkPolicyLogger;->networkBlocked(II)V

    .line 5429
    return v2

    .line 5431
    :cond_24
    const/4 v0, 0x4

    invoke-static {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_32

    .line 5432
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1, v6}, Lcom/android/server/net/NetworkPolicyLogger;->networkBlocked(II)V

    .line 5433
    return v4

    .line 5435
    :cond_32
    invoke-static {v1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 5436
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    const/4 v4, 0x3

    invoke-virtual {v0, p1, v4}, Lcom/android/server/net/NetworkPolicyLogger;->networkBlocked(II)V

    .line 5437
    return v2

    .line 5439
    :cond_3f
    invoke-static {v1, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 5440
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v4, p1, v0}, Lcom/android/server/net/NetworkPolicyLogger;->networkBlocked(II)V

    .line 5441
    return v2

    .line 5443
    :cond_4b
    if-eqz v3, :cond_54

    .line 5444
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v2}, Lcom/android/server/net/NetworkPolicyLogger;->networkBlocked(II)V

    .line 5445
    return v4

    .line 5447
    :cond_54
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    const/4 v4, 0x6

    invoke-virtual {v0, p1, v4}, Lcom/android/server/net/NetworkPolicyLogger;->networkBlocked(II)V

    .line 5448
    return v2

    .line 5422
    .end local v1    # "uidRules":I
    .end local v3    # "isBackgroundRestricted":Z
    :catchall_5b
    move-exception v1

    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method private isUidStateForeground(I)Z
    .registers 3
    .param p1, "state"    # I

    .line 3968
    const/4 v0, 0x4

    if-gt p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private isUidValidForBlacklistRules(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 4418
    const/16 v0, 0x3f5

    if-eq p1, v0, :cond_17

    const/16 v0, 0x3fb

    if-eq p1, v0, :cond_17

    .line 4419
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    .line 4423
    :cond_15
    const/4 v0, 0x0

    return v0

    .line 4420
    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0
.end method

.method private isUidValidForWhitelistRules(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 4427
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private isWhitelistedBatterySaverUL(IZ)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "deviceIdleMode"    # Z

    .line 4182
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4183
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 4184
    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    move v1, v3

    goto :goto_1a

    :cond_19
    :goto_19
    move v1, v2

    .line 4185
    .local v1, "isWhitelisted":Z
    :goto_1a
    if-nez p2, :cond_2a

    .line 4186
    if-nez v1, :cond_29

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_29

    :cond_27
    move v2, v3

    nop

    :cond_29
    :goto_29
    move v1, v2

    .line 4188
    :cond_2a
    return v1
.end method

.method public static synthetic lambda$networkScoreAndNetworkManagementServiceReady$0(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/concurrent/CountDownLatch;)V
    .registers 2
    .param p1, "initCompleteSignal"    # Ljava/util/concurrent/CountDownLatch;

    .line 1070
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->initService(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static synthetic lambda$updateNetworks$1(Ljava/util/concurrent/CountDownLatch;)V
    .registers 1
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 1795
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1796
    return-void
.end method

.method private maybeUpdateMobilePolicyCycleAL(ILjava/lang/String;)Z
    .registers 13
    .param p1, "subId"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;

    .line 1808
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_c

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "maybeUpdateMobilePolicyCycleAL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    :cond_c
    const/4 v0, 0x0

    .line 1812
    .local v0, "policyUpdated":Z
    new-instance v9, Landroid/net/NetworkIdentity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, v9

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1814
    .local v1, "probeIdent":Landroid/net/NetworkIdentity;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1814
    .local v2, "i":I
    :goto_22
    if-ltz v2, :cond_42

    .line 1815
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkTemplate;

    .line 1816
    .local v3, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v3, v1}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 1817
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    .line 1818
    .local v4, "policy":Landroid/net/NetworkPolicy;
    invoke-direct {p0, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateDefaultMobilePolicyAL(ILandroid/net/NetworkPolicy;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1814
    .end local v3    # "template":Landroid/net/NetworkTemplate;
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    :cond_3f
    add-int/lit8 v2, v2, -0x1

    goto :goto_22

    .line 1821
    .end local v2    # "i":I
    :cond_42
    return v0
.end method

.method private normalizePoliciesNL()V
    .registers 2

    .line 3098
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    .line 3099
    return-void
.end method

.method private normalizePoliciesNL([Landroid/net/NetworkPolicy;)V
    .registers 9
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .line 3102
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 3103
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_54

    aget-object v2, p1, v1

    .line 3104
    .local v2, "policy":Landroid/net/NetworkPolicy;
    if-nez v2, :cond_e

    .line 3105
    goto :goto_51

    .line 3109
    :cond_e
    iget-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:[Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/net/NetworkTemplate;->normalize(Landroid/net/NetworkTemplate;[Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    iput-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 3110
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkPolicy;

    .line 3111
    .local v3, "existing":Landroid/net/NetworkPolicy;
    if-eqz v3, :cond_2a

    invoke-virtual {v3, v2}, Landroid/net/NetworkPolicy;->compareTo(Landroid/net/NetworkPolicy;)I

    move-result v4

    if-lez v4, :cond_51

    .line 3112
    :cond_2a
    if-eqz v3, :cond_4a

    .line 3113
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Normalization replaced "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    :cond_4a
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    iget-object v5, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3103
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    .end local v3    # "existing":Landroid/net/NetworkPolicy;
    :cond_51
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3118
    :cond_54
    return-void
.end method

.method private notifyOverLimitNL(Landroid/net/NetworkTemplate;)V
    .registers 4
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 1631
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1632
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->buildNetworkOverLimitIntent(Landroid/content/res/Resources;Landroid/net/NetworkTemplate;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1633
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1635
    :cond_1c
    return-void
.end method

.method private notifyUnderLimitNL(Landroid/net/NetworkTemplate;)V
    .registers 3
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 1638
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mOverLimitNotified:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1639
    return-void
.end method

.method private onUidDeletedUL(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 4465
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4466
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4467
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4468
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4469
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4470
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4471
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4472
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4475
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4476
    return-void
.end method

.method private parseSubId(Landroid/net/NetworkState;)I
    .registers 5
    .param p1, "state"    # Landroid/net/NetworkState;

    .line 5596
    const/4 v0, -0x1

    .line 5597
    .local v0, "subId":I
    if-eqz p1, :cond_26

    iget-object v1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v1, :cond_26

    iget-object v1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x0

    .line 5598
    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 5599
    iget-object v1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v1

    .line 5600
    .local v1, "spec":Landroid/net/NetworkSpecifier;
    instance-of v2, v1, Landroid/net/StringNetworkSpecifier;

    if-eqz v2, :cond_26

    .line 5602
    :try_start_1a
    move-object v2, v1

    check-cast v2, Landroid/net/StringNetworkSpecifier;

    iget-object v2, v2, Landroid/net/StringNetworkSpecifier;->specifier:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_23} :catch_25

    move v0, v2

    .line 5604
    goto :goto_26

    .line 5603
    :catch_25
    move-exception v2

    .line 5607
    .end local v1    # "spec":Landroid/net/NetworkSpecifier;
    :cond_26
    :goto_26
    return v0
.end method

.method private readPolicyAL()V
    .registers 46

    .line 2437
    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_e

    const-string v0, "NetworkPolicy"

    const-string/jumbo v2, "readPolicyAL()"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    :cond_e
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2441
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2442
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2443
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 2445
    const/4 v0, 0x0

    move-object v2, v0

    .line 2447
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_24
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v2, v3

    .line 2448
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 2449
    .local v3, "in":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2453
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 2456
    .local v4, "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    const/4 v5, 0x1

    .line 2457
    .local v5, "version":I
    move v7, v5

    const/4 v5, 0x0

    .line 2458
    .local v5, "insideWhitelist":Z
    .local v7, "version":I
    :goto_40
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v9, v8

    .line 2458
    .local v9, "type":I
    const/4 v10, 0x1

    if-eq v8, v10, :cond_2f4

    .line 2459
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 2460
    .local v8, "tag":Ljava/lang/String;
    const/4 v11, 0x3

    const/4 v12, 0x2

    if-ne v9, v12, :cond_2e0

    .line 2461
    const-string/jumbo v13, "policy-list"

    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_74

    .line 2462
    iget-boolean v12, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 2463
    .local v12, "oldValue":Z
    const-string/jumbo v13, "version"

    invoke-static {v3, v13}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v13

    move v7, v13

    .line 2464
    if-lt v7, v11, :cond_6f

    const-string/jumbo v11, "restrictBackground"

    .line 2465
    invoke-static {v3, v11}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v10, 0x0

    :goto_70
    iput-boolean v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 2466
    .end local v12    # "oldValue":Z
    goto/16 :goto_2f1

    :cond_74
    const-string/jumbo v11, "network-policy"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15f

    .line 2467
    const-string/jumbo v11, "networkTemplate"

    invoke-static {v3, v11}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v11

    .line 2468
    .local v11, "networkTemplate":I
    const-string/jumbo v15, "subscriberId"

    invoke-interface {v3, v0, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2470
    .local v15, "subscriberId":Ljava/lang/String;
    const/16 v6, 0x9

    if-lt v7, v6, :cond_97

    .line 2471
    const-string/jumbo v6, "networkId"

    invoke-interface {v3, v0, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2471
    .local v6, "networkId":Ljava/lang/String;
    goto :goto_98

    .line 2473
    .end local v6    # "networkId":Ljava/lang/String;
    :cond_97
    move-object v6, v0

    .line 2476
    .restart local v6    # "networkId":Ljava/lang/String;
    :goto_98
    const/16 v13, 0xb

    if-lt v7, v13, :cond_c9

    .line 2477
    const-string v13, "cycleStart"

    invoke-static {v3, v13}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2478
    .local v13, "start":Ljava/lang/String;
    const-string v14, "cycleEnd"

    invoke-static {v3, v14}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2479
    .local v14, "end":Ljava/lang/String;
    const-string v10, "cyclePeriod"

    invoke-static {v3, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2480
    .local v10, "period":Ljava/lang/String;
    new-instance v12, Landroid/util/RecurrenceRule;

    .line 2481
    invoke-static {v13}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 2482
    move-object/from16 v21, v13

    invoke-static {v14}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v13

    .line 2483
    .end local v13    # "start":Ljava/lang/String;
    .local v21, "start":Ljava/lang/String;
    move-object/from16 v22, v14

    invoke-static {v10}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/lang/String;)Ljava/time/Period;

    move-result-object v14

    .line 2483
    .end local v14    # "end":Ljava/lang/String;
    .local v22, "end":Ljava/lang/String;
    invoke-direct {v12, v0, v13, v14}, Landroid/util/RecurrenceRule;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    .line 2483
    .end local v10    # "period":Ljava/lang/String;
    .end local v21    # "start":Ljava/lang/String;
    .end local v22    # "end":Ljava/lang/String;
    move-object v0, v12

    .line 2484
    .local v0, "cycleRule":Landroid/util/RecurrenceRule;
    nop

    .line 2492
    move-object/from16 v22, v0

    const/4 v12, 0x0

    goto :goto_e7

    .line 2485
    .end local v0    # "cycleRule":Landroid/util/RecurrenceRule;
    :cond_c9
    const-string v0, "cycleDay"

    invoke-static {v3, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 2487
    .local v0, "cycleDay":I
    const/4 v10, 0x6

    if-lt v7, v10, :cond_da

    .line 2488
    const-string v10, "cycleTimezone"

    const/4 v12, 0x0

    invoke-interface {v3, v12, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2488
    .local v10, "cycleTimezone":Ljava/lang/String;
    goto :goto_dd

    .line 2490
    .end local v10    # "cycleTimezone":Ljava/lang/String;
    :cond_da
    const/4 v12, 0x0

    const-string v10, "UTC"

    .line 2492
    .restart local v10    # "cycleTimezone":Ljava/lang/String;
    :goto_dd
    invoke-static {v10}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v13

    .line 2492
    .end local v0    # "cycleDay":I
    .end local v10    # "cycleTimezone":Ljava/lang/String;
    move-object/from16 v22, v13

    .line 2494
    .local v22, "cycleRule":Landroid/util/RecurrenceRule;
    :goto_e7
    const-string/jumbo v0, "warningBytes"

    invoke-static {v3, v0}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v23

    .line 2495
    .local v23, "warningBytes":J
    const-string/jumbo v0, "limitBytes"

    invoke-static {v3, v0}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v25

    .line 2497
    .local v25, "limitBytes":J
    const/4 v0, 0x5

    if-lt v7, v0, :cond_102

    .line 2498
    const-string/jumbo v10, "lastLimitSnooze"

    invoke-static {v3, v10}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v13

    .line 2502
    .local v13, "lastLimitSnooze":J
    .local v29, "lastLimitSnooze":J
    :goto_ff
    move-wide/from16 v29, v13

    goto :goto_10f

    .line 2499
    .end local v13    # "lastLimitSnooze":J
    .end local v29    # "lastLimitSnooze":J
    :cond_102
    const/4 v10, 0x2

    if-lt v7, v10, :cond_10d

    .line 2500
    const-string/jumbo v10, "lastSnooze"

    invoke-static {v3, v10}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v13

    goto :goto_ff

    .line 2502
    :cond_10d
    const-wide/16 v29, -0x1

    .line 2505
    .restart local v29    # "lastLimitSnooze":J
    :goto_10f
    const/4 v10, 0x4

    if-lt v7, v10, :cond_11a

    .line 2506
    const-string/jumbo v10, "metered"

    invoke-static {v3, v10}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    .line 2506
    .local v10, "metered":Z
    goto :goto_122

    .line 2508
    .end local v10    # "metered":Z
    :cond_11a
    const/4 v10, 0x1

    if-eq v11, v10, :cond_120

    .line 2513
    const/16 v31, 0x0

    goto :goto_124

    .line 2510
    :cond_120
    const/4 v10, 0x1

    .line 2511
    .restart local v10    # "metered":Z
    nop

    .line 2513
    .end local v10    # "metered":Z
    .local v31, "metered":Z
    :goto_122
    move/from16 v31, v10

    .line 2517
    :goto_124
    if-lt v7, v0, :cond_130

    .line 2518
    const-string/jumbo v0, "lastWarningSnooze"

    invoke-static {v3, v0}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v13

    .line 2520
    .local v13, "lastWarningSnooze":J
    move-wide/from16 v27, v13

    goto :goto_132

    .line 2520
    .end local v13    # "lastWarningSnooze":J
    :cond_130
    const-wide/16 v27, -0x1

    .line 2523
    .local v27, "lastWarningSnooze":J
    :goto_132
    const/4 v0, 0x7

    if-lt v7, v0, :cond_13f

    .line 2524
    const-string/jumbo v0, "inferred"

    invoke-static {v3, v0}, Lcom/android/internal/util/XmlUtils;->readBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    .line 2526
    .local v0, "inferred":Z
    move/from16 v32, v0

    goto :goto_141

    .line 2526
    .end local v0    # "inferred":Z
    :cond_13f
    const/16 v32, 0x0

    .line 2529
    .local v32, "inferred":Z
    :goto_141
    new-instance v0, Landroid/net/NetworkTemplate;

    invoke-direct {v0, v11, v15, v6}, Landroid/net/NetworkTemplate;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2531
    .local v0, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->isPersistable()Z

    move-result v10

    if-eqz v10, :cond_15a

    .line 2532
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    new-instance v13, Landroid/net/NetworkPolicy;

    move-object/from16 v20, v13

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v32}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    invoke-virtual {v10, v0, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2537
    .end local v0    # "template":Landroid/net/NetworkTemplate;
    .end local v6    # "networkId":Ljava/lang/String;
    .end local v11    # "networkTemplate":I
    .end local v15    # "subscriberId":Ljava/lang/String;
    .end local v22    # "cycleRule":Landroid/util/RecurrenceRule;
    .end local v23    # "warningBytes":J
    .end local v25    # "limitBytes":J
    .end local v27    # "lastWarningSnooze":J
    .end local v29    # "lastLimitSnooze":J
    .end local v31    # "metered":Z
    .end local v32    # "inferred":Z
    :cond_15a
    nop

    .line 2610
    move/from16 v33, v7

    goto/16 :goto_2ef

    .line 2537
    :cond_15f
    move-object v12, v0

    const-string/jumbo v0, "subscription-plan"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_222

    .line 2538
    const-string v0, "cycleStart"

    invoke-static {v3, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2539
    .local v0, "start":Ljava/lang/String;
    const-string v6, "cycleEnd"

    invoke-static {v3, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2540
    .local v6, "end":Ljava/lang/String;
    const-string v10, "cyclePeriod"

    invoke-static {v3, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2541
    .local v10, "period":Ljava/lang/String;
    new-instance v11, Landroid/telephony/SubscriptionPlan$Builder;

    .line 2542
    invoke-static {v0}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v13

    .line 2543
    invoke-static {v6}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/lang/String;)Ljava/time/ZonedDateTime;

    move-result-object v14

    .line 2544
    invoke-static {v10}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/lang/String;)Ljava/time/Period;

    move-result-object v15

    invoke-direct {v11, v13, v14, v15}, Landroid/telephony/SubscriptionPlan$Builder;-><init>(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;Ljava/time/Period;)V

    .line 2545
    .local v11, "builder":Landroid/telephony/SubscriptionPlan$Builder;
    const-string/jumbo v13, "title"

    invoke-static {v3, v13}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 2546
    const-string/jumbo v13, "summary"

    invoke-static {v3, v13}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    .line 2548
    const-string/jumbo v13, "limitBytes"

    const-wide/16 v14, -0x1

    invoke-static {v3, v13, v14, v15}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v18

    move-wide/from16 v13, v18

    .line 2550
    .local v13, "limitBytes":J
    const-string/jumbo v15, "limitBehavior"

    const/4 v12, -0x1

    invoke-static {v3, v15, v12}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v15

    .line 2552
    .local v15, "limitBehavior":I
    const-wide/16 v16, -0x1

    cmp-long v18, v13, v16

    if-eqz v18, :cond_1be

    if-eq v15, v12, :cond_1be

    .line 2554
    invoke-virtual {v11, v13, v14, v15}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    .line 2557
    :cond_1be
    const-string/jumbo v12, "usageBytes"

    move-object/from16 v34, v6

    move/from16 v33, v7

    const-wide/16 v6, -0x1

    invoke-static {v3, v12, v6, v7}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    .line 2557
    .end local v6    # "end":Ljava/lang/String;
    .end local v7    # "version":I
    .local v33, "version":I
    .local v34, "end":Ljava/lang/String;
    move-wide/from16 v35, v16

    .line 2559
    .local v35, "usageBytes":J
    const-string/jumbo v12, "usageTime"

    invoke-static {v3, v12, v6, v7}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v16

    move-wide/from16 v37, v16

    .line 2561
    .local v37, "usageTime":J
    move-wide/from16 v39, v13

    move-wide/from16 v12, v35

    cmp-long v14, v12, v6

    .line 2561
    .end local v13    # "limitBytes":J
    .end local v35    # "usageBytes":J
    .local v12, "usageBytes":J
    .local v39, "limitBytes":J
    if-eqz v14, :cond_1ea

    move/from16 v41, v15

    move-wide/from16 v14, v37

    cmp-long v6, v14, v6

    .line 2561
    .end local v15    # "limitBehavior":I
    .end local v37    # "usageTime":J
    .local v14, "usageTime":J
    .local v41, "limitBehavior":I
    if-eqz v6, :cond_1ee

    .line 2563
    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    goto :goto_1ee

    .line 2566
    .end local v14    # "usageTime":J
    .end local v41    # "limitBehavior":I
    .restart local v15    # "limitBehavior":I
    .restart local v37    # "usageTime":J
    :cond_1ea
    move/from16 v41, v15

    move-wide/from16 v14, v37

    .line 2566
    .end local v15    # "limitBehavior":I
    .end local v37    # "usageTime":J
    .restart local v14    # "usageTime":J
    .restart local v41    # "limitBehavior":I
    :cond_1ee
    :goto_1ee
    const-string/jumbo v6, "subId"

    invoke-static {v3, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 2567
    .local v6, "subId":I
    invoke-virtual {v11}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v7

    .line 2568
    .local v7, "plan":Landroid/telephony/SubscriptionPlan;
    move-object/from16 v42, v0

    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    .line 2568
    .end local v0    # "start":Ljava/lang/String;
    .local v42, "start":Ljava/lang/String;
    move-object/from16 v43, v10

    const-class v10, Landroid/telephony/SubscriptionPlan;

    .line 2568
    .end local v10    # "period":Ljava/lang/String;
    .local v43, "period":Ljava/lang/String;
    move-object/from16 v44, v11

    iget-object v11, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    .line 2569
    .end local v11    # "builder":Landroid/telephony/SubscriptionPlan$Builder;
    .local v44, "builder":Landroid/telephony/SubscriptionPlan$Builder;
    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/telephony/SubscriptionPlan;

    .line 2568
    invoke-static {v10, v11, v7}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/telephony/SubscriptionPlan;

    invoke-virtual {v0, v6, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2571
    const-string/jumbo v0, "ownerPackage"

    invoke-static {v3, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2572
    .local v0, "ownerPackage":Ljava/lang/String;
    iget-object v10, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v10, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2574
    .end local v0    # "ownerPackage":Ljava/lang/String;
    .end local v6    # "subId":I
    .end local v7    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v12    # "usageBytes":J
    .end local v14    # "usageTime":J
    .end local v34    # "end":Ljava/lang/String;
    .end local v39    # "limitBytes":J
    .end local v41    # "limitBehavior":I
    .end local v42    # "start":Ljava/lang/String;
    .end local v43    # "period":Ljava/lang/String;
    .end local v44    # "builder":Landroid/telephony/SubscriptionPlan$Builder;
    goto/16 :goto_2ef

    .line 2574
    .end local v33    # "version":I
    .local v7, "version":I
    :cond_222
    move/from16 v33, v7

    .line 2574
    .end local v7    # "version":I
    .restart local v33    # "version":I
    const-string/jumbo v0, "uid-policy"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_264

    .line 2575
    const-string/jumbo v0, "uid"

    invoke-static {v3, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 2576
    .local v0, "uid":I
    const-string/jumbo v6, "policy"

    invoke-static {v3, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 2578
    .local v6, "policy":I
    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v7

    if-eqz v7, :cond_246

    .line 2579
    const/4 v7, 0x0

    invoke-direct {v1, v0, v6, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    goto :goto_262

    .line 2581
    :cond_246
    const-string v7, "NetworkPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unable to apply policy to UID "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "; ignoring"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    .end local v0    # "uid":I
    .end local v6    # "policy":I
    :goto_262
    goto/16 :goto_2ef

    :cond_264
    const-string v0, "app-policy"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a5

    .line 2584
    const-string v0, "appId"

    invoke-static {v3, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 2585
    .local v0, "appId":I
    const-string/jumbo v6, "policy"

    invoke-static {v3, v6}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    .line 2589
    .restart local v6    # "policy":I
    const/4 v7, 0x0

    invoke-static {v7, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    .line 2590
    .local v10, "uid":I
    invoke-static {v10}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v11

    if-eqz v11, :cond_288

    .line 2591
    invoke-direct {v1, v10, v6, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    goto :goto_2a4

    .line 2593
    :cond_288
    const-string v7, "NetworkPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unable to apply policy to UID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "; ignoring"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    .end local v0    # "appId":I
    .end local v6    # "policy":I
    .end local v10    # "uid":I
    :goto_2a4
    goto :goto_2ef

    :cond_2a5
    const-string/jumbo v0, "whitelist"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b0

    .line 2596
    const/4 v0, 0x1

    .line 2596
    .end local v5    # "insideWhitelist":Z
    .local v0, "insideWhitelist":Z
    goto :goto_2ee

    .line 2597
    .end local v0    # "insideWhitelist":Z
    .restart local v5    # "insideWhitelist":Z
    :cond_2b0
    const-string/jumbo v0, "restrict-background"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c7

    if-eqz v5, :cond_2c7

    .line 2598
    const-string/jumbo v0, "uid"

    invoke-static {v3, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 2599
    .local v0, "uid":I
    const/4 v6, 0x1

    invoke-virtual {v4, v0, v6}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 2600
    .end local v0    # "uid":I
    goto :goto_2ef

    :cond_2c7
    const-string/jumbo v0, "revoked-restrict-background"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ef

    if-eqz v5, :cond_2ef

    .line 2601
    const-string/jumbo v0, "uid"

    invoke-static {v3, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v0

    .line 2602
    .restart local v0    # "uid":I
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2603
    .end local v0    # "uid":I
    goto :goto_2ef

    .line 2604
    .end local v33    # "version":I
    .restart local v7    # "version":I
    :cond_2e0
    move/from16 v33, v7

    .line 2604
    .end local v7    # "version":I
    .restart local v33    # "version":I
    if-ne v9, v11, :cond_2ef

    .line 2605
    const-string/jumbo v0, "whitelist"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ef

    .line 2606
    const/4 v0, 0x0

    .line 2610
    .end local v8    # "tag":Ljava/lang/String;
    .end local v33    # "version":I
    .restart local v7    # "version":I
    :goto_2ee
    move v5, v0

    :cond_2ef
    :goto_2ef
    move/from16 v7, v33

    .line 2457
    :goto_2f1
    const/4 v0, 0x0

    goto/16 :goto_40

    .line 2612
    :cond_2f4
    move/from16 v33, v7

    .line 2612
    .end local v7    # "version":I
    .restart local v33    # "version":I
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 2613
    .local v0, "size":I
    const/4 v6, 0x0

    .line 2613
    .local v6, "i":I
    :goto_2fb
    if-ge v6, v0, :cond_392

    .line 2614
    invoke-virtual {v4, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    .line 2615
    .local v7, "uid":I
    iget-object v8, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v10, 0x0

    invoke-virtual {v8, v7, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    .line 2616
    .local v8, "policy":I
    and-int/lit8 v10, v8, 0x1

    if-eqz v10, :cond_332

    .line 2617
    const-string v10, "NetworkPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "ignoring restrict-background-whitelist for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " because its policy is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2618
    invoke-static {v8}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2617
    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    nop

    .line 2613
    const/4 v11, 0x0

    goto :goto_37e

    .line 2621
    :cond_332
    invoke-static {v7}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v10

    if-eqz v10, :cond_366

    .line 2622
    or-int/lit8 v10, v8, 0x4

    .line 2623
    .local v10, "newPolicy":I
    sget-boolean v11, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v11, :cond_361

    .line 2624
    const-string v11, "NetworkPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "new policy for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    :cond_361
    const/4 v11, 0x0

    invoke-direct {v1, v7, v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    .line 2626
    .end local v10    # "newPolicy":I
    goto :goto_37e

    .line 2627
    :cond_366
    const/4 v11, 0x0

    const-string v10, "NetworkPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "unable to update policy on UID "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37e
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_37e} :catch_38e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_37e} :catch_384
    .catchall {:try_start_24 .. :try_end_37e} :catchall_382

    .line 2613
    .end local v7    # "uid":I
    .end local v8    # "policy":I
    :goto_37e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2fb

    .line 2637
    .end local v0    # "size":I
    .end local v3    # "in":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "whitelistedRestrictBackground":Landroid/util/SparseBooleanArray;
    .end local v5    # "insideWhitelist":Z
    .end local v6    # "i":I
    .end local v9    # "type":I
    .end local v33    # "version":I
    :catchall_382
    move-exception v0

    goto :goto_397

    .line 2634
    :catch_384
    move-exception v0

    .line 2635
    .local v0, "e":Ljava/lang/Exception;
    :try_start_385
    const-string v3, "NetworkPolicy"

    const-string/jumbo v4, "problem reading network policy"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2635
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_392

    .line 2631
    :catch_38e
    move-exception v0

    .line 2633
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->upgradeDefaultBackgroundDataUL()V
    :try_end_392
    .catchall {:try_start_385 .. :try_end_392} :catchall_382

    .line 2637
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_392
    :goto_392
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2638
    nop

    .line 2639
    return-void

    .line 2637
    :goto_397
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private registerGeneralReceiver()V
    .registers 4

    .line 1133
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 1134
    const-string v0, "NetworkPolicy"

    const-string v1, "Fatal Exception # registerGeneralReceiver # mContext=null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    return-void

    .line 1138
    :cond_c
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1139
    .local v0, "filter":Landroid/content/IntentFilter;
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1140
    sget-object v1, Lcom/android/server/net/NetworkPolicyManagerService;->ACTION_TEST_COMPRESS_FG_RESTRICT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1142
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1143
    return-void
.end method

.method private removeInterfaceQuota(Ljava/lang/String;)V
    .registers 5
    .param p1, "iface"    # Ljava/lang/String;

    .line 5081
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->removeInterfaceQuota(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_11

    .line 5084
    :catch_6
    move-exception v0

    goto :goto_12

    .line 5082
    :catch_8
    move-exception v0

    .line 5083
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem removing interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5086
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_11
    nop

    .line 5087
    :goto_12
    return-void
.end method

.method private removeInterfaceQuotaAsync(Ljava/lang/String;)V
    .registers 4
    .param p1, "iface"    # Ljava/lang/String;

    .line 5076
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5077
    return-void
.end method

.method private removeUidStateUL(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 4003
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 4004
    .local v0, "index":I
    if-ltz v0, :cond_2f

    .line 4005
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 4006
    .local v1, "oldUidState":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 4007
    const/16 v2, 0x12

    if-eq v1, v2, :cond_2f

    .line 4008
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V

    .line 4010
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v2, :cond_21

    .line 4011
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 4013
    :cond_21
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v2, :cond_28

    .line 4014
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 4016
    :cond_28
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 4017
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V

    .line 4020
    .end local v1    # "oldUidState":I
    :cond_2f
    return-void
.end method

.method private resetUidFirewallRules(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 5248
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5249
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5250
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, 0x3

    .line 5251
    invoke-interface {v0, v1, p1, v2}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5252
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, v2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkWhitelist(IZ)V

    .line 5253
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, v2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkBlacklist(IZ)V
    :try_end_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_1d} :catch_20
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_38

    .line 5256
    :catch_1e
    move-exception v0

    goto :goto_39

    .line 5254
    :catch_20
    move-exception v0

    .line 5255
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem resetting firewall uid rules for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5258
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_38
    nop

    .line 5259
    :goto_39
    return-void
.end method

.method private resolveNetworkPolicyConfigFromJSON(Lorg/json/JSONArray;)V
    .registers 10
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 737
    if-nez p1, :cond_3

    .line 738
    return-void

    .line 742
    :cond_3
    :try_start_3
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->sConfigLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_6} :catch_b6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_9a

    .line 743
    const/4 v1, 0x0

    move v2, v1

    .line 743
    .local v2, "index":I
    :goto_8
    :try_start_8
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_8e

    .line 744
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 745
    .local v3, "json":Lorg/json/JSONObject;
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "config_FGNetworkRestrict"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 746
    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 747
    .local v4, "enableFGNetworkRestrictJsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sput-boolean v5, Lcom/android/server/net/NetworkPolicyManagerService;->mEnableFGNetworkRestrictFeature:Z

    .line 748
    const-string v5, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] mEnableFGNetworkRestrictFeature: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/android/server/net/NetworkPolicyManagerService;->mEnableFGNetworkRestrictFeature:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    .end local v4    # "enableFGNetworkRestrictJsonArray":Lorg/json/JSONArray;
    :cond_4e
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "config_CloseTempWhiteSocket"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 751
    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 752
    .restart local v4    # "enableFGNetworkRestrictJsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    sput-boolean v5, Lcom/android/server/net/NetworkPolicyManagerService;->mEnableCloseTempWhiteSocketFeature:Z

    .line 753
    const-string v5, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] mEnableCloseTempWhiteSocketFeature: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/android/server/net/NetworkPolicyManagerService;->mEnableCloseTempWhiteSocketFeature:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "enableFGNetworkRestrictJsonArray":Lorg/json/JSONArray;
    :cond_8a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 756
    .end local v2    # "index":I
    :cond_8e
    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_8 .. :try_end_8f} :catchall_97

    .line 757
    :try_start_8f
    const-string v0, "NetworkPolicy"

    const-string v1, "[OnlineConfig] NetworkPolicy updated complete"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catch Lorg/json/JSONException; {:try_start_8f .. :try_end_96} :catch_b6
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_96} :catch_9a

    goto :goto_d1

    .line 756
    :catchall_97
    move-exception v1

    :try_start_98
    monitor-exit v0
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    :try_start_99
    throw v1
    :try_end_9a
    .catch Lorg/json/JSONException; {:try_start_99 .. :try_end_9a} :catch_b6
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9a} :catch_9a

    .line 760
    :catch_9a
    move-exception v0

    .line 761
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_d2

    .line 758
    :catch_b6
    move-exception v0

    .line 759
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_d1
    nop

    .line 763
    :goto_d2
    return-void
.end method

.method private sendRestrictBackgroundChangedMsg()V
    .registers 5

    .line 3234
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3235
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3236
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3237
    return-void
.end method

.method private setInterfaceQuota(Ljava/lang/String;J)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .line 5067
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/INetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_11

    .line 5070
    :catch_6
    move-exception v0

    goto :goto_12

    .line 5068
    :catch_8
    move-exception v0

    .line 5069
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem setting interface quota"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5072
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_11
    nop

    .line 5073
    :goto_12
    return-void
.end method

.method private setInterfaceQuotaAsync(Ljava/lang/String;J)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .line 5061
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x20

    shr-long v1, p2, v1

    long-to-int v1, v1

    const-wide/16 v2, -0x1

    and-long/2addr v2, p2

    long-to-int v2, v2

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5062
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5063
    return-void
.end method

.method private setMeteredNetworkBlacklist(IZ)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    .line 5090
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_23

    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMeteredNetworkBlacklist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5092
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkBlacklist(IZ)V
    :try_end_28
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_28} :catch_2b
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_29

    goto :goto_4b

    .line 5095
    :catch_29
    move-exception v0

    goto :goto_4c

    .line 5093
    :catch_2b
    move-exception v0

    .line 5094
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem setting blacklist ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") rules for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5097
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_4b
    nop

    .line 5098
    :goto_4c
    return-void
.end method

.method private setMeteredNetworkWhitelist(IZ)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    .line 5101
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_23

    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMeteredNetworkWhitelist "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5103
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1, p2}, Landroid/os/INetworkManagementService;->setUidMeteredNetworkWhitelist(IZ)V
    :try_end_28
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_28} :catch_2b
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_29

    goto :goto_4b

    .line 5106
    :catch_29
    move-exception v0

    goto :goto_4c

    .line 5104
    :catch_2b
    move-exception v0

    .line 5105
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "problem setting whitelist ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") rules for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5108
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_4b
    nop

    .line 5109
    :goto_4c
    return-void
.end method

.method private setMeteredRestrictedPackagesInternal(Ljava/util/Set;I)V
    .registers 9
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 5570
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5571
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 5572
    .local v1, "newRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5573
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidForPackage(Ljava/lang/String;I)I

    move-result v4

    .line 5574
    .local v4, "uid":I
    if-ltz v4, :cond_25

    .line 5575
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5577
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "uid":I
    :cond_25
    goto :goto_c

    .line 5578
    :cond_26
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 5579
    .local v2, "oldRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5580
    invoke-direct {p0, v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleRestrictedPackagesChangeUL(Ljava/util/Set;Ljava/util/Set;)V

    .line 5581
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, v1}, Lcom/android/server/net/NetworkPolicyLogger;->meteredRestrictedPkgsChanged(Ljava/util/Set;)V

    .line 5582
    .end local v1    # "newRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2    # "oldRestrictedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    monitor-exit v0

    .line 5583
    return-void

    .line 5582
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method private setNetworkPolicies_internal([Landroid/net/NetworkPolicy;)V
    .registers 7
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .line 2916
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2918
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2920
    .local v0, "token":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_2f

    .line 2921
    :try_start_10
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_2c

    .line 2922
    :try_start_13
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    .line 2923
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 2924
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 2925
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 2926
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2927
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_29

    .line 2928
    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_2c

    .line 2930
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2931
    nop

    .line 2932
    return-void

    .line 2927
    :catchall_29
    move-exception v4

    :try_start_2a
    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v4

    .line 2928
    :catchall_2c
    move-exception v3

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v3
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    .line 2930
    :catchall_2f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V
    .registers 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "enabled"    # Z

    .line 2020
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-virtual {v0, v2, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2021
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2022
    return-void
.end method

.method private setNetworkTemplateEnabledInner(Landroid/net/NetworkTemplate;Z)V
    .registers 18
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "enabled"    # Z

    move-object v1, p0

    .line 2028
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6f

    .line 2032
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    move-object v2, v0

    .line 2033
    .local v2, "matchingSubIds":Landroid/util/IntArray;
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2034
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_13
    :try_start_13
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_44

    .line 2035
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 2036
    .local v5, "subId":I
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    .line 2038
    .local v10, "subscriberId":Ljava/lang/String;
    new-instance v6, Landroid/net/NetworkIdentity;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v7, v6

    invoke-direct/range {v7 .. v14}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V
    :try_end_36
    .catchall {:try_start_13 .. :try_end_36} :catchall_66

    .line 2042
    .local v6, "probeIdent":Landroid/net/NetworkIdentity;
    move-object/from16 v7, p1

    :try_start_38
    invoke-virtual {v7, v6}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v8

    if-eqz v8, :cond_41

    .line 2043
    invoke-virtual {v2, v5}, Landroid/util/IntArray;->add(I)V

    .line 2034
    .end local v5    # "subId":I
    .end local v6    # "probeIdent":Landroid/net/NetworkIdentity;
    .end local v10    # "subscriberId":Ljava/lang/String;
    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 2046
    .end local v4    # "i":I
    :cond_44
    move-object/from16 v7, p1

    monitor-exit v3
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_64

    .line 2049
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 2050
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    nop

    .local v0, "i":I
    :goto_52
    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_71

    .line 2051
    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    move-result v4

    .line 2052
    .local v4, "subId":I
    move/from16 v5, p2

    invoke-virtual {v3, v5, v4}, Landroid/telephony/TelephonyManager;->setPolicyDataEnabled(ZI)V

    .line 2050
    .end local v4    # "subId":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 2046
    .end local v0    # "i":I
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :catchall_64
    move-exception v0

    goto :goto_69

    :catchall_66
    move-exception v0

    move-object/from16 v7, p1

    :goto_69
    move/from16 v5, p2

    :goto_6b
    :try_start_6b
    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6d

    throw v0

    :catchall_6d
    move-exception v0

    goto :goto_6b

    .line 2055
    .end local v2    # "matchingSubIds":Landroid/util/IntArray;
    :cond_6f
    move-object/from16 v7, p1

    :cond_71
    move/from16 v5, p2

    return-void
.end method

.method private setRestrictBackgroundUL(Z)V
    .registers 8
    .param p1, "restrictBackground"    # Z

    .line 3191
    const-string/jumbo v0, "setRestrictBackgroundUL"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3193
    :try_start_9
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-ne p1, v0, :cond_28

    .line 3195
    const-string v0, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRestrictBackgroundUL: already "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_95

    .line 3229
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3196
    return-void

    .line 3198
    :cond_28
    :try_start_28
    const-string v0, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRestrictBackgroundUL(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3199
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 3200
    .local v0, "oldRestrictBackground":Z
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 3204
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V
    :try_end_46
    .catchall {:try_start_28 .. :try_end_46} :catchall_95

    .line 3206
    :try_start_46
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setDataSaverModeEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_6e

    .line 3207
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not change Data Saver Mode on NMS to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    iput-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_6a} :catch_6f
    .catchall {:try_start_46 .. :try_end_6a} :catchall_95

    .line 3229
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3212
    return-void

    .line 3216
    :cond_6e
    goto :goto_70

    .line 3214
    :catch_6f
    move-exception v3

    .line 3218
    :goto_70
    :try_start_70
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->sendRestrictBackgroundChangedMsg()V

    .line 3219
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v3, v0, v4}, Lcom/android/server/net/NetworkPolicyLogger;->restrictBackgroundChanged(ZZ)V

    .line 3221
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundPowerState:Landroid/os/PowerSaveState;

    iget-boolean v3, v3, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    if-eqz v3, :cond_83

    .line 3222
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 3224
    :cond_83
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_86
    .catchall {:try_start_70 .. :try_end_86} :catchall_95

    .line 3225
    :try_start_86
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 3226
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 3227
    monitor-exit v3
    :try_end_8d
    .catchall {:try_start_86 .. :try_end_8d} :catchall_92

    .line 3229
    .end local v0    # "oldRestrictBackground":Z
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3230
    nop

    .line 3231
    return-void

    .line 3227
    .restart local v0    # "oldRestrictBackground":Z
    :catchall_92
    move-exception v4

    :try_start_93
    monitor-exit v3
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    :try_start_94
    throw v4
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_95

    .line 3229
    .end local v0    # "oldRestrictBackground":Z
    :catchall_95
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private setUidFirewallRule(III)V
    .registers 9
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .line 5185
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 5186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setUidFirewallRule: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5190
    :cond_2e
    const/4 v2, 0x1

    if-ne p1, v2, :cond_39

    .line 5191
    :try_start_31
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_4a

    .line 5215
    :catchall_37
    move-exception v2

    goto :goto_9b

    .line 5192
    :cond_39
    const/4 v2, 0x2

    if-ne p1, v2, :cond_42

    .line 5193
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_4a

    .line 5194
    :cond_42
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4a

    .line 5195
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 5200
    :cond_4a
    :goto_4a
    sget-boolean v2, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v2, :cond_75

    .line 5201
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUidFirewallRule chain = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " rule "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_31 .. :try_end_75} :catchall_37

    .line 5205
    :cond_75
    :try_start_75
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    .line 5206
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyLogger;->uidFirewallRuleChanged(III)V
    :try_end_7f
    .catch Ljava/lang/IllegalStateException; {:try_start_75 .. :try_end_7f} :catch_8c
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_7f} :catch_8a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_75 .. :try_end_7f} :catch_80
    .catchall {:try_start_75 .. :try_end_7f} :catchall_37

    goto :goto_8b

    .line 5211
    :catch_80
    move-exception v2

    .line 5212
    .local v2, "oobe":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_81
    const-string v3, "NetworkPolicy"

    const-string/jumbo v4, "problem setting firewall uid rules "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5212
    .end local v2    # "oobe":Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_96

    .line 5209
    :catch_8a
    move-exception v2

    .line 5213
    :goto_8b
    goto :goto_96

    .line 5207
    :catch_8c
    move-exception v2

    .line 5208
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string v3, "NetworkPolicy"

    const-string/jumbo v4, "problem setting firewall uid rules"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_95
    .catchall {:try_start_81 .. :try_end_95} :catchall_37

    .line 5208
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    goto :goto_8b

    .line 5215
    :goto_96
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 5216
    nop

    .line 5217
    return-void

    .line 5215
    :goto_9b
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private setUidFirewallRulesUL(ILandroid/util/SparseIntArray;)V
    .registers 10
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;

    .line 5148
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->adjustUidRulesForStandby(ILandroid/util/SparseIntArray;)Landroid/util/SparseIntArray;

    move-result-object v0

    .line 5149
    .local v0, "uidRulesTemp":Landroid/util/SparseIntArray;
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    .line 5150
    .local v1, "size":I
    new-array v2, v1, [I

    .line 5151
    .local v2, "uids":[I
    new-array v3, v1, [I

    .line 5152
    .local v3, "rules":[I
    add-int/lit8 v4, v1, -0x1

    .line 5152
    .local v4, "index":I
    :goto_e
    if-ltz v4, :cond_1f

    .line 5153
    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    aput v5, v2, v4

    .line 5154
    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    aput v5, v3, v4

    .line 5152
    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    .line 5157
    .end local v4    # "index":I
    :cond_1f
    const-string v4, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUidFirewallRules uidRules "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " chain ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5158
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v4, p1, v2, v3}, Landroid/os/INetworkManagementService;->setFirewallUidRules(I[I[I)V

    .line 5159
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v4, p1, v2, v3}, Lcom/android/server/net/NetworkPolicyLogger;->firewallRulesChanged(I[I[I)V
    :try_end_48
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_48} :catch_4b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_48} :catch_49

    .line 5159
    .end local v0    # "uidRulesTemp":Landroid/util/SparseIntArray;
    .end local v1    # "size":I
    .end local v2    # "uids":[I
    .end local v3    # "rules":[I
    goto :goto_54

    .line 5162
    :catch_49
    move-exception v0

    goto :goto_55

    .line 5160
    :catch_4b
    move-exception v0

    .line 5161
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "problem setting firewall uid rules"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5164
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_54
    nop

    .line 5165
    :goto_55
    return-void
.end method

.method private setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V
    .registers 5
    .param p1, "chain"    # I
    .param p2, "uidRules"    # Landroid/util/SparseIntArray;
    .param p3, "toggle"    # I

    .line 5133
    if-eqz p2, :cond_5

    .line 5134
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;)V

    .line 5136
    :cond_5
    if-eqz p3, :cond_f

    .line 5137
    const/4 v0, 0x1

    if-ne p3, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-direct {p0, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    .line 5139
    :cond_f
    return-void
.end method

.method private setUidPolicyUncheckedUL(IIIZ)V
    .registers 16
    .param p1, "uid"    # I
    .param p2, "oldPolicy"    # I
    .param p3, "policy"    # I
    .param p4, "persist"    # Z

    .line 2869
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIZ)V

    .line 2872
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRules(I)Z

    move-result v1

    if-nez v1, :cond_d

    .line 2873
    const/4 v0, 0x0

    .local v0, "notifyApp":Z
    goto/16 :goto_79

    .line 2875
    .end local v0    # "notifyApp":Z
    :cond_d
    const/4 v1, 0x1

    if-ne p2, v1, :cond_12

    move v2, v1

    goto :goto_13

    :cond_12
    move v2, v0

    .line 2876
    .local v2, "wasBlacklisted":Z
    :goto_13
    if-ne p3, v1, :cond_17

    move v3, v1

    goto :goto_18

    :cond_17
    move v3, v0

    .line 2877
    .local v3, "isBlacklisted":Z
    :goto_18
    const/4 v4, 0x4

    if-ne p2, v4, :cond_1d

    move v5, v1

    goto :goto_1e

    :cond_1d
    move v5, v0

    .line 2878
    .local v5, "wasWhitelisted":Z
    :goto_1e
    if-ne p3, v4, :cond_22

    move v4, v1

    goto :goto_23

    :cond_22
    move v4, v0

    .line 2879
    .local v4, "isWhitelisted":Z
    :goto_23
    if-nez v2, :cond_2e

    iget-boolean v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v6, :cond_2c

    if-nez v5, :cond_2c

    goto :goto_2e

    :cond_2c
    move v6, v0

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v6, v1

    .line 2880
    .local v6, "wasBlocked":Z
    :goto_2f
    if-nez v3, :cond_3a

    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v7, :cond_38

    if-nez v4, :cond_38

    goto :goto_3a

    :cond_38
    move v7, v0

    goto :goto_3b

    :cond_3a
    :goto_3a
    move v7, v1

    .line 2881
    .local v7, "isBlocked":Z
    :goto_3b
    if-eqz v5, :cond_75

    if-eqz v4, :cond_41

    if-eqz v3, :cond_75

    :cond_41
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    .line 2882
    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_75

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    .line 2883
    invoke-virtual {v8, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_75

    .line 2884
    sget-boolean v8, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v8, :cond_70

    .line 2885
    const-string v8, "NetworkPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Adding uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to revoked restrict background whitelist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    :cond_70
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 2888
    :cond_75
    if-eq v6, v7, :cond_79

    move v0, v1

    nop

    .line 2890
    .end local v2    # "wasBlacklisted":Z
    .end local v3    # "isBlacklisted":Z
    .end local v4    # "isWhitelisted":Z
    .end local v5    # "wasWhitelisted":Z
    .end local v6    # "wasBlocked":Z
    .end local v7    # "isBlocked":Z
    .restart local v0    # "notifyApp":Z
    :cond_79
    :goto_79
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, p1, p3, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2891
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2892
    if-eqz p4, :cond_95

    .line 2893
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2894
    :try_start_8d
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2895
    monitor-exit v1

    goto :goto_95

    :catchall_92
    move-exception v2

    monitor-exit v1
    :try_end_94
    .catchall {:try_start_8d .. :try_end_94} :catchall_92

    throw v2

    .line 2897
    :cond_95
    :goto_95
    return-void
.end method

.method private setUidPolicyUncheckedUL(IIZ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "policy"    # I
    .param p3, "persist"    # Z

    .line 2900
    if-nez p2, :cond_8

    .line 2901
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_d

    .line 2903
    :cond_8
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 2907
    :goto_d
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 2908
    if-eqz p3, :cond_1d

    .line 2909
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2910
    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2911
    monitor-exit v0

    goto :goto_1d

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1a

    throw v1

    .line 2913
    :cond_1d
    :goto_1d
    return-void
.end method

.method private static updateCapabilityChange(Landroid/util/SparseBooleanArray;ZLandroid/net/Network;)Z
    .registers 6
    .param p0, "lastValues"    # Landroid/util/SparseBooleanArray;
    .param p1, "newValue"    # Z
    .param p2, "network"    # Landroid/net/Network;

    .line 1387
    iget v0, p2, Landroid/net/Network;->netId:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 1388
    .local v0, "lastValue":Z
    if-ne v0, p1, :cond_13

    iget v2, p2, Landroid/net/Network;->netId:I

    invoke-virtual {p0, v2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_12

    goto :goto_13

    :cond_12
    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    .line 1389
    .local v1, "changed":Z
    :goto_14
    if-eqz v1, :cond_1b

    .line 1390
    iget v2, p2, Landroid/net/Network;->netId:I

    invoke-virtual {p0, v2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1392
    :cond_1b
    return v1
.end method

.method private updateDefaultMobilePolicyAL(ILandroid/net/NetworkPolicy;)Z
    .registers 23
    .param p1, "subId"    # I
    .param p2, "policy"    # Landroid/net/NetworkPolicy;

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2382
    move-object/from16 v2, p2

    iget-boolean v3, v2, Landroid/net/NetworkPolicy;->inferred:Z

    const/4 v4, 0x0

    if-nez v3, :cond_26

    .line 2383
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v3, :cond_25

    const-string v3, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring user-defined policy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    :cond_25
    return v4

    .line 2387
    :cond_26
    new-instance v3, Landroid/net/NetworkPolicy;

    iget-object v7, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    iget-object v8, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-wide v9, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    iget-wide v11, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-wide v13, v2, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    iget-wide v5, v2, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    iget-boolean v15, v2, Landroid/net/NetworkPolicy;->metered:Z

    iget-boolean v4, v2, Landroid/net/NetworkPolicy;->inferred:Z

    move-wide/from16 v16, v5

    move-object v6, v3

    move v5, v15

    move-wide/from16 v15, v16

    move/from16 v17, v5

    move/from16 v18, v4

    invoke-direct/range {v6 .. v18}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    .line 2391
    .local v3, "original":Landroid/net/NetworkPolicy;
    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/telephony/SubscriptionPlan;

    .line 2392
    .local v4, "plans":[Landroid/telephony/SubscriptionPlan;
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_97

    .line 2393
    const/4 v5, 0x0

    aget-object v6, v4, v5

    .line 2394
    .local v6, "plan":Landroid/telephony/SubscriptionPlan;
    invoke-virtual {v6}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v5

    iput-object v5, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 2395
    invoke-virtual {v6}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v7

    .line 2396
    .local v7, "planLimitBytes":J
    const-wide/16 v9, -0x1

    cmp-long v5, v7, v9

    if-nez v5, :cond_73

    .line 2397
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide v9

    iput-wide v9, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2398
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide v9

    iput-wide v9, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_96

    .line 2399
    :cond_73
    const-wide v11, 0x7fffffffffffffffL

    cmp-long v5, v7, v11

    if-nez v5, :cond_81

    .line 2400
    iput-wide v9, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2401
    iput-wide v9, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    goto :goto_96

    .line 2403
    :cond_81
    const-wide/16 v11, 0x9

    mul-long/2addr v11, v7

    const-wide/16 v13, 0xa

    div-long/2addr v11, v13

    iput-wide v11, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2404
    invoke-virtual {v6}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v5

    packed-switch v5, :pswitch_data_f6

    .line 2410
    iput-wide v9, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .end local v6    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v7    # "planLimitBytes":J
    goto :goto_96

    .line 2407
    .restart local v6    # "plan":Landroid/telephony/SubscriptionPlan;
    .restart local v7    # "planLimitBytes":J
    :pswitch_93
    iput-wide v7, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2408
    nop

    .line 2414
    .end local v6    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v7    # "planLimitBytes":J
    :goto_96
    goto :goto_cd

    .line 2415
    :cond_97
    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v5, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v5

    .line 2417
    .local v5, "config":Landroid/os/PersistableBundle;
    iget-object v6, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    invoke-virtual {v6}, Landroid/util/RecurrenceRule;->isMonthly()Z

    move-result v6

    if-eqz v6, :cond_ae

    .line 2418
    iget-object v6, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v6, v6, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v6

    .local v6, "currentCycleDay":I
    goto :goto_af

    .line 2420
    .end local v6    # "currentCycleDay":I
    :cond_ae
    const/4 v6, -0x1

    .line 2422
    .restart local v6    # "currentCycleDay":I
    :goto_af
    invoke-virtual {v0, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getCycleDayFromCarrierConfig(Landroid/os/PersistableBundle;I)I

    move-result v7

    .line 2423
    .local v7, "cycleDay":I
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v8

    iput-object v8, v2, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    .line 2424
    iget-wide v8, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v5, v8, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getWarningBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2425
    iget-wide v8, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v5, v8, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->getLimitBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J

    move-result-wide v8

    iput-wide v8, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2428
    .end local v5    # "config":Landroid/os/PersistableBundle;
    .end local v6    # "currentCycleDay":I
    .end local v7    # "cycleDay":I
    :goto_cd
    invoke-virtual {v2, v3}, Landroid/net/NetworkPolicy;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d5

    .line 2429
    const/4 v5, 0x0

    return v5

    .line 2431
    :cond_d5
    const-string v5, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Updated "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    const/4 v5, 0x1

    return v5

    nop

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_93
        :pswitch_93
    .end packed-switch
.end method

.method private updateNetworkStats(IZ)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "uidForeground"    # Z

    .line 4024
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 4025
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNetworkStats: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4026
    if-eqz p2, :cond_21

    const-string v3, "F"

    goto :goto_23

    :cond_21
    const-string v3, "B"

    :goto_23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4025
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4029
    :cond_2d
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Lcom/android/server/net/NetworkStatsManagerInternal;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/net/NetworkStatsManagerInternal;->setUidForeground(IZ)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_37

    .line 4031
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4032
    nop

    .line 4033
    return-void

    .line 4031
    :catchall_37
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateNetworksInternal()V
    .registers 4

    .line 1777
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateSubscriptions()V

    .line 1779
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1780
    :try_start_6
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_1e

    .line 1781
    :try_start_9
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyAL()V

    .line 1782
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 1783
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 1784
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 1785
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 1786
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_9 .. :try_end_19} :catchall_1b

    .line 1787
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_1e

    .line 1788
    return-void

    .line 1786
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw v2

    .line 1787
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "oldUidState"    # I
    .param p3, "newUidState"    # I

    .line 4037
    nop

    .line 4038
    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v0

    .line 4039
    .local v0, "oldForeground":Z
    nop

    .line 4040
    invoke-static {p3}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v1

    .line 4041
    .local v1, "newForeground":Z
    if-eq v0, v1, :cond_f

    .line 4042
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 4044
    :cond_f
    return-void
.end method

.method private updateRestrictionRulesForUidUL(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 4493
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 4494
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 4495
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 4498
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 4501
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 4502
    return-void
.end method

.method private updateRulesForAllAppsUL(I)V
    .registers 19
    .param p1, "type"    # I

    move-object/from16 v1, p0

    .line 4349
    move/from16 v2, p1

    const-wide/32 v3, 0x200000

    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 4350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRulesForRestrictPowerUL-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4355
    :cond_22
    :try_start_22
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v5, v0

    .line 4359
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v0, "list-users"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_b6

    .line 4361
    :try_start_2f
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_ae

    move-object v6, v0

    .line 4363
    .local v6, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_36
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 4364
    nop

    .line 4363
    nop

    .line 4365
    const-string/jumbo v0, "list-uids"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_b6

    .line 4367
    const v0, 0x4c0200

    :try_start_44
    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_a5

    .line 4372
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :try_start_48
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 4373
    nop

    .line 4372
    nop

    .line 4375
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 4376
    .local v7, "usersSize":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 4377
    .local v8, "appsSize":I
    const/4 v10, 0x0

    .line 4377
    .local v10, "i":I
    :goto_56
    if-ge v10, v7, :cond_9d

    .line 4378
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/UserInfo;

    .line 4379
    .local v11, "user":Landroid/content/pm/UserInfo;
    const/4 v12, 0x0

    .line 4379
    .local v12, "j":I
    :goto_5f
    if-ge v12, v8, :cond_97

    .line 4380
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ApplicationInfo;

    .line 4381
    .local v13, "app":Landroid/content/pm/ApplicationInfo;
    iget v14, v11, Landroid/content/pm/UserInfo;->id:I

    iget v15, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v14, v15}, Landroid/os/UserHandle;->getUid(II)I

    move-result v14

    .line 4382
    .local v14, "uid":I
    packed-switch v2, :pswitch_data_c0

    .line 4390
    const-string v15, "NetworkPolicy"

    goto :goto_7d

    .line 4387
    :pswitch_75
    invoke-direct {v1, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 4388
    goto :goto_91

    .line 4384
    :pswitch_79
    invoke-direct {v1, v14}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsUL(I)V

    .line 4385
    goto :goto_91

    .line 4390
    :goto_7d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type for updateRulesForAllApps: "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catchall {:try_start_48 .. :try_end_91} :catchall_b6

    .line 4379
    .end local v13    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "uid":I
    :goto_91
    add-int/lit8 v12, v12, 0x1

    const-wide/32 v3, 0x200000

    goto :goto_5f

    .line 4377
    .end local v11    # "user":Landroid/content/pm/UserInfo;
    .end local v12    # "j":I
    :cond_97
    add-int/lit8 v10, v10, 0x1

    const-wide/32 v3, 0x200000

    goto :goto_56

    .line 4395
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "usersSize":I
    .end local v8    # "appsSize":I
    .end local v10    # "i":I
    :cond_9d
    const-wide/32 v3, 0x200000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 4396
    nop

    .line 4397
    return-void

    .line 4372
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_a5
    move-exception v0

    const-wide/32 v3, 0x200000

    :try_start_a9
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    move-object v3, v0

    throw v3

    .line 4363
    .end local v6    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catchall_ae
    move-exception v0

    const-wide/32 v3, 0x200000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
    :try_end_b6
    .catchall {:try_start_a9 .. :try_end_b6} :catchall_b6

    .line 4395
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :catchall_b6
    move-exception v0

    const-wide/32 v3, 0x200000

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    nop

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_79
        :pswitch_75
    .end packed-switch
.end method

.method private updateRulesForDataUsageRestrictionsUL(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 4544
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 4545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForDataUsageRestrictionsUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4549
    :cond_1e
    :try_start_1e
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDataUsageRestrictionsULInner(I)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_26

    .line 4551
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4552
    nop

    .line 4553
    return-void

    .line 4551
    :catchall_26
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateRulesForDataUsageRestrictionsULInner(I)V
    .registers 16
    .param p1, "uid"    # I

    .line 4556
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForWhitelistRules(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 4557
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v0, :cond_21

    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no need to update restrict data rules for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4558
    :cond_21
    return-void

    .line 4561
    :cond_22
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 4562
    .local v0, "uidPolicy":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 4563
    .local v2, "oldUidRules":I
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictBackgroundUL(I)Z

    move-result v3

    .line 4564
    .local v3, "isForeground":Z
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isRestrictedByAdminUL(I)Z

    move-result v4

    .line 4566
    .local v4, "isRestrictedByAdmin":Z
    and-int/lit8 v5, v0, 0x1

    const/4 v6, 0x1

    if-eqz v5, :cond_3e

    move v5, v6

    goto :goto_3f

    :cond_3e
    move v5, v1

    .line 4567
    .local v5, "isBlacklisted":Z
    :goto_3f
    and-int/lit8 v7, v0, 0x4

    if-eqz v7, :cond_45

    move v7, v6

    goto :goto_46

    :cond_45
    move v7, v1

    .line 4568
    .local v7, "isWhitelisted":Z
    :goto_46
    and-int/lit8 v8, v2, 0xf

    .line 4569
    .local v8, "oldRule":I
    const/4 v9, 0x0

    .line 4572
    .local v9, "newRule":I
    if-eqz v4, :cond_4d

    .line 4573
    const/4 v9, 0x4

    goto :goto_69

    .line 4574
    :cond_4d
    if-eqz v3, :cond_5e

    .line 4575
    if-nez v5, :cond_5c

    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v10, :cond_58

    if-nez v7, :cond_58

    goto :goto_5c

    .line 4577
    :cond_58
    if-eqz v7, :cond_69

    .line 4578
    const/4 v9, 0x1

    goto :goto_69

    .line 4576
    :cond_5c
    :goto_5c
    const/4 v9, 0x2

    goto :goto_69

    .line 4581
    :cond_5e
    if-eqz v5, :cond_62

    .line 4582
    const/4 v9, 0x4

    goto :goto_69

    .line 4583
    :cond_62
    iget-boolean v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v10, :cond_69

    if-eqz v7, :cond_69

    .line 4584
    const/4 v9, 0x1

    .line 4587
    :cond_69
    :goto_69
    and-int/lit16 v10, v2, 0xf0

    or-int/2addr v10, v9

    .line 4589
    .local v10, "newUidRules":I
    sget-boolean v11, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v11, :cond_d7

    .line 4590
    const-string v11, "NetworkPolicy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateRuleForRestrictBackgroundUL("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "): isForeground="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isBlacklisted="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isWhitelisted="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", isRestrictedByAdmin="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, ", oldRule="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4595
    invoke-static {v8}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", newRule="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4596
    invoke-static {v9}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", newUidRules="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4597
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", oldUidRules="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4598
    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 4590
    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4601
    :cond_d7
    if-nez v10, :cond_df

    .line 4602
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v11, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_e4

    .line 4604
    :cond_df
    iget-object v11, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v11, p1, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 4608
    :goto_e4
    if-eq v9, v8, :cond_197

    .line 4609
    const/4 v11, 0x2

    invoke-static {v9, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v12

    if-eqz v12, :cond_f7

    .line 4613
    invoke-direct {p0, p1, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    .line 4617
    if-eqz v5, :cond_18e

    .line 4618
    invoke-direct {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    goto/16 :goto_18e

    .line 4620
    :cond_f7
    invoke-static {v8, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v11

    if-eqz v11, :cond_10b

    .line 4627
    if-nez v7, :cond_102

    .line 4628
    invoke-direct {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    .line 4630
    :cond_102
    if-nez v5, :cond_106

    if-eqz v4, :cond_18e

    .line 4631
    :cond_106
    invoke-direct {p0, p1, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    goto/16 :goto_18e

    .line 4633
    :cond_10b
    const/4 v11, 0x4

    invoke-static {v9, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v12

    if-nez v12, :cond_179

    .line 4634
    invoke-static {v8, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v12

    if-eqz v12, :cond_119

    goto :goto_179

    .line 4643
    :cond_119
    invoke-static {v9, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v1

    if-nez v1, :cond_175

    .line 4644
    invoke-static {v8, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v1

    if-eqz v1, :cond_126

    goto :goto_175

    .line 4649
    :cond_126
    const-string v1, "NetworkPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected change of metered UID state for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": foreground="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", whitelisted="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", blacklisted="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", isRestrictedByAdmin="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", newRule="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4654
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", oldRule="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4655
    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 4649
    invoke-static {v1, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18e

    .line 4646
    :cond_175
    :goto_175
    invoke-direct {p0, p1, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    goto :goto_18e

    .line 4636
    :cond_179
    :goto_179
    if-nez v5, :cond_17f

    if-eqz v4, :cond_17e

    goto :goto_17f

    :cond_17e
    goto :goto_180

    :cond_17f
    :goto_17f
    move v1, v6

    :goto_180
    invoke-direct {p0, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkBlacklist(IZ)V

    .line 4637
    invoke-static {v8, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v1

    if-eqz v1, :cond_18e

    if-eqz v7, :cond_18e

    .line 4641
    invoke-direct {p0, p1, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->setMeteredNetworkWhitelist(IZ)V

    .line 4659
    :cond_18e
    :goto_18e
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6, p1, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4661
    :cond_197
    return-void
.end method

.method private updateRulesForGlobalChangeAL(Z)V
    .registers 6
    .param p1, "restrictedNetworksChanged"    # Z

    .line 4297
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 4298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForGlobalChangeAL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4299
    if-eqz p1, :cond_19

    const-string v3, "R"

    goto :goto_1b

    :cond_19
    const-string v3, "-"

    :goto_1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4298
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4302
    :cond_25
    :try_start_25
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleUL()V

    .line 4303
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    .line 4304
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictBackgroundUL()V

    .line 4307
    if-eqz p1, :cond_36

    .line 4308
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 4309
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_3b

    .line 4312
    :cond_36
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4313
    nop

    .line 4314
    return-void

    .line 4312
    :catchall_3b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateRulesForPowerRestrictionsUL(IIZ)I
    .registers 8
    .param p1, "uid"    # I
    .param p2, "oldUidRules"    # I
    .param p3, "paroled"    # Z

    .line 4703
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 4704
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForPowerRestrictionsUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4706
    if-eqz p3, :cond_29

    const-string v3, "P"

    goto :goto_2b

    :cond_29
    const-string v3, "-"

    :goto_2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4704
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4709
    :cond_35
    :try_start_35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsULInner(IIZ)I

    move-result v2
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_3d

    .line 4711
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4709
    return v2

    .line 4711
    :catchall_3d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private updateRulesForPowerRestrictionsUL(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 4682
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 4684
    .local v0, "oldUidRules":I
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IIZ)I

    move-result v1

    .line 4686
    .local v1, "newUidRules":I
    if-nez v1, :cond_13

    .line 4687
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_18

    .line 4689
    :cond_13
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 4691
    :goto_18
    return-void
.end method

.method private updateRulesForPowerRestrictionsULInner(IIZ)I
    .registers 21
    .param p1, "uid"    # I
    .param p2, "oldUidRules"    # I
    .param p3, "paroled"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 4716
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForBlacklistRules(I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_29

    .line 4717
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v3, :cond_28

    const-string v3, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "no need to update restrict power rules for uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4718
    :cond_28
    return v4

    .line 4721
    :cond_29
    if-nez p3, :cond_33

    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v6

    if-eqz v6, :cond_33

    const/4 v6, 0x1

    goto :goto_34

    :cond_33
    move v6, v4

    .line 4722
    .local v6, "isIdle":Z
    :goto_34
    if-nez v6, :cond_40

    iget-boolean v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-nez v7, :cond_40

    iget-boolean v7, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v7, :cond_3f

    goto :goto_40

    :cond_3f
    goto :goto_41

    :cond_40
    :goto_40
    const/4 v4, 0x1

    .line 4723
    .local v4, "restrictMode":Z
    :goto_41
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v7

    .line 4725
    .local v7, "isForeground":Z
    iget-boolean v8, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-direct {v0, v1, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedBatterySaverUL(IZ)Z

    move-result v8

    .line 4726
    .local v8, "isWhitelisted":Z
    and-int/lit16 v9, v2, 0xf0

    .line 4727
    .local v9, "oldRule":I
    const/4 v10, 0x0

    .line 4733
    .local v10, "newRule":I
    const/16 v11, 0x40

    const/16 v12, 0x20

    if-eqz v7, :cond_59

    .line 4734
    if-eqz v4, :cond_61

    .line 4735
    const/16 v10, 0x20

    goto :goto_61

    .line 4737
    :cond_59
    if-eqz v4, :cond_61

    .line 4738
    if-eqz v8, :cond_5f

    move v13, v12

    goto :goto_60

    :cond_5f
    move v13, v11

    :goto_60
    move v10, v13

    .line 4741
    :cond_61
    :goto_61
    and-int/lit8 v13, v2, 0xf

    or-int/2addr v13, v10

    .line 4743
    .local v13, "newUidRules":I
    sget-boolean v14, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v14, :cond_db

    .line 4744
    const-string v14, "NetworkPolicy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRulesForPowerRestrictionsUL("

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), isIdle: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mRestrictPower: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mDeviceIdleMode: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isForeground="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isWhitelisted="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", oldRule="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4750
    invoke-static {v9}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", newRule="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4751
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", newUidRules="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4752
    invoke-static {v13}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", oldUidRules="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4753
    invoke-static/range {p2 .. p2}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4744
    invoke-static {v14, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4757
    :cond_db
    if-eq v10, v9, :cond_16a

    .line 4758
    if-eqz v10, :cond_146

    invoke-static {v10, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v3

    if-eqz v3, :cond_e6

    goto :goto_146

    .line 4760
    :cond_e6
    invoke-static {v10, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->hasRule(II)Z

    move-result v3

    if-eqz v3, :cond_107

    .line 4761
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v3, :cond_160

    const-string v3, "NetworkPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Rejecting non-metered access for UID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_160

    .line 4764
    :cond_107
    const-string v3, "NetworkPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected change of non-metered UID state for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ": foreground="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", whitelisted="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", newRule="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4767
    invoke-static {v13}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", oldRule="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4768
    invoke-static/range {p2 .. p2}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 4764
    invoke-static {v3, v11}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_160

    .line 4759
    :cond_146
    :goto_146
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v3, :cond_160

    const-string v3, "NetworkPolicy"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Allowing non-metered access for UID "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4770
    :cond_160
    :goto_160
    iget-object v3, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v3, v11, v1, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 4773
    :cond_16a
    return v13
.end method

.method private updateRulesForRestrictBackgroundUL()V
    .registers 4

    .line 4329
    const-string/jumbo v0, "updateRulesForRestrictBackgroundUL"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4331
    const/4 v0, 0x1

    :try_start_a
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllAppsUL(I)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_12

    .line 4333
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4334
    nop

    .line 4335
    return-void

    .line 4333
    :catchall_12
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private updateRulesForRestrictPowerUL()V
    .registers 4

    .line 4318
    const-string/jumbo v0, "updateRulesForRestrictPowerUL"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4320
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForDeviceIdleUL()V

    .line 4321
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerSaveUL()V

    .line 4322
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAllAppsUL(I)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 4324
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4325
    nop

    .line 4326
    return-void

    .line 4324
    :catchall_18
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private updateRulesForScreenUL()V
    .registers 5

    .line 4069
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 4070
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 4071
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_1b

    .line 4072
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 4073
    .local v2, "uid":I
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictionRulesForUidUL(I)V

    .line 4070
    .end local v2    # "uid":I
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4076
    .end local v1    # "i":I
    :cond_1e
    return-void
.end method

.method private updateRulesForTempWhitelistChangeUL(I)V
    .registers 7
    .param p1, "appId"    # I

    .line 4400
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 4401
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 4402
    .local v1, "numUsers":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_28

    .line 4403
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 4404
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v4, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 4406
    .local v4, "uid":I
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 4407
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 4408
    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 4410
    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 4402
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    .end local v4    # "uid":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 4412
    .end local v2    # "i":I
    :cond_28
    return-void
.end method

.method private updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V
    .registers 8
    .param p1, "uidRules"    # Landroid/util/SparseIntArray;
    .param p2, "whitelistedAppIds"    # Landroid/util/SparseBooleanArray;
    .param p3, "userId"    # I

    .line 4167
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_1c

    .line 4168
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 4169
    invoke-virtual {p2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 4170
    .local v2, "appId":I
    invoke-static {p3, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 4171
    .local v3, "uid":I
    invoke-virtual {p1, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 4167
    .end local v2    # "appId":I
    .end local v3    # "uid":I
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 4174
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method private updateRulesForWhitelistedPowerSaveUL(IZI)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "enabled"    # Z
    .param p3, "chain"    # I

    .line 4194
    if-eqz p2, :cond_1d

    .line 4195
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_8

    move v2, v1

    goto :goto_9

    :cond_8
    move v2, v0

    :goto_9
    invoke-direct {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->isWhitelistedBatterySaverUL(IZ)Z

    move-result v2

    .line 4197
    .local v2, "isWhitelisted":Z
    if-nez v2, :cond_1a

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_1a

    .line 4200
    :cond_16
    invoke-direct {p0, p3, p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .end local v2    # "isWhitelisted":Z
    goto :goto_1d

    .line 4198
    .restart local v2    # "isWhitelisted":Z
    :cond_1a
    :goto_1a
    invoke-direct {p0, p3, p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    .line 4203
    .end local v2    # "isWhitelisted":Z
    :cond_1d
    :goto_1d
    return-void
.end method

.method private updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    .registers 11
    .param p1, "enabled"    # Z
    .param p2, "chain"    # I
    .param p3, "rules"    # Landroid/util/SparseIntArray;

    .line 4139
    if-eqz p1, :cond_5a

    .line 4142
    move-object v0, p3

    .line 4143
    .local v0, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 4144
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 4145
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "ui":I
    :goto_12
    if-ltz v2, :cond_35

    .line 4146
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 4147
    .local v4, "user":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 4148
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 4149
    const/4 v5, 0x3

    if-ne p2, v5, :cond_32

    .line 4150
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedAppIds(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;I)V

    .line 4145
    .end local v4    # "user":Landroid/content/pm/UserInfo;
    :cond_32
    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    .line 4154
    .end local v2    # "ui":I
    :cond_35
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_3c
    if-ltz v2, :cond_56

    .line 4155
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 4156
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 4154
    :cond_53
    add-int/lit8 v2, v2, -0x1

    goto :goto_3c

    .line 4159
    .end local v2    # "i":I
    :cond_56
    invoke-direct {p0, p2, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    .line 4160
    .end local v0    # "uidRules":Landroid/util/SparseIntArray;
    .end local v1    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_5f

    .line 4161
    :cond_5a
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p2, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V

    .line 4163
    :goto_5f
    return-void
.end method

.method private updateScreenOn()V
    .registers 4

    .line 4049
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceMode:Z

    if-eqz v0, :cond_31

    .line 4050
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceMode:Z

    .line 4053
    const-string v1, "NetworkPolicy"

    const-string/jumbo v2, "setDeviceIdleMode stop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4054
    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstFGRestrictDebug:Z

    .line 4055
    const-string v0, "NetworkPolicy"

    const-string v1, "Update mAllowFGNetworkAccess to true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4056
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAllowFGNetworkAccess:Z

    .line 4058
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_26

    .line 4059
    sget-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    sget-object v1, Lcom/android/server/net/NetworkPolicyManagerService;->mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4061
    :cond_26
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4062
    :try_start_29
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForScreenUL()V

    .line 4063
    monitor-exit v0

    goto :goto_31

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_2e

    throw v1

    .line 4065
    :cond_31
    :goto_31
    return-void
.end method

.method private updateUidStateUL(II)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "uidState"    # I

    .line 3977
    const-string/jumbo v0, "updateUidStateUL"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3979
    :try_start_9
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v3, 0x12

    invoke-virtual {v0, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 3980
    .local v0, "oldUidState":I
    if-eq v0, p2, :cond_40

    .line 3982
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 3983
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRestrictBackgroundRulesOnUidStatusChangedUL(III)V

    .line 3984
    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v3

    .line 3985
    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v4

    if-eq v3, v4, :cond_39

    .line 3986
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 3987
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v3, :cond_2f

    .line 3988
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForDeviceIdleUL(I)V

    .line 3990
    :cond_2f
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    if-eqz v3, :cond_36

    .line 3991
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForRestrictPowerUL(I)V

    .line 3993
    :cond_36
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(I)V

    .line 3995
    :cond_39
    invoke-direct {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidStateForeground(I)Z

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkStats(IZ)V
    :try_end_40
    .catchall {:try_start_9 .. :try_end_40} :catchall_45

    .line 3998
    .end local v0    # "oldUidState":I
    :cond_40
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3999
    nop

    .line 4000
    return-void

    .line 3998
    :catchall_45
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private upgradeDefaultBackgroundDataUL()V
    .registers 4

    .line 2650
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    .line 2651
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_restrict_background_data"

    .line 2650
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLoadedRestrictBackground:Z

    .line 2661
    return-void
.end method

.method private upgradeWifiMeteredOverrideAL()V
    .registers 12

    .line 2668
    const/4 v0, 0x0

    .line 2669
    .local v0, "modified":Z
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 2670
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 2671
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_84

    .line 2672
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    .line 2673
    .local v4, "policy":Landroid/net/NetworkPolicy;
    iget-object v5, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_81

    iget-boolean v5, v4, Landroid/net/NetworkPolicy;->inferred:Z

    if-nez v5, :cond_81

    .line 2675
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 2676
    const/4 v0, 0x1

    .line 2678
    iget-object v5, v4, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v5}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2679
    .local v5, "networkId":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_41
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_80

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 2680
    .local v7, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v7}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7f

    .line 2681
    const-string v8, "NetworkPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found network "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "; upgrading metered hint"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    iget-boolean v8, v4, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v8, :cond_79

    .line 2683
    nop

    .line 2684
    const/4 v8, 0x1

    goto :goto_7a

    :cond_79
    const/4 v8, 0x2

    :goto_7a
    iput v8, v7, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 2685
    invoke-virtual {v1, v7}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 2687
    .end local v7    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_7f
    goto :goto_41

    .line 2688
    .end local v5    # "networkId":Ljava/lang/String;
    :cond_80
    goto :goto_83

    .line 2689
    :cond_81
    add-int/lit8 v3, v3, 0x1

    .line 2691
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    :goto_83
    goto :goto_10

    .line 2692
    .end local v3    # "i":I
    :cond_84
    if-eqz v0, :cond_89

    .line 2693
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2695
    :cond_89
    return-void
.end method

.method private waitForAdminData()V
    .registers 5

    .line 5639
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.device_admin"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 5640
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAdminDataAvailableLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x2710

    const-string v3, "Wait for admin data"

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/util/ConcurrentUtils;->waitForCountDownNoInterrupt(Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;)V

    .line 5643
    :cond_17
    return-void
.end method


# virtual methods
.method addDefaultRestrictBackgroundWhitelistUidsUL()Z
    .registers 8

    .line 825
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 826
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 828
    .local v1, "numberUsers":I
    const/4 v2, 0x0

    .line 829
    .local v2, "changed":Z
    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "changed":Z
    :goto_e
    if-ge v2, v1, :cond_28

    .line 830
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 831
    .local v5, "user":Landroid/content/pm/UserInfo;
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->addDefaultRestrictBackgroundWhitelistUidsUL(I)Z

    move-result v6

    if-nez v6, :cond_23

    if-eqz v4, :cond_21

    goto :goto_23

    :cond_21
    move v6, v3

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v6, 0x1

    :goto_24
    move v4, v6

    .line 829
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 833
    .end local v2    # "i":I
    :cond_28
    return v4
.end method

.method public addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/MessageQueue$IdleHandler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5334
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 5335
    return-void
.end method

.method addNetworkPolicyAL(Landroid/net/NetworkPolicy;)V
    .registers 4
    .param p1, "policy"    # Landroid/net/NetworkPolicy;

    .line 3066
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 3067
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    const-class v1, Landroid/net/NetworkPolicy;

    invoke-static {v1, v0, p1}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 3068
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 3069
    return-void
.end method

.method public addUidPolicy(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 2834
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2836
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2840
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2841
    :try_start_12
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2842
    .local v1, "oldPolicy":I
    or-int/2addr p2, v1

    .line 2843
    if-eq v1, p2, :cond_25

    .line 2844
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    .line 2845
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V

    .line 2847
    .end local v1    # "oldPolicy":I
    :cond_25
    monitor-exit v0

    .line 2848
    return-void

    .line 2847
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_12 .. :try_end_29} :catchall_27

    throw v1

    .line 2837
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    .registers 3
    .param p1, "connManager"    # Landroid/net/IConnectivityManager;

    .line 795
    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    .line 796
    return-void
.end method

.method public buildDefaultMobilePolicy(ILjava/lang/String;)Landroid/net/NetworkPolicy;
    .registers 20
    .param p1, "subId"    # I
    .param p2, "subscriberId"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p0

    .line 2360
    invoke-static/range {p2 .. p2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v15

    .line 2362
    .local v15, "template":Landroid/net/NetworkTemplate;
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/NetworkPolicy;->buildRule(ILjava/time/ZoneId;)Landroid/util/RecurrenceRule;

    move-result-object v16

    .line 2363
    .local v16, "cycleRule":Landroid/util/RecurrenceRule;
    new-instance v0, Landroid/net/NetworkPolicy;

    .line 2364
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide v5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object v2, v0

    move-object v3, v15

    move-object/from16 v4, v16

    invoke-direct/range {v2 .. v14}, Landroid/net/NetworkPolicy;-><init>(Landroid/net/NetworkTemplate;Landroid/util/RecurrenceRule;JJJJZZ)V

    .line 2366
    .local v2, "policy":Landroid/net/NetworkPolicy;
    iget-object v3, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2367
    :try_start_30
    iget-object v4, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3e

    .line 2368
    move/from16 v5, p1

    :try_start_35
    invoke-direct {v1, v5, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateDefaultMobilePolicyAL(ILandroid/net/NetworkPolicy;)Z

    .line 2369
    monitor-exit v4
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_3b

    .line 2370
    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_43

    .line 2371
    return-object v2

    .line 2369
    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit v4
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    :try_start_3d
    throw v0

    .line 2370
    :catchall_3e
    move-exception v0

    move/from16 v5, p1

    :goto_41
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_43

    throw v0

    :catchall_43
    move-exception v0

    goto :goto_41
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3739
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkPolicy"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 3741
    :cond_b
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 3743
    .local v0, "fout":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, p3

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 3744
    .local v1, "argSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v2, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_1b
    if-ge v4, v2, :cond_25

    aget-object v5, p3, v4

    .line 3745
    .local v5, "arg":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3744
    .end local v5    # "arg":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 3748
    :cond_25
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3749
    :try_start_28
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_379

    .line 3750
    :try_start_2b
    const-string v5, "--unsnooze"

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 3751
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    .line 3751
    .local v3, "i":I
    :goto_3b
    if-ltz v3, :cond_4b

    .line 3752
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkPolicy;

    invoke-virtual {v6}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 3751
    add-int/lit8 v3, v3, -0x1

    goto :goto_3b

    .line 3755
    .end local v3    # "i":I
    :cond_4b
    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 3757
    const-string v3, "Cleared snooze timestamps"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3758
    monitor-exit v4
    :try_end_54
    .catchall {:try_start_2b .. :try_end_54} :catchall_376

    :try_start_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_379

    return-void

    .line 3763
    :cond_56
    :try_start_56
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->dynamicallyConfigNetworkPolicyManagerServiceLogTag(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 3764
    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_376

    :try_start_5d
    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_379

    return-void

    .line 3768
    :cond_5f
    :try_start_5f
    const-string v5, "System ready: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3769
    const-string v5, "Restrict background: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3770
    const-string v5, "Restrict power: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3771
    const-string v5, "Device idle: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 3772
    const-string v5, "Metered ifaces: "

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3774
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3775
    const-string v5, "Network policies:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3776
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3777
    move v5, v3

    .line 3777
    .local v5, "i":I
    :goto_a1
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_bb

    .line 3778
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkPolicy;

    invoke-virtual {v6}, Landroid/net/NetworkPolicy;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3777
    add-int/lit8 v5, v5, 0x1

    goto :goto_a1

    .line 3780
    .end local v5    # "i":I
    :cond_bb
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3782
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3783
    const-string v5, "Subscription plans:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3784
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3785
    move v5, v3

    .line 3785
    .restart local v5    # "i":I
    :goto_ca
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_114

    .line 3786
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 3787
    .local v6, "subId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Subscriber ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3788
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3789
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/telephony/SubscriptionPlan;

    .line 3790
    .local v7, "plans":[Landroid/telephony/SubscriptionPlan;
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10e

    .line 3791
    array-length v8, v7

    move v9, v3

    :goto_104
    if-ge v9, v8, :cond_10e

    aget-object v10, v7, v9

    .line 3792
    .local v10, "plan":Landroid/telephony/SubscriptionPlan;
    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3791
    .end local v10    # "plan":Landroid/telephony/SubscriptionPlan;
    add-int/lit8 v9, v9, 0x1

    goto :goto_104

    .line 3795
    :cond_10e
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3785
    .end local v6    # "subId":I
    .end local v7    # "plans":[Landroid/telephony/SubscriptionPlan;
    add-int/lit8 v5, v5, 0x1

    goto :goto_ca

    .line 3797
    .end local v5    # "i":I
    :cond_114
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3799
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3800
    const-string v5, "Active subscriptions:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3801
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3802
    move v5, v3

    .line 3802
    .restart local v5    # "i":I
    :goto_123
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_157

    .line 3803
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 3804
    .restart local v6    # "subId":I
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3806
    .local v7, "subscriberId":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Landroid/net/NetworkIdentity;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3802
    .end local v6    # "subId":I
    .end local v7    # "subscriberId":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_123

    .line 3808
    .end local v5    # "i":I
    :cond_157
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3810
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3811
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Merged subscriptions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:[Ljava/lang/String;

    .line 3812
    invoke-static {v6}, Landroid/net/NetworkIdentity;->scrubSubscriberId([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3811
    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3814
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3815
    const-string v5, "Policy for UIDs:"

    invoke-virtual {v0, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3816
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3817
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    .line 3818
    .local v5, "size":I
    move v6, v3

    .line 3818
    .local v6, "i":I
    :goto_18d
    if-ge v6, v5, :cond_1b5

    .line 3819
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 3820
    .local v7, "uid":I
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 3821
    .local v8, "policy":I
    const-string v9, "UID="

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3822
    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3823
    const-string v9, " policy="

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3824
    invoke-static {v8}, Landroid/net/NetworkPolicyManager;->uidPoliciesToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3825
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3818
    .end local v7    # "uid":I
    .end local v8    # "policy":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_18d

    .line 3827
    .end local v6    # "i":I
    :cond_1b5
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3829
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3830
    if-lez v5, :cond_1f1

    .line 3831
    const-string v6, "Power save whitelist (except idle) app ids:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3832
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3833
    move v6, v3

    .line 3833
    .restart local v6    # "i":I
    :goto_1ca
    if-ge v6, v5, :cond_1ee

    .line 3834
    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3835
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3836
    const-string v7, ": "

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3837
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3838
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3833
    add-int/lit8 v6, v6, 0x1

    goto :goto_1ca

    .line 3840
    .end local v6    # "i":I
    :cond_1ee
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3843
    :cond_1f1
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3844
    if-lez v5, :cond_22a

    .line 3845
    const-string v6, "Power save whitelist app ids:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3846
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3847
    move v6, v3

    .line 3847
    .restart local v6    # "i":I
    :goto_203
    if-ge v6, v5, :cond_227

    .line 3848
    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3849
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3850
    const-string v7, ": "

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3851
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Z)V

    .line 3852
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3847
    add-int/lit8 v6, v6, 0x1

    goto :goto_203

    .line 3854
    .end local v6    # "i":I
    :cond_227
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3857
    :cond_22a
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3858
    if-lez v5, :cond_255

    .line 3859
    const-string v6, "Default restrict background whitelist uids:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3860
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3861
    move v6, v3

    .line 3861
    .restart local v6    # "i":I
    :goto_23c
    if-ge v6, v5, :cond_252

    .line 3862
    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3863
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDefaultRestrictBackgroundWhitelistUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3864
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3861
    add-int/lit8 v6, v6, 0x1

    goto :goto_23c

    .line 3866
    .end local v6    # "i":I
    :cond_252
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3869
    :cond_255
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v5, v6

    .line 3870
    if-lez v5, :cond_280

    .line 3871
    const-string v6, "Default restrict background whitelist uids revoked by users:"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3872
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3873
    move v6, v3

    .line 3873
    .restart local v6    # "i":I
    :goto_267
    if-ge v6, v5, :cond_27d

    .line 3874
    const-string v7, "UID="

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3875
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3876
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3873
    add-int/lit8 v6, v6, 0x1

    goto :goto_267

    .line 3878
    .end local v6    # "i":I
    :cond_27d
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3881
    :cond_280
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 3882
    .local v6, "knownUids":Landroid/util/SparseBooleanArray;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-static {v7, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 3883
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-static {v7, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->collectKeys(Landroid/util/SparseIntArray;Landroid/util/SparseBooleanArray;)V

    .line 3885
    const-string v7, "Status for all known UIDs:"

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3886
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3887
    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    move v5, v7

    .line 3888
    move v7, v3

    .line 3888
    .local v7, "i":I
    :goto_29d
    if-ge v7, v5, :cond_2e7

    .line 3889
    invoke-virtual {v6, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v8

    .line 3890
    .local v8, "uid":I
    const-string v9, "UID="

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3891
    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3893
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v10, 0x12

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 3894
    .local v9, "state":I
    const-string v10, " state="

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3895
    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3896
    const/4 v10, 0x2

    if-gt v9, v10, :cond_2c4

    .line 3897
    const-string v10, " (fg)"

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2cf

    .line 3899
    :cond_2c4
    const/4 v10, 0x4

    if-gt v9, v10, :cond_2ca

    .line 3900
    const-string v10, " (fg svc)"

    goto :goto_2cc

    :cond_2ca
    const-string v10, " (bg)"

    .line 3899
    :goto_2cc
    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3903
    :goto_2cf
    iget-object v10, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v8, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v10

    .line 3904
    .local v10, "uidRules":I
    const-string v11, " rules="

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3905
    invoke-static {v10}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3906
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3888
    .end local v8    # "uid":I
    .end local v9    # "state":I
    .end local v10    # "uidRules":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_29d

    .line 3908
    .end local v7    # "i":I
    :cond_2e7
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3910
    const-string v7, "Status for just UIDs with rules:"

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3911
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3912
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    move v5, v7

    .line 3913
    move v7, v3

    .line 3913
    .restart local v7    # "i":I
    :goto_2fa
    if-ge v7, v5, :cond_322

    .line 3914
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 3915
    .restart local v8    # "uid":I
    const-string v9, "UID="

    invoke-virtual {v0, v9}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3916
    invoke-virtual {v0, v8}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 3917
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v9

    .line 3918
    .local v9, "uidRules":I
    const-string v10, " rules="

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3919
    invoke-static {v9}, Landroid/net/NetworkPolicyManager;->uidRulesToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3920
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3913
    .end local v8    # "uid":I
    .end local v9    # "uidRules":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_2fa

    .line 3922
    .end local v7    # "i":I
    :cond_322
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3924
    const-string v7, "Admin restricted uids for metered data:"

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3925
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3926
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    move v5, v7

    .line 3927
    nop

    .line 3927
    .restart local v3    # "i":I
    :goto_335
    if-ge v3, v5, :cond_363

    .line 3928
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "u"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3929
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredRestrictedUids:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3927
    add-int/lit8 v3, v3, 0x1

    goto :goto_335

    .line 3931
    .end local v3    # "i":I
    :cond_363
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 3933
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 3934
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v3, v0}, Lcom/android/internal/util/StatLogger;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3936
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, v0}, Lcom/android/server/net/NetworkPolicyLogger;->dumpLogs(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 3937
    .end local v5    # "size":I
    .end local v6    # "knownUids":Landroid/util/SparseBooleanArray;
    monitor-exit v4
    :try_end_374
    .catchall {:try_start_5f .. :try_end_374} :catchall_376

    .line 3938
    :try_start_374
    monitor-exit v2
    :try_end_375
    .catchall {:try_start_374 .. :try_end_375} :catchall_379

    .line 3939
    return-void

    .line 3937
    :catchall_376
    move-exception v3

    :try_start_377
    monitor-exit v4
    :try_end_378
    .catchall {:try_start_377 .. :try_end_378} :catchall_376

    :try_start_378
    throw v3

    .line 3938
    :catchall_379
    move-exception v3

    monitor-exit v2
    :try_end_37b
    .catchall {:try_start_378 .. :try_end_37b} :catchall_379

    throw v3
.end method

.method protected dynamicallyConfigNetworkPolicyManagerServiceLogTag(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3653
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_8f

    .line 3654
    aget-object v0, p3, v1

    .line 3655
    .local v0, "cmd":Ljava/lang/String;
    const-string/jumbo v3, "log"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 3657
    return v1

    .line 3659
    :cond_11
    array-length v3, p3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1e

    .line 3661
    const-string v1, "Invalid argument! Get detail help as bellow:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3662
    invoke-virtual {p0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->logOutNetworkPolicyManagerServiceLogTagHelp(Ljava/io/PrintWriter;)V

    .line 3663
    return v2

    .line 3666
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_1e
    nop

    .line 3670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dynamicallyConfigNetworkPolicyManagerServiceLogTag, args.length:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3671
    nop

    .line 3671
    .local v1, "index":I
    :goto_35
    move v0, v1

    .line 3671
    .end local v1    # "index":I
    .local v0, "index":I
    array-length v1, p3

    if-ge v0, v1, :cond_5a

    .line 3672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dynamicallyConfigNetworkPolicyManagerServiceLogTag, args["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3671
    add-int/lit8 v1, v0, 0x1

    .line 3671
    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_35

    .line 3676
    .end local v1    # "index":I
    :cond_5a
    aget-object v0, p3, v2

    .line 3677
    .local v0, "logCategoryTag":Ljava/lang/String;
    const-string v1, "1"

    const/4 v3, 0x2

    aget-object v3, p3, v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3678
    .local v1, "on":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dynamicallyConfigNetworkPolicyManagerServiceLogTag, logCategoryTag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", on:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3681
    const-string/jumbo v3, "netpolicy"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 3682
    sput-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    .line 3683
    sput-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    .line 3685
    :cond_8e
    return v2

    .line 3667
    .end local v0    # "logCategoryTag":Ljava/lang/String;
    .end local v1    # "on":Z
    :cond_8f
    return v1
.end method

.method public factoryReset(Ljava/lang/String;)V
    .registers 10
    .param p1, "subscriber"    # Ljava/lang/String;

    .line 5375
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5377
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v1, "no_network_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5378
    return-void

    .line 5382
    :cond_15
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 5383
    .local v0, "policies":[Landroid/net/NetworkPolicy;
    invoke-static {p1}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 5384
    .local v1, "template":Landroid/net/NetworkTemplate;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_26
    if-ge v4, v2, :cond_3e

    aget-object v5, v0, v4

    .line 5385
    .local v5, "policy":Landroid/net/NetworkPolicy;
    iget-object v6, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v6, v1}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 5386
    const-wide/16 v6, -0x1

    iput-wide v6, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 5387
    iput-boolean v3, v5, Landroid/net/NetworkPolicy;->inferred:Z

    .line 5388
    invoke-virtual {v5}, Landroid/net/NetworkPolicy;->clearSnooze()V

    .line 5384
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 5391
    :cond_3e
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 5394
    invoke-virtual {p0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 5396
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v4, "no_control_apps"

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 5398
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_56
    if-ge v5, v4, :cond_60

    aget v6, v2, v5

    .line 5399
    .local v6, "uid":I
    invoke-virtual {p0, v6, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    .line 5398
    .end local v6    # "uid":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    .line 5402
    :cond_60
    return-void
.end method

.method public getCycleDayFromCarrierConfig(Landroid/os/PersistableBundle;I)I
    .registers 8
    .param p1, "config"    # Landroid/os/PersistableBundle;
    .param p2, "fallbackCycleDay"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1837
    if-nez p1, :cond_3

    .line 1838
    return p2

    .line 1840
    :cond_3
    const-string/jumbo v0, "monthly_data_cycle_day_int"

    .line 1841
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1842
    .local v0, "cycleDay":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 1843
    return p2

    .line 1846
    :cond_e
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1847
    .local v1, "cal":Ljava/util/Calendar;
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v3

    if-lt v0, v3, :cond_21

    .line 1848
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v2

    if-le v0, v2, :cond_20

    goto :goto_21

    .line 1853
    :cond_20
    return v0

    .line 1849
    :cond_21
    :goto_21
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid date in CarrierConfigManager.KEY_MONTHLY_DATA_CYCLE_DAY_INT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    return p2
.end method

.method public getLimitBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J
    .registers 9
    .param p1, "config"    # Landroid/os/PersistableBundle;
    .param p2, "fallbackLimitBytes"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1902
    if-nez p1, :cond_3

    .line 1903
    return-wide p2

    .line 1905
    :cond_3
    const-string v0, "data_limit_threshold_bytes_long"

    .line 1906
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1908
    .local v0, "limitBytes":J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_12

    .line 1909
    return-wide v3

    .line 1910
    :cond_12
    cmp-long v2, v0, v3

    if-nez v2, :cond_1b

    .line 1911
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultLimitBytes()J

    move-result-wide v2

    return-wide v2

    .line 1912
    :cond_1b
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_38

    .line 1913
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value in CarrierConfigManager.KEY_DATA_LIMIT_THRESHOLD_BYTES_LONG; expected a non-negative value but got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    return-wide p2

    .line 1918
    :cond_38
    return-wide v0
.end method

.method public getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;
    .registers 7
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 3073
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3075
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const-string v3, "NetworkPolicy"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_13} :catch_14

    .line 3085
    goto :goto_2f

    .line 3078
    :catch_14
    move-exception v1

    .line 3079
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3081
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2f

    .line 3083
    new-array v0, v0, [Landroid/net/NetworkPolicy;

    return-object v0

    .line 3087
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_2f
    :goto_2f
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3088
    :try_start_32
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 3089
    .local v2, "size":I
    new-array v3, v2, [Landroid/net/NetworkPolicy;

    .line 3090
    .local v3, "policies":[Landroid/net/NetworkPolicy;
    nop

    .local v0, "i":I
    :goto_3b
    if-ge v0, v2, :cond_4a

    .line 3091
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    aput-object v4, v3, v0

    .line 3090
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 3093
    .end local v0    # "i":I
    :cond_4a
    monitor-exit v1

    return-object v3

    .line 3094
    .end local v2    # "size":I
    .end local v3    # "policies":[Landroid/net/NetworkPolicy;
    :catchall_4c
    move-exception v0

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_32 .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method public getNetworkQuotaInfo(Landroid/net/NetworkState;)Landroid/net/NetworkQuotaInfo;
    .registers 5
    .param p1, "state"    # Landroid/net/NetworkState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3380
    const-string v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shame on UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " for calling the hidden API getNetworkQuotaInfo(). Shame!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3382
    new-instance v0, Landroid/net/NetworkQuotaInfo;

    invoke-direct {v0}, Landroid/net/NetworkQuotaInfo;-><init>()V

    return-object v0
.end method

.method public getRestrictBackground()Z
    .registers 4

    .line 3268
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3270
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3271
    :try_start_c
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    monitor-exit v0

    return v1

    .line 3272
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v1
.end method

.method public getRestrictBackgroundByCaller()I
    .registers 9

    .line 3241
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3242
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3244
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3246
    :try_start_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_3c

    .line 3249
    .local v2, "token":J
    :try_start_14
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v4
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_37

    .line 3251
    .local v4, "policy":I
    :try_start_18
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3252
    nop

    .line 3251
    nop

    .line 3253
    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ne v4, v6, :cond_23

    .line 3255
    monitor-exit v1

    return v5

    .line 3257
    :cond_23
    iget-boolean v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v7, :cond_29

    .line 3258
    monitor-exit v1

    return v6

    .line 3260
    :cond_29
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_35

    .line 3261
    const/4 v5, 0x2

    nop

    .line 3262
    :cond_35
    monitor-exit v1

    .line 3260
    return v5

    .line 3251
    .end local v4    # "policy":I
    :catchall_37
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3263
    .end local v2    # "token":J
    :catchall_3c
    move-exception v2

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_18 .. :try_end_3e} :catchall_3c

    throw v2
.end method

.method public getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;
    .registers 20
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 3444
    move-object/from16 v3, p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 3446
    const-string v0, "fw.fake_plan"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3447
    .local v4, "fake":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d4

    .line 3448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3449
    .local v0, "plans":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionPlan;>;"
    const-string/jumbo v5, "month_hard"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide v6, 0x7fffffffffffffffL

    const-wide/32 v8, 0x40000000

    const-wide v10, 0x140000000L

    if-eqz v5, :cond_d0

    .line 3450
    const-string v5, "2007-03-14T00:00:00.000Z"

    .line 3451
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v12, "G-Mobile"

    .line 3452
    invoke-virtual {v5, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3453
    const/4 v12, 0x1

    invoke-virtual {v5, v10, v11, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3456
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v13

    const-wide/16 v14, 0x24

    invoke-virtual {v13, v14, v15}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v13

    invoke-virtual {v13}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v13

    invoke-virtual {v13}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    .line 3455
    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3457
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3450
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3458
    const-string v5, "2017-03-14T00:00:00.000Z"

    .line 3459
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v8, "G-Mobile Happy"

    .line 3460
    invoke-virtual {v5, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3461
    invoke-virtual {v5, v6, v7, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3464
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 3463
    const-wide v8, 0x140000000L

    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3465
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3458
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3466
    const-string v5, "2017-03-14T00:00:00.000Z"

    .line 3467
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile, Charged after limit"

    .line 3468
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3469
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v12}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3472
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v14, v15}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3471
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3473
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3466
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3c7

    .line 3474
    :cond_d0
    const-string/jumbo v5, "month_soft"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v10, 0x0

    const-wide/16 v11, 0x1

    const/4 v13, 0x2

    if-eqz v5, :cond_181

    .line 3475
    const-string v5, "2007-03-14T00:00:00.000Z"

    .line 3476
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile is the carriers name who this plan belongs to"

    .line 3477
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "Crazy unlimited bandwidth plan with incredibly long title that should be cut off to prevent UI from looking terrible"

    .line 3478
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3480
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3483
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 3482
    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3484
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3475
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3485
    const-string v5, "2017-03-14T00:00:00.000Z"

    .line 3486
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile, Throttled after limit"

    .line 3487
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3488
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3491
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3490
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3492
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3485
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3493
    const-string v5, "2017-03-14T00:00:00.000Z"

    .line 3494
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile, No data connection after limit"

    .line 3495
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3496
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3499
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3498
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3500
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3493
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3c7

    .line 3502
    :cond_181
    const-string/jumbo v5, "month_over"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22d

    .line 3503
    const-string v5, "2007-03-14T00:00:00.000Z"

    .line 3504
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile is the carriers name who this plan belongs to"

    .line 3505
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3506
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide v6, 0x180000000L

    .line 3509
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3508
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3510
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3503
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3511
    const-string v5, "2017-03-14T00:00:00.000Z"

    .line 3512
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile, Throttled after limit"

    .line 3513
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3514
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v13}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3517
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3516
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3518
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3511
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3519
    const-string v5, "2017-03-14T00:00:00.000Z"

    .line 3520
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile, No data connection after limit"

    .line 3521
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3522
    const-wide v6, 0x140000000L

    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3525
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3524
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3526
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3519
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3c7

    .line 3528
    :cond_22d
    const-string/jumbo v5, "month_none"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24f

    .line 3529
    const-string v5, "2007-03-14T00:00:00.000Z"

    .line 3530
    invoke-static {v5}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/SubscriptionPlan$Builder;->createRecurringMonthly(Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile"

    .line 3531
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3532
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3529
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3c7

    .line 3533
    :cond_24f
    const-string/jumbo v5, "prepaid"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/32 v6, 0x20000000

    const-wide/16 v11, 0x3

    const-wide/16 v8, 0xa

    const-wide/16 v13, 0x14

    if-eqz v5, :cond_2a0

    .line 3534
    nop

    .line 3535
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3536
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    .line 3535
    invoke-static {v5, v8}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v8, "G-Mobile"

    .line 3537
    invoke-virtual {v5, v8}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3538
    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3541
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 3540
    const-wide/32 v8, 0x6400000

    invoke-virtual {v5, v8, v9, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3542
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3534
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3c7

    .line 3543
    :cond_2a0
    const-string/jumbo v5, "prepaid_crazy"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37b

    .line 3544
    nop

    .line 3545
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3546
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v15

    .line 3545
    invoke-static {v5, v15}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v15, "G-Mobile Anytime"

    .line 3547
    invoke-virtual {v5, v15}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3548
    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3551
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v6

    .line 3550
    const-wide/32 v10, 0x6400000

    invoke-virtual {v5, v10, v11, v6, v7}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3552
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3544
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3553
    nop

    .line 3554
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3555
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    .line 3554
    invoke-static {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile Nickel Nights"

    .line 3556
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "5\u00a2/GB between 1-5AM"

    .line 3557
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3558
    const-wide v6, 0x140000000L

    const/4 v10, 0x2

    invoke-virtual {v5, v6, v7, v10}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide/32 v6, 0xf00000

    .line 3561
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v10

    const-wide/16 v11, 0x1e

    invoke-virtual {v10, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v10

    invoke-virtual {v10}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    .line 3560
    invoke-virtual {v5, v6, v7, v10, v11}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3562
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3553
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3563
    nop

    .line 3564
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3565
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    .line 3564
    invoke-static {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile Bonus 3G"

    .line 3566
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "Unlimited 3G data"

    .line 3567
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setSummary(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3568
    const/4 v6, 0x2

    const-wide/32 v7, 0x40000000

    invoke-virtual {v5, v7, v8, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide/32 v6, 0x12c00000

    .line 3571
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    const-wide/16 v9, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3570
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3572
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3563
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3c7

    .line 3573
    :cond_37b
    const-string/jumbo v5, "unlimited"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c7

    .line 3574
    nop

    .line 3575
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/time/ZonedDateTime;->minusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v5

    .line 3576
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/time/ZonedDateTime;->plusDays(J)Ljava/time/ZonedDateTime;

    move-result-object v6

    .line 3575
    invoke-static {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->createNonrecurring(Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-string v6, "G-Mobile Awesome"

    .line 3577
    invoke-virtual {v5, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3578
    const/4 v6, 0x2

    const-wide v7, 0x7fffffffffffffffL

    invoke-virtual {v5, v7, v8, v6}, Landroid/telephony/SubscriptionPlan$Builder;->setDataLimit(JI)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    const-wide/32 v6, 0x3200000

    .line 3581
    invoke-static {}, Ljava/time/ZonedDateTime;->now()Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Ljava/time/ZonedDateTime;->minusHours(J)Ljava/time/ZonedDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v8

    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    .line 3580
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/telephony/SubscriptionPlan$Builder;->setDataUsage(JJ)Landroid/telephony/SubscriptionPlan$Builder;

    move-result-object v5

    .line 3582
    invoke-virtual {v5}, Landroid/telephony/SubscriptionPlan$Builder;->build()Landroid/telephony/SubscriptionPlan;

    move-result-object v5

    .line 3574
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3584
    :cond_3c7
    :goto_3c7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Landroid/telephony/SubscriptionPlan;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/telephony/SubscriptionPlan;

    return-object v5

    .line 3587
    .end local v0    # "plans":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionPlan;>;"
    :cond_3d4
    iget-object v5, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3591
    :try_start_3d7
    iget-object v0, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3592
    .local v0, "ownerPackage":Ljava/lang/String;
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_40f

    .line 3593
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v6

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_3ee

    goto :goto_40f

    .line 3596
    :cond_3ee
    const-string v6, "NetworkPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not returning plans because caller "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " doesn\'t match owner "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3598
    const/4 v6, 0x0

    monitor-exit v5

    return-object v6

    .line 3594
    :cond_40f
    :goto_40f
    iget-object v6, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/telephony/SubscriptionPlan;

    monitor-exit v5

    return-object v6

    .line 3600
    .end local v0    # "ownerPackage":Ljava/lang/String;
    :catchall_419
    move-exception v0

    monitor-exit v5
    :try_end_41b
    .catchall {:try_start_3d7 .. :try_end_41b} :catchall_419

    throw v0
.end method

.method public getSubscriptionPlansOwner(I)Ljava/lang/String;
    .registers 4
    .param p1, "subId"    # I

    .line 3699
    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_18

    .line 3703
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3704
    :try_start_b
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 3705
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_15

    throw v1

    .line 3700
    :cond_18
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0}, Ljava/lang/SecurityException;-><init>()V

    throw v0
.end method

.method public getUidPolicy(I)I
    .registers 5
    .param p1, "uid"    # I

    .line 2936
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2938
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2939
    :try_start_c
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 2940
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_15

    throw v1
.end method

.method public getUidsWithPolicy(I)[I
    .registers 8
    .param p1, "policy"    # I

    .line 2945
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2947
    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 2948
    .local v1, "uids":[I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2949
    nop

    .local v0, "i":I
    :goto_10
    :try_start_10
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_34

    .line 2950
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 2951
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 2952
    .local v4, "uidPolicy":I
    if-nez p1, :cond_28

    if-eqz v4, :cond_2c

    :cond_28
    and-int v5, v4, p1

    if-eqz v5, :cond_31

    .line 2954
    :cond_2c
    invoke-static {v1, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    move-object v1, v5

    .line 2949
    .end local v3    # "uid":I
    .end local v4    # "uidPolicy":I
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 2957
    .end local v0    # "i":I
    :cond_34
    monitor-exit v2

    .line 2958
    return-object v1

    .line 2957
    :catchall_36
    move-exception v0

    monitor-exit v2
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public getWarningBytesFromCarrierConfig(Landroid/os/PersistableBundle;J)J
    .registers 9
    .param p1, "config"    # Landroid/os/PersistableBundle;
    .param p2, "fallbackWarningBytes"    # J
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1869
    if-nez p1, :cond_3

    .line 1870
    return-wide p2

    .line 1872
    :cond_3
    const-string v0, "data_warning_threshold_bytes_long"

    .line 1873
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1875
    .local v0, "warningBytes":J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    const-wide/16 v3, -0x1

    if-nez v2, :cond_12

    .line 1876
    return-wide v3

    .line 1877
    :cond_12
    cmp-long v2, v0, v3

    if-nez v2, :cond_1b

    .line 1878
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getPlatformDefaultWarningBytes()J

    move-result-wide v2

    return-wide v2

    .line 1879
    :cond_1b
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_38

    .line 1880
    const-string v2, "NetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value in CarrierConfigManager.KEY_DATA_WARNING_THRESHOLD_BYTES_LONG; expected a non-negative value but got: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    return-wide p2

    .line 1886
    :cond_38
    return-wide v0
.end method

.method handleNetworkPoliciesUpdateAL(Z)V
    .registers 2
    .param p1, "shouldNormalizePolicies"    # Z

    .line 1965
    if-eqz p1, :cond_5

    .line 1966
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL()V

    .line 1968
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    .line 1969
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkRulesNL()V

    .line 1970
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V

    .line 1971
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 1972
    return-void
.end method

.method handleUidChanged(IIJ)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J

    .line 5017
    const-string/jumbo v0, "onUidStateChanged"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5019
    :try_start_9
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_22

    .line 5022
    :try_start_c
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/net/NetworkPolicyLogger;->uidStateChanged(IIJ)V

    .line 5024
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateUidStateUL(II)V

    .line 5026
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, p1, p3, p4}, Landroid/app/ActivityManagerInternal;->notifyNetworkPolicyRulesUpdated(IJ)V

    .line 5027
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_1f

    .line 5029
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 5030
    nop

    .line 5031
    return-void

    .line 5027
    :catchall_1f
    move-exception v3

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    :try_start_21
    throw v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_22

    .line 5029
    :catchall_22
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method handleUidGone(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 5034
    const-string/jumbo v0, "onUidGone"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5036
    :try_start_9
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_18

    .line 5037
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUidStateUL(I)V

    .line 5038
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_15

    .line 5040
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 5041
    nop

    .line 5042
    return-void

    .line 5038
    :catchall_15
    move-exception v3

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    throw v3
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    .line 5040
    :catchall_18
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public initOnlineConfig()V
    .registers 6

    .line 725
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyConfigUpdater;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    sget-object v4, Lcom/android/server/net/NetworkPolicyManagerService;->NETWORKPOLICY_CONFIG_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 727
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 728
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 729
    return-void
.end method

.method public isUidForeground(I)Z
    .registers 5
    .param p1, "uid"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3950
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3951
    :try_start_3
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    const/16 v2, 0x12

    .line 3952
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 3951
    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidStateForeground(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3953
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public isUidNetworkingBlocked(IZ)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "isNetworkMetered"    # Z

    .line 5406
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    .line 5408
    .local v0, "startTime":J
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5409
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidNetworkingBlockedInternal(IZ)Z

    move-result v2

    .line 5411
    .local v2, "ret":Z
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 5413
    return v2
.end method

.method protected logOutNetworkPolicyManagerServiceLogTagHelp(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3642
    const-string v0, "********************** Help begin:**********************"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3643
    const-string v0, "1 All NetworkPolicyManagerService log"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3644
    const-string v0, "cmd: dumpsys power log all 0/1"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3645
    const-string v0, "2 All needed log when oem log is on"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3646
    const-string v0, "cmd: dumpsys networkpolicy log switch 0/1"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3647
    const-string v0, "----------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3648
    const-string v0, "********************** Help end.  **********************"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3649
    return-void
.end method

.method public networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;
    .registers 4

    .line 1069
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1070
    .local v0, "initCompleteSignal":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$HDTUqowtgL-W_V0Kq6psXLWC9ws;

    invoke-direct {v2, p0, v0}, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$HDTUqowtgL-W_V0Kq6psXLWC9ws;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1071
    return-object v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 3944
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;-><init>(Landroid/content/Context;Lcom/android/server/net/NetworkPolicyManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 3946
    return-void
.end method

.method public onTetheringChanged(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "tethering"    # Z

    .line 3164
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3165
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-eqz v1, :cond_28

    if-eqz p2, :cond_28

    .line 3166
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tethering on ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "); disable Data Saver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 3169
    :cond_28
    monitor-exit v0

    .line 3170
    return-void

    .line 3169
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method performSnooze(Landroid/net/NetworkTemplate;I)V
    .registers 11
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "type"    # I

    .line 3133
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 3134
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3135
    :try_start_9
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_51

    .line 3137
    :try_start_c
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkPolicy;

    .line 3138
    .local v4, "policy":Landroid/net/NetworkPolicy;
    if-eqz v4, :cond_36

    .line 3142
    const/16 v5, 0x2d

    if-eq p2, v5, :cond_2c

    packed-switch p2, :pswitch_data_54

    .line 3153
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unexpected type"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3147
    :pswitch_26
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    .line 3148
    goto :goto_2f

    .line 3144
    :pswitch_29
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    .line 3145
    goto :goto_2f

    .line 3150
    :cond_2c
    iput-wide v0, v4, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    .line 3151
    nop

    .line 3156
    :goto_2f
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 3157
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_c .. :try_end_34} :catchall_4e

    .line 3158
    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_51

    .line 3159
    return-void

    .line 3139
    .restart local v4    # "policy":Landroid/net/NetworkPolicy;
    :cond_36
    :try_start_36
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unable to find policy for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3157
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    :catchall_4e
    move-exception v4

    monitor-exit v3
    :try_end_50
    .catchall {:try_start_36 .. :try_end_50} :catchall_4e

    :try_start_50
    throw v4

    .line 3158
    :catchall_51
    move-exception v3

    monitor-exit v2
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_51

    throw v3

    :pswitch_data_54
    .packed-switch 0x22
        :pswitch_29
        :pswitch_26
    .end packed-switch
.end method

.method public registerListener(Landroid/net/INetworkPolicyListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .line 3029
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3030
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3035
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->isSystemUI(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3036
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->systemUIListener:Landroid/net/INetworkPolicyListener;

    .line 3039
    :cond_1a
    return-void
.end method

.method public removeUidPolicy(II)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 2852
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2854
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2858
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2859
    :try_start_12
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2860
    .local v1, "oldPolicy":I
    not-int v2, p2

    and-int p2, v1, v2

    .line 2861
    if-eq v1, p2, :cond_27

    .line 2862
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    .line 2863
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v2, p1, v1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V

    .line 2865
    .end local v1    # "oldPolicy":I
    :cond_27
    monitor-exit v0

    .line 2866
    return-void

    .line 2865
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_29

    throw v1

    .line 2855
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeUserStateUL(IZ)Z
    .registers 10
    .param p1, "userId"    # I
    .param p2, "writePolicy"    # Z

    .line 2967
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->removingUserState(I)V

    .line 2968
    const/4 v0, 0x0

    .line 2971
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_25

    .line 2972
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 2973
    .local v3, "uid":I
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_22

    .line 2974
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 2975
    const/4 v0, 0x1

    .line 2971
    .end local v3    # "uid":I
    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 2980
    .end local v1    # "i":I
    :cond_25
    const/4 v1, 0x0

    new-array v3, v1, [I

    .line 2981
    .local v3, "uids":[I
    move-object v4, v3

    move v3, v1

    .local v3, "i":I
    .local v4, "uids":[I
    :goto_2a
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_45

    .line 2982
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 2983
    .local v5, "uid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v6, p1, :cond_42

    .line 2984
    invoke-static {v4, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v4

    .line 2981
    .end local v5    # "uid":I
    :cond_42
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 2988
    .end local v3    # "i":I
    :cond_45
    array-length v3, v4

    if-lez v3, :cond_56

    .line 2989
    array-length v3, v4

    :goto_49
    if-ge v1, v3, :cond_55

    aget v5, v4, v1

    .line 2990
    .restart local v5    # "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2989
    .end local v5    # "uid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 2992
    :cond_55
    const/4 v0, 0x1

    .line 2994
    :cond_56
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2995
    :try_start_59
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeAL(Z)V

    .line 2996
    if-eqz p2, :cond_63

    if-eqz v0, :cond_63

    .line 2997
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 2999
    :cond_63
    monitor-exit v1

    .line 3000
    return v0

    .line 2999
    :catchall_65
    move-exception v2

    monitor-exit v1
    :try_end_67
    .catchall {:try_start_59 .. :try_end_67} :catchall_65

    throw v2
.end method

.method public setDeviceIdleMode(Z)V
    .registers 11
    .param p1, "enabled"    # Z

    .line 3293
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3294
    const-string/jumbo v0, "setDeviceIdleMode"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3296
    :try_start_12
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_ae

    .line 3297
    :try_start_15
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-ne v3, p1, :cond_1e

    .line 3298
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_ab

    .line 3338
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3298
    return-void

    .line 3300
    :cond_1e
    :try_start_1e
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    .line 3303
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDeviceIdleMode enabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v3, p1}, Lcom/android/server/net/NetworkPolicyLogger;->deviceIdleModeEnabled(Z)V

    .line 3306
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSystemReady:Z

    if-eqz v3, :cond_96

    .line 3313
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDozenChange = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/net/NetworkPolicyManagerService;->isDozeChangeSupport:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mPolicy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicy:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3315
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    if-eqz v3, :cond_93

    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->isDozeChangeSupport:Z

    const/4 v4, 0x1

    if-nez v3, :cond_70

    sget v3, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicy:I

    if-ne v3, v4, :cond_93

    .line 3317
    :cond_70
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceMode:Z

    if-nez v3, :cond_93

    .line 3318
    sput-boolean v4, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceMode:Z

    .line 3319
    const-string v3, "NetworkPolicy"

    const-string/jumbo v4, "setDeviceIdleMode start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3320
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/net/NetworkPolicyManagerService;->mFirstDeviceModeTime:J

    .line 3323
    sget-object v3, Lcom/android/server/net/NetworkPolicyManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x0

    .line 3324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-wide v7, Lcom/android/server/net/NetworkPolicyManagerService;->screenOffCheckDelayTime:J

    add-long/2addr v5, v7

    sget-object v7, Lcom/android/server/net/NetworkPolicyManagerService;->mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

    .line 3323
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 3329
    :cond_93
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForRestrictPowerUL()V

    .line 3331
    :cond_96
    monitor-exit v0
    :try_end_97
    .catchall {:try_start_1e .. :try_end_97} :catchall_ab

    .line 3332
    if-eqz p1, :cond_a0

    .line 3333
    :try_start_99
    const-string/jumbo v0, "net"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOnPhase(Ljava/lang/String;)V

    goto :goto_a6

    .line 3335
    :cond_a0
    const-string/jumbo v0, "net"

    invoke-static {v0}, Lcom/android/server/EventLogTags;->writeDeviceIdleOffPhase(Ljava/lang/String;)V
    :try_end_a6
    .catchall {:try_start_99 .. :try_end_a6} :catchall_ae

    .line 3338
    :goto_a6
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3339
    nop

    .line 3340
    return-void

    .line 3331
    :catchall_ab
    move-exception v3

    :try_start_ac
    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_ab

    :try_start_ad
    throw v3
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ae

    .line 3338
    :catchall_ae
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public setNetworkPolicies([Landroid/net/NetworkPolicy;)V
    .registers 7
    .param p1, "policies"    # [Landroid/net/NetworkPolicy;

    .line 3050
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3052
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3054
    .local v0, "token":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_27

    .line 3055
    :try_start_10
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_24

    .line 3056
    :try_start_13
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->normalizePoliciesNL([Landroid/net/NetworkPolicy;)V

    .line 3057
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 3058
    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_21

    .line 3059
    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_24

    .line 3061
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3062
    nop

    .line 3063
    return-void

    .line 3058
    :catchall_21
    move-exception v4

    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw v4

    .line 3059
    :catchall_24
    move-exception v3

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_24

    :try_start_26
    throw v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    .line 3061
    :catchall_27
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setRestrictBackground(Z)V
    .registers 8
    .param p1, "restrictBackground"    # Z

    .line 3174
    const-string/jumbo v0, "setRestrictBackground"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3176
    :try_start_9
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "NetworkPolicy"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3177
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_2e

    .line 3179
    .local v3, "token":J
    :try_start_16
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_29

    .line 3180
    :try_start_19
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Z)V

    .line 3181
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_26

    .line 3183
    :try_start_1d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_2e

    .line 3184
    nop

    .line 3186
    .end local v3    # "token":J
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 3187
    nop

    .line 3188
    return-void

    .line 3181
    .restart local v3    # "token":J
    :catchall_26
    move-exception v5

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    :try_start_28
    throw v5
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_29

    .line 3183
    :catchall_29
    move-exception v0

    :try_start_2a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_2e

    .line 3186
    .end local v3    # "token":J
    :catchall_2e
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public setRestrictBackgroundByEsport(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 3022
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->isInEsportRestrictBackground:Z

    .line 3023
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    .line 3024
    return-void
.end method

.method public setSubscriptionOverride(IIIJLjava/lang/String;)V
    .registers 13
    .param p1, "subId"    # I
    .param p2, "overrideMask"    # I
    .param p3, "overrideValue"    # I
    .param p4, "timeoutMillis"    # J
    .param p6, "callingPackage"    # Ljava/lang/String;

    .line 3711
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0, p6}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 3714
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3715
    :try_start_a
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 3716
    .local v1, "plan":Landroid/telephony/SubscriptionPlan;
    if-eqz v1, :cond_57

    .line 3717
    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_57

    .line 3721
    .end local v1    # "plan":Landroid/telephony/SubscriptionPlan;
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_5f

    .line 3725
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "netpolicy_override_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    goto :goto_2b

    :cond_2a
    move v2, v1

    :goto_2b
    move v0, v2

    .line 3727
    .local v0, "overrideEnabled":Z
    if-nez v0, :cond_30

    if-nez p3, :cond_56

    .line 3728
    :cond_30
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 3729
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3728
    const/16 v5, 0x10

    invoke-virtual {v3, v5, p2, p3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3730
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-lez v2, :cond_56

    .line 3731
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    .line 3732
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 3731
    invoke-virtual {v3, v5, p2, v1, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3735
    :cond_56
    return-void

    .line 3718
    .end local v0    # "overrideEnabled":Z
    .restart local v1    # "plan":Landroid/telephony/SubscriptionPlan;
    :cond_57
    :try_start_57
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Must provide valid SubscriptionPlan to enable overriding"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3721
    .end local v1    # "plan":Landroid/telephony/SubscriptionPlan;
    :catchall_5f
    move-exception v1

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_5f

    throw v1
.end method

.method public setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;Ljava/lang/String;)V
    .registers 12
    .param p1, "subId"    # I
    .param p2, "plans"    # [Landroid/telephony/SubscriptionPlan;
    .param p3, "callingPackage"    # Ljava/lang/String;

    .line 3605
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->enforceSubscriptionPlanAccess(IILjava/lang/String;)V

    .line 3607
    array-length v0, p2

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_13

    aget-object v2, p2, v1

    .line 3608
    .local v2, "plan":Landroid/telephony/SubscriptionPlan;
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3607
    .end local v2    # "plan":Landroid/telephony/SubscriptionPlan;
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3611
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3613
    .local v0, "token":J
    :try_start_17
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_78

    .line 3614
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_75

    .line 3615
    :try_start_1d
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3616
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3618
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3619
    .local v4, "subscriberId":Ljava/lang/String;
    if-eqz v4, :cond_39

    .line 3620
    invoke-direct {p0, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->ensureActiveMobilePolicyAL(ILjava/lang/String;)Z

    .line 3621
    invoke-direct {p0, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeUpdateMobilePolicyCycleAL(ILjava/lang/String;)Z

    goto :goto_4f

    .line 3623
    :cond_39
    const-string v5, "NetworkPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing subscriberId for subId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    :goto_4f
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->handleNetworkPoliciesUpdateAL(Z)V

    .line 3627
    .end local v4    # "subscriberId":Ljava/lang/String;
    monitor-exit v3
    :try_end_54
    .catchall {:try_start_1d .. :try_end_54} :catchall_72

    .line 3628
    :try_start_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_75

    .line 3630
    :try_start_55
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.telephony.action.SUBSCRIPTION_PLANS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3631
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3632
    const-string v3, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3633
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_SUBSCRIPTION_PLANS"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_6d
    .catchall {:try_start_55 .. :try_end_6d} :catchall_78

    .line 3635
    .end local v2    # "intent":Landroid/content/Intent;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3636
    nop

    .line 3637
    return-void

    .line 3627
    :catchall_72
    move-exception v4

    :try_start_73
    monitor-exit v3
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    :try_start_74
    throw v4

    .line 3628
    :catchall_75
    move-exception v3

    monitor-exit v2
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_75

    :try_start_77
    throw v3
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_78

    .line 3635
    :catchall_78
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method setSubscriptionPlansOwner(ILjava/lang/String;)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.sys.sub_plan_owner."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3695
    return-void
.end method

.method public setUidPolicy(II)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 2813
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2815
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 2818
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2819
    :try_start_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_33

    .line 2821
    .local v1, "token":J
    :try_start_16
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 2822
    .local v3, "oldPolicy":I
    if-eq v3, p2, :cond_28

    .line 2823
    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, p2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicyUncheckedUL(IIIZ)V

    .line 2824
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mLogger:Lcom/android/server/net/NetworkPolicyLogger;

    invoke-virtual {v4, p1, v3, p2}, Lcom/android/server/net/NetworkPolicyLogger;->uidPolicyChanged(III)V
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_2e

    .line 2827
    .end local v3    # "oldPolicy":I
    :cond_28
    :try_start_28
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2828
    nop

    .line 2829
    .end local v1    # "token":J
    monitor-exit v0

    .line 2830
    return-void

    .line 2827
    .restart local v1    # "token":J
    :catchall_2e
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2829
    .end local v1    # "token":J
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_33

    throw v1

    .line 2816
    :cond_36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot apply policy to UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWifiMeteredOverride(Ljava/lang/String;I)V
    .registers 10
    .param p1, "networkId"    # Ljava/lang/String;
    .param p2, "meteredOverride"    # I

    .line 3344
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3345
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3347
    .local v0, "token":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 3348
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 3349
    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 3350
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v5}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 3351
    iput p2, v5, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 3352
    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_40

    .line 3354
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3a
    goto :goto_1f

    .line 3356
    .end local v2    # "wm":Landroid/net/wifi/WifiManager;
    .end local v3    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_3b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3357
    nop

    .line 3358
    return-void

    .line 3356
    :catchall_40
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public snoozeLimit(Landroid/net/NetworkTemplate;)V
    .registers 5
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .line 3122
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3124
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3126
    .local v0, "token":J
    const/16 v2, 0x23

    :try_start_f
    invoke-virtual {p0, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->performSnooze(Landroid/net/NetworkTemplate;I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_17

    .line 3128
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3129
    nop

    .line 3130
    return-void

    .line 3128
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public systemReady(Ljava/util/concurrent/CountDownLatch;)V
    .registers 7
    .param p1, "initCompleteSignal"    # Ljava/util/concurrent/CountDownLatch;

    .line 1077
    const-wide/16 v0, 0x1e

    :try_start_2
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_8} :catch_54

    if-eqz v0, :cond_4c

    .line 1083
    nop

    .line 1087
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "oem.dozeNetworkChange.control"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->isDozeChangeSupport:Z

    .line 1088
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1089
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/server/net/NetworkPolicyManagerService;->SCREEN_DOZE_NETWORKPOLICY:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDozeNetworkIntent:Landroid/content/Intent;

    .line 1090
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/net/NetworkPolicyManagerService;->mDozeNetworkIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/android/server/net/NetworkPolicyManagerService;->mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

    .line 1092
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/server/net/NetworkPolicyManagerService;->SCREEN_DOZE_NETWORKPOLICY:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1093
    .local v0, "dozeNetworkPolicyFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDozeChangeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1095
    return-void

    .line 1078
    .end local v0    # "dozeNetworkPolicyFilter":Landroid/content/IntentFilter;
    :cond_4c
    :try_start_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Service NetworkPolicy init timeout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_54
    .catch Ljava/lang/InterruptedException; {:try_start_4c .. :try_end_54} :catch_54

    .line 1080
    :catch_54
    move-exception v0

    .line 1081
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1082
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Service NetworkPolicy init interrupted"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unregisterListener(Landroid/net/INetworkPolicyListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/net/INetworkPolicyListener;

    .line 3044
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NetworkPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3045
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3046
    return-void
.end method

.method updateNetworkEnabledNL()V
    .registers 21

    .line 1979
    move-object/from16 v6, p0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_e

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "updateNetworkEnabledNL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    :cond_e
    const-string/jumbo v0, "updateNetworkEnabledNL"

    const-wide/32 v7, 0x200000

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1985
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v9

    .line 1987
    .local v9, "startTime":J
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v11, 0x1

    sub-int/2addr v0, v11

    .line 1987
    .local v0, "i":I
    :goto_25
    move v12, v0

    .line 1987
    .end local v0    # "i":I
    .local v12, "i":I
    const/4 v13, 0x0

    if-ltz v12, :cond_93

    .line 1988
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/net/NetworkPolicy;

    .line 1990
    .local v14, "policy":Landroid/net/NetworkPolicy;
    iget-wide v0, v14, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8a

    invoke-virtual {v14}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v0

    if-nez v0, :cond_41

    goto :goto_8a

    .line 1995
    :cond_41
    nop

    .line 1996
    invoke-static {v14}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/util/Pair;

    .line 1997
    .local v15, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    iget-object v0, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v16

    .line 1998
    .local v16, "start":J
    iget-object v0, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v18

    .line 1999
    .local v18, "end":J
    iget-object v1, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object v0, v6

    move-wide/from16 v2, v16

    move-wide/from16 v4, v18

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    .line 2002
    .local v0, "totalBytes":J
    invoke-virtual {v14, v0, v1}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v2

    if-eqz v2, :cond_7e

    iget-wide v2, v14, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v2, v2, v16

    if-gez v2, :cond_7e

    move v2, v11

    goto :goto_7f

    :cond_7e
    move v2, v13

    .line 2004
    .local v2, "overLimitWithoutSnooze":Z
    :goto_7f
    if-nez v2, :cond_83

    move v13, v11

    nop

    :cond_83
    move v3, v13

    .line 2006
    .local v3, "networkEnabled":Z
    iget-object v4, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v6, v4, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    .line 2006
    .end local v0    # "totalBytes":J
    .end local v2    # "overLimitWithoutSnooze":Z
    .end local v3    # "networkEnabled":Z
    .end local v14    # "policy":Landroid/net/NetworkPolicy;
    .end local v15    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .end local v16    # "start":J
    .end local v18    # "end":J
    goto :goto_90

    .line 1991
    .restart local v14    # "policy":Landroid/net/NetworkPolicy;
    :cond_8a
    :goto_8a
    iget-object v0, v14, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v6, v0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->setNetworkTemplateEnabled(Landroid/net/NetworkTemplate;Z)V

    .line 1992
    nop

    .line 1987
    .end local v14    # "policy":Landroid/net/NetworkPolicy;
    :goto_90
    add-int/lit8 v0, v12, -0x1

    .line 1987
    .end local v12    # "i":I
    .local v0, "i":I
    goto :goto_25

    .line 2009
    .end local v0    # "i":I
    :cond_93
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0, v13, v9, v10}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 2010
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 2011
    return-void
.end method

.method updateNetworkRulesNL()V
    .registers 45

    .line 2119
    move-object/from16 v7, p0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_e

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "updateNetworkRulesNL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    :cond_e
    const-string/jumbo v0, "updateNetworkRulesNL"

    const-wide/32 v8, 0x200000

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2124
    :try_start_17
    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mConnManager:Landroid/net/IConnectivityManager;

    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getAllNetworkState()[Landroid/net/NetworkState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->defeatNullable([Landroid/net/NetworkState;)[Landroid/net/NetworkState;

    move-result-object v0
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_21} :catch_373

    .line 2128
    .local v0, "states":[Landroid/net/NetworkState;
    nop

    .line 2127
    nop

    .line 2132
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 2133
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v10, v1

    .line 2134
    .local v10, "identified":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkState;Landroid/net/NetworkIdentity;>;"
    array-length v1, v0

    const/4 v2, 0x0

    :goto_30
    const/4 v12, 0x1

    if-ge v2, v1, :cond_5e

    aget-object v3, v0, v2

    .line 2135
    .local v3, "state":Landroid/net/NetworkState;
    iget-object v4, v3, Landroid/net/NetworkState;->network:Landroid/net/Network;

    if-eqz v4, :cond_46

    .line 2136
    iget-object v4, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetIdToSubId:Landroid/util/SparseIntArray;

    iget-object v5, v3, Landroid/net/NetworkState;->network:Landroid/net/Network;

    iget v5, v5, Landroid/net/Network;->netId:I

    invoke-direct {v7, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->parseSubId(Landroid/net/NetworkState;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2138
    :cond_46
    iget-object v4, v3, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v4, :cond_5b

    iget-object v4, v3, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 2139
    iget-object v4, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v12}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;Z)Landroid/net/NetworkIdentity;

    move-result-object v4

    .line 2141
    .local v4, "ident":Landroid/net/NetworkIdentity;
    invoke-virtual {v10, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2134
    .end local v3    # "state":Landroid/net/NetworkState;
    .end local v4    # "ident":Landroid/net/NetworkIdentity;
    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 2145
    :cond_5e
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    move-object v13, v1

    .line 2146
    .local v13, "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-wide v1, 0x7fffffffffffffffL

    .line 2150
    .local v1, "lowestRule":J
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    move-object v14, v3

    .line 2151
    .local v14, "matchingIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    sub-int/2addr v3, v12

    move-wide v5, v1

    .line 2151
    .end local v1    # "lowestRule":J
    .local v3, "i":I
    .local v5, "lowestRule":J
    :goto_77
    move v15, v3

    .line 2151
    .end local v3    # "i":I
    .local v15, "i":I
    const-wide/16 v16, -0x1

    if-ltz v15, :cond_1a0

    .line 2152
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/net/NetworkPolicy;

    .line 2155
    .local v2, "policy":Landroid/net/NetworkPolicy;
    invoke-virtual {v14}, Landroid/util/ArraySet;->clear()V

    .line 2156
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v12

    .line 2156
    .local v1, "j":I
    :goto_8d
    if-ltz v1, :cond_ae

    .line 2157
    iget-object v11, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v8, v21

    check-cast v8, Landroid/net/NetworkIdentity;

    invoke-virtual {v11, v8}, Landroid/net/NetworkTemplate;->matches(Landroid/net/NetworkIdentity;)Z

    move-result v8

    if-eqz v8, :cond_a8

    .line 2158
    invoke-virtual {v10, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkState;

    invoke-static {v14, v8}, Lcom/android/server/net/NetworkPolicyManagerService;->collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkState;)V

    .line 2156
    :cond_a8
    add-int/lit8 v1, v1, -0x1

    const-wide/32 v8, 0x200000

    goto :goto_8d

    .line 2162
    .end local v1    # "j":I
    :cond_ae
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v1, :cond_d0

    .line 2163
    const-string v1, "NetworkPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Applying "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " to ifaces "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    :cond_d0
    iget-wide v8, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, v8, v16

    if-eqz v1, :cond_d8

    move v1, v12

    goto :goto_d9

    :cond_d8
    const/4 v1, 0x0

    :goto_d9
    move v8, v1

    .line 2167
    .local v8, "hasWarning":Z
    iget-wide v3, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v1, v3, v16

    if-eqz v1, :cond_e2

    move v1, v12

    goto :goto_e3

    :cond_e2
    const/4 v1, 0x0

    :goto_e3
    move v9, v1

    .line 2168
    .local v9, "hasLimit":Z
    if-nez v9, :cond_f1

    iget-boolean v1, v2, Landroid/net/NetworkPolicy;->metered:Z

    if-eqz v1, :cond_eb

    goto :goto_f1

    .line 2206
    :cond_eb
    move-object v12, v2

    move-object/from16 v28, v10

    move-wide v10, v5

    goto/16 :goto_17f

    .line 2170
    :cond_f1
    :goto_f1
    if-eqz v9, :cond_14a

    invoke-virtual {v2}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v1

    if-eqz v1, :cond_14a

    .line 2171
    nop

    .line 2172
    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/util/Pair;

    .line 2173
    .local v11, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    iget-object v1, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v16

    .line 2174
    .local v16, "start":J
    iget-object v1, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v22

    .line 2175
    .local v22, "end":J
    iget-object v3, v2, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v25, v13

    const-wide/16 v12, 0x1

    move-object v1, v7

    .line 2175
    .end local v13    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v25, "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object v4, v2

    move-object v2, v3

    .line 2175
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    .local v4, "policy":Landroid/net/NetworkPolicy;
    move-object v12, v4

    move-wide/from16 v3, v16

    .line 2175
    .end local v4    # "policy":Landroid/net/NetworkPolicy;
    .local v12, "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move-wide v10, v5

    move-wide/from16 v5, v22

    .line 2175
    .end local v5    # "lowestRule":J
    .end local v11    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .local v10, "lowestRule":J
    .local v28, "identified":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkState;Landroid/net/NetworkIdentity;>;"
    .local v29, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v1

    .line 2177
    .local v1, "totalBytes":J
    iget-wide v3, v12, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v3, v3, v16

    if-ltz v3, :cond_140

    .line 2180
    const-wide v3, 0x7fffffffffffffffL

    .line 2180
    .local v3, "quotaBytes":J
    goto :goto_149

    .line 2185
    .end local v3    # "quotaBytes":J
    :cond_140
    iget-wide v3, v12, Landroid/net/NetworkPolicy;->limitBytes:J

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 2187
    .end local v1    # "totalBytes":J
    .end local v16    # "start":J
    .end local v22    # "end":J
    .end local v29    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .restart local v3    # "quotaBytes":J
    :goto_149
    goto :goto_155

    .line 2190
    .end local v3    # "quotaBytes":J
    .end local v12    # "policy":Landroid/net/NetworkPolicy;
    .end local v25    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v28    # "identified":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkState;Landroid/net/NetworkIdentity;>;"
    .restart local v2    # "policy":Landroid/net/NetworkPolicy;
    .restart local v5    # "lowestRule":J
    .local v10, "identified":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkState;Landroid/net/NetworkIdentity;>;"
    .restart local v13    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_14a
    move-object v12, v2

    move-object/from16 v28, v10

    move-object/from16 v25, v13

    move-wide v10, v5

    .line 2190
    .end local v2    # "policy":Landroid/net/NetworkPolicy;
    .end local v5    # "lowestRule":J
    .end local v13    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v10, "lowestRule":J
    .restart local v12    # "policy":Landroid/net/NetworkPolicy;
    .restart local v25    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v28    # "identified":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkState;Landroid/net/NetworkIdentity;>;"
    const-wide v3, 0x7fffffffffffffffL

    .line 2190
    .restart local v3    # "quotaBytes":J
    :goto_155
    move-wide v1, v3

    .line 2193
    .end local v3    # "quotaBytes":J
    .local v1, "quotaBytes":J
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_165

    .line 2195
    const-string v3, "NetworkPolicy"

    const-string/jumbo v5, "shared quota unsupported; generating rule for each iface"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    :cond_165
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v3

    sub-int/2addr v3, v4

    .line 2198
    .local v3, "j":I
    :goto_16a
    if-ltz v3, :cond_17d

    .line 2199
    invoke-virtual {v14, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2200
    .local v4, "iface":Ljava/lang/String;
    invoke-direct {v7, v4, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuotaAsync(Ljava/lang/String;J)V

    .line 2201
    move-object/from16 v13, v25

    invoke-virtual {v13, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2198
    .end local v4    # "iface":Ljava/lang/String;
    .end local v25    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v13    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    add-int/lit8 v3, v3, -0x1

    goto :goto_16a

    .line 2206
    .end local v1    # "quotaBytes":J
    .end local v3    # "j":I
    .end local v13    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v25    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_17d
    move-object/from16 v13, v25

    .line 2206
    .end local v25    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v13    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_17f
    if-eqz v8, :cond_18a

    iget-wide v1, v12, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v1, v1, v10

    if-gez v1, :cond_18a

    .line 2207
    iget-wide v5, v12, Landroid/net/NetworkPolicy;->warningBytes:J

    .line 2207
    .end local v10    # "lowestRule":J
    .restart local v5    # "lowestRule":J
    goto :goto_18b

    .line 2209
    .end local v5    # "lowestRule":J
    .restart local v10    # "lowestRule":J
    :cond_18a
    move-wide v5, v10

    .line 2209
    .end local v10    # "lowestRule":J
    .restart local v5    # "lowestRule":J
    :goto_18b
    if-eqz v9, :cond_196

    iget-wide v1, v12, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v1, v1, v5

    if-gez v1, :cond_196

    .line 2210
    iget-wide v1, v12, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2151
    .end local v5    # "lowestRule":J
    .end local v8    # "hasWarning":Z
    .end local v9    # "hasLimit":Z
    .end local v12    # "policy":Landroid/net/NetworkPolicy;
    .local v1, "lowestRule":J
    move-wide v5, v1

    .line 2151
    .end local v1    # "lowestRule":J
    .restart local v5    # "lowestRule":J
    :cond_196
    add-int/lit8 v3, v15, -0x1

    .line 2151
    .end local v15    # "i":I
    .local v3, "i":I
    move-object/from16 v10, v28

    const-wide/32 v8, 0x200000

    const/4 v12, 0x1

    goto/16 :goto_77

    .line 2216
    .end local v3    # "i":I
    .end local v28    # "identified":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkState;Landroid/net/NetworkIdentity;>;"
    .local v10, "identified":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkState;Landroid/net/NetworkIdentity;>;"
    :cond_1a0
    move-object/from16 v28, v10

    move-wide v10, v5

    .line 2216
    .end local v5    # "lowestRule":J
    .local v10, "lowestRule":J
    .restart local v28    # "identified":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkState;Landroid/net/NetworkIdentity;>;"
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1a5
    if-ge v2, v1, :cond_1ea

    aget-object v3, v0, v2

    .line 2217
    .local v3, "state":Landroid/net/NetworkState;
    iget-object v4, v3, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v4, :cond_1e7

    iget-object v4, v3, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1e7

    iget-object v4, v3, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v5, 0xb

    .line 2218
    invoke-virtual {v4, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-nez v4, :cond_1e7

    .line 2219
    invoke-virtual {v14}, Landroid/util/ArraySet;->clear()V

    .line 2220
    invoke-static {v14, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->collectIfaces(Landroid/util/ArraySet;Landroid/net/NetworkState;)V

    .line 2221
    invoke-virtual {v14}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .line 2221
    .local v4, "j":I
    :goto_1cb
    if-ltz v4, :cond_1e7

    .line 2222
    invoke-virtual {v14, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2223
    .local v5, "iface":Ljava/lang/String;
    invoke-virtual {v13, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e4

    .line 2224
    const-wide v8, 0x7fffffffffffffffL

    invoke-direct {v7, v5, v8, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->setInterfaceQuotaAsync(Ljava/lang/String;J)V

    .line 2225
    invoke-virtual {v13, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2221
    .end local v5    # "iface":Ljava/lang/String;
    :cond_1e4
    add-int/lit8 v4, v4, -0x1

    goto :goto_1cb

    .line 2216
    .end local v3    # "state":Landroid/net/NetworkState;
    .end local v4    # "j":I
    :cond_1e7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a5

    .line 2232
    :cond_1ea
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 2232
    .local v1, "i":I
    :goto_1f2
    if-ltz v1, :cond_208

    .line 2233
    iget-object v2, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2234
    .local v2, "iface":Ljava/lang/String;
    invoke-virtual {v13, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_205

    .line 2235
    invoke-direct {v7, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->removeInterfaceQuotaAsync(Ljava/lang/String;)V

    .line 2232
    .end local v2    # "iface":Ljava/lang/String;
    :cond_205
    add-int/lit8 v1, v1, -0x1

    goto :goto_1f2

    .line 2238
    .end local v1    # "i":I
    :cond_208
    iput-object v13, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    .line 2240
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 2241
    .local v8, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "netpolicy_quota_enabled"

    const/4 v4, 0x1

    invoke-static {v8, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_21b

    goto :goto_21c

    :cond_21b
    const/4 v4, 0x0

    :goto_21c
    move v9, v4

    .line 2243
    .local v9, "quotaEnabled":Z
    const-string/jumbo v1, "netpolicy_quota_unlimited"

    sget-wide v2, Lcom/android/server/net/NetworkPolicyManagerService;->QUOTA_UNLIMITED_DEFAULT:J

    invoke-static {v8, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v18

    .line 2245
    .local v18, "quotaUnlimited":J
    const-string/jumbo v1, "netpolicy_quota_limited"

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v8, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v12

    .line 2249
    .local v12, "quotaLimited":F
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->clear()V

    .line 2250
    array-length v15, v0

    const/4 v5, 0x0

    :goto_237
    if-ge v5, v15, :cond_340

    aget-object v6, v0, v5

    .line 2251
    .local v6, "state":Landroid/net/NetworkState;
    if-nez v9, :cond_24a

    .line 2250
    .end local v6    # "state":Landroid/net/NetworkState;
    :goto_23d
    move-object/from16 v32, v0

    move/from16 v23, v5

    move-object/from16 v36, v8

    const-wide v37, 0x7fffffffffffffffL

    goto/16 :goto_338

    .line 2252
    .restart local v6    # "state":Landroid/net/NetworkState;
    :cond_24a
    iget-object v1, v6, Landroid/net/NetworkState;->network:Landroid/net/Network;

    if-nez v1, :cond_24f

    .line 2252
    .end local v6    # "state":Landroid/net/NetworkState;
    goto :goto_23d

    .line 2253
    .restart local v6    # "state":Landroid/net/NetworkState;
    :cond_24f
    iget-object v1, v6, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-direct {v7, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->getSubIdLocked(Landroid/net/Network;)I

    move-result v3

    .line 2254
    .local v3, "subId":I
    invoke-direct {v7, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->getPrimarySubscriptionPlanLocked(I)Landroid/telephony/SubscriptionPlan;

    move-result-object v4

    .line 2255
    .local v4, "plan":Landroid/telephony/SubscriptionPlan;
    if-nez v4, :cond_25c

    .line 2255
    .end local v3    # "subId":I
    .end local v4    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v6    # "state":Landroid/net/NetworkState;
    goto :goto_23d

    .line 2258
    .restart local v3    # "subId":I
    .restart local v4    # "plan":Landroid/telephony/SubscriptionPlan;
    .restart local v6    # "state":Landroid/net/NetworkState;
    :cond_25c
    invoke-virtual {v4}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v20

    .line 2259
    .local v20, "limitBytes":J
    iget-object v1, v6, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_27e

    .line 2261
    const-wide/16 v1, 0x0

    .line 2284
    .end local v3    # "subId":I
    .end local v4    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v6    # "state":Landroid/net/NetworkState;
    .end local v8    # "cr":Landroid/content/ContentResolver;
    .local v0, "subId":I
    .local v1, "quotaBytes":J
    .local v22, "plan":Landroid/telephony/SubscriptionPlan;
    .local v32, "states":[Landroid/net/NetworkState;
    .local v33, "state":Landroid/net/NetworkState;
    .local v36, "cr":Landroid/content/ContentResolver;
    :goto_26c
    move-object/from16 v32, v0

    move v0, v3

    move-object/from16 v22, v4

    move/from16 v23, v5

    move-object/from16 v33, v6

    move-object/from16 v36, v8

    const-wide v37, 0x7fffffffffffffffL

    goto/16 :goto_333

    .line 2262
    .end local v1    # "quotaBytes":J
    .end local v22    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v32    # "states":[Landroid/net/NetworkState;
    .end local v33    # "state":Landroid/net/NetworkState;
    .end local v36    # "cr":Landroid/content/ContentResolver;
    .local v0, "states":[Landroid/net/NetworkState;
    .restart local v3    # "subId":I
    .restart local v4    # "plan":Landroid/telephony/SubscriptionPlan;
    .restart local v6    # "state":Landroid/net/NetworkState;
    .restart local v8    # "cr":Landroid/content/ContentResolver;
    :cond_27e
    cmp-long v1, v20, v16

    if-nez v1, :cond_285

    .line 2263
    const-wide/16 v1, -0x1

    goto :goto_26c

    .line 2264
    :cond_285
    const-wide v22, 0x7fffffffffffffffL

    cmp-long v1, v20, v22

    if-nez v1, :cond_29f

    .line 2266
    move-wide/from16 v1, v18

    .line 2284
    .restart local v1    # "quotaBytes":J
    move-object/from16 v32, v0

    move v0, v3

    move-object/from16 v33, v6

    move-object/from16 v36, v8

    move-wide/from16 v37, v22

    move-object/from16 v22, v4

    move/from16 v23, v5

    goto/16 :goto_333

    .line 2269
    .end local v1    # "quotaBytes":J
    :cond_29f
    invoke-virtual {v4}, Landroid/telephony/SubscriptionPlan;->cycleIterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/util/Range;

    .line 2270
    .local v2, "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v24

    .line 2271
    .local v24, "start":J
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/time/ZonedDateTime;

    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v29

    .line 2272
    .local v29, "end":J
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->instant()Ljava/time/Instant;

    move-result-object v1

    .line 2273
    .local v1, "now":Ljava/time/Instant;
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v31

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    check-cast v0, Ljava/time/ZonedDateTime;

    .line 2273
    .end local v0    # "states":[Landroid/net/NetworkState;
    .restart local v32    # "states":[Landroid/net/NetworkState;
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    move-object/from16 v33, v1

    sget-object v1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    .line 2274
    .end local v1    # "now":Ljava/time/Instant;
    .local v33, "now":Ljava/time/Instant;
    invoke-virtual {v0, v1}, Ljava/time/ZonedDateTime;->truncatedTo(Ljava/time/temporal/TemporalUnit;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 2275
    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v34

    .line 2276
    .local v34, "startOfDay":J
    iget-object v0, v6, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    .line 2277
    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 2276
    move-object/from16 v36, v8

    move-object/from16 v8, v33

    move-object v1, v7

    .line 2276
    .end local v33    # "now":Ljava/time/Instant;
    .local v8, "now":Ljava/time/Instant;
    .restart local v36    # "cr":Landroid/content/ContentResolver;
    move-object/from16 v31, v2

    move-object v2, v0

    .line 2276
    .end local v2    # "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    .local v31, "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    move v0, v3

    move-wide/from16 v37, v22

    move-object/from16 v22, v4

    move-wide/from16 v3, v24

    .line 2276
    .end local v3    # "subId":I
    .end local v4    # "plan":Landroid/telephony/SubscriptionPlan;
    .local v0, "subId":I
    .restart local v22    # "plan":Landroid/telephony/SubscriptionPlan;
    move/from16 v23, v5

    move-object/from16 v33, v6

    move-wide/from16 v5, v34

    .line 2276
    .end local v6    # "state":Landroid/net/NetworkState;
    .local v33, "state":Landroid/net/NetworkState;
    invoke-direct/range {v1 .. v6}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v1

    .line 2279
    .local v1, "totalBytes":J
    sub-long v3, v20, v1

    .line 2281
    .local v3, "remainingBytes":J
    nop

    .line 2282
    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    sub-long v5, v29, v5

    move-wide/from16 v39, v1

    const-wide/16 v1, 0x1

    sub-long/2addr v5, v1

    .line 2282
    .end local v1    # "totalBytes":J
    .local v39, "totalBytes":J
    move-object/from16 v41, v8

    sget-object v8, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 2282
    .end local v8    # "now":Ljava/time/Instant;
    .local v41, "now":Ljava/time/Instant;
    invoke-virtual {v8, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v26

    div-long v5, v5, v26

    add-long/2addr v5, v1

    .line 2284
    .local v5, "remainingDays":J
    div-long v1, v3, v5

    long-to-float v1, v1

    mul-float/2addr v1, v12

    float-to-long v1, v1

    move-wide/from16 v42, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 2287
    .end local v3    # "remainingBytes":J
    .end local v5    # "remainingDays":J
    .end local v24    # "start":J
    .end local v29    # "end":J
    .end local v31    # "cycle":Landroid/util/Range;, "Landroid/util/Range<Ljava/time/ZonedDateTime;>;"
    .end local v34    # "startOfDay":J
    .end local v39    # "totalBytes":J
    .end local v41    # "now":Ljava/time/Instant;
    .local v1, "quotaBytes":J
    :goto_333
    iget-object v3, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v0, v1, v2}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 2250
    .end local v0    # "subId":I
    .end local v1    # "quotaBytes":J
    .end local v20    # "limitBytes":J
    .end local v22    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v33    # "state":Landroid/net/NetworkState;
    :goto_338
    add-int/lit8 v5, v23, 0x1

    move-object/from16 v0, v32

    move-object/from16 v8, v36

    goto/16 :goto_237

    .line 2290
    .end local v32    # "states":[Landroid/net/NetworkState;
    .end local v36    # "cr":Landroid/content/ContentResolver;
    .local v0, "states":[Landroid/net/NetworkState;
    .local v8, "cr":Landroid/content/ContentResolver;
    :cond_340
    move-object/from16 v32, v0

    move-object/from16 v36, v8

    .line 2290
    .end local v0    # "states":[Landroid/net/NetworkState;
    .end local v8    # "cr":Landroid/content/ContentResolver;
    .restart local v32    # "states":[Landroid/net/NetworkState;
    .restart local v36    # "cr":Landroid/content/ContentResolver;
    iget-object v0, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2291
    .local v0, "meteredIfaces":[Ljava/lang/String;
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2293
    iget-object v1, v7, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2295
    const-wide/32 v1, 0x200000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2296
    return-void

    .line 2125
    .end local v0    # "meteredIfaces":[Ljava/lang/String;
    .end local v9    # "quotaEnabled":Z
    .end local v10    # "lowestRule":J
    .end local v12    # "quotaLimited":F
    .end local v13    # "newMeteredIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v14    # "matchingIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v18    # "quotaUnlimited":J
    .end local v28    # "identified":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/NetworkState;Landroid/net/NetworkIdentity;>;"
    .end local v32    # "states":[Landroid/net/NetworkState;
    .end local v36    # "cr":Landroid/content/ContentResolver;
    :catch_373
    move-exception v0

    .line 2127
    .local v0, "e":Landroid/os/RemoteException;
    return-void
.end method

.method public updateNetworks()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1792
    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworksInternal()V

    .line 1793
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1794
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$lv2qqWetKVoJzbe7z3LT5idTu54;

    invoke-direct {v2, v0}, Lcom/android/server/net/-$$Lambda$NetworkPolicyManagerService$lv2qqWetKVoJzbe7z3LT5idTu54;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1797
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 1798
    return-void
.end method

.method updateNotificationsNL()V
    .registers 41

    .line 1441
    move-object/from16 v6, p0

    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_e

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "updateNotificationsNL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :cond_e
    const-string/jumbo v0, "updateNotificationsNL"

    const-wide/32 v7, 0x200000

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1445
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object v9, v0

    .line 1446
    .local v9, "beforeNotifs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;>;"
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1452
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    .line 1454
    .local v10, "now":J
    const/4 v0, 0x0

    .line 1456
    .local v0, "needToBroadcastDataUsageAlarm":Z
    iget-object v1, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v12, 0x1

    sub-int/2addr v1, v12

    move v13, v0

    .line 1456
    .end local v0    # "needToBroadcastDataUsageAlarm":Z
    .local v1, "i":I
    .local v13, "needToBroadcastDataUsageAlarm":Z
    :goto_34
    move v14, v1

    .line 1456
    .end local v1    # "i":I
    .local v14, "i":I
    if-ltz v14, :cond_18f

    .line 1457
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/net/NetworkPolicy;

    .line 1458
    .local v15, "policy":Landroid/net/NetworkPolicy;
    iget-object v0, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->findRelevantSubIdNL(Landroid/net/NetworkTemplate;)I

    move-result v4

    .line 1461
    .local v4, "subId":I
    const/4 v0, -0x1

    if-ne v4, v0, :cond_4b

    .line 1461
    .end local v4    # "subId":I
    .end local v15    # "policy":Landroid/net/NetworkPolicy;
    goto/16 :goto_187

    .line 1462
    .restart local v4    # "subId":I
    .restart local v15    # "policy":Landroid/net/NetworkPolicy;
    :cond_4b
    invoke-virtual {v15}, Landroid/net/NetworkPolicy;->hasCycle()Z

    move-result v0

    if-nez v0, :cond_53

    .line 1462
    .end local v4    # "subId":I
    .end local v15    # "policy":Landroid/net/NetworkPolicy;
    goto/16 :goto_187

    .line 1464
    .restart local v4    # "subId":I
    .restart local v15    # "policy":Landroid/net/NetworkPolicy;
    :cond_53
    nop

    .line 1465
    invoke-static {v15}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/util/Pair;

    .line 1466
    .local v5, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    iget-object v0, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v16

    .line 1467
    .local v16, "cycleStart":J
    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/time/ZonedDateTime;

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v18

    .line 1468
    .local v18, "cycleEnd":J
    iget-object v1, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object v0, v6

    move-wide/from16 v2, v16

    move v7, v4

    move-object v8, v5

    move-wide/from16 v4, v18

    .line 1468
    .end local v4    # "subId":I
    .end local v5    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .local v7, "subId":I
    .local v8, "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v2

    .line 1471
    .local v2, "totalBytes":J
    iget-object v0, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v7}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 1472
    .local v1, "config":Landroid/os/PersistableBundle;
    const-string v0, "data_warning_notification_bool"

    invoke-static {v1, v0, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z

    move-result v20

    .line 1474
    .local v20, "notifyWarning":Z
    const-string v0, "data_limit_notification_bool"

    invoke-static {v1, v0, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z

    move-result v21

    .line 1476
    .local v21, "notifyLimit":Z
    const-string v0, "data_rapid_notification_bool"

    invoke-static {v1, v0, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->getBooleanDefeatingNullable(Landroid/os/PersistableBundle;Ljava/lang/String;Z)Z

    move-result v22

    .line 1480
    .local v22, "notifyRapid":Z
    const/16 v23, 0x0

    if-eqz v20, :cond_c1

    .line 1481
    invoke-virtual {v15, v2, v3}, Landroid/net/NetworkPolicy;->isOverWarning(J)Z

    move-result v0

    if-eqz v0, :cond_c1

    invoke-virtual {v15, v2, v3}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-nez v0, :cond_c1

    .line 1482
    iget-wide v4, v15, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    cmp-long v0, v4, v16

    if-ltz v0, :cond_b4

    move v0, v12

    goto :goto_b6

    :cond_b4
    move/from16 v0, v23

    .line 1483
    .local v0, "snoozedThisCycle":Z
    :goto_b6
    if-nez v0, :cond_c1

    .line 1486
    const-string v4, "NetworkPolicy"

    const-string/jumbo v5, "set needToBroadcastDataUsageAlarm to true due to TYPE_WARNING"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    const/4 v13, 0x1

    .line 1494
    .end local v0    # "snoozedThisCycle":Z
    :cond_c1
    if-eqz v21, :cond_f5

    .line 1495
    invoke-virtual {v15, v2, v3}, Landroid/net/NetworkPolicy;->isOverLimit(J)Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 1496
    iget-wide v4, v15, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    cmp-long v0, v4, v16

    if-ltz v0, :cond_d1

    move v0, v12

    goto :goto_d3

    :cond_d1
    move/from16 v0, v23

    .line 1497
    .restart local v0    # "snoozedThisCycle":Z
    :goto_d3
    if-eqz v0, :cond_e0

    .line 1500
    const-string v4, "NetworkPolicy"

    const-string/jumbo v5, "set needToBroadcastDataUsageAlarm to true due to TYPE_LIMIT_SNOOZED"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    const/4 v4, 0x1

    .line 1511
    .end local v0    # "snoozedThisCycle":Z
    :goto_de
    move v13, v4

    goto :goto_ef

    .line 1506
    .restart local v0    # "snoozedThisCycle":Z
    :cond_e0
    const-string v4, "NetworkPolicy"

    const-string/jumbo v5, "set needToBroadcastDataUsageAlarm to true due to TYPE_LIMIT"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    const/4 v4, 0x1

    .line 1509
    .end local v13    # "needToBroadcastDataUsageAlarm":Z
    .local v4, "needToBroadcastDataUsageAlarm":Z
    iget-object v5, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v6, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyOverLimitNL(Landroid/net/NetworkTemplate;)V

    .line 1509
    .end local v0    # "snoozedThisCycle":Z
    goto :goto_de

    .line 1511
    .end local v4    # "needToBroadcastDataUsageAlarm":Z
    .restart local v13    # "needToBroadcastDataUsageAlarm":Z
    :goto_ef
    goto :goto_f5

    .line 1512
    :cond_f0
    iget-object v0, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-direct {v6, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->notifyUnderLimitNL(Landroid/net/NetworkTemplate;)V

    .line 1518
    :cond_f5
    :goto_f5
    if-eqz v22, :cond_183

    iget-wide v4, v15, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v24, -0x1

    cmp-long v0, v4, v24

    if-eqz v0, :cond_183

    .line 1519
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v24

    .line 1520
    .local v24, "recentDuration":J
    sub-long v26, v10, v24

    .line 1521
    .local v26, "recentStart":J
    move-wide v4, v10

    .line 1522
    .local v4, "recentEnd":J
    iget-object v0, v15, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v28, v0

    move-object v0, v6

    move-object/from16 v29, v1

    move-object/from16 v1, v28

    .line 1522
    .end local v1    # "config":Landroid/os/PersistableBundle;
    .local v29, "config":Landroid/os/PersistableBundle;
    move-wide/from16 v30, v2

    move-wide/from16 v2, v26

    .line 1522
    .end local v2    # "totalBytes":J
    .local v30, "totalBytes":J
    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkPolicyManagerService;->getTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    .line 1524
    .local v0, "recentBytes":J
    sub-long v2, v18, v16

    .line 1525
    .local v2, "cycleDuration":J
    mul-long v32, v0, v2

    move/from16 v34, v13

    div-long v12, v32, v24

    .line 1526
    .end local v13    # "needToBroadcastDataUsageAlarm":Z
    .local v12, "projectedBytes":J
    .local v34, "needToBroadcastDataUsageAlarm":Z
    move-wide/from16 v35, v2

    iget-wide v2, v15, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 1526
    .end local v2    # "cycleDuration":J
    .local v35, "cycleDuration":J
    const-wide/16 v32, 0x3

    mul-long v2, v2, v32

    const-wide/16 v32, 0x2

    div-long v2, v2, v32

    .line 1528
    .local v2, "alertBytes":J
    sget-boolean v28, Lcom/android/server/net/NetworkPolicyManagerService;->LOGD:Z

    if-eqz v28, :cond_15e

    .line 1529
    move-wide/from16 v37, v4

    const-string v4, "NetworkPolicy"

    .line 1529
    .end local v4    # "recentEnd":J
    .local v37, "recentEnd":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v39, v7

    const-string v7, "Rapid usage considering recent "

    .line 1529
    .end local v7    # "subId":I
    .local v39, "subId":I
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " projected "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " alert "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_162

    .line 1533
    .end local v37    # "recentEnd":J
    .end local v39    # "subId":I
    .restart local v4    # "recentEnd":J
    .restart local v7    # "subId":I
    :cond_15e
    move-wide/from16 v37, v4

    move/from16 v39, v7

    .line 1533
    .end local v4    # "recentEnd":J
    .end local v7    # "subId":I
    .restart local v37    # "recentEnd":J
    .restart local v39    # "subId":I
    :goto_162
    iget-wide v4, v15, Landroid/net/NetworkPolicy;->lastRapidSnooze:J

    const-wide/32 v32, 0x5265c00

    sub-long v32, v10, v32

    cmp-long v4, v4, v32

    if-ltz v4, :cond_170

    const/16 v23, 0x1

    nop

    :cond_170
    move/from16 v4, v23

    .line 1535
    .local v4, "snoozedRecently":Z
    cmp-long v5, v12, v2

    if-lez v5, :cond_185

    if-nez v4, :cond_185

    .line 1539
    const-string v5, "NetworkPolicy"

    const-string/jumbo v7, "set needToBroadcastDataUsageAlarm to true due to TYPE_RAPID"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    const/4 v0, 0x1

    .line 1456
    .end local v2    # "alertBytes":J
    .end local v4    # "snoozedRecently":Z
    .end local v8    # "cycle":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/time/ZonedDateTime;Ljava/time/ZonedDateTime;>;"
    .end local v12    # "projectedBytes":J
    .end local v15    # "policy":Landroid/net/NetworkPolicy;
    .end local v16    # "cycleStart":J
    .end local v18    # "cycleEnd":J
    .end local v20    # "notifyWarning":Z
    .end local v21    # "notifyLimit":Z
    .end local v22    # "notifyRapid":Z
    .end local v24    # "recentDuration":J
    .end local v26    # "recentStart":J
    .end local v29    # "config":Landroid/os/PersistableBundle;
    .end local v30    # "totalBytes":J
    .end local v34    # "needToBroadcastDataUsageAlarm":Z
    .end local v35    # "cycleDuration":J
    .end local v37    # "recentEnd":J
    .end local v39    # "subId":I
    .local v0, "needToBroadcastDataUsageAlarm":Z
    move v13, v0

    goto :goto_187

    .line 1456
    .end local v0    # "needToBroadcastDataUsageAlarm":Z
    .restart local v13    # "needToBroadcastDataUsageAlarm":Z
    :cond_183
    move/from16 v34, v13

    .line 1456
    .end local v13    # "needToBroadcastDataUsageAlarm":Z
    .restart local v34    # "needToBroadcastDataUsageAlarm":Z
    :cond_185
    move/from16 v13, v34

    .line 1456
    .end local v34    # "needToBroadcastDataUsageAlarm":Z
    .restart local v13    # "needToBroadcastDataUsageAlarm":Z
    :goto_187
    add-int/lit8 v1, v14, -0x1

    .line 1456
    .end local v14    # "i":I
    .local v1, "i":I
    const-wide/32 v7, 0x200000

    const/4 v12, 0x1

    goto/16 :goto_34

    .line 1547
    .end local v1    # "i":I
    :cond_18f
    if-eqz v13, :cond_194

    .line 1548
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkPolicyManagerService;->broadcastDataUsageAlarm()V

    .line 1553
    :cond_194
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1553
    .local v0, "i":I
    :goto_19a
    if-ltz v0, :cond_1b0

    .line 1554
    invoke-virtual {v9, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    .line 1555
    .local v1, "notificationId":Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;
    iget-object v2, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mActiveNotifs:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ad

    .line 1556
    invoke-direct {v6, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->cancelNotification(Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;)V

    .line 1553
    .end local v1    # "notificationId":Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;
    :cond_1ad
    add-int/lit8 v0, v0, -0x1

    goto :goto_19a

    .line 1560
    .end local v0    # "i":I
    :cond_1b0
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1561
    return-void
.end method

.method updatePowerSaveWhitelistUL()V
    .registers 8

    .line 800
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getAppIdWhitelistExceptIdle()[I

    move-result-object v0

    .line 801
    .local v0, "whitelist":[I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 802
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    .line 803
    array-length v3, v0

    move v4, v1

    :goto_11
    if-ge v4, v3, :cond_1d

    aget v5, v0, v4

    .line 804
    .local v5, "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistExceptIdleAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 803
    .end local v5    # "uid":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 807
    :cond_1d
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    invoke-interface {v3}, Landroid/os/IDeviceIdleController;->getAppIdWhitelist()[I

    move-result-object v3

    move-object v0, v3

    .line 808
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 809
    if-eqz v0, :cond_38

    .line 810
    array-length v3, v0

    :goto_2c
    if-ge v1, v3, :cond_38

    aget v4, v0, v1

    .line 811
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_35} :catch_39

    .line 810
    .end local v4    # "uid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 815
    .end local v0    # "whitelist":[I
    :cond_38
    goto :goto_3a

    .line 814
    :catch_39
    move-exception v0

    .line 816
    :goto_3a
    return-void
.end method

.method public updateRestrictBackgroundByLowPowerModeUL(Landroid/os/PowerSaveState;)V
    .registers 6
    .param p1, "result"    # Landroid/os/PowerSaveState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 5339
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundPowerState:Landroid/os/PowerSaveState;

    .line 5341
    iget-boolean v0, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 5344
    .local v0, "restrictBackground":Z
    iget-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 5346
    .local v1, "localRestrictBgChangedInBsm":Z
    iget-boolean v2, p1, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1c

    .line 5349
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    if-nez v2, :cond_14

    iget-boolean v2, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v2, :cond_14

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    :goto_15
    move v2, v3

    .line 5350
    .local v2, "shouldInvokeRestrictBackground":Z
    iget-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    iput-boolean v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 5351
    const/4 v1, 0x0

    goto :goto_21

    .line 5354
    .end local v2    # "shouldInvokeRestrictBackground":Z
    :cond_1c
    iget-boolean v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    xor-int/2addr v2, v3

    .line 5355
    .restart local v2    # "shouldInvokeRestrictBackground":Z
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundBeforeBsm:Z

    .line 5358
    :goto_21
    if-eqz v2, :cond_26

    .line 5359
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundUL(Z)V

    .line 5363
    :cond_26
    iput-boolean v1, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundChangedInBsm:Z

    .line 5364
    return-void
.end method

.method updateRuleForAppIdleUL(I)V
    .registers 8
    .param p1, "uid"    # I

    .line 4235
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidValidForBlacklistRules(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 4237
    :cond_7
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 4238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRuleForAppIdleUL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4241
    :cond_25
    :try_start_25
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 4244
    .local v2, "appId":I
    sget-boolean v3, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v3, :cond_62

    .line 4245
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUidFirewallRule mPowerSaveTempWhitelistAppIds = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " idle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4246
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isUidForegroundOnRestrictPowerUL(uid) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4247
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4245
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4249
    :cond_62
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_7b

    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidIdle(I)Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 4250
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidForegroundOnRestrictPowerUL(I)Z

    move-result v3

    if-nez v3, :cond_7b

    .line 4251
    invoke-direct {p0, v4, p1, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V

    goto :goto_7f

    .line 4253
    :cond_7b
    const/4 v3, 0x0

    invoke-direct {p0, v4, p1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRule(III)V
    :try_end_7f
    .catchall {:try_start_25 .. :try_end_7f} :catchall_84

    .line 4256
    .end local v2    # "appId":I
    :goto_7f
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 4257
    nop

    .line 4258
    return-void

    .line 4256
    :catchall_84
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method updateRuleForDeviceIdleUL(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 4132
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(IZI)V

    .line 4133
    return-void
.end method

.method updateRuleForRestrictPowerUL(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 4118
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(IZI)V

    .line 4119
    return-void
.end method

.method updateRulesForAppIdleParoleUL()V
    .registers 9

    .line 4265
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    move-result v0

    .line 4266
    .local v0, "paroled":Z
    xor-int/lit8 v1, v0, 0x1

    .line 4267
    .local v1, "enableChain":Z
    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->enableFirewallChainUL(IZ)V

    .line 4269
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 4270
    .local v2, "ruleCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v2, :cond_3f

    .line 4271
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    .line 4272
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 4273
    .local v5, "oldRules":I
    if-eqz v1, :cond_26

    .line 4278
    and-int/lit8 v5, v5, 0xf

    goto :goto_2b

    .line 4281
    :cond_26
    and-int/lit16 v6, v5, 0xf0

    if-nez v6, :cond_2b

    .end local v4    # "uid":I
    .end local v5    # "oldRules":I
    goto :goto_3c

    .line 4283
    .restart local v4    # "uid":I
    .restart local v5    # "oldRules":I
    :cond_2b
    :goto_2b
    invoke-direct {p0, v4, v5, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForPowerRestrictionsUL(IIZ)I

    move-result v6

    .line 4284
    .local v6, "newUidRules":I
    if-nez v6, :cond_37

    .line 4285
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_3c

    .line 4287
    :cond_37
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 4270
    .end local v4    # "uid":I
    .end local v5    # "oldRules":I
    .end local v6    # "newUidRules":I
    :goto_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 4290
    .end local v3    # "i":I
    :cond_3f
    return-void
.end method

.method updateRulesForAppIdleUL()V
    .registers 15

    .line 4206
    const-string/jumbo v0, "updateRulesForAppIdleUL"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4208
    :try_start_9
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 4209
    .local v0, "uidRules":Landroid/util/SparseIntArray;
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 4212
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    .line 4213
    .local v3, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 4213
    .local v4, "ui":I
    :goto_1a
    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ltz v4, :cond_4d

    .line 4214
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 4215
    .local v7, "user":Landroid/content/pm/UserInfo;
    iget-object v8, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Landroid/app/usage/UsageStatsManagerInternal;->getIdleUidsForUser(I)[I

    move-result-object v8

    .line 4216
    .local v8, "idleUids":[I
    array-length v9, v8

    move v10, v6

    :goto_2e
    if-ge v10, v9, :cond_4a

    aget v11, v8, v10

    .line 4217
    .local v11, "uid":I
    iget-object v12, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPowerSaveTempWhitelistAppIds:Landroid/util/SparseBooleanArray;

    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    invoke-virtual {v12, v13, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v12

    if-nez v12, :cond_47

    .line 4221
    invoke-direct {p0, v11}, Lcom/android/server/net/NetworkPolicyManagerService;->hasInternetPermissions(I)Z

    move-result v12

    if-eqz v12, :cond_47

    .line 4222
    invoke-virtual {v0, v11, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 4216
    .end local v11    # "uid":I
    :cond_47
    add-int/lit8 v10, v10, 0x1

    goto :goto_2e

    .line 4213
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v8    # "idleUids":[I
    :cond_4a
    add-int/lit8 v4, v4, -0x1

    goto :goto_1a

    .line 4228
    .end local v4    # "ui":I
    :cond_4d
    invoke-direct {p0, v5, v0, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidFirewallRulesUL(ILandroid/util/SparseIntArray;I)V
    :try_end_50
    .catchall {:try_start_9 .. :try_end_50} :catchall_55

    .line 4230
    .end local v0    # "uidRules":Landroid/util/SparseIntArray;
    .end local v3    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4231
    nop

    .line 4232
    return-void

    .line 4230
    :catchall_55
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method updateRulesForDeviceIdleUL()V
    .registers 6

    .line 4122
    const-string/jumbo v0, "updateRulesForDeviceIdleUL"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4124
    :try_start_9
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mDeviceIdleMode:Z

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_16

    .line 4127
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4128
    nop

    .line 4129
    return-void

    .line 4127
    :catchall_16
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method updateRulesForPowerSaveUL()V
    .registers 6

    .line 4108
    const-string/jumbo v0, "updateRulesForPowerSaveUL"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4110
    :try_start_9
    iget-boolean v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictPower:Z

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForWhitelistedPowerSaveUL(ZILandroid/util/SparseIntArray;)V
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_16

    .line 4113
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 4114
    nop

    .line 4115
    return-void

    .line 4113
    :catchall_16
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public updateSettings()V
    .registers 5

    .line 786
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 787
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "doze_mode_policy"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    sput v1, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicy:I

    .line 789
    sget-boolean v1, Lcom/android/server/net/NetworkPolicyManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2d

    .line 790
    const-string v1, "NetworkPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPolicy updated to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicy:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_2d
    return-void
.end method

.method updateSubscriptions()V
    .registers 16

    .line 2081
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_c

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "updateSubscriptions()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    :cond_c
    const-string/jumbo v0, "updateSubscriptions"

    const-wide/32 v1, 0x200000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2084
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2085
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionManager;

    .line 2087
    .local v3, "sm":Landroid/telephony/SubscriptionManager;
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([I)[I

    move-result-object v4

    .line 2088
    .local v4, "subIds":[I
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getMergedSubscriberIds()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2090
    .local v5, "mergedSubscriberIds":[Ljava/lang/String;
    new-instance v6, Landroid/util/SparseArray;

    array-length v7, v4

    invoke-direct {v6, v7}, Landroid/util/SparseArray;-><init>(I)V

    .line 2091
    .local v6, "subIdToSubscriberId":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    array-length v7, v4

    const/4 v8, 0x0

    move v9, v8

    :goto_42
    if-ge v9, v7, :cond_6d

    aget v10, v4, v9

    .line 2092
    .local v10, "subId":I
    invoke-virtual {v0, v10}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v11

    .line 2093
    .local v11, "subscriberId":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_54

    .line 2094
    invoke-virtual {v6, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6a

    .line 2096
    :cond_54
    const-string v12, "NetworkPolicy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Missing subscriberId for subId "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    .end local v10    # "subId":I
    .end local v11    # "subscriberId":Ljava/lang/String;
    :goto_6a
    add-int/lit8 v9, v9, 0x1

    goto :goto_42

    .line 2100
    :cond_6d
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2101
    :try_start_70
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 2102
    nop

    .line 2102
    .local v8, "i":I
    :goto_76
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_8e

    .line 2103
    iget-object v9, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubIdToSubscriberId:Landroid/util/SparseArray;

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 2104
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2103
    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2102
    add-int/lit8 v8, v8, 0x1

    goto :goto_76

    .line 2107
    .end local v8    # "i":I
    :cond_8e
    iput-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mMergedSubscriberIds:[Ljava/lang/String;

    .line 2108
    monitor-exit v7
    :try_end_91
    .catchall {:try_start_70 .. :try_end_91} :catchall_95

    .line 2110
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2111
    return-void

    .line 2108
    :catchall_95
    move-exception v1

    :try_start_96
    monitor-exit v7
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v1
.end method

.method writePolicyAL()V
    .registers 16

    .line 2698
    sget-boolean v0, Lcom/android/server/net/NetworkPolicyManagerService;->LOGV:Z

    if-eqz v0, :cond_c

    const-string v0, "NetworkPolicy"

    const-string/jumbo v1, "writePolicyAL()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    :cond_c
    const/4 v0, 0x0

    move-object v1, v0

    .line 2702
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_e
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 2704
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 2705
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2706
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2708
    const-string/jumbo v3, "policy-list"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2709
    const-string/jumbo v3, "version"

    const/16 v4, 0xb

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2710
    const-string/jumbo v3, "restrictBackground"

    iget-boolean v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2713
    const/4 v3, 0x0

    move v4, v3

    .line 2713
    .local v4, "i":I
    :goto_43
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_e6

    .line 2714
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPolicy:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkPolicy;

    .line 2715
    .local v5, "policy":Landroid/net/NetworkPolicy;
    iget-object v6, v5, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    .line 2716
    .local v6, "template":Landroid/net/NetworkTemplate;
    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->isPersistable()Z

    move-result v7

    if-nez v7, :cond_5d

    .line 2716
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    .end local v6    # "template":Landroid/net/NetworkTemplate;
    goto/16 :goto_e2

    .line 2718
    .restart local v5    # "policy":Landroid/net/NetworkPolicy;
    .restart local v6    # "template":Landroid/net/NetworkTemplate;
    :cond_5d
    const-string/jumbo v7, "network-policy"

    invoke-interface {v2, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2719
    const-string/jumbo v7, "networkTemplate"

    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v8

    invoke-static {v2, v7, v8}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2720
    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->getSubscriberId()Ljava/lang/String;

    move-result-object v7

    .line 2721
    .local v7, "subscriberId":Ljava/lang/String;
    if-eqz v7, :cond_79

    .line 2722
    const-string/jumbo v8, "subscriberId"

    invoke-interface {v2, v0, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2724
    :cond_79
    invoke-virtual {v6}, Landroid/net/NetworkTemplate;->getNetworkId()Ljava/lang/String;

    move-result-object v8

    .line 2725
    .local v8, "networkId":Ljava/lang/String;
    if-eqz v8, :cond_85

    .line 2726
    const-string/jumbo v9, "networkId"

    invoke-interface {v2, v0, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2728
    :cond_85
    const-string v9, "cycleStart"

    iget-object v10, v5, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v10, v10, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 2729
    invoke-static {v10}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v10

    .line 2728
    invoke-static {v2, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2730
    const-string v9, "cycleEnd"

    iget-object v10, v5, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v10, v10, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 2731
    invoke-static {v10}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v10

    .line 2730
    invoke-static {v2, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2732
    const-string v9, "cyclePeriod"

    iget-object v10, v5, Landroid/net/NetworkPolicy;->cycleRule:Landroid/util/RecurrenceRule;

    iget-object v10, v10, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 2733
    invoke-static {v10}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/time/Period;)Ljava/lang/String;

    move-result-object v10

    .line 2732
    invoke-static {v2, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2734
    const-string/jumbo v9, "warningBytes"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v2, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2735
    const-string/jumbo v9, "limitBytes"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {v2, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2736
    const-string/jumbo v9, "lastWarningSnooze"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->lastWarningSnooze:J

    invoke-static {v2, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2737
    const-string/jumbo v9, "lastLimitSnooze"

    iget-wide v10, v5, Landroid/net/NetworkPolicy;->lastLimitSnooze:J

    invoke-static {v2, v9, v10, v11}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2738
    const-string/jumbo v9, "metered"

    iget-boolean v10, v5, Landroid/net/NetworkPolicy;->metered:Z

    invoke-static {v2, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2739
    const-string/jumbo v9, "inferred"

    iget-boolean v10, v5, Landroid/net/NetworkPolicy;->inferred:Z

    invoke-static {v2, v9, v10}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 2740
    const-string/jumbo v9, "network-policy"

    invoke-interface {v2, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2713
    .end local v5    # "policy":Landroid/net/NetworkPolicy;
    .end local v6    # "template":Landroid/net/NetworkTemplate;
    .end local v7    # "subscriberId":Ljava/lang/String;
    .end local v8    # "networkId":Ljava/lang/String;
    :goto_e2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_43

    .line 2744
    .end local v4    # "i":I
    :cond_e6
    move v4, v3

    .line 2744
    .restart local v4    # "i":I
    :goto_e7
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_193

    .line 2745
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 2746
    .local v5, "subId":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlansOwner:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2747
    .local v6, "ownerPackage":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionPlans:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/telephony/SubscriptionPlan;

    .line 2748
    .local v7, "plans":[Landroid/telephony/SubscriptionPlan;
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10d

    .line 2748
    .end local v5    # "subId":I
    .end local v6    # "ownerPackage":Ljava/lang/String;
    .end local v7    # "plans":[Landroid/telephony/SubscriptionPlan;
    goto/16 :goto_18f

    .line 2750
    .restart local v5    # "subId":I
    .restart local v6    # "ownerPackage":Ljava/lang/String;
    .restart local v7    # "plans":[Landroid/telephony/SubscriptionPlan;
    :cond_10d
    array-length v8, v7

    move v9, v3

    :goto_10f
    if-ge v9, v8, :cond_18f

    aget-object v10, v7, v9

    .line 2751
    .local v10, "plan":Landroid/telephony/SubscriptionPlan;
    const-string/jumbo v11, "subscription-plan"

    invoke-interface {v2, v0, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2752
    const-string/jumbo v11, "subId"

    invoke-static {v2, v11, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2753
    const-string/jumbo v11, "ownerPackage"

    invoke-static {v2, v11, v6}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2754
    invoke-virtual {v10}, Landroid/telephony/SubscriptionPlan;->getCycleRule()Landroid/util/RecurrenceRule;

    move-result-object v11

    .line 2755
    .local v11, "cycleRule":Landroid/util/RecurrenceRule;
    const-string v12, "cycleStart"

    iget-object v13, v11, Landroid/util/RecurrenceRule;->start:Ljava/time/ZonedDateTime;

    .line 2756
    invoke-static {v13}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v13

    .line 2755
    invoke-static {v2, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2757
    const-string v12, "cycleEnd"

    iget-object v13, v11, Landroid/util/RecurrenceRule;->end:Ljava/time/ZonedDateTime;

    .line 2758
    invoke-static {v13}, Landroid/util/RecurrenceRule;->convertZonedDateTime(Ljava/time/ZonedDateTime;)Ljava/lang/String;

    move-result-object v13

    .line 2757
    invoke-static {v2, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2759
    const-string v12, "cyclePeriod"

    iget-object v13, v11, Landroid/util/RecurrenceRule;->period:Ljava/time/Period;

    .line 2760
    invoke-static {v13}, Landroid/util/RecurrenceRule;->convertPeriod(Ljava/time/Period;)Ljava/lang/String;

    move-result-object v13

    .line 2759
    invoke-static {v2, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2761
    const-string/jumbo v12, "title"

    invoke-virtual {v10}, Landroid/telephony/SubscriptionPlan;->getTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v2, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2762
    const-string/jumbo v12, "summary"

    invoke-virtual {v10}, Landroid/telephony/SubscriptionPlan;->getSummary()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-static {v2, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2763
    const-string/jumbo v12, "limitBytes"

    invoke-virtual {v10}, Landroid/telephony/SubscriptionPlan;->getDataLimitBytes()J

    move-result-wide v13

    invoke-static {v2, v12, v13, v14}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2764
    const-string/jumbo v12, "limitBehavior"

    invoke-virtual {v10}, Landroid/telephony/SubscriptionPlan;->getDataLimitBehavior()I

    move-result v13

    invoke-static {v2, v12, v13}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2765
    const-string/jumbo v12, "usageBytes"

    invoke-virtual {v10}, Landroid/telephony/SubscriptionPlan;->getDataUsageBytes()J

    move-result-wide v13

    invoke-static {v2, v12, v13, v14}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2766
    const-string/jumbo v12, "usageTime"

    invoke-virtual {v10}, Landroid/telephony/SubscriptionPlan;->getDataUsageTime()J

    move-result-wide v13

    invoke-static {v2, v12, v13, v14}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 2767
    const-string/jumbo v12, "subscription-plan"

    invoke-interface {v2, v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2750
    .end local v10    # "plan":Landroid/telephony/SubscriptionPlan;
    .end local v11    # "cycleRule":Landroid/util/RecurrenceRule;
    add-int/lit8 v9, v9, 0x1

    goto :goto_10f

    .line 2744
    .end local v5    # "subId":I
    .end local v6    # "ownerPackage":Ljava/lang/String;
    .end local v7    # "plans":[Landroid/telephony/SubscriptionPlan;
    :cond_18f
    :goto_18f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_e7

    .line 2772
    .end local v4    # "i":I
    :cond_193
    move v4, v3

    .line 2772
    .restart local v4    # "i":I
    :goto_194
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1c6

    .line 2773
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 2774
    .local v5, "uid":I
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    .line 2777
    .local v6, "policy":I
    if-nez v6, :cond_1ab

    .line 2777
    .end local v5    # "uid":I
    .end local v6    # "policy":I
    goto :goto_1c3

    .line 2779
    .restart local v5    # "uid":I
    .restart local v6    # "policy":I
    :cond_1ab
    const-string/jumbo v7, "uid-policy"

    invoke-interface {v2, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2780
    const-string/jumbo v7, "uid"

    invoke-static {v2, v7, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2781
    const-string/jumbo v7, "policy"

    invoke-static {v2, v7, v6}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2782
    const-string/jumbo v7, "uid-policy"

    invoke-interface {v2, v0, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2772
    .end local v5    # "uid":I
    .end local v6    # "policy":I
    :goto_1c3
    add-int/lit8 v4, v4, 0x1

    goto :goto_194

    .line 2785
    .end local v4    # "i":I
    :cond_1c6
    const-string/jumbo v4, "policy-list"

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2788
    const-string/jumbo v4, "whitelist"

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2791
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    .line 2792
    .local v4, "size":I
    nop

    .line 2792
    .local v3, "i":I
    :goto_1d9
    if-ge v3, v4, :cond_1f6

    .line 2793
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackgroundWhitelistRevokedUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 2794
    .restart local v5    # "uid":I
    const-string/jumbo v6, "revoked-restrict-background"

    invoke-interface {v2, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2795
    const-string/jumbo v6, "uid"

    invoke-static {v2, v6, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 2796
    const-string/jumbo v6, "revoked-restrict-background"

    invoke-interface {v2, v0, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2792
    .end local v5    # "uid":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d9

    .line 2799
    .end local v3    # "i":I
    :cond_1f6
    const-string/jumbo v3, "whitelist"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2801
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 2803
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_204
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_204} :catch_205

    .line 2808
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "size":I
    goto :goto_20d

    .line 2804
    :catch_205
    move-exception v0

    .line 2805
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_20d

    .line 2806
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 2809
    .end local v0    # "e":Ljava/io/IOException;
    :cond_20d
    :goto_20d
    return-void
.end method
