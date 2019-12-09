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

.field private static final DEFAULT_FALLBACK_URL:Ljava/lang/String; = "http://www.google.com/gen_204"

.field private static final DEFAULT_FALLBACK_URL_CN:Ljava/lang/String; = "http://g.cn/generate_204"

.field private static final DEFAULT_HTTPS_URL:Ljava/lang/String; = "https://www.google.com/generate_204"

.field private static final DEFAULT_HTTPS_URL_CN:Ljava/lang/String; = "https://captive.v2ex.co/generate_204"

.field private static final DEFAULT_HTTP_URL:Ljava/lang/String; = "http://connectivitycheck.gstatic.com/generate_204"

.field private static final DEFAULT_HTTP_URL_CN:Ljava/lang/String; = "http://captive.v2ex.co/generate_204"

.field private static final DEFAULT_OTHER_FALLBACK_URLS:Ljava/lang/String; = "http://play.googleapis.com/generate_204"

.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36"

.field public static final EVENT_NETWORK_TESTED:I = 0x82002

.field public static final EVENT_PRIVATE_DNS_CONFIG_RESOLVED:I = 0x8200e

.field public static final EVENT_PROVISIONING_NOTIFICATION:I = 0x8200a

.field private static final IGNORE_REEVALUATE_ATTEMPTS:I = 0x5

.field private static final INITIAL_REEVALUATE_DELAY_MS:I = 0x3e8

.field private static final INVALID_UID:I = -0x1

.field private static final MAX_REEVALUATE_DELAY_MS:I = 0x927c0

.field public static final NETWORK_TEST_RESULT_INVALID:I = 0x1

.field public static final NETWORK_TEST_RESULT_VALID:I = 0x0

.field private static final NO_UID:I = 0x0

.field private static final NUM_VALIDATION_LOG_LINES:I = 0x14

.field private static final PROBE_TIMEOUT_MS:I = 0xbb8

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false


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

.field protected mIsCaptivePortalCheckEnabled:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

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
    .locals 1

    .line 100
    const-class v0, Lcom/android/server/connectivity/NetworkMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;)V
    .locals 7

    .line 312
    new-instance v5, Landroid/net/metrics/IpConnectivityLog;

    invoke-direct {v5}, Landroid/net/metrics/IpConnectivityLog;-><init>()V

    sget-object v6, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->DEFAULT:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/connectivity/NetworkMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;Landroid/net/metrics/IpConnectivityLog;Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;)V

    .line 314
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkRequest;Landroid/net/metrics/IpConnectivityLog;Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 321
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

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    .line 243
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    .line 251
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;

    .line 283
    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidations:I

    .line 286
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    .line 288
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    .line 290
    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    .line 292
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/NetworkMonitor$DefaultState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    .line 293
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/NetworkMonitor$ValidatedState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    .line 294
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    .line 295
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    .line 296
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    .line 297
    new-instance v1, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/NetworkMonitor$EvaluatingPrivateDnsState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;

    .line 299
    iput-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    .line 301
    new-instance v1, Landroid/util/LocalLog;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    .line 303
    new-instance v1, Landroid/net/util/Stopwatch;

    invoke-direct {v1}, Landroid/net/util/Stopwatch;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    .line 306
    sget-object v1, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    .line 308
    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNextFallbackUrlIndex:I

    .line 325
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->setDbg(Z)V

    .line 327
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    .line 328
    iput-object p5, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    .line 329
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    .line 330
    iput-object p6, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    .line 331
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 332
    new-instance p2, Lcom/android/server/connectivity/NetworkMonitor$OneAddressPerFamilyNetwork;

    invoke-virtual {p3}, Lcom/android/server/connectivity/NetworkAgentInfo;->network()Landroid/net/Network;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/server/connectivity/NetworkMonitor$OneAddressPerFamilyNetwork;-><init>(Landroid/net/Network;)V

    iput-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    .line 333
    iget-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    iget p2, p2, Landroid/net/Network;->netId:I

    iput p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    .line 334
    const-string/jumbo p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 335
    const-string/jumbo p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 336
    iput-object p4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    .line 338
    iget-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;)V

    .line 339
    iget-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    iget-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 340
    iget-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    iget-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 341
    iget-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    iget-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMaybeNotifyState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 342
    iget-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;

    iget-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 343
    iget-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    iget-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/connectivity/NetworkMonitor;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 344
    iget-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/NetworkMonitor;->setInitialState(Lcom/android/internal/util/State;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getIsCaptivePortalCheckEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    .line 347
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getUseHttpsValidation()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    .line 348
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalUserAgent()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;

    .line 349
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpsUrl()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpsUrl:Ljava/net/URL;

    .line 350
    invoke-static {p6, p1}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpUrl:Ljava/net/URL;

    .line 351
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->makeCaptivePortalFallbackUrls()[Ljava/net/URL;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    .line 352
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->makeCaptivePortalFallbackProbeSpecs()[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackSpecs:[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    .line 354
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->start()V

    .line 355
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    return p0
.end method

.method static synthetic access$1002(Lcom/android/server/connectivity/NetworkMonitor;I)I
    .locals 0

    .line 99
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUidResponsibleForReeval:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDontDisplaySigninNotification:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingPrivateDnsState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 0

    .line 99
    iget-boolean p0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/android/server/connectivity/NetworkMonitor;Z)Z
    .locals 0

    .line 99
    iput-boolean p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUserDoesNotWant:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/Object;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->notifyNetworkTestResultInvalid(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/NetworkMonitor;)Z
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->isValidationRequired()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mPrivateDnsProviderHostname:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->validationStage()Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;)I
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/NetworkMonitor;->networkEventType(Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;)I

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->maybeLogEvaluationResult(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    return p0
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2308(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 2

    .line 99
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidations:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidations:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidatedState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/Network;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/captiveportal/CaptivePortalProbeResult;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLastPortalProbeResult:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/util/Stopwatch;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 0

    .line 99
    iget p0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    return p0
.end method

.method static synthetic access$2904(Lcom/android/server/connectivity/NetworkMonitor;)I
    .locals 1

    .line 99
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mReevaluateToken:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/NetworkMonitor;I)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->logNetworkEvent(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/internal/util/State;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluatingState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;)Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mLaunchCaptivePortalAppBroadcastReceiver:Lcom/android/server/connectivity/NetworkMonitor$CustomIntentReceiver;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getCaptivePortalServerHttpUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 903
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->DEFAULT:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    invoke-static {v0, p0}, Lcom/android/server/connectivity/NetworkMonitor;->getCaptivePortalServerHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCaptivePortalServerHttpUrl(Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 908
    const-string v0, "captive_portal_http_url"

    .line 909
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->isChinese()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "http://captive.v2ex.co/generate_204"

    goto :goto_0

    :cond_0
    const-string v1, "http://connectivitycheck.gstatic.com/generate_204"

    .line 908
    :goto_0
    invoke-interface {p0, p1, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCaptivePortalServerHttpsUrl()Ljava/lang/String;
    .locals 4

    .line 896
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v2, "captive_portal_https_url"

    .line 898
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->isChinese()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "https://captive.v2ex.co/generate_204"

    goto :goto_0

    :cond_0
    const-string v3, "https://www.google.com/generate_204"

    .line 896
    :goto_0
    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCaptivePortalUserAgent()Ljava/lang/String;
    .locals 4

    .line 957
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v2, "captive_portal_user_agent"

    const-string v3, "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.32 Safari/537.36"

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isChinese()Z
    .locals 3

    .line 875
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 876
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 877
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 876
    :goto_0
    return v0
.end method

.method private isValidationRequired()Z
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mDefaultRequest:Landroid/net/NetworkRequest;

    iget-object v0, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->isValidationRequired(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v0

    return v0
.end method

.method public static isValidationRequired(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .locals 0

    .line 256
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method private logNetworkEvent(I)V
    .locals 4

    .line 1354
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    .line 1355
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    new-instance v3, Landroid/net/metrics/NetworkEvent;

    invoke-direct {v3, p1}, Landroid/net/metrics/NetworkEvent;-><init>(I)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/metrics/IpConnectivityLog;->log(I[ILandroid/os/Parcelable;)Z

    .line 1356
    return-void
.end method

.method private logValidationProbe(JII)V
    .locals 3

    .line 1383
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    .line 1384
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->validationStage()Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->isFirstValidation:Z

    .line 1385
    new-instance v2, Landroid/net/metrics/ValidationProbeEvent;

    invoke-direct {v2}, Landroid/net/metrics/ValidationProbeEvent;-><init>()V

    .line 1386
    invoke-static {p3, v1}, Landroid/net/metrics/ValidationProbeEvent;->makeProbeType(IZ)I

    move-result p3

    iput p3, v2, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    .line 1387
    iput p4, v2, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    .line 1388
    iput-wide p1, v2, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    .line 1389
    iget-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget p2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    invoke-virtual {p1, p2, v0, v2}, Landroid/net/metrics/IpConnectivityLog;->log(I[ILandroid/os/Parcelable;)Z

    .line 1390
    return-void
.end method

.method private makeCaptivePortalFallbackProbeSpecs()[Landroid/net/captiveportal/CaptivePortalProbeSpec;
    .locals 4

    .line 941
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v3, "captive_portal_fallback_probe_specs"

    invoke-interface {v1, v2, v3, v0}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 944
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 945
    return-object v0

    .line 948
    :cond_0
    invoke-static {v1}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->parseCaptivePortalProbeSpecs(Ljava/lang/String;)[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 949
    :catch_0
    move-exception v1

    .line 951
    sget-object v2, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    const-string v3, "Error parsing configured fallback probe specs"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 952
    return-object v0
.end method

.method private makeCaptivePortalFallbackUrls()[Ljava/net/URL;
    .locals 7

    .line 914
    const/4 v0, 0x0

    :try_start_0
    const-string v1, ","

    .line 915
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v4, "captive_portal_fallback_url"

    .line 916
    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->isChinese()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "http://g.cn/generate_204"

    goto :goto_0

    :cond_0
    const-string v5, "http://www.google.com/gen_204"

    .line 915
    :goto_0
    invoke-interface {v2, v3, v4, v5}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 917
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v5, "captive_portal_other_fallback_urls"

    const-string v6, "http://play.googleapis.com/generate_204"

    invoke-interface {v2, v4, v5, v6}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 920
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 921
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v1, v5

    .line 922
    invoke-direct {p0, v6}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    .line 923
    if-nez v6, :cond_1

    .line 924
    goto :goto_2

    .line 926
    :cond_1
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 928
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 929
    sget-object v1, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    const-string v4, "could not create any url from %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/net/URL;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 932
    :catch_0
    move-exception v1

    .line 934
    sget-object v2, Lcom/android/server/connectivity/NetworkMonitor;->TAG:Ljava/lang/String;

    const-string v3, "Error parsing configured fallback URLs"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 935
    new-array v0, v0, [Ljava/net/URL;

    return-object v0
.end method

.method private makeURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 2

    .line 1251
    if-eqz p1, :cond_0

    .line 1253
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1254
    :catch_0
    move-exception v0

    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1258
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private maybeLogEvaluationResult(I)V
    .locals 6

    .line 1375
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1376
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v0

    .line 1377
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mMetricsLog:Landroid/net/metrics/IpConnectivityLog;

    iget v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    new-instance v3, Landroid/net/metrics/NetworkEvent;

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    invoke-virtual {v4}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v4

    invoke-direct {v3, p1, v4, v5}, Landroid/net/metrics/NetworkEvent;-><init>(IJ)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/metrics/IpConnectivityLog;->log(I[ILandroid/os/Parcelable;)Z

    .line 1378
    iget-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mEvaluationTimer:Landroid/net/util/Stopwatch;

    invoke-virtual {p1}, Landroid/net/util/Stopwatch;->reset()V

    .line 1380
    :cond_0
    return-void
.end method

.method private networkEventType(Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;)I
    .locals 0

    .line 1359
    iget-boolean p1, p1, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->isFirstValidation:Z

    if-eqz p1, :cond_1

    .line 1360
    iget-boolean p1, p2, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;->isValidated:Z

    if-eqz p1, :cond_0

    .line 1361
    const/16 p1, 0x8

    return p1

    .line 1363
    :cond_0
    const/16 p1, 0xa

    return p1

    .line 1366
    :cond_1
    iget-boolean p1, p2, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;->isValidated:Z

    if-eqz p1, :cond_2

    .line 1367
    const/16 p1, 0x9

    return p1

    .line 1369
    :cond_2
    const/16 p1, 0xb

    return p1
.end method

.method private nextFallbackSpec()Landroid/net/captiveportal/CaptivePortalProbeSpec;
    .locals 2

    .line 971
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackSpecs:[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    const/4 v0, 0x0

    return-object v0

    .line 975
    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackSpecs:[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 976
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackSpecs:[Landroid/net/captiveportal/CaptivePortalProbeSpec;

    aget-object v0, v1, v0

    return-object v0
.end method

.method private nextFallbackUrl()Ljava/net/URL;
    .locals 3

    .line 962
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    array-length v0, v0

    if-nez v0, :cond_0

    .line 963
    const/4 v0, 0x0

    return-object v0

    .line 965
    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNextFallbackUrlIndex:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 966
    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNextFallbackUrlIndex:I

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNextFallbackUrlIndex:I

    .line 967
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalFallbackUrls:[Ljava/net/URL;

    aget-object v0, v1, v0

    return-object v0
.end method

.method private notifyNetworkTestResultInvalid(Ljava/lang/Object;)V
    .locals 4

    .line 398
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityServiceHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetId:I

    const v2, 0x82002

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 400
    return-void
.end method

.method private sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 0

    .line 1047
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 1048
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->sendDnsProbe(Ljava/lang/String;)V

    .line 1049
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;ILandroid/net/captiveportal/CaptivePortalProbeSpec;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object p1

    return-object p1
.end method

.method private sendDnsProbe(Ljava/lang/String;)V
    .locals 9

    .line 1054
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    return-void

    .line 1058
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/net/metrics/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    .line 1059
    new-instance v1, Landroid/net/util/Stopwatch;

    invoke-direct {v1}, Landroid/net/util/Stopwatch;-><init>()V

    invoke-virtual {v1}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    move-result-object v1

    .line 1063
    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    invoke-virtual {v3, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v3

    .line 1064
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1065
    array-length v5, v3

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    .line 1066
    const/16 v8, 0x2c

    invoke-virtual {v4, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1065
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1068
    :cond_1
    nop

    .line 1069
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OK "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    nop

    .line 1074
    move v4, v2

    goto :goto_1

    .line 1070
    :catch_0
    move-exception v3

    .line 1071
    nop

    .line 1072
    const-string v3, "FAIL"

    .line 1074
    move v4, v0

    :goto_1
    invoke-virtual {v1}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v5

    .line 1075
    const-string v1, "%dms %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 1076
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v0

    aput-object v3, v7, v2

    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1075
    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    .line 1077
    invoke-direct {p0, v5, v6, v0, v4}, Lcom/android/server/connectivity/NetworkMonitor;->logValidationProbe(JII)V

    .line 1078
    return-void
.end method

.method private sendNetworkConditionsBroadcast(ZZJJ)V
    .locals 5

    .line 1270
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor;->getWifiScansAlwaysAvailableDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    return-void

    .line 1274
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->systemReady:Z

    if-nez v0, :cond_1

    .line 1275
    return-void

    .line 1278
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.NETWORK_CONDITIONS_MEASURED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1280
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1334
    return-void

    .line 1282
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1283
    if-eqz v1, :cond_2

    .line 1291
    const-string v2, "extra_ssid"

    .line 1292
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 1291
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1293
    const-string v2, "extra_bssid"

    .line 1294
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    .line 1293
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 1297
    :cond_2
    return-void

    .line 1301
    :pswitch_1
    const-string v1, "extra_network_type"

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1302
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 1301
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1303
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    .line 1304
    if-nez v1, :cond_3

    return-void

    .line 1305
    :cond_3
    const/4 v2, 0x0

    .line 1306
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    .line 1307
    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1308
    add-int/lit8 v2, v2, 0x1

    .line 1309
    const/4 v4, 0x1

    if-le v2, v4, :cond_4

    .line 1312
    return-void

    .line 1314
    :cond_4
    instance-of v4, v3, Landroid/telephony/CellInfoCdma;

    if-eqz v4, :cond_5

    .line 1315
    check-cast v3, Landroid/telephony/CellInfoCdma;

    invoke-virtual {v3}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v3

    .line 1316
    const-string v4, "extra_cellid"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1317
    goto :goto_1

    :cond_5
    instance-of v4, v3, Landroid/telephony/CellInfoGsm;

    if-eqz v4, :cond_6

    .line 1318
    check-cast v3, Landroid/telephony/CellInfoGsm;

    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v3

    .line 1319
    const-string v4, "extra_cellid"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1320
    goto :goto_1

    :cond_6
    instance-of v4, v3, Landroid/telephony/CellInfoLte;

    if-eqz v4, :cond_7

    .line 1321
    check-cast v3, Landroid/telephony/CellInfoLte;

    invoke-virtual {v3}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v3

    .line 1322
    const-string v4, "extra_cellid"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1323
    goto :goto_1

    :cond_7
    instance-of v4, v3, Landroid/telephony/CellInfoWcdma;

    if-eqz v4, :cond_8

    .line 1324
    check-cast v3, Landroid/telephony/CellInfoWcdma;

    invoke-virtual {v3}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v3

    .line 1325
    const-string v4, "extra_cellid"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1326
    goto :goto_1

    .line 1328
    :cond_8
    return-void

    .line 1331
    :cond_9
    :goto_1
    goto :goto_0

    .line 1332
    :cond_a
    nop

    .line 1336
    :goto_2
    const-string v1, "extra_connectivity_type"

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    .line 1337
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 1336
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1338
    const-string v1, "extra_response_received"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1340
    const-string v1, "extra_request_timestamp_ms"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1343
    if-eqz p1, :cond_b

    .line 1344
    const-string p1, "extra_is_captive_portal"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1346
    const-string p1, "extra_response_timestamp_ms"

    invoke-virtual {v0, p1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1349
    :cond_b
    iget-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string p3, "android.permission.ACCESS_NETWORK_CONDITIONS"

    invoke-virtual {p1, v0, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1351
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendParallelHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 10

    .line 1170
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x2

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 1203
    new-instance v8, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;

    const/4 v2, 0x1

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ZLandroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    .line 1204
    new-instance v9, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;

    const/4 v2, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;-><init>(Lcom/android/server/connectivity/NetworkMonitor;ZLandroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;Ljava/util/concurrent/CountDownLatch;)V

    .line 1207
    :try_start_0
    invoke-virtual {v8}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->start()V

    .line 1208
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->start()V

    .line 1209
    const-wide/16 p1, 0xbb8

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1213
    nop

    .line 1215
    invoke-virtual {v8}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object p1

    .line 1216
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object p2

    .line 1219
    invoke-virtual {p2}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1220
    return-object p2

    .line 1223
    :cond_0
    invoke-virtual {p1}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 1228
    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->nextFallbackSpec()Landroid/net/captiveportal/CaptivePortalProbeSpec;

    move-result-object p1

    .line 1229
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->getUrl()Ljava/net/URL;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkMonitor;->nextFallbackUrl()Ljava/net/URL;

    move-result-object p2

    .line 1230
    :goto_0
    if-eqz p2, :cond_3

    .line 1231
    const/4 p3, 0x4

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/connectivity/NetworkMonitor;->sendHttpProbe(Ljava/net/URL;ILandroid/net/captiveportal/CaptivePortalProbeSpec;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object p1

    .line 1232
    invoke-virtual {p1}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1233
    return-object p1

    .line 1238
    :cond_3
    :try_start_1
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->join()V

    .line 1239
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1240
    invoke-virtual {v9}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object p1

    return-object p1

    .line 1242
    :cond_4
    invoke-virtual {v8}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->join()V

    .line 1243
    invoke-virtual {v8}, Lcom/android/server/connectivity/NetworkMonitor$1ProbeThread;->result()Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 1244
    :catch_0
    move-exception p1

    .line 1245
    const-string p1, "Error: http or https probe wait interrupted!"

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1246
    sget-object p1, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object p1

    .line 1224
    :cond_5
    :goto_1
    return-object p1

    .line 1210
    :catch_1
    move-exception p1

    .line 1211
    const-string p1, "Error: probes wait interrupted!"

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 1212
    sget-object p1, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object p1
.end method

.method private validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 374
    invoke-static {p1}, Landroid/net/metrics/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    move-result-object p1

    .line 375
    const-string v0, "%s %s %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method private validationLog(Ljava/lang/String;)V
    .locals 1

    .line 379
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->log(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method private validationStage()Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;
    .locals 1

    .line 388
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mValidations:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->FIRST_VALIDATION:Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;->REVALIDATION:Lcom/android/server/connectivity/NetworkMonitor$ValidationStage;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public forceReevaluation(I)V
    .locals 2

    .line 358
    const v0, 0x82008

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(III)V

    .line 359
    return-void
.end method

.method public getIsCaptivePortalCheckEnabled()Z
    .locals 4

    .line 881
    const-string v0, "captive_portal_mode"

    .line 882
    nop

    .line 883
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 884
    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public getUseHttpsValidation()Z
    .locals 4

    .line 888
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string v2, "captive_portal_use_https"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public getValidationLogs()Landroid/util/LocalLog$ReadOnlyLocalLog;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->validationLogs:Landroid/util/LocalLog;

    invoke-virtual {v0}, Landroid/util/LocalLog;->readOnlyLocalLog()Landroid/util/LocalLog$ReadOnlyLocalLog;

    move-result-object v0

    return-object v0
.end method

.method public getWifiScansAlwaysAvailableDisabled()Z
    .locals 4

    .line 892
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mSettings:Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi_scan_always_enabled"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor$NetworkMonitorSettings;->getSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    return v3
.end method

.method protected isCaptivePortal()Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 981
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalCheckEnabled:Z

    if-nez v0, :cond_0

    .line 982
    const-string v0, "Validation disabled."

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(Ljava/lang/String;)V

    .line 983
    sget-object v0, Landroid/net/captiveportal/CaptivePortalProbeResult;->SUCCESS:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v0

    .line 986
    :cond_0
    nop

    .line 987
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpsUrl:Ljava/net/URL;

    .line 988
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalHttpUrl:Ljava/net/URL;

    .line 1007
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v2, v2, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    .line 1008
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1009
    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/NetworkMonitor;->makeURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 1010
    if-nez v4, :cond_2

    .line 1011
    sget-object v0, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v0

    .line 1015
    :cond_1
    move-object v4, v3

    :cond_2
    if-nez v4, :cond_4

    if-eqz v1, :cond_3

    if-nez v0, :cond_4

    .line 1016
    :cond_3
    sget-object v0, Landroid/net/captiveportal/CaptivePortalProbeResult;->FAILED:Landroid/net/captiveportal/CaptivePortalProbeResult;

    return-object v0

    .line 1019
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 1022
    if-eqz v4, :cond_5

    .line 1023
    const/4 v0, 0x3

    invoke-direct {p0, v3, v4, v0}, Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    goto :goto_0

    .line 1024
    :cond_5
    iget-boolean v3, p0, Lcom/android/server/connectivity/NetworkMonitor;->mUseHttps:Z

    if-eqz v3, :cond_6

    .line 1025
    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendParallelHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;Ljava/net/URL;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    goto :goto_0

    .line 1027
    :cond_6
    const/4 v0, 0x1

    invoke-direct {p0, v2, v1, v0}, Lcom/android/server/connectivity/NetworkMonitor;->sendDnsAndHttpProbes(Landroid/net/ProxyInfo;Ljava/net/URL;I)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    .line 1030
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1032
    const/4 v2, 0x1

    .line 1033
    invoke-virtual {v0}, Landroid/net/captiveportal/CaptivePortalProbeResult;->isPortal()Z

    move-result v3

    .line 1032
    move-object v1, p0

    move-wide v4, v5

    move-wide v6, v7

    invoke-direct/range {v1 .. v7}, Lcom/android/server/connectivity/NetworkMonitor;->sendNetworkConditionsBroadcast(ZZJJ)V

    .line 1036
    return-object v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 2

    .line 370
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

    .line 371
    return-void
.end method

.method public notifyPrivateDnsSettingsChanged(Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;)V
    .locals 1

    .line 363
    const v0, 0x8200d

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V

    .line 365
    invoke-virtual {p0, v0, p1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(ILjava/lang/Object;)V

    .line 366
    return-void
.end method

.method protected sendHttpProbe(Ljava/net/URL;ILandroid/net/captiveportal/CaptivePortalProbeSpec;)Landroid/net/captiveportal/CaptivePortalProbeResult;
    .locals 17
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 1087
    move-object/from16 v4, p3

    .line 1088
    nop

    .line 1089
    nop

    .line 1090
    new-instance v0, Landroid/net/util/Stopwatch;

    invoke-direct {v0}, Landroid/net/util/Stopwatch;-><init>()V

    invoke-virtual {v0}, Landroid/net/util/Stopwatch;->start()Landroid/net/util/Stopwatch;

    move-result-object v5

    .line 1091
    const/16 v0, -0xbe

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v6

    .line 1093
    const/4 v7, 0x0

    const/16 v8, 0x257

    :try_start_0
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkMonitor;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v2}, Landroid/net/Network;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1094
    const/4 v0, 0x0

    const/4 v10, 0x3

    if-ne v3, v10, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    move v11, v0

    :goto_0
    :try_start_1
    invoke-virtual {v9, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1095
    const/16 v11, 0x2710

    invoke-virtual {v9, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1096
    invoke-virtual {v9, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1097
    invoke-virtual {v9, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1098
    iget-object v0, v1, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1099
    const-string v0, "User-Agent"

    iget-object v11, v1, Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalUserAgent:Ljava/lang/String;

    invoke-virtual {v9, v0, v11}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    :cond_1
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 1107
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1108
    :try_start_2
    const-string v8, "location"

    invoke-virtual {v9, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1111
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 1113
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "time="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v14, v11

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "ms ret="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " request="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " headers="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1113
    invoke-direct {v1, v3, v2, v0}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    .line 1123
    const/16 v0, 0xc8

    const/16 v7, 0xcc

    if-ne v13, v0, :cond_4

    .line 1124
    const/4 v0, 0x3

    if-ne v3, v0, :cond_2

    .line 1125
    const-string v0, "PAC fetch 200 response interpreted as 204 response."

    invoke-direct {v1, v3, v2, v0}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    .line 1127
    goto :goto_1

    .line 1128
    :cond_2
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v10

    const-wide/16 v14, 0x0

    cmp-long v0, v10, v14

    if-nez v0, :cond_3

    .line 1133
    const-string v0, "200 response with Content-length=0 interpreted as 204 response."

    invoke-direct {v1, v3, v2, v0}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V

    .line 1135
    goto :goto_1

    .line 1136
    :cond_3
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v10

    const-wide/16 v14, -0x1

    cmp-long v0, v10, v14

    if-nez v0, :cond_4

    .line 1139
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v10, -0x1

    if-ne v0, v10, :cond_4

    .line 1140
    const-string v0, "Empty 200 response interpreted as 204 response."

    invoke-direct {v1, v3, v2, v0}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1142
    goto :goto_1

    .line 1152
    :cond_4
    move v7, v13

    :goto_1
    if-eqz v9, :cond_5

    goto :goto_4

    .line 1146
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v8, v7

    :goto_2
    move v7, v13

    goto :goto_3

    :catch_2
    move-exception v0

    move/from16 v16, v8

    move-object v8, v7

    move/from16 v7, v16

    goto :goto_3

    .line 1152
    :catchall_0
    move-exception v0

    move-object v9, v7

    goto :goto_5

    .line 1146
    :catch_3
    move-exception v0

    move-object v9, v7

    move v7, v8

    move-object v8, v9

    .line 1147
    :goto_3
    :try_start_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Probe failed with exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v2, v0}, Lcom/android/server/connectivity/NetworkMonitor;->validationLog(ILjava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1148
    nop

    .line 1152
    if-eqz v9, :cond_5

    .line 1153
    :goto_4
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1155
    :cond_5
    invoke-static {v6}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 1156
    nop

    .line 1157
    invoke-virtual {v5}, Landroid/net/util/Stopwatch;->stop()J

    move-result-wide v5

    invoke-direct {v1, v5, v6, v3, v7}, Lcom/android/server/connectivity/NetworkMonitor;->logValidationProbe(JII)V

    .line 1159
    if-nez v4, :cond_6

    .line 1160
    new-instance v0, Landroid/net/captiveportal/CaptivePortalProbeResult;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v8, v1}, Landroid/net/captiveportal/CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1162
    :cond_6
    invoke-virtual {v4, v7, v8}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->getResult(ILjava/lang/String;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v0

    return-object v0

    .line 1152
    :catchall_1
    move-exception v0

    :goto_5
    if-eqz v9, :cond_7

    .line 1153
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1155
    :cond_7
    invoke-static {v6}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v0
.end method
