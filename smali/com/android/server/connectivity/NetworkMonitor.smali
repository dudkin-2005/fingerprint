.class public Lcom/android/server/connectivity/NetworkMonitor;
.super Lcom/android/internal/util/StateMachine;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkMonitor$DefaultNetworkMonitorSettings;,
        Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;,
        Lcom/android/server/connectivity/NetworkMonitor$OneAddressPerFamilyNetwork;,
        Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;,
        Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;,
        Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;,
        Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;,
        Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;,
        Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;,
        Lcom/android/server/connectivity/NetworkMonitor$DefaultState;,
        Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;,
        Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x82000

.field private static final BLAME_FOR_EVALUATION_ATTEMPTS:I = 0x5

.field private static final CAPTIVE_PORTAL_REEVALUATE_DELAY_MS:I = 0x927c0

.field private static final CMD_CAPTIVE_PORTAL_APP_FINISHED:I = 0x82009

.field private static final CMD_CAPTIVE_PORTAL_RECHECK:I = 0x8200c

.field private static final CMD_EVALUATE_PRIVATE_DNS:I = 0x8200f

.field private static final CMD_FORCE_REEVALUATION:I = 0x82008

.field public static final CMD_LAUNCH_CAPTIVE_PORTAL_APP:I = 0x8200b

.field public static final CMD_NETWORK_CONNECTED:I = 0x82001

.field public static final CMD_NETWORK_DISCONNECTED:I = 0x82007

.field private static final CMD_PRIVATE_DNS_SETTINGS_CHANGED:I = 0x8200d

.field private static final CMD_REEVALUATE:I = 0x82006

.field private static final DBG:Z = true

.field private static final DEFAULT_CHINA_HTTP_URL:[Ljava/lang/String;

.field private static final DEFAULT_FALLBACK_URL:Ljava/lang/String; = "http://www.google.com/gen_204"

.field private static final DEFAULT_HTTPS_URL:Ljava/lang/String; = "https://www.google.com/generate_204"

.field private static final DEFAULT_HTTP_URL:Ljava/lang/String; = "http://connectivitycheck.gstatic.com/generate_204"

.field private static final DEFAULT_OTHER_FALLBACK_URLS:Ljava/lang/String; = "http://play.googleapis.com/generate_204"

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36"

.field public static final EVENT_NETWORK_TESTED:I = 0x82002

.field public static final EVENT_PRIVATE_DNS_CONFIG_RESOLVED:I = 0x8200e

.field public static final EVENT_PROVISIONING_NOTIFICATION:I = 0x8200a

.field private static final GOOGLE_HTTPS_SERVERS:[Ljava/lang/String;

.field private static final GOOGLE_HTTP_SERVERS:[Ljava/lang/String;

.field private static final GOOGLE_NETWORK_URL:Ljava/lang/String; = "www.google.com"

.field private static final HTTPS_PORT:I = 0x1bb

.field private static final HTTP_GOOGLE_NETWORK_URL:Ljava/lang/String; = "http://www.google.com"

.field private static final HTTP_NETWORK_TEST_URL:Ljava/lang/String; = "http://www.baidu.com"

.field private static final IGNORE_REEVALUATE_ATTEMPTS:I = 0x5

.field private static final INITIAL_REEVALUATE_DELAY_MS:I = 0x3e8

.field private static final INVALID_UID:I = -0x1

.field private static final MAX_REEVALUATE_DELAY_MS:I = 0x927c0

.field public static final NETWORK_TEST_RESULT_INVALID:I = 0x1

.field public static final NETWORK_TEST_RESULT_VALID:I = 0x0

.field private static final NETWORK_TEST_URL:Ljava/lang/String; = "www.baidu.com"

.field private static final NO_UID:I = 0x0

.field private static final NUM_VALIDATION_LOG_LINES:I = 0x14

.field private static final PROBE_TIMEOUT_MS:I = 0xbb8

.field private static final PUBLIC_HTTP_SERVERS:[Ljava/lang/String;

.field private static final SOCKET_TIMEOUT:I = 0x7d0

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false

.field private static final WIFI_DUPLICATE_GATEWAY:Ljava/lang/String; = "wifi_duplicate_gateway"

.field private static final mIsH2Version:Z


# instance fields
.field private final mCaptivePortalFallbackSpecs:[Landroid/net/captiveportal/CaptivePortalProbeSpec;

.field private final mCaptivePortalFallbackUrls:[Ljava/net/URL;

.field private final mCaptivePortalHttpUrl:Ljava/net/URL;

.field private final mCaptivePortalHttpsUrl:Ljava/net/URL;

.field private final mCaptivePortalState:Lcom/android/internal/util/State;

.field private final mCaptivePortalUserAgent:Ljava/lang/String;

.field private final mConnectivityServiceHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultRequest:Landroid/net/NetworkRequest;

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private mDontDisplaySigninNotification:Z

.field private final mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;

.field private final mEvaluatingState:Lcom/android/internal/util/State;

.field private final mEvaluationTimer:Landroid/net/util/Stopwatch;

.field private mGatewayDetector:Landroid/net/arp/OPGatewayDetector;

.field private mIPv4Gateway:Ljava/net/Inet4Address;

.field private mIPv4Self:Ljava/net/Inet4Address;

.field private mInterfaceName:Ljava/lang/String;

.field protected mIsCaptivePortalCheckEnabled:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mIsChecked:Z

.field private mLastPortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

.field private mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

.field private final mMaybeNotifyState:Lcom/android/internal/util/State;

.field private final mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

.field private final mNetId:I

.field private final mNetwork:Landroid/net/Network;

.field private final mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

.field private mNextFallbackUrlIndex:I

.field private mPrivateDnsProviderHostname:Ljava/lang/String;

.field private mReevaluateToken:I

.field private final mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUidResponsibleForReeval:I

.field private mUseHttps:Z

.field private mUserDoesNotWant:Z

.field private final mValidatedState:Lcom/android/internal/util/State;

.field private mValidations:I

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field public systemReady:Z

.field private final validationLogs:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 112
    const-class v0, Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    .line 134
    const-string/jumbo v0, "http://conn1.oppomobile.com/generate_204"

    const-string/jumbo v1, "http://conn2.oppomobile.com/generate_204"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor;->DEFAULT_CHINA_HTTP_URL:[Ljava/lang/String;

    .line 135
    const-string/jumbo v0, "http://www.noisyfox.cn/generate_204"

    const-string/jumbo v1, "http://captive.v2ex.co/generate_204"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor;->PUBLIC_HTTP_SERVERS:[Ljava/lang/String;

    .line 136
    const-string/jumbo v0, "http://www.google.cn/generate_204"

    const-string/jumbo v1, "http://developers.google.cn/generate_204"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor;->GOOGLE_HTTP_SERVERS:[Ljava/lang/String;

    .line 137
    const-string/jumbo v0, "https://www.google.cn/generate_204"

    const-string/jumbo v1, "https://developers.google.cn/generate_204"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor;->GOOGLE_HTTPS_SERVERS:[Ljava/lang/String;

    .line 138
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/connectivity/NetworkMonitor;->mIsH2Version:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "networkAgentInfo"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "defaultRequest"    # Landroid/net/NetworkRequest;

    .line 344
    new-instance v5, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v5}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    sget-object v6, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->DEFAULT:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/connectivity/NetworkMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;Landroid/net/metrics/IpConnectivityLog;Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;)V

    .line 346
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;Landroid/net/metrics/IpConnectivityLog;Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "networkAgentInfo"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p4, "defaultRequest"    # Landroid/net/NetworkRequest;
    .param p5, "logger"    # Landroid/net/metrics/IpConnectivityLog;
    .param p6, "settings"    # Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    .line 265
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    .line 273
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;

    .line 306
    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidations:I

    .line 309
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    .line 311
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    .line 313
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    .line 315
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    .line 316
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    .line 317
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    .line 318
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    .line 319
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    .line 320
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;

    .line 322
    iput-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    .line 324
    new-instance v1, Landroid/util/LocalLog;

    const/16 v3, 0x14

    invoke-direct {v1, v3}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    .line 326
    new-instance v1, Landroid/net/util/Stopwatch;

    invoke-direct {v1}, Landroid/net/util/Stopwatch;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    .line 329
    sget-object v1, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 331
    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNextFallbackUrlIndex:I

    .line 333
    iput-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mGatewayDetector:Landroid/net/arp/OPGatewayDetector;

    .line 334
    iput-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIPv4Gateway:Ljava/net/Inet4Address;

    .line 335
    iput-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIPv4Self:Ljava/net/Inet4Address;

    .line 336
    iput-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mInterfaceName:Ljava/lang/String;

    .line 338
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsChecked:Z

    .line 357
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->setDbg(Z)V

    .line 359
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    .line 360
    iput-object p5, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    .line 361
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    .line 362
    iput-object p6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    .line 363
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 364
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$OneAddressPerFamilyNetwork;

    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->network()Landroid/net/Network;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor$OneAddressPerFamilyNetwork;-><init>(Landroid/net/Network;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    .line 365
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    iget v0, v0, Landroid/net/Network;->netId:I

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    .line 366
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 367
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 368
    iput-object p4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    .line 370
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;)V

    .line 371
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 372
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 373
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 374
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 375
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 376
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->setInitialState(Lcom/android/internal/util/State;)V

    .line 378
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getIsCaptivePortalCheckEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    .line 379
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getUseHttpsValidation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    .line 380
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;

    .line 381
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpsUrl:Ljava/net/URL;

    .line 382
    invoke-static {p6, p1}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpUrl:Ljava/net/URL;

    .line 383
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->makeCaptivePortalFallbackUrls()[Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    .line 384
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->makeCaptivePortalFallbackProbeSpecs()[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackSpecs:[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    .line 386
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->start()V

    .line 387
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    .line 111
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/arp/OPGatewayDetector;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mGatewayDetector:Landroid/net/arp/OPGatewayDetector;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/arp/OPGatewayDetector;)Landroid/net/arp/OPGatewayDetector;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Landroid/net/arp/OPGatewayDetector;

    .line 111
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mGatewayDetector:Landroid/net/arp/OPGatewayDetector;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/NetworkMonitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .line 111
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    return p1
.end method

.method static synthetic access$1402(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .line 111
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .line 111
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .line 111
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/Object;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->notifyNetworkTestResultInvalid(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->isValidationRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->validationStage()Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;
    .param p2, "x2"    # Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/NetworkMonitor;->networkEventType(Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->maybeLogEvaluationResult(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/NetworkMonitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2608(Lcom/android/server/connectivity/NetworkMonitor;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidations:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidations:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->shallAccountForDupGateway()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->isCountryChinaLocal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;II)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/NetworkMonitor;->isNetworkReachable(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsChecked:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Z

    .line 111
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsChecked:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/connectivity/NetworkMonitor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->checkDupMAC()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3300()Z
    .registers 1

    .line 111
    sget-boolean v0, Lcom/android/server/connectivity/NetworkMonitor;->mIsH2Version:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/captiveportal/CaptivePortalProbeResult;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 111
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/Network;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/util/Stopwatch;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/connectivity/NetworkMonitor;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->setPreConditionForGatewayCheck()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->needToCheckGateway()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->probeGateway()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/connectivity/NetworkMonitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    return v0
.end method

.method static synthetic access$4204(Lcom/android/server/connectivity/NetworkMonitor;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .line 111
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Landroid/net/ProxyInfo;
    .param p2, "x2"    # Ljava/net/URL;
    .param p3, "x3"    # I

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Ljava/net/URL;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .line 111
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/NetworkMonitor;Landroid/os/Message;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # Landroid/os/Message;

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->smToString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;
    .param p1, "x1"    # I

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->logNetworkEvent(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/NetworkMonitor;

    .line 111
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method private checkDupMAC()V
    .registers 8

    .line 2008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "arp_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "the network is not OK, so check the duplicate mac"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->needToCheckGateway()Z

    move-result v0

    if-eqz v0, :cond_129

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mGatewayDetector:Landroid/net/arp/OPGatewayDetector;

    invoke-virtual {v0}, Landroid/net/arp/OPGatewayDetector;->hasDupGateway()Z

    move-result v0

    if-eqz v0, :cond_129

    .line 2010
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mGatewayDetector:Landroid/net/arp/OPGatewayDetector;

    invoke-virtual {v0}, Landroid/net/arp/OPGatewayDetector;->fetchGatewayMacFromRoute()[B

    move-result-object v0

    .line 2011
    .local v0, "currentMac":[B
    if-nez v0, :cond_48

    .line 2012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "currentMac is null, replase mac failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    return-void

    .line 2015
    :cond_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arp_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "need prepare next MAC and currentMac = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mGatewayDetector:Landroid/net/arp/OPGatewayDetector;

    invoke-virtual {v1}, Landroid/net/arp/OPGatewayDetector;->getMacAccount()Ljava/util/List;

    move-result-object v1

    .line 2017
    .local v1, "gatewayList":Ljava/util/List;, "Ljava/util/List<[B>;"
    if-eqz v1, :cond_129

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_129

    .line 2018
    const/4 v2, 0x0

    move v3, v2

    .line 2018
    .local v3, "i":I
    :goto_84
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_c7

    .line 2019
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "arp_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":the gateway\'s mac ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {p0, v6}, Lcom/android/server/connectivity/NetworkMonitor;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    add-int/lit8 v3, v3, 0x1

    goto :goto_84

    .line 2021
    .end local v3    # "i":I
    :cond_c7
    nop

    .line 2021
    .local v2, "i":I
    :goto_c8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_129

    .line 2022
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-direct {p0, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor;->isEqualArray([B[B)Z

    move-result v3

    if-nez v3, :cond_126

    .line 2023
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arp_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the new mac ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {p0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mGatewayDetector:Landroid/net/arp/OPGatewayDetector;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v3, v4}, Landroid/net/arp/OPGatewayDetector;->prepareNextAvailbeGateway([B)V

    .line 2025
    const v3, 0x82006

    iget v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    const/16 v5, 0x320

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(III)V

    .line 2026
    goto :goto_129

    .line 2021
    :cond_126
    add-int/lit8 v2, v2, 0x1

    goto :goto_c8

    .line 2031
    .end local v0    # "currentMac":[B
    .end local v1    # "gatewayList":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v2    # "i":I
    :cond_129
    :goto_129
    return-void
.end method

.method private static getCaptivePortalChinaHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "settings"    # Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;
    .param p1, "context"    # Landroid/content/Context;

    .line 1091
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor;->DEFAULT_CHINA_HTTP_URL:[Ljava/lang/String;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    sget-object v3, Lcom/android/server/connectivity/NetworkMonitor;->DEFAULT_CHINA_HTTP_URL:[Ljava/lang/String;

    array-length v3, v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    aget-object v0, v0, v1

    .line 1092
    .local v0, "mDefaultChinaHttpUrl":Ljava/lang/String;
    const-string v1, "captive_portal_china_http_url"

    invoke-interface {p0, p1, v1, v0}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getCaptivePortalGoogleChinaHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "settings"    # Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;
    .param p1, "context"    # Landroid/content/Context;

    .line 1103
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor;->GOOGLE_HTTP_SERVERS:[Ljava/lang/String;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    sget-object v3, Lcom/android/server/connectivity/NetworkMonitor;->GOOGLE_HTTP_SERVERS:[Ljava/lang/String;

    array-length v3, v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    aget-object v0, v0, v1

    .line 1104
    .local v0, "mGoogleChinaHttpUrl":Ljava/lang/String;
    const-string v1, "captive_portal_google_china_http_url"

    invoke-interface {p0, p1, v1, v0}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getCaptivePortalGoogleChinaHttpsUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "settings"    # Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;
    .param p1, "context"    # Landroid/content/Context;

    .line 1109
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor;->GOOGLE_HTTPS_SERVERS:[Ljava/lang/String;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    sget-object v3, Lcom/android/server/connectivity/NetworkMonitor;->GOOGLE_HTTPS_SERVERS:[Ljava/lang/String;

    array-length v3, v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    aget-object v0, v0, v1

    .line 1110
    .local v0, "mGoogleChinaHttpsUrl":Ljava/lang/String;
    const-string v1, "captive_portal_google_china_https_url"

    invoke-interface {p0, p1, v1, v0}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getCaptivePortalPublicChinaHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "settings"    # Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;
    .param p1, "context"    # Landroid/content/Context;

    .line 1097
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor;->PUBLIC_HTTP_SERVERS:[Ljava/lang/String;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    sget-object v3, Lcom/android/server/connectivity/NetworkMonitor;->PUBLIC_HTTP_SERVERS:[Ljava/lang/String;

    array-length v3, v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    aget-object v0, v0, v1

    .line 1098
    .local v0, "mPublicChinaHttpUrl":Ljava/lang/String;
    const-string v1, "captive_portal_public_china_http_url"

    invoke-interface {p0, p1, v1, v0}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCaptivePortalServerHttpUrl(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1079
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->DEFAULT:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    invoke-static {v0, p0}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCaptivePortalServerHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "settings"    # Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;
    .param p1, "context"    # Landroid/content/Context;

    .line 1084
    const-string v0, "captive_portal_http_url"

    const-string/jumbo v1, "http://connectivitycheck.gstatic.com/generate_204"

    invoke-interface {p0, p1, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCaptivePortalServerHttpsUrl()Ljava/lang/String;
    .registers 5

    .line 1073
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v2, "captive_portal_https_url"

    const-string/jumbo v3, "https://www.google.com/generate_204"

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCaptivePortalUserAgent()Ljava/lang/String;
    .registers 5

    .line 1159
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v2, "captive_portal_user_agent"

    const-string v3, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36"

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isCountryChinaLocal()Z
    .registers 4

    .line 1725
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 1726
    .local v0, "countryCode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "countryCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1727
    const-string v1, "CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isEqualArray([B[B)Z
    .registers 8
    .param p1, "sourceArray"    # [B
    .param p2, "targetArray"    # [B

    .line 1982
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_15

    if-eqz p2, :cond_15

    .line 1983
    move v2, v1

    .local v2, "i":I
    :goto_7
    array-length v3, p2

    if-ge v2, v3, :cond_14

    .line 1984
    aget-byte v3, p1, v2

    aget-byte v4, p2, v2

    if-eq v3, v4, :cond_11

    .line 1985
    return v1

    .line 1983
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1988
    .end local v2    # "i":I
    :cond_14
    return v0

    .line 1990
    :cond_15
    if-ne p1, p2, :cond_18

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    return v0
.end method

.method private isNetworkReachable(Ljava/lang/String;II)Z
    .registers 9
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "openPort"    # I
    .param p3, "timeOutMillis"    # I

    .line 1731
    const/4 v0, 0x0

    if-eqz p1, :cond_40

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_40

    .line 1736
    :cond_a
    :try_start_a
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_36

    .line 1736
    .local v1, "soc":Ljava/net/Socket;
    const/4 v2, 0x0

    .line 1737
    :try_start_10
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_18} :catch_25
    .catchall {:try_start_10 .. :try_end_18} :catchall_23

    .line 1738
    :try_start_18
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 1739
    .end local v1    # "soc":Ljava/net/Socket;
    const-string/jumbo v1, "isNetworkReachable: true"

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_21} :catch_36

    .line 1740
    const/4 v0, 0x1

    return v0

    .line 1738
    .restart local v1    # "soc":Ljava/net/Socket;
    :catchall_23
    move-exception v3

    goto :goto_27

    .line 1736
    :catch_25
    move-exception v2

    :try_start_26
    throw v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 1738
    :goto_27
    if-eqz v2, :cond_32

    :try_start_29
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_36

    goto :goto_35

    :catch_2d
    move-exception v4

    :try_start_2e
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_35

    :cond_32
    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    :goto_35
    throw v3
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_36} :catch_36

    .line 1741
    .end local v1    # "soc":Ljava/net/Socket;
    :catch_36
    move-exception v1

    .line 1742
    .local v1, "ex":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "socket IOException, return isNetworkReachable: false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    return v0

    .line 1732
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_40
    :goto_40
    sget-object v1, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    const-string v2, "NULL or empty url name to test, return isNetworkReachable: false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    return v0
.end method

.method private isSetupWizardCompleted()Z
    .registers 4

    .line 1183
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1184
    return v1

    .line 1186
    :cond_6
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    .line 1187
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "device_provisioned"

    .line 1186
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    move v1, v2

    nop

    :cond_17
    move v0, v1

    .line 1188
    .local v0, "setupCompleted":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setupwizard is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_28

    const-string v2, "completed"

    goto :goto_2b

    :cond_28
    const-string/jumbo v2, "running"

    :goto_2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1189
    return v0
.end method

.method private isValidationRequired()Z
    .registers 3

    .line 424
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget-object v0, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->isValidationRequired(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v0

    return v0
.end method

.method public static isValidationRequired(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .registers 3
    .param p0, "dfltNetCap"    # Landroid/net/NetworkCapabilities;
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 278
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    return v0
.end method

.method private logNetworkEvent(I)V
    .registers 6
    .param p1, "evtype"    # I

    .line 1879
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    .line 1880
    .local v0, "transports":[I
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    new-instance v3, Landroid/net/metrics/NetworkEvent;

    invoke-direct {v3, p1}, Landroid/net/metrics/NetworkEvent;-><init>(I)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/metrics/IpConnectivityLog;->log(I[ILandroid/os/Parcelable;)Z

    .line 1881
    return-void
.end method

.method private logValidationProbe(JII)V
    .registers 10
    .param p1, "durationMs"    # J
    .param p3, "probeType"    # I
    .param p4, "probeResult"    # I

    .line 1908
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    .line 1909
    .local v0, "transports":[I
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->validationStage()Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->isFirstValidation:Z

    .line 1910
    .local v1, "isFirstValidation":Z
    new-instance v2, Landroid/net/metrics/ValidationProbeEvent;

    invoke-direct {v2}, Landroid/net/metrics/ValidationProbeEvent;-><init>()V

    .line 1911
    .local v2, "ev":Landroid/net/metrics/ValidationProbeEvent;
    invoke-static {p3, v1}, Landroid/net/metrics/ValidationProbeEvent;->makeProbeType(IZ)I

    move-result v3

    iput v3, v2, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    .line 1912
    iput p4, v2, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    .line 1913
    iput-wide p1, v2, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    .line 1914
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    invoke-virtual {v3, v4, v0, v2}, Landroid/net/metrics/IpConnectivityLog;->log(I[ILandroid/os/Parcelable;)Z

    .line 1915
    return-void
.end method

.method private makeCaptivePortalFallbackProbeSpecs()[Landroid/net/captiveportal/CaptivePortalProbeSpec;
    .registers 5

    .line 1143
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v3, "captive_portal_fallback_probe_specs"

    invoke-interface {v1, v2, v3, v0}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1146
    .local v1, "settingsValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1147
    return-object v0

    .line 1150
    :cond_12
    invoke-static {v1}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->parseCaptivePortalProbeSpecs(Ljava/lang/String;)[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    move-result-object v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_16} :catch_17

    return-object v2

    .line 1151
    .end local v1    # "settingsValue":Ljava/lang/String;
    :catch_17
    move-exception v1

    .line 1153
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    const-string v3, "Error parsing configured fallback probe specs"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1154
    return-object v0
.end method

.method private makeCaptivePortalFallbackUrls()[Ljava/net/URL;
    .registers 11

    .line 1116
    const/4 v0, 0x0

    :try_start_1
    const-string v1, ","

    .line 1117
    .local v1, "separator":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v4, "captive_portal_fallback_url"

    const-string/jumbo v5, "http://www.google.com/gen_204"

    invoke-interface {v2, v3, v4, v5}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1119
    .local v2, "firstUrl":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v6, "captive_portal_other_fallback_urls"

    const-string/jumbo v7, "http://play.googleapis.com/generate_204"

    invoke-interface {v4, v5, v6, v7}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1122
    .local v3, "joinedUrls":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1123
    .local v4, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, v0

    :goto_3a
    if-ge v7, v6, :cond_4b

    aget-object v8, v5, v7

    .line 1124
    .local v8, "s":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v9

    .line 1125
    .local v9, "u":Ljava/net/URL;
    if-nez v9, :cond_45

    .line 1126
    goto :goto_48

    .line 1128
    :cond_45
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1123
    .end local v8    # "s":Ljava/lang/String;
    .end local v9    # "u":Ljava/net/URL;
    :goto_48
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a

    .line 1130
    :cond_4b
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_61

    .line 1131
    sget-object v5, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    const-string v6, "could not create any url from %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v0

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_61
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/net/URL;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/net/URL;
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6d} :catch_6e

    return-object v5

    .line 1134
    .end local v1    # "separator":Ljava/lang/String;
    .end local v2    # "firstUrl":Ljava/lang/String;
    .end local v3    # "joinedUrls":Ljava/lang/String;
    .end local v4    # "urls":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    :catch_6e
    move-exception v1

    .line 1136
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    const-string v3, "Error parsing configured fallback URLs"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1137
    new-array v0, v0, [Ljava/net/URL;

    return-object v0
.end method

.method private makeURL(Ljava/lang/String;)Ljava/net/URL;
    .registers 5
    .param p1, "url"    # Ljava/lang/String;

    .line 1776
    if-eqz p1, :cond_1d

    .line 1778
    :try_start_2
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_7} :catch_8

    return-object v0

    .line 1779
    :catch_8
    move-exception v0

    .line 1780
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1783
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method private maybeLogEvaluationResult(I)V
    .registers 8
    .param p1, "evtype"    # I

    .line 1900
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1901
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    .line 1902
    .local v0, "transports":[I
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    new-instance v3, Landroid/net/metrics/NetworkEvent;

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    invoke-virtual {v4}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v4

    invoke-direct {v3, p1, v4, v5}, Landroid/net/metrics/NetworkEvent;-><init>(IJ)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/metrics/IpConnectivityLog;->log(I[ILandroid/os/Parcelable;)Z

    .line 1903
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    invoke-virtual {v1}, Landroid/net/util/Stopwatch;->reset()V

    .line 1905
    .end local v0    # "transports":[I
    :cond_27
    return-void
.end method

.method private needToCheckGateway()Z
    .registers 2

    .line 1978
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mGatewayDetector:Landroid/net/arp/OPGatewayDetector;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIPv4Gateway:Ljava/net/Inet4Address;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private networkEventType(Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;)I
    .registers 4
    .param p1, "s"    # Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;
    .param p2, "r"    # Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;

    .line 1884
    iget-boolean v0, p1, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->isFirstValidation:Z

    if-eqz v0, :cond_e

    .line 1885
    iget-boolean v0, p2, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;->isValidated:Z

    if-eqz v0, :cond_b

    .line 1886
    const/16 v0, 0x8

    return v0

    .line 1888
    :cond_b
    const/16 v0, 0xa

    return v0

    .line 1891
    :cond_e
    iget-boolean v0, p2, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;->isValidated:Z

    if-eqz v0, :cond_15

    .line 1892
    const/16 v0, 0x9

    return v0

    .line 1894
    :cond_15
    const/16 v0, 0xb

    return v0
.end method

.method private nextFallbackSpec()Landroid/net/captiveportal/CaptivePortalProbeSpec;
    .registers 3

    .line 1173
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackSpecs:[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1174
    const/4 v0, 0x0

    return-object v0

    .line 1177
    :cond_a
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackSpecs:[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 1178
    .local v0, "idx":I
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackSpecs:[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private nextFallbackUrl()Ljava/net/URL;
    .registers 4

    .line 1164
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    array-length v0, v0

    if-nez v0, :cond_7

    .line 1165
    const/4 v0, 0x0

    return-object v0

    .line 1167
    :cond_7
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNextFallbackUrlIndex:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 1168
    .local v0, "idx":I
    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNextFallbackUrlIndex:I

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNextFallbackUrlIndex:I

    .line 1169
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    aget-object v1, v1, v0

    return-object v1
.end method

.method private notifyNetworkTestResultInvalid(Ljava/lang/Object;)V
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 431
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->reportFakeValidateResult()Z

    move-result v0

    const v1, 0x82002

    if-eqz v0, :cond_16

    .line 432
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 434
    return-void

    .line 437
    :cond_16
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 439
    return-void
.end method

.method private probeGateway()Z
    .registers 5

    .line 1974
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mGatewayDetector:Landroid/net/arp/OPGatewayDetector;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIPv4Self:Ljava/net/Inet4Address;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIPv4Gateway:Ljava/net/Inet4Address;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/arp/OPGatewayDetector;->doDupArp(Ljava/lang/String;Ljava/net/Inet4Address;Ljava/net/Inet4Address;)Z

    move-result v0

    return v0
.end method

.method private reportFakeValidateResult()Z
    .registers 5

    .line 1710
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_should_switch_network"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    .line 1712
    .local v0, "smartWifiEnabled":Z
    :goto_14
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->isSetupWizardCompleted()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->isCountryChinaLocal()Z

    move-result v3

    if-eqz v3, :cond_22

    if-eqz v0, :cond_26

    :cond_22
    sget-boolean v3, Lcom/android/server/connectivity/NetworkMonitor;->mIsH2Version:Z

    if-eqz v3, :cond_27

    .line 1713
    :cond_26
    return v1

    .line 1714
    :cond_27
    return v2
.end method

.method private sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .registers 6
    .param p1, "proxy"    # Landroid/net/ProxyInfo;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "probeType"    # I

    .line 1306
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_7
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1307
    .local v0, "host":Ljava/lang/String;
    :goto_b
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->sendDnsProbe(Ljava/lang/String;)V

    .line 1308
    const/4 v1, 0x0

    invoke-virtual {p0, p2, p3, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;ILandroid/net/captiveportal/CaptivePortalProbeSpec;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v1

    return-object v1
.end method

.method private sendDnsProbe(Ljava/lang/String;)V
    .registers 13
    .param p1, "host"    # Ljava/lang/String;

    .line 1313
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1314
    return-void

    .line 1317
    :cond_7
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/metrics/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    move-result-object v1

    .line 1318
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Landroid/net/util/Stopwatch;

    invoke-direct {v2}, Landroid/net/util/Stopwatch;-><init>()V

    invoke-virtual {v2}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    move-result-object v2

    .line 1322
    .local v2, "watch":Landroid/net/util/Stopwatch;
    const/4 v3, 0x1

    :try_start_16
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    invoke-virtual {v4, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    .line 1323
    .local v4, "addresses":[Ljava/net/InetAddress;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 1324
    .local v5, "buffer":Ljava/lang/StringBuffer;
    array-length v6, v4

    move v7, v0

    :goto_23
    if-ge v7, v6, :cond_36

    aget-object v8, v4, v7

    .line 1325
    .local v8, "address":Ljava/net/InetAddress;
    const/16 v9, 0x2c

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1324
    .end local v8    # "address":Ljava/net/InetAddress;
    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    .line 1327
    :cond_36
    const/4 v6, 0x1

    .line 1328
    .local v6, "result":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OK "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_4c
    .catch Ljava/net/UnknownHostException; {:try_start_16 .. :try_end_4c} :catch_4e

    .end local v4    # "addresses":[Ljava/net/InetAddress;
    .end local v5    # "buffer":Ljava/lang/StringBuffer;
    move-object v4, v7

    .line 1332
    .local v4, "connectInfo":Ljava/lang/String;
    goto :goto_52

    .line 1329
    .end local v4    # "connectInfo":Ljava/lang/String;
    .end local v6    # "result":I
    :catch_4e
    move-exception v4

    .line 1330
    .local v4, "e":Ljava/net/UnknownHostException;
    const/4 v6, 0x0

    .line 1331
    .restart local v6    # "result":I
    const-string v4, "FAIL"

    .line 1333
    .local v4, "connectInfo":Ljava/lang/String;
    :goto_52
    invoke-virtual {v2}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v7

    .line 1334
    .local v7, "latency":J
    const-string v5, "%dms %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 1335
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v0

    aput-object v4, v9, v3

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1334
    invoke-direct {p0, v0, p1, v3}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    .line 1336
    invoke-direct {p0, v7, v8, v0, v6}, Lcom/android/server/connectivity/NetworkMonitor;->logValidationProbe(JII)V

    .line 1337
    return-void
.end method

.method private sendNetworkConditionsBroadcast(ZZJJ)V
    .registers 14
    .param p1, "responseReceived"    # Z
    .param p2, "isCaptivePortal"    # Z
    .param p3, "requestTimestampMs"    # J
    .param p5, "responseTimestampMs"    # J

    .line 1795
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getWifiScansAlwaysAvailableDisabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1796
    return-void

    .line 1799
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    if-nez v0, :cond_c

    .line 1800
    return-void

    .line 1803
    :cond_c
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.NETWORK_CONDITIONS_MEASURED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1805
    .local v0, "latencyBroadcast":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_e2

    .line 1859
    return-void

    .line 1807
    :pswitch_1f
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1808
    .local v1, "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v1, :cond_3b

    .line 1816
    const-string v2, "extra_ssid"

    .line 1817
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 1816
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1818
    const-string v2, "extra_bssid"

    .line 1819
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    .line 1818
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_b4

    .line 1822
    :cond_3b
    return-void

    .line 1826
    .end local v1    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :pswitch_3c
    const-string v1, "extra_network_type"

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1827
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 1826
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1828
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    .line 1829
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-nez v1, :cond_50

    return-void

    .line 1830
    :cond_50
    const/4 v2, 0x0

    .line 1831
    .local v2, "numRegisteredCellInfo":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CellInfo;

    .line 1832
    .local v4, "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v4}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 1833
    add-int/lit8 v2, v2, 0x1

    .line 1834
    const/4 v5, 0x1

    if-le v2, v5, :cond_6d

    .line 1837
    return-void

    .line 1839
    :cond_6d
    instance-of v5, v4, Landroid/telephony/CellInfoCdma;

    if-eqz v5, :cond_7e

    .line 1840
    move-object v5, v4

    check-cast v5, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v5}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v5

    .line 1841
    .local v5, "cellId":Landroid/telephony/CellIdentityCdma;
    const-string v6, "extra_cellid"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1842
    .end local v5    # "cellId":Landroid/telephony/CellIdentityCdma;
    goto :goto_b2

    :cond_7e
    instance-of v5, v4, Landroid/telephony/CellInfoGsm;

    if-eqz v5, :cond_8f

    .line 1843
    move-object v5, v4

    check-cast v5, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v5}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v5

    .line 1844
    .local v5, "cellId":Landroid/telephony/CellIdentityGsm;
    const-string v6, "extra_cellid"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1845
    .end local v5    # "cellId":Landroid/telephony/CellIdentityGsm;
    goto :goto_b2

    :cond_8f
    instance-of v5, v4, Landroid/telephony/CellInfoLte;

    if-eqz v5, :cond_a0

    .line 1846
    move-object v5, v4

    check-cast v5, Landroid/telephony/CellInfoLte;

    invoke-virtual {v5}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v5

    .line 1847
    .local v5, "cellId":Landroid/telephony/CellIdentityLte;
    const-string v6, "extra_cellid"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1848
    .end local v5    # "cellId":Landroid/telephony/CellIdentityLte;
    goto :goto_b2

    :cond_a0
    instance-of v5, v4, Landroid/telephony/CellInfoWcdma;

    if-eqz v5, :cond_b1

    .line 1849
    move-object v5, v4

    check-cast v5, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v5}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v5

    .line 1850
    .local v5, "cellId":Landroid/telephony/CellIdentityWcdma;
    const-string v6, "extra_cellid"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1851
    .end local v5    # "cellId":Landroid/telephony/CellIdentityWcdma;
    goto :goto_b2

    .line 1853
    :cond_b1
    return-void

    .line 1856
    .end local v4    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_b2
    :goto_b2
    goto :goto_55

    .line 1857
    :cond_b3
    nop

    .line 1861
    .end local v1    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .end local v2    # "numRegisteredCellInfo":I
    :goto_b4
    const-string v1, "extra_connectivity_type"

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 1862
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 1861
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1863
    const-string v1, "extra_response_received"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1865
    const-string v1, "extra_request_timestamp_ms"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1868
    if-eqz p1, :cond_d7

    .line 1869
    const-string v1, "extra_is_captive_portal"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1871
    const-string v1, "extra_response_timestamp_ms"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1874
    :cond_d7
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v3, "android.permission.ACCESS_NETWORK_CONDITIONS"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1876
    return-void

    nop

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_1f
    .end packed-switch
.end method

.method private sendParallelHttpChinaH2Probes(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .registers 18
    .param p1, "proxy"    # Landroid/net/ProxyInfo;
    .param p2, "httpChinaUrl"    # Ljava/net/URL;
    .param p3, "httpPublicChinaUrl"    # Ljava/net/URL;
    .param p4, "httpGoogleChinaUrl"    # Ljava/net/URL;

    move-object v9, p0

    .line 1533
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v10, v0

    .line 1569
    .local v10, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, v9

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ILandroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    move-object v11, v0

    .line 1570
    .local v11, "httpChinaProbe":Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;

    const/4 v3, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ILandroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    move-object v12, v0

    .line 1571
    .local v12, "httpPublicChinaProbe":Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;

    const/4 v3, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ILandroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    move-object v1, v0

    .line 1574
    .local v1, "httpGoogleChinaProbe":Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;
    :try_start_28
    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->start()V

    .line 1575
    invoke-virtual {v12}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->start()V

    .line 1576
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->start()V

    .line 1577
    const-wide/16 v2, 0xbb8

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v2, v3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_38} :catch_149
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_28 .. :try_end_38} :catch_140

    .line 1584
    nop

    .line 1586
    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v2

    .line 1587
    .local v2, "httpChinaResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-virtual {v12}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v3

    .line 1588
    .local v3, "httpPublicChinaResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v4

    .line 1590
    .local v4, "httpGoogleChinaResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", httpChinaResult result ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", httpPublicChinaResult result ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", httpGoogleChinaResult result ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1594
    invoke-virtual {v2}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_ac

    return-object v2

    .line 1595
    :cond_ac
    invoke-virtual {v3}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_b3

    return-object v3

    .line 1596
    :cond_b3
    invoke-virtual {v4}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_ba

    return-object v4

    .line 1598
    :cond_ba
    invoke-virtual {v2}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    if-eqz v0, :cond_c1

    return-object v2

    .line 1599
    :cond_c1
    invoke-virtual {v3}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    if-eqz v0, :cond_c8

    return-object v3

    .line 1600
    :cond_c8
    invoke-virtual {v4}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    if-eqz v0, :cond_cf

    return-object v4

    .line 1604
    :cond_cf
    :try_start_cf
    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->join()V

    .line 1605
    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_e1

    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    return-object v0

    .line 1606
    :cond_e1
    invoke-virtual {v12}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->join()V

    .line 1607
    invoke-virtual {v12}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_f3

    invoke-virtual {v12}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    return-object v0

    .line 1608
    :cond_f3
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->join()V

    .line 1609
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_105

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    return-object v0

    .line 1610
    :cond_105
    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    if-eqz v0, :cond_114

    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    return-object v0

    .line 1611
    :cond_114
    invoke-virtual {v12}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    if-eqz v0, :cond_123

    invoke-virtual {v12}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    return-object v0

    .line 1612
    :cond_123
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v0

    if-eqz v0, :cond_132

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    return-object v0

    .line 1613
    :cond_132
    invoke-virtual {v11}, Lcom/android/server/connectivity/NetworkMonitor$2ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0
    :try_end_136
    .catch Ljava/lang/InterruptedException; {:try_start_cf .. :try_end_136} :catch_137

    return-object v0

    .line 1614
    :catch_137
    move-exception v0

    .line 1615
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v5, "Error: http or public http probe wait interrupted!"

    invoke-direct {v9, v5}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1616
    sget-object v5, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v5

    .line 1581
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "httpChinaResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    .end local v3    # "httpPublicChinaResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    .end local v4    # "httpGoogleChinaResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    :catch_140
    move-exception v0

    .line 1582
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v2, "Error: array out of bound!"

    invoke-direct {v9, v2}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1583
    sget-object v2, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v2

    .line 1578
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_149
    move-exception v0

    .line 1579
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "Error: probes wait interrupted!"

    invoke-direct {v9, v2}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1580
    sget-object v2, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v2
.end method

.method private sendParallelHttpChinaO2Probes(Landroid/net/ProxyInfo;[Ljava/lang/String;Ljava/net/URL;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .registers 15
    .param p1, "proxy"    # Landroid/net/ProxyInfo;
    .param p2, "httpChinaServers"    # [Ljava/lang/String;
    .param p3, "httpsGoogleChinaUrl"    # Ljava/net/URL;

    .line 1623
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1659
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;

    const/4 v4, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ILandroid/net/ProxyInfo;[Ljava/lang/String;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    .line 1660
    .local v1, "httpChinaServer1Probe":Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;
    new-instance v9, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;

    const/4 v4, 0x1

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ILandroid/net/ProxyInfo;[Ljava/lang/String;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    .line 1661
    .local v9, "httpChinaServer2Probe":Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;
    new-instance v10, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;

    const/4 v4, 0x2

    move-object v2, v10

    invoke-direct/range {v2 .. v8}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ILandroid/net/ProxyInfo;[Ljava/lang/String;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    move-object v2, v10

    .line 1664
    .local v2, "httpsChinaServerProbe":Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;
    :try_start_21
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->start()V

    .line 1665
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->start()V

    .line 1666
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->start()V

    .line 1667
    const-wide/16 v3, 0xbb8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_21 .. :try_end_31} :catch_142
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_21 .. :try_end_31} :catch_139

    .line 1674
    nop

    .line 1676
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v3

    .line 1677
    .local v3, "httpChinaServer1Result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v4

    .line 1678
    .local v4, "httpChinaServer2Result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v5

    .line 1680
    .local v5, "httpsChinaServerResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", httpChinaServer1Result result ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1681
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", httpChinaServer2Result result ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1682
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", httpsChinaServerResult result ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1684
    invoke-virtual {v3}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_a5

    return-object v3

    .line 1685
    :cond_a5
    invoke-virtual {v4}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_ac

    return-object v4

    .line 1686
    :cond_ac
    invoke-virtual {v5}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_b3

    return-object v5

    .line 1688
    :cond_b3
    invoke-virtual {v3}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v6

    if-eqz v6, :cond_ba

    return-object v3

    .line 1689
    :cond_ba
    invoke-virtual {v4}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v6

    if-eqz v6, :cond_c1

    return-object v4

    .line 1690
    :cond_c1
    invoke-virtual {v5}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v6

    if-eqz v6, :cond_c8

    return-object v5

    .line 1693
    :cond_c8
    :try_start_c8
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->join()V

    .line 1694
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_da

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6

    return-object v6

    .line 1695
    :cond_da
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->join()V

    .line 1696
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_ec

    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6

    return-object v6

    .line 1697
    :cond_ec
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->join()V

    .line 1698
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_fe

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6

    return-object v6

    .line 1699
    :cond_fe
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v6

    if-eqz v6, :cond_10d

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6

    return-object v6

    .line 1700
    :cond_10d
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v6

    if-eqz v6, :cond_11c

    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6

    return-object v6

    .line 1701
    :cond_11c
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v6

    if-eqz v6, :cond_12b

    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6

    return-object v6

    .line 1702
    :cond_12b
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$3ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v6
    :try_end_12f
    .catch Ljava/lang/InterruptedException; {:try_start_c8 .. :try_end_12f} :catch_130

    return-object v6

    .line 1703
    :catch_130
    move-exception v6

    .line 1704
    .local v6, "e":Ljava/lang/InterruptedException;
    const-string v7, "Error: google http probe wait interrupted!"

    invoke-direct {p0, v7}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1705
    sget-object v7, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v7

    .line 1671
    .end local v3    # "httpChinaServer1Result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    .end local v4    # "httpChinaServer2Result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    .end local v5    # "httpsChinaServerResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catch_139
    move-exception v3

    .line 1672
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v4, "Error: array out of bound!"

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1673
    sget-object v4, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v4

    .line 1668
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_142
    move-exception v3

    .line 1669
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v4, "Error: probes wait interrupted!"

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1670
    sget-object v4, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v4
.end method

.method private sendParallelHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .registers 14
    .param p1, "proxy"    # Landroid/net/ProxyInfo;
    .param p2, "httpsUrl"    # Ljava/net/URL;
    .param p3, "httpUrl"    # Ljava/net/URL;

    .line 1439
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1472
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;

    const/4 v4, 0x1

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ZLandroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    .line 1473
    .local v1, "httpsProbe":Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
    new-instance v9, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;

    const/4 v4, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ZLandroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    move-object v2, v9

    .line 1476
    .local v2, "httpProbe":Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;
    :try_start_1a
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->start()V

    .line 1477
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->start()V

    .line 1478
    const-wide/16 v3, 0xbb8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_27
    .catch Ljava/lang/InterruptedException; {:try_start_1a .. :try_end_27} :catch_fe
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1a .. :try_end_27} :catch_f5

    .line 1487
    nop

    .line 1489
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v3

    .line 1490
    .local v3, "httpsResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v4

    .line 1492
    .local v4, "httpResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", httpsResult result ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "], ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1493
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", httpResult result ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "], ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1498
    invoke-virtual {v4}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 1499
    return-object v4

    .line 1502
    :cond_a7
    invoke-virtual {v3}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v5

    if-nez v5, :cond_f4

    invoke-virtual {v3}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_b4

    goto :goto_f4

    .line 1507
    :cond_b4
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->nextFallbackSpec()Landroid/net/captiveportal/CaptivePortalProbeSpec;

    move-result-object v5

    .line 1508
    .local v5, "probeSpec":Landroid/net/captiveportal/CaptivePortalProbeSpec;
    if-eqz v5, :cond_bf

    invoke-virtual {v5}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->getUrl()Ljava/net/URL;

    move-result-object v6

    goto :goto_c3

    :cond_bf
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->nextFallbackUrl()Ljava/net/URL;

    move-result-object v6

    .line 1509
    .local v6, "fallbackUrl":Ljava/net/URL;
    :goto_c3
    if-eqz v6, :cond_d1

    .line 1510
    const/4 v7, 0x4

    invoke-virtual {p0, v6, v7, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;ILandroid/net/captiveportal/CaptivePortalProbeSpec;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v7

    .line 1511
    .local v7, "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-virtual {v7}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v8

    if-eqz v8, :cond_d1

    .line 1512
    return-object v7

    .line 1517
    .end local v7    # "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    :cond_d1
    :try_start_d1
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->join()V

    .line 1518
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v7

    if-eqz v7, :cond_e3

    .line 1519
    invoke-virtual {v2}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v7

    return-object v7

    .line 1521
    :cond_e3
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->join()V

    .line 1522
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v7
    :try_end_ea
    .catch Ljava/lang/InterruptedException; {:try_start_d1 .. :try_end_ea} :catch_eb

    return-object v7

    .line 1523
    :catch_eb
    move-exception v7

    .line 1524
    .local v7, "e":Ljava/lang/InterruptedException;
    const-string v8, "Error: http or https probe wait interrupted!"

    invoke-direct {p0, v8}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1525
    sget-object v8, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v8

    .line 1503
    .end local v5    # "probeSpec":Landroid/net/captiveportal/CaptivePortalProbeSpec;
    .end local v6    # "fallbackUrl":Ljava/net/URL;
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_f4
    :goto_f4
    return-object v3

    .line 1483
    .end local v3    # "httpsResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    .end local v4    # "httpResult":Landroid/net/captiveportal/CaptivePortalProbeResult;
    :catch_f5
    move-exception v3

    .line 1484
    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v4, "Error: array out of bound!"

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1485
    sget-object v4, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v4

    .line 1479
    .end local v3    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_fe
    move-exception v3

    .line 1480
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v4, "Error: probes wait interrupted!"

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1481
    sget-object v4, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v4
.end method

.method private setPreConditionForGatewayCheck()V
    .registers 9

    .line 1942
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 1944
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    goto/16 :goto_99

    .line 1947
    :cond_17
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    .line 1948
    .local v0, "linkproperties":Landroid/net/LinkProperties;
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 1949
    .local v1, "interfaceName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1950
    .local v2, "ipv4address":Ljava/net/Inet4Address;
    const/4 v3, 0x0

    .line 1952
    .local v3, "ipv4gateway":Ljava/net/Inet4Address;
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/RouteInfo;

    .line 1953
    .local v5, "routeInfo":Landroid/net/RouteInfo;
    invoke-virtual {v5}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v6

    if-eqz v6, :cond_47

    .line 1954
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v6

    .line 1955
    .local v6, "gateway":Ljava/net/InetAddress;
    instance-of v7, v6, Ljava/net/Inet4Address;

    if-eqz v7, :cond_47

    .line 1956
    move-object v3, v6

    check-cast v3, Ljava/net/Inet4Address;

    .line 1957
    goto :goto_48

    .line 1960
    .end local v5    # "routeInfo":Landroid/net/RouteInfo;
    .end local v6    # "gateway":Ljava/net/InetAddress;
    :cond_47
    goto :goto_29

    .line 1961
    :cond_48
    :goto_48
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_50
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_65

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 1962
    .local v5, "address":Ljava/net/InetAddress;
    instance-of v6, v5, Ljava/net/Inet4Address;

    if-eqz v6, :cond_64

    .line 1963
    move-object v2, v5

    check-cast v2, Ljava/net/Inet4Address;

    .line 1964
    goto :goto_65

    .line 1966
    .end local v5    # "address":Ljava/net/InetAddress;
    :cond_64
    goto :goto_50

    .line 1967
    :cond_65
    :goto_65
    iput-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIPv4Gateway:Ljava/net/Inet4Address;

    .line 1968
    iput-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIPv4Self:Ljava/net/Inet4Address;

    .line 1969
    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mInterfaceName:Ljava/lang/String;

    .line 1970
    sget-object v4, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ipv4gateway = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIPv4Gateway:Ljava/net/Inet4Address;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", IPself ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIPv4Self:Ljava/net/Inet4Address;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", interfaceName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    return-void

    .line 1945
    .end local v0    # "linkproperties":Landroid/net/LinkProperties;
    .end local v1    # "interfaceName":Ljava/lang/String;
    .end local v2    # "ipv4address":Ljava/net/Inet4Address;
    .end local v3    # "ipv4gateway":Ljava/net/Inet4Address;
    :cond_99
    :goto_99
    return-void
.end method

.method private shallAccountForDupGateway()Z
    .registers 2

    .line 1938
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mGatewayDetector:Landroid/net/arp/OPGatewayDetector;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mGatewayDetector:Landroid/net/arp/OPGatewayDetector;

    invoke-virtual {v0}, Landroid/net/arp/OPGatewayDetector;->hasDupGateway()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private smToString(Landroid/os/Message;)Ljava/lang/String;
    .registers 3
    .param p1, "message"    # Landroid/os/Message;

    .line 1749
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    .line 1769
    :pswitch_5
    const-string v0, "UNKNOWN"

    goto :goto_22

    .line 1767
    :pswitch_8
    const-string v0, "CMD_CAPTIVE_PORTAL_RECHECK"

    goto :goto_22

    .line 1765
    :pswitch_b
    const-string v0, "CMD_LAUNCH_CAPTIVE_PORTAL_APP"

    goto :goto_22

    .line 1763
    :pswitch_e
    const-string v0, "EVENT_PROVISIONING_NOTIFICATION"

    goto :goto_22

    .line 1761
    :pswitch_11
    const-string v0, "CMD_CAPTIVE_PORTAL_APP_FINISHED"

    goto :goto_22

    .line 1759
    :pswitch_14
    const-string v0, "CMD_FORCE_REEVALUATION"

    goto :goto_22

    .line 1757
    :pswitch_17
    const-string v0, "CMD_NETWORK_DISCONNECTED"

    goto :goto_22

    .line 1755
    :pswitch_1a
    const-string v0, "CMD_REEVALUATE"

    goto :goto_22

    .line 1753
    :pswitch_1d
    const-string v0, "EVENT_NETWORK_TESTED"

    goto :goto_22

    .line 1751
    :pswitch_20
    const-string v0, "CMD_NETWORK_CONNECTED"

    .line 1769
    .local v0, "s":Ljava/lang/String;
    :goto_22
    nop

    .line 1771
    return-object v0

    :pswitch_data_24
    .packed-switch 0x82001
        :pswitch_20
        :pswitch_1d
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    .registers 8
    .param p1, "probeType"    # I
    .param p2, "url"    # Ljava/lang/Object;
    .param p3, "msg"    # Ljava/lang/String;

    .line 406
    invoke-static {p1}, Landroid/net/metrics/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "probeName":Ljava/lang/String;
    const-string v1, "%s %s %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method private validationLog(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 411
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method private validationStage()Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;
    .registers 2

    .line 420
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidations:I

    if-nez v0, :cond_7

    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->FIRST_VALIDATION:Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    goto :goto_9

    :cond_7
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->REVALIDATION:Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    :goto_9
    return-object v0
.end method


# virtual methods
.method public byteArrayToHex([B)Ljava/lang/String;
    .registers 8
    .param p1, "a"    # [B

    .line 1996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1997
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_7
    array-length v3, p1

    if-ge v2, v3, :cond_39

    .line 1998
    array-length v3, p1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_23

    .line 1999
    const-string v3, "%02x:"

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p1, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_36

    .line 2001
    :cond_23
    const-string v3, "%02x"

    new-array v4, v4, [Ljava/lang/Object;

    aget-byte v5, p1, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1997
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2004
    .end local v2    # "i":I
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public forceReevaluation(I)V
    .registers 4
    .param p1, "responsibleUid"    # I

    .line 390
    const v0, 0x82008

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(III)V

    .line 391
    return-void
.end method

.method public getIsCaptivePortalCheckEnabled()Z
    .registers 5

    .line 1058
    const-string v0, "captive_portal_mode"

    .line 1059
    .local v0, "symbol":Ljava/lang/String;
    const/4 v1, 0x1

    .line 1060
    .local v1, "defaultValue":I
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 1061
    .local v2, "mode":I
    if-eqz v2, :cond_f

    const/4 v3, 0x1

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    :goto_10
    return v3
.end method

.method public getUseHttpsValidation()Z
    .registers 5

    .line 1065
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v2, "captive_portal_use_https"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_e

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    return v3
.end method

.method public getValidationLogs()Landroid/util/LocalLog$ReadOnlyLocalLog;
    .registers 2

    .line 416
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    invoke-virtual {v0}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v0

    return-object v0
.end method

.method public getWifiScansAlwaysAvailableDisabled()Z
    .registers 5

    .line 1069
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi_scan_always_enabled"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v3, 0x1

    nop

    :cond_10
    return v3
.end method

.method protected isCaptivePortal()Landroid/net/captiveportal/CaptivePortalProbeResult;
    .registers 22
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1195
    move-object/from16 v7, p0

    iget-boolean v0, v7, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    if-nez v0, :cond_e

    .line 1196
    const-string v0, "Validation disabled."

    invoke-direct {v7, v0}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1197
    sget-object v0, Landroid/net/captiveportal/CaptivePortalProbeResult;->SUCCESS:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v0

    .line 1200
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/NetworkMonitor;->reportFakeValidateResult()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 1201
    iget-object v0, v7, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    const v2, 0x82002

    const/4 v3, 0x0

    iget v4, v7, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    invoke-virtual {v7, v2, v3, v4, v1}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1206
    :cond_24
    const/4 v0, 0x0

    .line 1207
    .local v0, "pacUrl":Ljava/net/URL;
    iget-object v8, v7, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpsUrl:Ljava/net/URL;

    .line 1208
    .local v8, "httpsUrl":Ljava/net/URL;
    iget-object v2, v7, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpUrl:Ljava/net/URL;

    .line 1215
    .local v2, "httpUrl":Ljava/net/URL;
    iget-boolean v3, v7, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    if-eqz v3, :cond_83

    if-eqz v2, :cond_83

    .line 1217
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "qualcomm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 1218
    iget-object v3, v7, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x50c0017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1220
    .local v3, "res":Ljava/lang/String;
    if-nez v3, :cond_4f

    const-string/jumbo v4, "http://connectivitycheck.gstatic.com/generate_204"

    goto :goto_66

    :cond_4f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "http://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/generate_204"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_66
    invoke-direct {v7, v4}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 1221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "replace qualcomm server to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1223
    .end local v2    # "httpUrl":Ljava/net/URL;
    .end local v3    # "res":Ljava/lang/String;
    .local v9, "httpUrl":Ljava/net/URL;
    :cond_83
    move-object v9, v2

    iget-object v2, v7, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v3, v7, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalChinaHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v10

    .line 1224
    .local v10, "httpChinaUrl":Ljava/net/URL;
    iget-object v2, v7, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v3, v7, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalPublicChinaHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v11

    .line 1225
    .local v11, "httpPublicChinaUrl":Ljava/net/URL;
    iget-object v2, v7, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v3, v7, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalGoogleChinaHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v12

    .line 1226
    .local v12, "httpGoogleChinaUrl":Ljava/net/URL;
    iget-object v2, v7, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v3, v7, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalGoogleChinaHttpsUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v13

    .line 1247
    .local v13, "httpsGoogleChinaUrl":Ljava/net/URL;
    iget-object v2, v7, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v14

    .line 1248
    .local v14, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v14, :cond_db

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v14}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_db

    .line 1249
    invoke-virtual {v14}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 1250
    if-nez v0, :cond_db

    .line 1251
    sget-object v1, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v1

    .line 1256
    :cond_db
    move-object v15, v0

    .line 1256
    .end local v0    # "pacUrl":Ljava/net/URL;
    .local v15, "pacUrl":Ljava/net/URL;
    if-nez v15, :cond_e9

    if-eqz v9, :cond_e6

    if-eqz v8, :cond_e6

    if-eqz v10, :cond_e6

    if-nez v11, :cond_e9

    .line 1262
    :cond_e6
    sget-object v0, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v0

    .line 1265
    :cond_e9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 1270
    .local v16, "startTime":J
    iget-object v0, v7, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCaptivePortalUrlBlacklist()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->setCaptivePortalUrlBlacklist(Ljava/util/ArrayList;)V

    .line 1274
    if-eqz v15, :cond_fe

    .line 1275
    const/4 v0, 0x3

    invoke-direct {v7, v1, v15, v0}, Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    .line 1275
    .local v0, "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    :goto_fd
    goto :goto_122

    .line 1277
    .end local v0    # "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    :cond_fe
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/NetworkMonitor;->isCountryChinaLocal()Z

    move-result v0

    if-eqz v0, :cond_114

    .line 1278
    sget-boolean v0, Lcom/android/server/connectivity/NetworkMonitor;->mIsH2Version:Z

    if-eqz v0, :cond_10d

    .line 1279
    invoke-direct {v7, v14, v10, v11, v12}, Lcom/android/server/connectivity/NetworkMonitor;->sendParallelHttpChinaH2Probes(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/net/URL;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    goto :goto_fd

    .line 1281
    :cond_10d
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor;->GOOGLE_HTTP_SERVERS:[Ljava/lang/String;

    invoke-direct {v7, v14, v0, v13}, Lcom/android/server/connectivity/NetworkMonitor;->sendParallelHttpChinaO2Probes(Landroid/net/ProxyInfo;[Ljava/lang/String;Ljava/net/URL;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    goto :goto_fd

    .line 1283
    :cond_114
    iget-boolean v0, v7, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    if-eqz v0, :cond_11d

    .line 1284
    invoke-direct {v7, v14, v8, v9}, Lcom/android/server/connectivity/NetworkMonitor;->sendParallelHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    goto :goto_fd

    .line 1286
    :cond_11d
    const/4 v0, 0x1

    invoke-direct {v7, v14, v9, v0}, Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    .line 1286
    .restart local v0    # "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    :goto_122
    move-object v5, v0

    .line 1289
    .end local v0    # "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    .local v5, "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 1291
    .local v18, "endTime":J
    const/4 v1, 0x1

    .line 1292
    invoke-virtual {v5}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v2

    .line 1291
    move-object v0, v7

    move-wide/from16 v3, v16

    move-object/from16 v20, v5

    move-wide/from16 v5, v18

    .line 1291
    .end local v5    # "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    .local v20, "result":Landroid/net/captiveportal/CaptivePortalProbeResult;
    invoke-direct/range {v0 .. v6}, Lcom/android/server/connectivity/NetworkMonitor;->sendNetworkConditionsBroadcast(ZZJJ)V

    .line 1295
    return-object v20
.end method

.method protected log(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-virtual {v1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    return-void
.end method

.method public notifyPrivateDnsSettingsChanged(Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;)V
    .registers 3
    .param p1, "newCfg"    # Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    .line 395
    const v0, 0x8200d

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V

    .line 397
    invoke-virtual {p0, v0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(ILjava/lang/Object;)V

    .line 398
    return-void
.end method

.method protected sendHttpProbe(Ljava/net/URL;ILandroid/net/captiveportal/CaptivePortalProbeSpec;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .registers 23
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "probeType"    # I
    .param p3, "probeSpec"    # Landroid/net/captiveportal/CaptivePortalProbeSpec;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 1346
    move-object/from16 v4, p3

    const/4 v5, 0x0

    .line 1347
    .local v5, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v6, 0x257

    .line 1348
    .local v6, "httpResponseCode":I
    const/4 v7, 0x0

    .line 1349
    .local v7, "redirectUrl":Ljava/lang/String;
    new-instance v0, Landroid/net/util/Stopwatch;

    invoke-direct {v0}, Landroid/net/util/Stopwatch;-><init>()V

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    move-result-object v8

    .line 1350
    .local v8, "probeTimer":Landroid/net/util/Stopwatch;
    const/16 v0, -0xbe

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v0

    move v9, v0

    .line 1353
    .local v9, "oldTag":I
    :try_start_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/NetworkMonitor;->shallAccountForDupGateway()Z

    move-result v0
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_20} :catch_112
    .catchall {:try_start_1c .. :try_end_20} :catchall_110

    if-eqz v0, :cond_35

    .line 1354
    :try_start_22
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    sget-object v10, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v0, v2, v10}, Landroid/net/Network;->openConnectionWithoutConnectionPool(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_2c} :catch_30
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2d

    goto :goto_3d

    .line 1421
    :catchall_2d
    move-exception v0

    goto/16 :goto_150

    .line 1415
    :catch_30
    move-exception v0

    move-object/from16 v17, v8

    goto/16 :goto_115

    .line 1356
    :cond_35
    :try_start_35
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v2}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1363
    .end local v5    # "urlConnection":Ljava/net/HttpURLConnection;
    .local v0, "urlConnection":Ljava/net/HttpURLConnection;
    :goto_3d
    move-object v5, v0

    .line 1363
    .end local v0    # "urlConnection":Ljava/net/HttpURLConnection;
    .restart local v5    # "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v0, 0x0

    const/4 v10, 0x3

    if-ne v3, v10, :cond_44

    const/4 v11, 0x1

    goto :goto_45

    :cond_44
    move v11, v0

    :goto_45
    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1364
    const/16 v11, 0x2710

    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1365
    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1366
    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1367
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_55} :catch_112
    .catchall {:try_start_35 .. :try_end_55} :catchall_110

    if-eqz v0, :cond_5e

    .line 1368
    :try_start_57
    const-string v0, "User-Agent"

    iget-object v11, v1, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;

    invoke-virtual {v5, v0, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5e} :catch_30
    .catchall {:try_start_57 .. :try_end_5e} :catchall_2d

    .line 1371
    :cond_5e
    :try_start_5e
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1374
    .local v0, "requestHeader":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 1376
    .local v11, "requestTimestamp":J
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    move v6, v13

    .line 1377
    const-string/jumbo v13, "location"

    invoke-virtual {v5, v13}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_76} :catch_112
    .catchall {:try_start_5e .. :try_end_76} :catchall_110

    move-object v7, v13

    .line 1380
    :try_start_77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 1382
    .local v13, "responseTimestamp":J
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "time="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_86} :catch_10a
    .catchall {:try_start_77 .. :try_end_86} :catchall_106

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    sub-long v7, v13, v11

    .end local v7    # "redirectUrl":Ljava/lang/String;
    .end local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    .local v17, "probeTimer":Landroid/net/util/Stopwatch;
    .local v18, "redirectUrl":Ljava/lang/String;
    :try_start_8c
    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms ret="

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " request="

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " headers="

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1382
    invoke-direct {v1, v3, v2, v7}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    .line 1392
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_f0

    .line 1393
    const/4 v7, 0x3

    if-ne v3, v7, :cond_c2

    .line 1394
    const-string v7, "PAC fetch 200 response interpreted as 204 response."

    invoke-direct {v1, v3, v2, v7}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    .line 1396
    const/16 v6, 0xcc

    goto :goto_f0

    .line 1397
    :cond_c2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v7

    const-wide/16 v15, 0x0

    cmp-long v7, v7, v15

    if-nez v7, :cond_d4

    .line 1402
    const-string v7, "200 response with Content-length=0 interpreted as 204 response."

    invoke-direct {v1, v3, v2, v7}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    .line 1404
    const/16 v6, 0xcc

    goto :goto_f0

    .line 1405
    :cond_d4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v7

    const-wide/16 v15, -0x1

    cmp-long v7, v7, v15

    if-nez v7, :cond_f0

    .line 1408
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_f0

    .line 1409
    const-string v7, "Empty 200 response interpreted as 204 response."

    invoke-direct {v1, v3, v2, v7}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_ee} :catch_102
    .catchall {:try_start_8c .. :try_end_ee} :catchall_fc

    .line 1411
    const/16 v6, 0xcc

    .line 1421
    .end local v0    # "requestHeader":Ljava/lang/String;
    .end local v11    # "requestTimestamp":J
    .end local v13    # "responseTimestamp":J
    :cond_f0
    :goto_f0
    if-eqz v5, :cond_f5

    .line 1422
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1424
    :cond_f5
    invoke-static {v9}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1425
    nop

    .line 1426
    move-object/from16 v7, v18

    goto :goto_133

    .line 1421
    :catchall_fc
    move-exception v0

    move-object/from16 v8, v17

    move-object/from16 v7, v18

    goto :goto_150

    .line 1415
    :catch_102
    move-exception v0

    move-object/from16 v7, v18

    goto :goto_115

    .line 1421
    .end local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    .end local v18    # "redirectUrl":Ljava/lang/String;
    .restart local v7    # "redirectUrl":Ljava/lang/String;
    .restart local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    :catchall_106
    move-exception v0

    move-object/from16 v18, v7

    .line 1421
    .end local v7    # "redirectUrl":Ljava/lang/String;
    .end local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v18    # "redirectUrl":Ljava/lang/String;
    goto :goto_150

    .line 1415
    .end local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    .end local v18    # "redirectUrl":Ljava/lang/String;
    .restart local v7    # "redirectUrl":Ljava/lang/String;
    .restart local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    :catch_10a
    move-exception v0

    move-object/from16 v18, v7

    move-object/from16 v17, v8

    .line 1415
    .end local v7    # "redirectUrl":Ljava/lang/String;
    .end local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v18    # "redirectUrl":Ljava/lang/String;
    goto :goto_115

    .line 1421
    .end local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    .end local v18    # "redirectUrl":Ljava/lang/String;
    .restart local v7    # "redirectUrl":Ljava/lang/String;
    .restart local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    :catchall_110
    move-exception v0

    .line 1421
    .end local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    goto :goto_150

    .line 1415
    .end local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    :catch_112
    move-exception v0

    move-object/from16 v17, v8

    .line 1416
    .end local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    .local v0, "e":Ljava/io/IOException;
    .restart local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    :goto_115
    :try_start_115
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Probe failed with exception "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v3, v2, v8}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_129
    .catchall {:try_start_115 .. :try_end_129} :catchall_14d

    .line 1417
    nop

    .line 1421
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v5, :cond_12f

    .line 1422
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1424
    :cond_12f
    invoke-static {v9}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1425
    nop

    .line 1426
    :goto_133
    move-object/from16 v8, v17

    invoke-virtual {v8}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v10

    .line 1426
    .end local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    invoke-direct {v1, v10, v11, v3, v6}, Lcom/android/server/connectivity/NetworkMonitor;->logValidationProbe(JII)V

    .line 1428
    if-nez v4, :cond_148

    .line 1429
    new-instance v0, Landroid/net/captiveportal/CaptivePortalProbeResult;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v6, v7, v10}, Landroid/net/captiveportal/CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1431
    :cond_148
    invoke-virtual {v4, v6, v7}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->getResult(ILjava/lang/String;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    return-object v0

    .line 1421
    .end local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    :catchall_14d
    move-exception v0

    move-object/from16 v8, v17

    .line 1421
    .end local v17    # "probeTimer":Landroid/net/util/Stopwatch;
    .restart local v8    # "probeTimer":Landroid/net/util/Stopwatch;
    :goto_150
    if-eqz v5, :cond_155

    .line 1422
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1424
    :cond_155
    invoke-static {v9}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v0
.end method
