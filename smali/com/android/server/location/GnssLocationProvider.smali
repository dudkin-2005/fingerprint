.class public Lcom/android/server/location/GnssLocationProvider;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;
.implements Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;
.implements Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GnssLocationProvider$FusedLocationListener;,
        Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;,
        Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;,
        Lcom/android/server/location/GnssLocationProvider$ProviderHandler;,
        Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;,
        Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;,
        Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;,
        Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;,
        Lcom/android/server/location/GnssLocationProvider$LocationExtras;,
        Lcom/android/server/location/GnssLocationProvider$GpsRequest;
    }
.end annotation


# static fields
.field private static final ADD_LISTENER:I = 0x8

.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final AGPS_SUPL_MODE_MSA:I = 0x2

.field private static final AGPS_SUPL_MODE_MSB:I = 0x1

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final APN_INVALID:I = 0x0

.field private static final APN_IPV4:I = 0x1

.field private static final APN_IPV4V6:I = 0x3

.field private static final APN_IPV6:I = 0x2

.field private static final CHECK_LOCATION:I = 0x1

.field private static final DEBUG:Z

.field private static final DEBUG_PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps_debug.conf"

.field private static final DOWNLOAD_EXTRA_WAKELOCK_KEY:Ljava/lang/String; = "GnssLocationProviderXtraDownload"

.field private static final DOWNLOAD_XTRA_DATA:I = 0x6

.field private static final DOWNLOAD_XTRA_DATA_FINISHED:I = 0xb

.field private static final DOWNLOAD_XTRA_DATA_TIMEOUT_MS:J = 0xea60L

.field private static final ENABLE:I = 0x2

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_CAPABILITY_GEOFENCING:I = 0x20

.field private static final GPS_CAPABILITY_MEASUREMENTS:I = 0x40

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_NAV_MESSAGES:I = 0x80

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_DELETE_ALL:I = 0xffff

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x8000

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_UTC:I = 0x20

.field private static final GPS_GEOFENCE_AVAILABLE:I = 0x2

.field private static final GPS_GEOFENCE_ERROR_GENERIC:I = -0x95

.field private static final GPS_GEOFENCE_ERROR_ID_EXISTS:I = -0x65

.field private static final GPS_GEOFENCE_ERROR_ID_UNKNOWN:I = -0x66

.field private static final GPS_GEOFENCE_ERROR_INVALID_TRANSITION:I = -0x67

.field private static final GPS_GEOFENCE_ERROR_TOO_MANY_GEOFENCES:I = 0x64

.field private static final GPS_GEOFENCE_OPERATION_SUCCESS:I = 0x0

.field private static final GPS_GEOFENCE_UNAVAILABLE:I = 0x1

.field private static final GPS_POLLING_THRESHOLD_INTERVAL:I = 0x2710

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_PROPERTIES_FILE:Ljava/lang/String; = "/vendor/etc/gps.conf"

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final INITIALIZE_HANDLER:I = 0xd

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final ITAR_SPEED_LIMIT_METERS_PER_SECOND:F = 400.0f

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_BEARING_ACCURACY:I = 0x80

.field private static final LOCATION_HAS_HORIZONTAL_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_HAS_SPEED_ACCURACY:I = 0x40

.field private static final LOCATION_HAS_VERTICAL_ACCURACY:I = 0x20

.field private static final LOCATION_INVALID:I = 0x0

.field private static final LOCATION_UPDATE_DURATION_MILLIS:J = 0x0L

.field private static final LOCATION_UPDATE_MIN_TIME_INTERVAL_MILLIS:J = 0x3e8L

.field private static final LPP_PROFILE:Ljava/lang/String; = "persist.sys.gps.lpp"

.field private static final MAX_RETRY_INTERVAL:J = 0xdbba00L

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final PROPERTIES:Lcom/android/internal/location/ProviderProperties;

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final RELEASE_SUPL_CONNECTION:I = 0xf

.field private static final REMOVE_LISTENER:I = 0x9

.field private static final REPORT_LOCATION:I = 0x11

.field private static final REPORT_SV_STATUS:I = 0x12

.field private static final REQUEST_LOCATION:I = 0x10

.field private static final REQUEST_SUPL_CONNECTION:I = 0xe

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final SET_REQUEST:I = 0x3

.field private static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_IDLE:I = 0x2

.field private static final STATE_PENDING_NETWORK:I = 0x0

.field private static final SUBSCRIPTION_OR_SIM_CHANGED:I = 0xc

.field private static final TAG:Ljava/lang/String; = "GnssLocationProvider"

.field private static final TCP_MAX_PORT:I = 0xffff

.field private static final TCP_MIN_PORT:I = 0x0

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final VERBOSE:Z

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GnssLocationProvider"

.field private static needMSACheck:Z


# instance fields
.field isSupportGpsNotification:Z

.field private mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

.field private mAGpsDataConnectionState:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private mClientSource:Landroid/os/WorkSource;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDisableGps:Z

.field private mDownloadXtraDataPending:I

.field private final mDownloadXtraWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mEnabled:Z

.field private mEngineCapabilities:I

.field private mEngineOn:Z

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private final mFusedLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

.field private mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

.field private final mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

.field private final mGnssGeofenceProvider:Lcom/android/server/location/GnssGeofenceProvider;

.field private final mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

.field private mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

.field private final mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

.field private final mGnssSatelliteBlacklistHelper:Lcom/android/server/location/GnssSatelliteBlacklistHelper;

.field private final mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

.field private mHandler:Landroid/os/Handler;

.field private volatile mHardwareModelName:Ljava/lang/String;

.field private volatile mHardwareYear:I

.field private final mILocationManager:Landroid/location/ILocationManager;

.field private volatile mItarSpeedLimitExceeded:Z

.field private mLastFixTime:J

.field private final mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

.field private final mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

.field private mLocationManager:Landroid/location/LocationManager;

.field private final mLock:Ljava/lang/Object;

.field private mLowPowerMode:Z

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private final mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

.field private mNetworkToConnectionType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Network;",
            "Landroid/net/NetworkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNmeaBuffer:[B

.field private final mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mOneplusGpsNotificaion:Lcom/android/server/OnePlusGpsNotification;

.field private mPositionMode:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProperties:Ljava/util/Properties;

.field private mProviderRequest:Lcom/android/internal/location/ProviderRequest;

.field private mSingleShot:Z

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field mStopGps:Z

.field private final mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mSuplEsEnabled:Z

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSupportsXtra:Z

.field private mTimeToFirstFix:I

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private mWorkSource:Landroid/os/WorkSource;

.field private final mXtraBackOff:Lcom/android/server/location/ExponentialBackOff;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 118
    const-string v0, "GnssLocationProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    .line 119
    const-string v0, "GnssLocationProvider"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    .line 121
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x3

    const/4 v10, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    sput-object v0, Lcom/android/server/location/GnssLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    .line 409
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/location/GnssLocationProvider;->needMSACheck:Z

    .line 2864
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->class_init_native()V

    .line 2865
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ilocationManager"    # Landroid/location/ILocationManager;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 320
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    .line 323
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    .line 348
    new-instance v1, Lcom/android/server/location/ExponentialBackOff;

    const-wide/32 v2, 0x493e0

    const-wide/32 v4, 0xdbba00

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/location/ExponentialBackOff;-><init>(JJ)V

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mXtraBackOff:Lcom/android/server/location/ExponentialBackOff;

    .line 361
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    .line 370
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 373
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    .line 388
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    .line 390
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 397
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 400
    iput-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 402
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    .line 412
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    .line 415
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    .line 419
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-direct {v3}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;-><init>()V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    .line 424
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;

    invoke-direct {v3, p0, v2}, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$1;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    .line 425
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$FusedLocationListener;

    invoke-direct {v3, p0, v2}, Lcom/android/server/location/GnssLocationProvider$FusedLocationListener;-><init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$1;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFusedLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    .line 458
    new-instance v3, Ljava/util/HashMap;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkToConnectionType:Ljava/util/HashMap;

    .line 465
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->isSupportGpsNotification:Z

    .line 475
    new-instance v3, Landroid/os/WorkSource;

    invoke-direct {v3}, Landroid/os/WorkSource;-><init>()V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    .line 480
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareYear:I

    .line 488
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    .line 493
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$1;

    invoke-direct {v3, p0}, Lcom/android/server/location/GnssLocationProvider$1;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    .line 524
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$2;

    invoke-direct {v3, p0}, Lcom/android/server/location/GnssLocationProvider$2;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 551
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$3;

    invoke-direct {v3, p0}, Lcom/android/server/location/GnssLocationProvider$3;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 565
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$4;

    invoke-direct {v3, p0}, Lcom/android/server/location/GnssLocationProvider$4;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 597
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$5;

    invoke-direct {v3, p0}, Lcom/android/server/location/GnssLocationProvider$5;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 655
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStopGps:Z

    .line 2273
    new-instance v3, Lcom/android/server/location/GnssLocationProvider$16;

    invoke-direct {v3, p0}, Lcom/android/server/location/GnssLocationProvider$16;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 2861
    const/16 v3, 0x78

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    .line 822
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 823
    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    .line 826
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 827
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "GnssLocationProvider"

    invoke-virtual {v3, v0, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 828
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 831
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "GnssLocationProviderXtraDownload"

    invoke-virtual {v3, v0, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 833
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 835
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 836
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 837
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 839
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 842
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 845
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 849
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 856
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    .line 858
    new-instance v0, Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    invoke-direct {v0, p1, v3, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 861
    const/16 v0, 0xd

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 863
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$7;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GnssLocationProvider$7;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    .line 875
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$8;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/location/GnssLocationProvider$8;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    .line 882
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$9;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GnssLocationProvider$9;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    .line 888
    new-instance v0, Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-direct {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;-><init>(Lcom/android/internal/app/IBatteryStats;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    .line 891
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    .line 892
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "oem.gpsnotification.control"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->isSupportGpsNotification:Z

    .line 895
    new-instance v0, Lcom/android/server/location/NtpTimeHelper;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3, p0}, Lcom/android/server/location/NtpTimeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/NtpTimeHelper$InjectNtpTimeCallback;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;

    .line 896
    new-instance v0, Lcom/android/server/location/GnssSatelliteBlacklistHelper;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3, p0}, Lcom/android/server/location/GnssSatelliteBlacklistHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssSatelliteBlacklistHelper:Lcom/android/server/location/GnssSatelliteBlacklistHelper;

    .line 898
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssSatelliteBlacklistHelper:Lcom/android/server/location/GnssSatelliteBlacklistHelper;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/location/-$$Lambda$5U-_NhZgxqnYDZhpyacq4qBxh8k;

    invoke-direct {v2, v1}, Lcom/android/server/location/-$$Lambda$5U-_NhZgxqnYDZhpyacq4qBxh8k;-><init>(Lcom/android/server/location/GnssSatelliteBlacklistHelper;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 899
    new-instance v0, Lcom/android/server/location/GnssBatchingProvider;

    invoke-direct {v0}, Lcom/android/server/location/GnssBatchingProvider;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    .line 900
    new-instance v0, Lcom/android/server/location/GnssGeofenceProvider;

    invoke-direct {v0, p3}, Lcom/android/server/location/GnssGeofenceProvider;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssGeofenceProvider:Lcom/android/server/location/GnssGeofenceProvider;

    .line 901
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/location/GnssLocationProvider;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Z

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->startNavigating(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateLowPowerMode()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Landroid/content/Context;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->subscriptionOrSimChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1400(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 113
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_set_gps_lock(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 113
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_set_emergency_supl_pdn(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 113
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_set_gnss_pos_protocol_select(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 113
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_set_lpp_profile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 113
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_set_supl_es(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 113
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_set_supl_mode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssStatusListenerHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    return-object v0
.end method

.method static synthetic access$2000(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 113
    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->native_set_supl_version(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/location/GnssLocationProvider;)Ljava/util/Properties;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/location/GnssLocationProvider;[BI)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->native_inject_xtra_data([BI)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/ExponentialBackOff;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mXtraBackOff:Lcom/android/server/location/ExponentialBackOff;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/location/GnssLocationProvider;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssMeasurementsProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssNavigationMessageProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/NtpTimeHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNtpTimeHelper:Lcom/android/server/location/NtpTimeHelper;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/location/GnssLocationProvider;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # I

    .line 113
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineCapabilities:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/location/GnssLocationProvider;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # I

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->requestUtcTime()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->restartRequests()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/location/GnssLocationProvider;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareYear:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/location/GnssLocationProvider;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareModelName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/internal/location/gnssmetrics/GnssMetrics;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/location/GnssLocationProvider;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleEnable()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleDisable()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/location/GnssLocationProvider;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/location/GnssLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "x2"    # Landroid/os/WorkSource;

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/location/GnssLocationProvider;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # I

    .line 113
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/location/GnssLocationProvider;Landroid/net/Network;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Landroid/net/Network;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleUpdateNetworkState(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/location/GnssLocationProvider;Ljava/net/InetAddress;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Ljava/net/InetAddress;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleRequestSuplConnection(Ljava/net/InetAddress;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/location/GnssLocationProvider;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # I

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleReleaseSuplConnection(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/location/GnssLocationProvider;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Z

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleRequestLocation(Z)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleDownloadXtraData()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Landroid/location/Location;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/location/GnssLocationProvider;ZLandroid/location/Location;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/location/Location;

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->handleReportLocation(ZLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->handleReportSvStatus(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/GnssLocationProvider;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/location/GnssLocationProvider;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # I

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->messageIdAsString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200()V
    .registers 0

    .line 113
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_init_once()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/location/GnssLocationProvider;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_init()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_cleanup()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;Ljava/util/Properties;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/util/Properties;

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/location/GnssLocationProvider;)Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    return-object v0
.end method

.method static synthetic access$5700()Z
    .registers 1

    .line 113
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_agps_ril_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager$NetworkCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->xtraDownloadRequest()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/server/location/GnssLocationProvider;)Landroid/net/ConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;

    .line 113
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # Landroid/location/Location;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->injectBestLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/location/GnssLocationProvider;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GnssLocationProvider;
    .param p1, "x1"    # I

    .line 113
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->releaseSuplConnection(I)V

    return-void
.end method

.method static synthetic access$900()Z
    .registers 1

    .line 113
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    return v0
.end method

.method private agpsDataConnStateAsString()Ljava/lang/String;
    .registers 2

    .line 2761
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    packed-switch v0, :pswitch_data_12

    .line 2769
    const-string v0, "<Unknown>"

    return-object v0

    .line 2765
    :pswitch_8
    const-string v0, "OPEN"

    return-object v0

    .line 2767
    :pswitch_b
    const-string v0, "OPENING"

    return-object v0

    .line 2763
    :pswitch_e
    const-string v0, "CLOSED"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private agpsDataConnStatusAsString(I)Ljava/lang/String;
    .registers 3
    .param p1, "agpsDataConnStatus"    # I

    .line 2777
    packed-switch p1, :pswitch_data_16

    .line 2789
    const-string v0, "<Unknown>"

    return-object v0

    .line 2783
    :pswitch_6
    const-string v0, "FAILED"

    return-object v0

    .line 2781
    :pswitch_9
    const-string v0, "DONE"

    return-object v0

    .line 2779
    :pswitch_c
    const-string v0, "CONNECTED"

    return-object v0

    .line 2785
    :pswitch_f
    const-string v0, "RELEASE"

    return-object v0

    .line 2787
    :pswitch_12
    const-string v0, "REQUEST"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1585
    if-nez p1, :cond_7

    .line 1586
    const v0, 0xffff

    .line 1586
    .local v0, "flags":I
    goto/16 :goto_97

    .line 1588
    .end local v0    # "flags":I
    :cond_7
    const/4 v0, 0x0

    .line 1589
    .restart local v0    # "flags":I
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    or-int/lit8 v0, v0, 0x1

    .line 1590
    :cond_12
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    or-int/lit8 v0, v0, 0x2

    .line 1591
    :cond_1c
    const-string/jumbo v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    or-int/lit8 v0, v0, 0x4

    .line 1592
    :cond_27
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_32

    or-int/lit8 v0, v0, 0x8

    .line 1593
    :cond_32
    const-string/jumbo v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    or-int/lit8 v0, v0, 0x10

    .line 1594
    :cond_3d
    const-string/jumbo v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    or-int/lit8 v0, v0, 0x20

    .line 1595
    :cond_48
    const-string/jumbo v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    or-int/lit8 v0, v0, 0x40

    .line 1596
    :cond_53
    const-string/jumbo v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    or-int/lit16 v0, v0, 0x80

    .line 1597
    :cond_5e
    const-string/jumbo v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_69

    or-int/lit16 v0, v0, 0x100

    .line 1598
    :cond_69
    const-string/jumbo v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_74

    or-int/lit16 v0, v0, 0x200

    .line 1599
    :cond_74
    const-string/jumbo v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7f

    or-int/lit16 v0, v0, 0x400

    .line 1600
    :cond_7f
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8b

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1601
    :cond_8b
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_97

    const v1, 0xffff

    or-int/2addr v0, v1

    .line 1604
    :cond_97
    :goto_97
    if-eqz v0, :cond_9e

    .line 1605
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->native_delete_aiding_data(I)V

    .line 1606
    const/4 v1, 0x1

    return v1

    .line 1609
    :cond_9e
    const/4 v1, 0x0

    return v1
.end method

.method private ensureInHandlerThread()V
    .registers 3

    .line 2751
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_11

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_11

    .line 2752
    return-void

    .line 2754
    :cond_11
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This method must run on the Handler thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getApnIpType(Ljava/lang/String;)I
    .registers 11
    .param p1, "apn"    # Ljava/lang/String;

    .line 2659
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->ensureInHandlerThread()V

    .line 2660
    const/4 v0, 0x0

    if-nez p1, :cond_7

    .line 2661
    return v0

    .line 2664
    :cond_7
    const-string v1, "current = 1 and apn = \'%s\' and carrier_enabled = 1"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2665
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2667
    .local v2, "cursor":Landroid/database/Cursor;
    :try_start_13
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v5, "protocol"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const-string/jumbo v8, "name ASC"

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 2674
    if-eqz v2, :cond_42

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 2675
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/android/server/location/GnssLocationProvider;->translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_3c} :catch_60
    .catchall {:try_start_13 .. :try_end_3c} :catchall_5e

    .line 2682
    if-eqz v2, :cond_41

    .line 2683
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2675
    :cond_41
    return v3

    .line 2677
    :cond_42
    :try_start_42
    const-string v3, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No entry found in query for APN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_58} :catch_60
    .catchall {:try_start_42 .. :try_end_58} :catchall_5e

    .line 2682
    if-eqz v2, :cond_7a

    .line 2683
    :goto_5a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_7a

    .line 2682
    :catchall_5e
    move-exception v0

    goto :goto_7b

    .line 2679
    :catch_60
    move-exception v3

    .line 2680
    .local v3, "e":Ljava/lang/Exception;
    :try_start_61
    const-string v4, "GnssLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error encountered on APN query for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_77
    .catchall {:try_start_61 .. :try_end_77} :catchall_5e

    .line 2682
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_7a

    goto :goto_5a

    .line 2687
    :cond_7a
    :goto_7a
    return v0

    .line 2682
    :goto_7b
    if-eqz v2, :cond_80

    .line 2683
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_80
    throw v0
.end method

.method private getGeofenceStatus(I)I
    .registers 3
    .param p1, "status"    # I

    .line 2175
    const/16 v0, -0x95

    if-eq p1, v0, :cond_19

    if-eqz p1, :cond_17

    const/16 v0, 0x64

    if-eq p1, v0, :cond_15

    packed-switch p1, :pswitch_data_1c

    .line 2189
    const/4 v0, -0x1

    return v0

    .line 2181
    :pswitch_f
    const/4 v0, 0x2

    return v0

    .line 2187
    :pswitch_11
    const/4 v0, 0x3

    return v0

    .line 2183
    :pswitch_13
    const/4 v0, 0x4

    return v0

    .line 2185
    :cond_15
    const/4 v0, 0x1

    return v0

    .line 2177
    :cond_17
    const/4 v0, 0x0

    return v0

    .line 2179
    :cond_19
    const/4 v0, 0x5

    return v0

    nop

    :pswitch_data_1c
    .packed-switch -0x67
        :pswitch_13
        :pswitch_11
        :pswitch_f
    .end packed-switch
.end method

.method private getSelectedApn()Ljava/lang/String;
    .registers 10

    .line 2633
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2634
    .local v0, "uri":Landroid/net/Uri;
    const/4 v7, 0x0

    move-object v8, v7

    .line 2636
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_8
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "apn"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "name ASC"

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v8, v1

    .line 2642
    if-eqz v8, :cond_32

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2643
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2c} :catch_41
    .catchall {:try_start_8 .. :try_end_2c} :catchall_3f

    .line 2650
    if-eqz v8, :cond_31

    .line 2651
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2643
    :cond_31
    return-object v1

    .line 2645
    :cond_32
    :try_start_32
    const-string v1, "GnssLocationProvider"

    const-string v2, "No APN found to select."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_39} :catch_41
    .catchall {:try_start_32 .. :try_end_39} :catchall_3f

    .line 2650
    if-eqz v8, :cond_4c

    .line 2651
    :goto_3b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_4c

    .line 2650
    :catchall_3f
    move-exception v1

    goto :goto_4d

    .line 2647
    :catch_41
    move-exception v1

    .line 2648
    .local v1, "e":Ljava/lang/Exception;
    :try_start_42
    const-string v2, "GnssLocationProvider"

    const-string v3, "Error encountered on selecting the APN."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_3f

    .line 2650
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v8, :cond_4c

    goto :goto_3b

    .line 2655
    :cond_4c
    :goto_4c
    return-object v7

    .line 2650
    :goto_4d
    if-eqz v8, :cond_52

    .line 2651
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_52
    throw v1
.end method

.method private getSuplMode(Ljava/util/Properties;ZZ)I
    .registers 11
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "agpsEnabled"    # Z
    .param p3, "singleShot"    # Z

    .line 1252
    const/4 v0, 0x0

    if-eqz p2, :cond_4a

    .line 1253
    const-string v1, "SUPL_MODE"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1254
    .local v1, "modeString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1255
    .local v2, "suplMode":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1257
    :try_start_10
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_14} :catch_16

    move v2, v3

    .line 1261
    goto :goto_2f

    .line 1258
    :catch_16
    move-exception v3

    .line 1259
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "GnssLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to parse SUPL_MODE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    return v0

    .line 1265
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_2f
    :goto_2f
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_3c

    .line 1266
    const/4 v0, 0x1

    return v0

    .line 1271
    :cond_3c
    if-eqz p3, :cond_4a

    const/4 v4, 0x4

    .line 1272
    invoke-direct {p0, v4}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_4a

    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_4a

    .line 1274
    return v3

    .line 1277
    .end local v1    # "modeString":Ljava/lang/String;
    .end local v2    # "suplMode":I
    :cond_4a
    return v0
.end method

.method private handleDisable()V
    .registers 3

    .line 1323
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "handleDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    :cond_c
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1326
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 1327
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1328
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1330
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider;->disable()V

    .line 1332
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_cleanup()V

    .line 1334
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssMeasurementsProvider;->onGpsEnabledChanged()V

    .line 1335
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 1336
    return-void
.end method

.method private handleDownloadXtraData()V
    .registers 4

    .line 1141
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    if-nez v0, :cond_d

    .line 1143
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "handleDownloadXtraData() called when Xtra not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    return-void

    .line 1146
    :cond_d
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 1148
    return-void

    .line 1150
    :cond_13
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isDataNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1152
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    .line 1153
    return-void

    .line 1155
    :cond_1d
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraDataPending:I

    .line 1158
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDownloadXtraWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1159
    const-string v0, "GnssLocationProvider"

    const-string v1, "WakeLock acquired by handleDownloadXtraData()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider$10;

    invoke-direct {v1, p0}, Lcom/android/server/location/GnssLocationProvider$10;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1200
    return-void
.end method

.method private handleEnable()V
    .registers 5

    .line 1281
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "handleEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_c
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_init()Z

    move-result v0

    .line 1285
    .local v0, "enabled":Z
    if-eqz v0, :cond_40

    .line 1286
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_supports_xtra()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    .line 1289
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_24

    .line 1290
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1292
    :cond_24
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v1, :cond_30

    .line 1293
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerPort:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1296
    :cond_30
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GnssMeasurementsProvider;->onGpsEnabledChanged()V

    .line 1297
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GnssNavigationMessageProvider;->onGpsEnabledChanged()V

    .line 1298
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v1}, Lcom/android/server/location/GnssBatchingProvider;->enable()V

    goto :goto_4e

    .line 1300
    :cond_40
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1301
    const/4 v2, 0x0

    :try_start_44
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z

    .line 1302
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_4f

    .line 1303
    const-string v1, "GnssLocationProvider"

    const-string v2, "Failed to enable location provider"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :goto_4e
    return-void

    .line 1302
    :catchall_4f
    move-exception v2

    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v2
.end method

.method private handleGpsRequest(Z)V
    .registers 5
    .param p1, "isRequest"    # Z

    .line 1707
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mOneplusGpsNotificaion:Lcom/android/server/OnePlusGpsNotification;

    if-nez v0, :cond_d

    .line 1708
    new-instance v0, Lcom/android/server/OnePlusGpsNotification;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/OnePlusGpsNotification;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mOneplusGpsNotificaion:Lcom/android/server/OnePlusGpsNotification;

    .line 1710
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1711
    .local v0, "mCurrentGpsPackageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_20

    .line 1712
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getCurrentProviderPackageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    .line 1714
    :cond_20
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mOneplusGpsNotificaion:Lcom/android/server/OnePlusGpsNotification;

    invoke-virtual {v1, v0}, Lcom/android/server/OnePlusGpsNotification;->updateGpsRequstPackage(Ljava/util/ArrayList;)V

    .line 1715
    return-void
.end method

.method private handleReleaseSuplConnection(I)V
    .registers 8
    .param p1, "agpsDataConnStatus"    # I

    .line 1029
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_21

    .line 1030
    const-string/jumbo v0, "releaseSuplConnection, state=%s, status=%s"

    new-array v3, v2, [Ljava/lang/Object;

    .line 1032
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    .line 1033
    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStatusAsString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1030
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1034
    .local v0, "message":Ljava/lang/String;
    const-string v3, "GnssLocationProvider"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    .end local v0    # "message":Ljava/lang/String;
    :cond_21
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    if-nez v0, :cond_26

    .line 1038
    return-void

    .line 1040
    :cond_26
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    .line 1042
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1043
    if-eq p1, v2, :cond_4f

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4b

    .line 1051
    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status to release SUPL connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_53

    .line 1045
    :cond_4b
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_agps_data_conn_failed()V

    .line 1046
    goto :goto_53

    .line 1048
    :cond_4f
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_agps_data_conn_closed()V

    .line 1049
    nop

    .line 1053
    :goto_53
    return-void
.end method

.method private handleReportLocation(ZLandroid/location/Location;)V
    .registers 8
    .param p1, "hasLatLong"    # Z
    .param p2, "location"    # Landroid/location/Location;

    .line 1740
    invoke-virtual {p2}, Landroid/location/Location;->hasSpeed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    .line 1741
    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result v0

    const/high16 v3, 0x43c80000    # 400.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    .line 1744
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-eqz v0, :cond_2c

    .line 1745
    const-string v0, "GnssLocationProvider"

    const-string v2, "Hal reported a speed in excess of ITAR limit.  GPS/GNSS Navigation output blocked."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_2b

    .line 1748
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logReceivedLocationStatus(Z)V

    .line 1750
    :cond_2b
    return-void

    .line 1753
    :cond_2c
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    if-eqz v0, :cond_4b

    const-string v0, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportLocation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :cond_4b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    invoke-virtual {p2, v3, v4}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 1758
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 1761
    :try_start_5b
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    invoke-interface {v0, p2, v1}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_60} :catch_61

    .line 1764
    goto :goto_69

    .line 1762
    :catch_61
    move-exception v0

    .line 1763
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GnssLocationProvider"

    const-string v3, "RemoteException calling reportLocation"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_69
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_96

    .line 1767
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v0, p1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logReceivedLocationStatus(Z)V

    .line 1768
    if-eqz p1, :cond_96

    .line 1769
    invoke-virtual {p2}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 1770
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logPositionAccuracyMeters(F)V

    .line 1772
    :cond_83
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    if-lez v0, :cond_96

    .line 1773
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    sub-long/2addr v0, v3

    long-to-int v0, v0

    .line 1774
    .local v0, "timeBetweenFixes":I
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v1, v3, v0}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logMissedReports(II)V

    .line 1779
    .end local v0    # "timeBetweenFixes":I
    :cond_96
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    .line 1781
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    if-nez v0, :cond_d8

    if-eqz p1, :cond_d8

    .line 1782
    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    iget-wide v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    sub-long/2addr v0, v3

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1783
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c6

    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TTFF: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    :cond_c6
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_d1

    .line 1785
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v0, v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logTimeToFirstFixMilliSecs(I)V

    .line 1789
    :cond_d1
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v0, v1}, Lcom/android/server/location/GnssStatusListenerHelper;->onFirstFix(I)V

    .line 1792
    :cond_d8
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSingleShot:Z

    if-eqz v0, :cond_df

    .line 1793
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 1796
    :cond_df
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_112

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_112

    .line 1800
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_fc

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const v3, 0xea60

    if-ge v0, v3, :cond_fc

    .line 1801
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1805
    :cond_fc
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1806
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "enabled"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1807
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1808
    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(I)V

    .line 1811
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_112
    invoke-direct {p0, v2}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_131

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_131

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const/16 v1, 0x2710

    if-le v0, v1, :cond_131

    .line 1813
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_12e

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "got fix, hibernating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    :cond_12e
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->hibernate()V

    .line 1816
    :cond_131
    return-void
.end method

.method private handleReportSvStatus(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)V
    .registers 12
    .param p1, "info"    # Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;

    .line 1879
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    iget v1, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCount:I

    iget-object v2, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    iget-object v3, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    iget-object v4, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvElevations:[F

    iget-object v5, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvAzimuths:[F

    iget-object v6, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCarrierFreqs:[F

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/location/GnssStatusListenerHelper;->onSvStatusChanged(I[I[F[F[F[F)V

    .line 1888
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    iget-object v1, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    iget v2, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCount:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->logCn0([FI)V

    .line 1890
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    if-eqz v0, :cond_36

    .line 1891
    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SV count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    :cond_36
    const/4 v0, 0x0

    .line 1895
    .local v0, "usedInFixCount":I
    const/4 v1, 0x0

    .line 1896
    .local v1, "maxCn0":I
    const/4 v2, 0x0

    .line 1897
    .local v2, "meanCn0":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v1

    move v1, v0

    move v0, v3

    .line 1897
    .local v0, "i":I
    .local v1, "usedInFixCount":I
    .local v2, "maxCn0":I
    .local v4, "meanCn0":I
    :goto_3e
    iget v5, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCount:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v0, v5, :cond_f6

    .line 1898
    iget-object v5, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    aget v5, v5, v0

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_63

    .line 1899
    add-int/lit8 v1, v1, 0x1

    .line 1900
    iget-object v5, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    aget v5, v5, v0

    int-to-float v8, v2

    cmpl-float v5, v5, v8

    if-lez v5, :cond_5c

    .line 1901
    iget-object v5, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    aget v5, v5, v0

    float-to-int v2, v5

    .line 1903
    :cond_5c
    int-to-float v5, v4

    iget-object v8, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    aget v8, v8, v0

    add-float/2addr v5, v8

    float-to-int v4, v5

    .line 1905
    :cond_63
    sget-boolean v5, Lcom/android/server/location/GnssLocationProvider;->VERBOSE:Z

    if-eqz v5, :cond_f2

    .line 1906
    const-string v5, "GnssLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "svid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    aget v9, v9, v0

    shr-int/lit8 v9, v9, 0x8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " cn0: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    aget v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " elev: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvElevations:[F

    aget v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " azimuth: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvAzimuths:[F

    aget v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " carrier frequency: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCarrierFreqs:[F

    aget v9, v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1911
    iget-object v9, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    aget v9, v9, v0

    and-int/2addr v7, v9

    if-nez v7, :cond_b7

    .line 1912
    const-string v7, "  "

    goto :goto_b9

    :cond_b7
    const-string v7, " E"

    :goto_b9
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1913
    iget-object v7, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    aget v7, v7, v0

    and-int/2addr v6, v7

    if-nez v6, :cond_c6

    .line 1914
    const-string v6, "  "

    goto :goto_c8

    :cond_c6
    const-string v6, " A"

    :goto_c8
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1915
    iget-object v6, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    aget v6, v6, v0

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_d6

    .line 1916
    const-string v6, ""

    goto :goto_d8

    :cond_d6
    const-string v6, "U"

    :goto_d8
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1918
    iget-object v6, p1, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    aget v6, v6, v0

    and-int/lit8 v6, v6, 0x8

    if-nez v6, :cond_e6

    .line 1919
    const-string v6, ""

    goto :goto_e8

    :cond_e6
    const-string v6, "F"

    :goto_e8
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1906
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    :cond_f2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3e

    .line 1922
    .end local v0    # "i":I
    :cond_f6
    if-lez v1, :cond_f9

    .line 1923
    div-int/2addr v4, v1

    .line 1926
    :cond_f9
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->set(III)V

    .line 1928
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    if-eqz v0, :cond_131

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    if-ne v0, v6, :cond_131

    iget-wide v5, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    const-wide/16 v8, 0x0

    cmp-long v0, v5, v8

    if-lez v0, :cond_131

    .line 1929
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v8, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    sub-long/2addr v5, v8

    const-wide/16 v8, 0x2710

    cmp-long v0, v5, v8

    if-lez v0, :cond_131

    .line 1931
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1932
    .local v0, "intent":Landroid/content/Intent;
    const-string v5, "enabled"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1933
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1934
    invoke-direct {p0, v7}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(I)V

    .line 1936
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_131
    return-void
.end method

.method private handleRequestLocation(Z)V
    .registers 16
    .param p1, "independentFromGnss"    # Z

    .line 1056
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->isRequestLocationRateLimited()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1057
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_11

    .line 1058
    const-string v0, "GnssLocationProvider"

    const-string v1, "RequestLocation is denied due to too frequent requests."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_11
    return-void

    .line 1062
    :cond_12
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1063
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "gnss_hal_location_request_duration_millis"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1067
    .local v4, "durationMillis":J
    cmp-long v1, v4, v2

    if-nez v1, :cond_2d

    .line 1068
    const-string v1, "GnssLocationProvider"

    const-string v2, "GNSS HAL location request is disabled by Settings."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    return-void

    .line 1072
    :cond_2d
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 1077
    .local v1, "locationManager":Landroid/location/LocationManager;
    if-eqz p1, :cond_40

    .line 1079
    const-string/jumbo v2, "network"

    .line 1080
    .local v2, "provider":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNetworkLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    .line 1080
    .local v3, "locationListener":Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;
    goto :goto_44

    .line 1083
    .end local v2    # "provider":Ljava/lang/String;
    .end local v3    # "locationListener":Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;
    :cond_40
    const-string v2, "fused"

    .line 1084
    .restart local v2    # "provider":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFusedLocationListener:Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;

    .line 1087
    .restart local v3    # "locationListener":Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;
    :goto_44
    const-string v6, "GnssLocationProvider"

    const-string v7, "GNSS HAL Requesting location updates from %s provider for %d millis."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    .line 1090
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v13, 0x1

    aput-object v9, v8, v13

    .line 1088
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1087
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    const-wide/16 v8, 0x3e8

    const/4 v10, 0x0

    :try_start_5f
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    .line 1094
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    .line 1092
    move-object v6, v1

    move-object v7, v2

    move-object v11, v3

    invoke-virtual/range {v6 .. v12}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 1095
    iget v6, v3, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;->numLocationUpdateRequest:I

    add-int/2addr v6, v13

    iput v6, v3, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;->numLocationUpdateRequest:I

    .line 1096
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$oV78CWPlpzb195CgVgv-_YipNWw;

    invoke-direct {v7, v3, v2, v1}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$oV78CWPlpzb195CgVgv-_YipNWw;-><init>(Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;Ljava/lang/String;Landroid/location/LocationManager;)V

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_7a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5f .. :try_end_7a} :catch_7b

    .line 1105
    goto :goto_83

    .line 1103
    :catch_7b
    move-exception v6

    .line 1104
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "GnssLocationProvider"

    const-string v8, "Unable to request location."

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1106
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :goto_83
    return-void
.end method

.method private handleRequestSuplConnection(Ljava/net/InetAddress;)V
    .registers 7
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 1005
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    .line 1006
    const-string/jumbo v0, "requestSuplConnection, state=%s, address=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 1008
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->agpsDataConnStateAsString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    aput-object p1, v3, v2

    .line 1006
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1010
    .local v0, "message":Ljava/lang/String;
    const-string v3, "GnssLocationProvider"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    .end local v0    # "message":Ljava/lang/String;
    :cond_1d
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    if-eqz v0, :cond_22

    .line 1014
    return-void

    .line 1016
    :cond_22
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 1017
    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    .line 1019
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1020
    .local v0, "requestBuilder":Landroid/net/NetworkRequest$Builder;
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1021
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1022
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 1023
    .local v1, "request":Landroid/net/NetworkRequest;
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplConnectivityCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, v1, v3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1026
    return-void
.end method

.method private handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 3
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .line 1369
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 1370
    iput-object p2, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 1371
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    .line 1372
    return-void
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .registers 9
    .param p1, "location"    # Landroid/location/Location;

    .line 1203
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1204
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 1205
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    .line 1204
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/GnssLocationProvider;->native_inject_location(DDF)V

    .line 1207
    :cond_16
    return-void
.end method

.method private handleUpdateNetworkState(Landroid/net/Network;)V
    .registers 21
    .param p1, "network"    # Landroid/net/Network;

    move-object/from16 v7, p0

    .line 927
    move-object/from16 v8, p1

    iget-object v0, v7, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 929
    .local v0, "info":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 930
    .local v1, "networkAvailable":Z
    const/4 v2, 0x0

    .line 931
    .local v2, "isConnected":Z
    const/4 v3, -0x1

    .line 932
    .local v3, "type":I
    const/4 v4, 0x0

    .line 933
    .local v4, "isRoaming":Z
    const/4 v5, 0x0

    .line 935
    .local v5, "apnName":Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_37

    .line 936
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v6

    if-eqz v6, :cond_25

    move v6, v10

    goto :goto_26

    :cond_25
    move v6, v9

    :goto_26
    move v1, v6

    .line 937
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 938
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 939
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v4

    .line 940
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    .line 943
    .end local v1    # "networkAvailable":Z
    .end local v2    # "isConnected":Z
    .end local v4    # "isRoaming":Z
    .end local v5    # "apnName":Ljava/lang/String;
    .local v11, "isConnected":Z
    .local v12, "isRoaming":Z
    .local v13, "networkAvailable":Z
    .local v14, "apnName":Ljava/lang/String;
    :cond_37
    move v13, v1

    move v11, v2

    move v12, v4

    move-object v14, v5

    if-eqz v11, :cond_46

    .line 944
    iget-object v1, v7, Lcom/android/server/location/GnssLocationProvider;->mNetworkToConnectionType:Ljava/util/HashMap;

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "type":I
    .local v15, "type":I
    .local v16, "info":Landroid/net/NetworkInfo;
    :cond_42
    move-object/from16 v16, v0

    move v15, v3

    goto :goto_58

    .line 946
    .end local v15    # "type":I
    .end local v16    # "info":Landroid/net/NetworkInfo;
    .restart local v0    # "info":Landroid/net/NetworkInfo;
    .restart local v3    # "type":I
    :cond_46
    iget-object v1, v7, Lcom/android/server/location/GnssLocationProvider;->mNetworkToConnectionType:Ljava/util/HashMap;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/net/NetworkInfo;

    .line 947
    if-eqz v0, :cond_42

    .line 948
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 952
    .end local v3    # "type":I
    .local v1, "type":I
    move-object/from16 v16, v0

    move v15, v1

    .line 952
    .end local v0    # "info":Landroid/net/NetworkInfo;
    .end local v1    # "type":I
    .restart local v15    # "type":I
    .restart local v16    # "info":Landroid/net/NetworkInfo;
    :goto_58
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    const/4 v6, 0x5

    const/4 v5, 0x2

    if-eqz v0, :cond_85

    .line 953
    const-string v0, "UpdateNetworkState, type=%s, connected=%s, info=%s, capabilities=%S, network=%s"

    new-array v1, v6, [Ljava/lang/Object;

    .line 955
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    .line 956
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v10

    aput-object v16, v1, v5

    const/4 v2, 0x3

    iget-object v3, v7, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 958
    invoke-virtual {v3, v8}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object v8, v1, v2

    .line 953
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 960
    .local v0, "message":Ljava/lang/String;
    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    .end local v0    # "message":Ljava/lang/String;
    :cond_85
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_agps_ril_supported()Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 964
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GnssLocationProvider;->getSelectedApn()Ljava/lang/String;

    move-result-object v0

    .line 965
    .local v0, "defaultApn":Ljava/lang/String;
    if-nez v0, :cond_93

    .line 966
    const-string v0, "dummy-apn"

    .line 969
    .end local v0    # "defaultApn":Ljava/lang/String;
    .local v17, "defaultApn":Ljava/lang/String;
    :cond_93
    move-object/from16 v17, v0

    move-object v0, v7

    move v1, v11

    move v2, v15

    move v3, v12

    move v4, v13

    move v9, v5

    move-object v5, v14

    move-object/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GnssLocationProvider;->native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 976
    .end local v17    # "defaultApn":Ljava/lang/String;
    goto :goto_ae

    :cond_a2
    move v9, v5

    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_ae

    .line 977
    const-string v0, "GnssLocationProvider"

    const-string v1, "Skipped network state update because GPS HAL AGPS-RIL is not  supported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_ae
    :goto_ae
    iget v0, v7, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    if-ne v0, v10, :cond_e4

    .line 981
    if-eqz v11, :cond_e0

    .line 982
    if-nez v14, :cond_b8

    .line 985
    const-string v14, "dummy-apn"

    .line 987
    :cond_b8
    invoke-direct {v7, v14}, Lcom/android/server/location/GnssLocationProvider;->getApnIpType(Ljava/lang/String;)I

    move-result v0

    .line 988
    .local v0, "apnIpType":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/GnssLocationProvider;->setRouting()V

    .line 989
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_da

    .line 990
    const-string/jumbo v1, "native_agps_data_conn_open: mAgpsApn=%s, mApnIpType=%s"

    new-array v2, v9, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v14, v2, v3

    .line 993
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    .line 990
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 994
    .local v1, "message":Ljava/lang/String;
    const-string v2, "GnssLocationProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    .end local v1    # "message":Ljava/lang/String;
    :cond_da
    invoke-direct {v7, v14, v0}, Lcom/android/server/location/GnssLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;I)V

    .line 997
    iput v9, v7, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionState:I

    .line 998
    .end local v0    # "apnIpType":I
    goto :goto_e4

    .line 999
    :cond_e0
    const/4 v0, 0x5

    invoke-direct {v7, v0}, Lcom/android/server/location/GnssLocationProvider;->handleReleaseSuplConnection(I)V

    .line 1002
    :cond_e4
    :goto_e4
    return-void
.end method

.method private hasCapability(I)Z
    .registers 3
    .param p1, "capability"    # I

    .line 1728
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private hibernate()V
    .registers 8

    .line 1720
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 1721
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1722
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1723
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1724
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    int-to-long v3, v3

    add-long/2addr v3, v0

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1725
    return-void
.end method

.method private injectBestLocation(Landroid/location/Location;)V
    .registers 33
    .param p1, "location"    # Landroid/location/Location;

    .line 1109
    nop

    .line 1110
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    const/4 v2, 0x1

    or-int/2addr v0, v2

    .line 1111
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x4

    goto :goto_16

    :cond_15
    move v2, v1

    :goto_16
    or-int/2addr v0, v2

    .line 1112
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearing()Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v2, 0x8

    goto :goto_21

    :cond_20
    move v2, v1

    :goto_21
    or-int/2addr v0, v2

    .line 1113
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v2

    if-eqz v2, :cond_2b

    const/16 v2, 0x10

    goto :goto_2c

    :cond_2b
    move v2, v1

    :goto_2c
    or-int/2addr v0, v2

    .line 1114
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v2

    if-eqz v2, :cond_36

    const/16 v2, 0x20

    goto :goto_37

    :cond_36
    move v2, v1

    :goto_37
    or-int/2addr v0, v2

    .line 1115
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v2

    if-eqz v2, :cond_41

    const/16 v2, 0x40

    goto :goto_42

    :cond_41
    move v2, v1

    :goto_42
    or-int/2addr v0, v2

    .line 1116
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v2

    if-eqz v2, :cond_4c

    const/16 v1, 0x80

    nop

    :cond_4c
    or-int/2addr v0, v1

    .line 1118
    .local v0, "gnssLocationFlags":I
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    .line 1119
    .local v18, "latitudeDegrees":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    .line 1120
    .local v20, "longitudeDegrees":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v22

    .line 1121
    .local v22, "altitudeMeters":D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v1

    .line 1122
    .local v1, "speedMetersPerSec":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v24

    .line 1123
    .local v24, "bearingDegrees":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v25

    .line 1124
    .local v25, "horizontalAccuracyMeters":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v26

    .line 1125
    .local v26, "verticalAccuracyMeters":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v27

    .line 1126
    .local v27, "speedAccuracyMetersPerSecond":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v28

    .line 1127
    .local v28, "bearingAccuracyDegrees":F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v29

    .line 1128
    .local v29, "timestamp":J
    move-object/from16 v2, p0

    move v3, v0

    move-wide/from16 v4, v18

    move-wide/from16 v6, v20

    move-wide/from16 v8, v22

    move v10, v1

    move/from16 v11, v24

    move/from16 v12, v25

    move/from16 v13, v26

    move/from16 v14, v27

    move/from16 v15, v28

    move-wide/from16 v16, v29

    invoke-direct/range {v2 .. v17}, Lcom/android/server/location/GnssLocationProvider;->native_inject_best_location(IDDDFFFFFFJ)V

    .line 1132
    return-void
.end method

.method private isDataNetworkConnected()Z
    .registers 6

    .line 2729
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2738
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    :try_start_9
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_d} :catch_11

    if-eqz v2, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    .line 2739
    :catch_11
    move-exception v2

    .line 2740
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "GnssLocationProvider"

    const-string v4, "Return false while checking failed."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2741
    nop

    .end local v2    # "ex":Ljava/lang/Exception;
    goto :goto_1d

    .line 2738
    :cond_1b
    nop

    .line 2742
    .local v1, "isDataConnected":Z
    :goto_1c
    nop

    .line 2741
    :goto_1d
    nop

    .line 2743
    return v1
.end method

.method private isRequestLocationRateLimited()Z
    .registers 2

    .line 1137
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupported()Z
    .registers 1

    .line 683
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$handleRequestLocation$1(Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;Ljava/lang/String;Landroid/location/LocationManager;)V
    .registers 7
    .param p0, "locationListener"    # Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "locationManager"    # Landroid/location/LocationManager;

    .line 1097
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;->numLocationUpdateRequest:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider$LocationChangeListener;->numLocationUpdateRequest:I

    if-nez v0, :cond_1b

    .line 1098
    const-string v0, "GnssLocationProvider"

    const-string v2, "Removing location updates from %s provider."

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 1099
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1098
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    invoke-virtual {p2, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1102
    :cond_1b
    return-void
.end method

.method static synthetic lambda$onUpdateSatelliteBlacklist$0([I[I)V
    .registers 2
    .param p0, "constellations"    # [I
    .param p1, "svids"    # [I

    .line 611
    invoke-static {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->native_set_satellite_blacklist([I[I)Z

    .line 612
    return-void
.end method

.method public static synthetic lambda$reportGnssServiceDied$2(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 3

    .line 2084
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->class_init_native()V

    .line 2085
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_init_once()V

    .line 2086
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2088
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->handleEnable()V

    .line 2090
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    .line 2092
    :cond_16
    return-void
.end method

.method private loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z
    .registers 7
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/util/Properties;

    .line 804
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_1b

    .line 805
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 807
    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_6
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    .line 808
    invoke-virtual {p2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_16

    .line 810
    :try_start_f
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 811
    nop

    .line 816
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "stream":Ljava/io/FileInputStream;
    nop

    .line 817
    const/4 v0, 0x1

    return v0

    .line 810
    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catchall_16
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1b} :catch_1b

    .line 813
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "stream":Ljava/io/FileInputStream;
    :catch_1b
    move-exception v0

    .line 814
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open GPS configuration file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const/4 v1, 0x0

    return v1
.end method

.method private loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .line 785
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, "configValues":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_6c

    aget-object v4, v0, v3

    .line 788
    .local v4, "item":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v5, :cond_2c

    const-string v5, "GnssLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GpsParamsResource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_2c
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 791
    .local v5, "index":I
    if-lez v5, :cond_52

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_52

    .line 792
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 793
    .local v6, "key":Ljava/lang/String;
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 794
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 795
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    goto :goto_69

    .line 796
    :cond_52
    const-string v6, "GnssLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "malformed contents: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "index":I
    :goto_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 799
    :cond_6c
    return-void
.end method

.method private messageIdAsString(I)Ljava/lang/String;
    .registers 3
    .param p1, "message"    # I

    .line 2797
    packed-switch p1, :pswitch_data_30

    .line 2827
    :pswitch_3
    const-string v0, "<Unknown>"

    return-object v0

    .line 2825
    :pswitch_6
    const-string v0, "REPORT_SV_STATUS"

    return-object v0

    .line 2823
    :pswitch_9
    const-string v0, "REPORT_LOCATION"

    return-object v0

    .line 2811
    :pswitch_c
    const-string v0, "REQUEST_LOCATION"

    return-object v0

    .line 2807
    :pswitch_f
    const-string v0, "RELEASE_SUPL_CONNECTION"

    return-object v0

    .line 2805
    :pswitch_12
    const-string v0, "REQUEST_SUPL_CONNECTION"

    return-object v0

    .line 2821
    :pswitch_15
    const-string v0, "INITIALIZE_HANDLER"

    return-object v0

    .line 2819
    :pswitch_18
    const-string v0, "SUBSCRIPTION_OR_SIM_CHANGED"

    return-object v0

    .line 2815
    :pswitch_1b
    const-string v0, "DOWNLOAD_XTRA_DATA_FINISHED"

    return-object v0

    .line 2817
    :pswitch_1e
    const-string v0, "UPDATE_LOCATION"

    return-object v0

    .line 2813
    :pswitch_21
    const-string v0, "DOWNLOAD_XTRA_DATA"

    return-object v0

    .line 2809
    :pswitch_24
    const-string v0, "INJECT_NTP_TIME"

    return-object v0

    .line 2803
    :pswitch_27
    const-string v0, "UPDATE_NETWORK_STATE"

    return-object v0

    .line 2801
    :pswitch_2a
    const-string v0, "SET_REQUEST"

    return-object v0

    .line 2799
    :pswitch_2d
    const-string v0, "ENABLE"

    return-object v0

    :pswitch_data_30
    .packed-switch 0x2
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(Ljava/lang/String;I)V
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIII)V
.end method

.method private native native_cleanup()V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private native native_init()Z
.end method

.method private static native native_init_once()V
.end method

.method private native native_inject_best_location(IDDDFFFFFFJ)V
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_agps_ril_supported()Z
.end method

.method private static native native_is_gnss_configuration_supported()Z
.end method

.method private static native native_is_supported()Z
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private static native native_set_emergency_supl_pdn(I)Z
.end method

.method private static native native_set_gnss_pos_protocol_select(I)Z
.end method

.method private static native native_set_gps_lock(I)Z
.end method

.method private static native native_set_lpp_profile(I)Z
.end method

.method private native native_set_position_mode(IIIIIZ)Z
.end method

.method private static native native_set_satellite_blacklist([I[I)Z
.end method

.method private static native native_set_supl_es(I)Z
.end method

.method private static native native_set_supl_mode(I)Z
.end method

.method private static native native_set_supl_version(I)Z
.end method

.method private native native_start()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private releaseSuplConnection(I)V
    .registers 4
    .param p1, "connStatus"    # I

    .line 1976
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1977
    return-void
.end method

.method private reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .line 691
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset GPS properties, previous size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/Properties;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_1e
    const-string v0, "/vendor/etc/gps.conf"

    invoke-direct {p0, v0, p2}, Lcom/android/server/location/GnssLocationProvider;->loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z

    .line 696
    const-string/jumbo v0, "persist.sys.gps.lpp"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, "lpp_prof":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    .line 699
    const-string v1, "LPP_PROFILE"

    invoke-virtual {p2, v1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 704
    :cond_35
    const-string v1, "/etc/gps_debug.conf"

    invoke-direct {p0, v1, p2}, Lcom/android/server/location/GnssLocationProvider;->loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z

    .line 706
    const-string v1, "SUPL_HOST"

    invoke-virtual {p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SUPL_PORT"

    .line 707
    invoke-virtual {p2, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 706
    invoke-direct {p0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string v1, "C2K_HOST"

    invoke-virtual {p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 709
    const-string v1, "C2K_PORT"

    invoke-virtual {p2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 710
    .local v1, "portString":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v2, :cond_7c

    if-eqz v1, :cond_7c

    .line 712
    :try_start_5d
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/location/GnssLocationProvider;->mC2KServerPort:I
    :try_end_63
    .catch Ljava/lang/NumberFormatException; {:try_start_5d .. :try_end_63} :catch_64

    .line 715
    goto :goto_7c

    .line 713
    :catch_64
    move-exception v2

    .line 714
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to parse C2K_PORT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_7c
    :goto_7c
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->native_is_gnss_configuration_supported()Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 718
    new-instance v2, Lcom/android/server/location/GnssLocationProvider$6;

    invoke-direct {v2, p0}, Lcom/android/server/location/GnssLocationProvider$6;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    .line 732
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_eb

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 733
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 734
    .local v5, "propertyName":Ljava/lang/String;
    invoke-virtual {p2, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 735
    .local v6, "propertyValueString":Ljava/lang/String;
    if-eqz v6, :cond_ea

    .line 737
    :try_start_a7
    invoke-static {v6}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 738
    .local v7, "propertyValueInt":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;

    invoke-interface {v8, v7}, Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;->set(I)Z

    move-result v8

    .line 739
    .local v8, "result":Z
    if-nez v8, :cond_d1

    .line 740
    const-string v9, "GnssLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to set "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catch Ljava/lang/NumberFormatException; {:try_start_a7 .. :try_end_d1} :catch_d2

    .line 744
    .end local v7    # "propertyValueInt":I
    .end local v8    # "result":Z
    :cond_d1
    goto :goto_ea

    .line 742
    :catch_d2
    move-exception v7

    .line 743
    .local v7, "e":Ljava/lang/NumberFormatException;
    const-string v8, "GnssLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unable to parse propertyName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;>;"
    .end local v5    # "propertyName":Ljava/lang/String;
    .end local v6    # "propertyValueString":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_ea
    :goto_ea
    goto :goto_8f

    .line 747
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;>;"
    :cond_eb
    goto :goto_f7

    :cond_ec
    sget-boolean v2, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v2, :cond_f7

    .line 748
    const-string v2, "GnssLocationProvider"

    const-string v3, "Skipped configuration update because GNSS configuration in GPS HAL is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_f7
    :goto_f7
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v3, "SUPL_ES"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 759
    .local v2, "suplESProperty":Ljava/lang/String;
    if-eqz v2, :cond_127

    .line 761
    :try_start_103
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10b

    goto :goto_10c

    :cond_10b
    const/4 v4, 0x0

    :goto_10c
    iput-boolean v4, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z
    :try_end_10e
    .catch Ljava/lang/NumberFormatException; {:try_start_103 .. :try_end_10e} :catch_10f

    .line 764
    goto :goto_127

    .line 762
    :catch_10f
    move-exception v3

    .line 763
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "GnssLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to parse SUPL_ES: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_127
    :goto_127
    sget-boolean v3, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v3, :cond_14c

    const-string v3, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "suplESProperty:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "...mSuplEsEnabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_14c
    const-string v3, "ES_EXTENSION_SEC"

    const-string v4, "0"

    .line 772
    invoke-virtual {p2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 774
    .local v3, "emergencyExtensionSecondsString":Ljava/lang/String;
    nop

    .line 775
    :try_start_155
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 776
    .local v4, "emergencyExtensionSeconds":I
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v5, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setEmergencyExtensionSeconds(I)V
    :try_end_15e
    .catch Ljava/lang/NumberFormatException; {:try_start_155 .. :try_end_15e} :catch_15f

    .line 780
    .end local v4    # "emergencyExtensionSeconds":I
    goto :goto_177

    .line 777
    :catch_15f
    move-exception v4

    .line 778
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-string v5, "GnssLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unable to parse ES_EXTENSION_SEC: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :goto_177
    return-void
.end method

.method private reportAGpsStatus(II[B)V
    .registers 9
    .param p1, "type"    # I
    .param p2, "status"    # I
    .param p3, "ipaddr"    # [B

    .line 1942
    packed-switch p2, :pswitch_data_be

    .line 1971
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_bc

    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received Unknown AGPS status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bc

    .line 1968
    :pswitch_1f
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_bc

    const-string v0, "GnssLocationProvider"

    const-string v1, "GPS_AGPS_DATA_CONN_FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bc

    .line 1965
    :pswitch_2c
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_bc

    const-string v0, "GnssLocationProvider"

    const-string v1, "GPS_AGPS_DATA_CONN_DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bc

    .line 1962
    :pswitch_39
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_bc

    const-string v0, "GnssLocationProvider"

    const-string v1, "GPS_AGPS_DATA_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bc

    .line 1958
    :pswitch_46
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_51

    const-string v0, "GnssLocationProvider"

    const-string v1, "GPS_RELEASE_AGPS_DATA_CONN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    :cond_51
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->releaseSuplConnection(I)V

    .line 1960
    goto :goto_bc

    .line 1944
    :pswitch_56
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_61

    const-string v0, "GnssLocationProvider"

    const-string v1, "GPS_REQUEST_AGPS_DATA_CONN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :cond_61
    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received SUPL IP addr[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    const/4 v0, 0x0

    .line 1947
    .local v0, "connectionIpAddress":Ljava/net/InetAddress;
    if-eqz p3, :cond_b5

    .line 1949
    :try_start_7e
    invoke-static {p3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    move-object v0, v1

    .line 1950
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_9d

    const-string v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IP address converted to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catch Ljava/net/UnknownHostException; {:try_start_7e .. :try_end_9d} :catch_9e

    .line 1953
    :cond_9d
    goto :goto_b5

    .line 1951
    :catch_9e
    move-exception v1

    .line 1952
    .local v1, "e":Ljava/net/UnknownHostException;
    const-string v2, "GnssLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad IP Address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1955
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_b5
    :goto_b5
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1956
    nop

    .line 1973
    .end local v0    # "connectionIpAddress":Ljava/net/InetAddress;
    :cond_bc
    :goto_bc
    return-void

    nop

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_56
        :pswitch_46
        :pswitch_39
        :pswitch_2c
        :pswitch_1f
    .end packed-switch
.end method

.method private reportGeofenceAddStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 2234
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 2235
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2237
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    .line 2238
    return-void
.end method

.method private reportGeofencePauseStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 2254
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 2255
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2257
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    .line 2258
    return-void
.end method

.method private reportGeofenceRemoveStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 2244
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 2245
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2247
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    .line 2248
    return-void
.end method

.method private reportGeofenceResumeStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 2264
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 2265
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2267
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    .line 2268
    return-void
.end method

.method private reportGeofenceStatus(ILandroid/location/Location;)V
    .registers 7
    .param p1, "status"    # I
    .param p2, "location"    # Landroid/location/Location;

    .line 2216
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 2217
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2219
    :cond_c
    const/4 v0, 0x1

    .line 2220
    .local v0, "monitorStatus":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_11

    .line 2221
    const/4 v0, 0x0

    .line 2223
    :cond_11
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    const/4 v2, 0x0

    sget v3, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    invoke-virtual {v1, v2, v0, p2, v3}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    .line 2228
    return-void
.end method

.method private reportGeofenceTransition(ILandroid/location/Location;IJ)V
    .registers 15
    .param p1, "geofenceId"    # I
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "transition"    # I
    .param p4, "transitionTimestamp"    # J

    .line 2199
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 2200
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 2203
    :cond_c
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    const/4 v7, 0x0

    sget v8, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    .line 2210
    return-void
.end method

.method private reportGnssServiceDied()V
    .registers 3

    .line 2082
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "reportGnssServiceDied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$DbwtCzCTIv9vxK6aWV22ONkgWSg;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$DbwtCzCTIv9vxK6aWV22ONkgWSg;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2093
    return-void
.end method

.method private reportLocation(ZLandroid/location/Location;)V
    .registers 4
    .param p1, "hasLatLong"    # Z
    .param p2, "location"    # Landroid/location/Location;

    .line 1736
    const/16 v0, 0x11

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1737
    return-void
.end method

.method private reportLocationBatch([Landroid/location/Location;)V
    .registers 6
    .param p1, "locationArray"    # [Landroid/location/Location;

    .line 2152
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2153
    .local v0, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_29

    .line 2154
    const-string v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location batch of size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    :cond_29
    :try_start_29
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    invoke-interface {v1, v0}, Landroid/location/ILocationManager;->reportLocationBatch(Ljava/util/List;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_2f

    .line 2160
    goto :goto_37

    .line 2158
    :catch_2f
    move-exception v1

    .line 2159
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "GnssLocationProvider"

    const-string v3, "RemoteException calling reportLocationBatch"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_37
    return-void
.end method

.method private reportMeasurementData(Landroid/location/GnssMeasurementsEvent;)V
    .registers 4
    .param p1, "event"    # Landroid/location/GnssMeasurementsEvent;

    .line 1994
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_e

    .line 1996
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider$11;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/GnssLocationProvider$11;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/location/GnssMeasurementsEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2003
    :cond_e
    return-void
.end method

.method private reportNavigationMessage(Landroid/location/GnssNavigationMessage;)V
    .registers 4
    .param p1, "event"    # Landroid/location/GnssNavigationMessage;

    .line 2009
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_e

    .line 2011
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider$12;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/GnssLocationProvider$12;-><init>(Lcom/android/server/location/GnssLocationProvider;Landroid/location/GnssNavigationMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2018
    :cond_e
    return-void
.end method

.method private reportNmea(J)V
    .registers 7
    .param p1, "timestamp"    # J

    .line 1983
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-nez v0, :cond_1a

    .line 1984
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    array-length v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider;->native_read_nmea([BI)I

    move-result v0

    .line 1985
    .local v0, "length":I
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNmeaBuffer:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 1986
    .local v1, "nmea":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/location/GnssStatusListenerHelper;->onNmeaReceived(JLjava/lang/String;)V

    .line 1988
    .end local v0    # "length":I
    .end local v1    # "nmea":Ljava/lang/String;
    :cond_1a
    return-void
.end method

.method private reportStatus(I)V
    .registers 6
    .param p1, "status"    # I

    .line 1822
    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportStatus status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    .line 1825
    .local v0, "wasNavigating":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_52

    goto :goto_2f

    .line 1837
    :pswitch_1f
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineOn:Z

    .line 1838
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    goto :goto_2f

    .line 1834
    :pswitch_24
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineOn:Z

    .line 1835
    goto :goto_2f

    .line 1831
    :pswitch_27
    iput-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    .line 1832
    goto :goto_2f

    .line 1827
    :pswitch_2a
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    .line 1828
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineOn:Z

    .line 1829
    nop

    .line 1842
    :goto_2f
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    if-eq v0, v1, :cond_4f

    .line 1843
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mListenerHelper:Lcom/android/server/location/GnssStatusListenerHelper;

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    invoke-virtual {v1, v2}, Lcom/android/server/location/GnssStatusListenerHelper;->onStatusChanged(Z)V

    .line 1846
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1847
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "enabled"

    iget-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mNavigating:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1848
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1850
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4f
    return-void

    nop

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_1f
    .end packed-switch
.end method

.method private reportSvStatus(I[I[F[F[F[F)V
    .registers 10
    .param p1, "svCount"    # I
    .param p2, "svidWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "svElevations"    # [F
    .param p5, "svAzimuths"    # [F
    .param p6, "svCarrierFreqs"    # [F

    .line 1867
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;-><init>(Lcom/android/server/location/GnssLocationProvider$1;)V

    .line 1868
    .local v0, "svStatusInfo":Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;
    iput p1, v0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCount:I

    .line 1869
    iput-object p2, v0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvidWithFlags:[I

    .line 1870
    iput-object p3, v0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mCn0s:[F

    .line 1871
    iput-object p4, v0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvElevations:[F

    .line 1872
    iput-object p5, v0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvAzimuths:[F

    .line 1873
    iput-object p6, v0, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;->mSvCarrierFreqs:[F

    .line 1875
    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1876
    return-void
.end method

.method private requestLocation(Z)V
    .registers 5
    .param p1, "independentFromGnss"    # Z

    .line 2372
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1b

    .line 2373
    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestLocation. independentFromGnss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    :cond_1b
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2376
    return-void
.end method

.method private requestRefLocation()V
    .registers 15

    .line 2390
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    .line 2391
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2392
    .local v0, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    .line 2393
    .local v1, "phoneType":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_76

    .line 2394
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    .line 2395
    .local v3, "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v3, :cond_6e

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6e

    .line 2396
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_6e

    .line 2398
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2399
    .local v4, "mcc":I
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 2400
    .local v12, "mnc":I
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v13

    .line 2401
    .local v13, "networkType":I
    if-eq v13, v5, :cond_5c

    const/16 v5, 0x8

    if-eq v13, v5, :cond_5c

    const/16 v5, 0x9

    if-eq v13, v5, :cond_5c

    const/16 v5, 0xa

    if-eq v13, v5, :cond_5c

    const/16 v5, 0xf

    if-ne v13, v5, :cond_5b

    goto :goto_5c

    .line 2408
    :cond_5b
    goto :goto_5d

    .line 2406
    :cond_5c
    :goto_5c
    const/4 v2, 0x2

    .line 2408
    .local v7, "type":I
    :goto_5d
    move v7, v2

    .line 2410
    nop

    .line 2411
    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    invoke-virtual {v3}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v11

    .line 2410
    move-object v6, p0

    move v8, v4

    move v9, v12

    invoke-direct/range {v6 .. v11}, Lcom/android/server/location/GnssLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    .line 2412
    .end local v4    # "mcc":I
    .end local v7    # "type":I
    .end local v12    # "mnc":I
    .end local v13    # "networkType":I
    goto :goto_75

    .line 2413
    :cond_6e
    const-string v2, "GnssLocationProvider"

    const-string v4, "Error getting cell location info."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    .end local v3    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    :goto_75
    goto :goto_80

    :cond_76
    const/4 v2, 0x2

    if-ne v1, v2, :cond_80

    .line 2416
    const-string v2, "GnssLocationProvider"

    const-string v3, "CDMA not supported."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    :cond_80
    :goto_80
    return-void
.end method

.method private requestSetID(I)V
    .registers 7
    .param p1, "flags"    # I

    .line 2341
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    .line 2342
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2343
    .local v0, "phone":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x0

    .line 2344
    .local v1, "type":I
    const-string v2, ""

    .line 2346
    .local v2, "data":Ljava/lang/String;
    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    .line 2347
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 2348
    .local v3, "data_temp":Ljava/lang/String;
    if-nez v3, :cond_1a

    .line 2348
    .end local v3    # "data_temp":Ljava/lang/String;
    goto :goto_1c

    .line 2352
    .restart local v3    # "data_temp":Ljava/lang/String;
    :cond_1a
    move-object v2, v3

    .line 2353
    const/4 v1, 0x1

    .line 2355
    .end local v3    # "data_temp":Ljava/lang/String;
    :goto_1c
    goto :goto_2b

    :cond_1d
    and-int/lit8 v3, p1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2b

    .line 2356
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 2357
    .restart local v3    # "data_temp":Ljava/lang/String;
    if-nez v3, :cond_29

    .line 2357
    .end local v3    # "data_temp":Ljava/lang/String;
    goto :goto_2b

    .line 2361
    .restart local v3    # "data_temp":Ljava/lang/String;
    :cond_29
    move-object v2, v3

    .line 2362
    const/4 v1, 0x2

    .line 2365
    .end local v3    # "data_temp":Ljava/lang/String;
    :cond_2b
    :goto_2b
    invoke-direct {p0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    .line 2366
    return-void
.end method

.method private requestUtcTime()V
    .registers 4

    .line 2382
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "utcTimeRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    :cond_c
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2384
    return-void
.end method

.method private restartLocationRequest()V
    .registers 3

    .line 2055
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "restartLocationRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 2057
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    .line 2058
    return-void
.end method

.method private restartRequests()V
    .registers 3

    .line 2045
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "restartRequests"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->restartLocationRequest()V

    .line 2048
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssMeasurementsProvider;->resumeIfStarted()V

    .line 2049
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssNavigationMessageProvider;->resumeIfStarted()V

    .line 2050
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider;->resumeIfStarted()V

    .line 2051
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssGeofenceProvider:Lcom/android/server/location/GnssGeofenceProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssGeofenceProvider;->resumeIfStarted()V

    .line 2052
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .registers 7
    .param p1, "message"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 2424
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2425
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_38

    .line 2426
    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakeLock acquired by sendMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/location/GnssLocationProvider;->messageIdAsString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    :cond_38
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2430
    return-void
.end method

.method private setEngineCapabilities(I)V
    .registers 4
    .param p1, "capabilities"    # I

    .line 2025
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/GnssLocationProvider$13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/GnssLocationProvider$13;-><init>(Lcom/android/server/location/GnssLocationProvider;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2042
    return-void
.end method

.method private setGnssHardwareModelName(Ljava/lang/String;)V
    .registers 5
    .param p1, "modelName"    # Ljava/lang/String;

    .line 2074
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGnssModelName called with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    :cond_1b
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareModelName:Ljava/lang/String;

    .line 2076
    return-void
.end method

.method private setGnssYearOfHardware(I)V
    .registers 5
    .param p1, "yearOfHardware"    # I

    .line 2065
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGnssYearOfHardware called with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    :cond_1b
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mHardwareYear:I

    .line 2067
    return-void
.end method

.method private setRouting()V
    .registers 5

    .line 2708
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    if-nez v0, :cond_5

    .line 2709
    return-void

    .line 2713
    :cond_5
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    .line 2717
    .local v0, "result":Z
    if-nez v0, :cond_29

    .line 2718
    const-string v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error requesting route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 2719
    :cond_29
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_45

    .line 2720
    const-string v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully requested route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2722
    :cond_45
    :goto_45
    return-void
.end method

.method private setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "hostString"    # Ljava/lang/String;
    .param p2, "portString"    # Ljava/lang/String;

    .line 1225
    if-eqz p1, :cond_4

    .line 1226
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 1228
    :cond_4
    if-eqz p2, :cond_25

    .line 1230
    :try_start_6
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_c} :catch_d

    .line 1233
    goto :goto_25

    .line 1231
    :catch_d
    move-exception v0

    .line 1232
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to parse SUPL_PORT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v0, :cond_3c

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    if-lez v0, :cond_3c

    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    const v1, 0xffff

    if-gt v0, v1, :cond_3c

    .line 1238
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1240
    :cond_3c
    return-void
.end method

.method private startNavigating(Z)V
    .registers 13
    .param p1, "singleShot"    # Z

    .line 1614
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->handleGpsRequest(Z)V

    .line 1616
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-nez v1, :cond_ec

    .line 1617
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_23

    const-string v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startNavigating, singleShot is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :cond_23
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeToFirstFix:I

    .line 1619
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    .line 1620
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1621
    iput-boolean p1, p0, Lcom/android/server/location/GnssLocationProvider;->mSingleShot:Z

    .line 1622
    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    .line 1625
    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mItarSpeedLimitExceeded:Z

    if-eqz v2, :cond_3c

    .line 1626
    const-string v2, "GnssLocationProvider"

    const-string/jumbo v3, "startNavigating with ITAR limit in place. Output limited  until slow enough speed reported."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1630
    :cond_3c
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 1631
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assisted_gps_enabled"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_4c

    move v2, v0

    goto :goto_4d

    :cond_4c
    move v2, v1

    .line 1633
    .local v2, "agpsEnabled":Z
    :goto_4d
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, v3, v2, p1}, Lcom/android/server/location/GnssLocationProvider;->getSuplMode(Ljava/util/Properties;ZZ)I

    move-result v3

    iput v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    .line 1635
    sget-boolean v3, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v3, :cond_84

    .line 1638
    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    packed-switch v3, :pswitch_data_ee

    .line 1649
    const-string/jumbo v3, "unknown"

    goto :goto_6c

    .line 1643
    :pswitch_62
    const-string v3, "MS_ASSISTED"

    .line 1644
    .local v3, "mode":Ljava/lang/String;
    goto :goto_6c

    .line 1646
    .end local v3    # "mode":Ljava/lang/String;
    :pswitch_65
    const-string v3, "MS_BASED"

    .line 1647
    .restart local v3    # "mode":Ljava/lang/String;
    goto :goto_6c

    .line 1640
    .end local v3    # "mode":Ljava/lang/String;
    :pswitch_68
    const-string/jumbo v3, "standalone"

    .line 1641
    .restart local v3    # "mode":Ljava/lang/String;
    nop

    .line 1649
    :goto_6c
    nop

    .line 1652
    const-string v4, "GnssLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setting position_mode to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    .end local v3    # "mode":Ljava/lang/String;
    :cond_84
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_8e

    iget v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    :goto_8c
    move v7, v3

    goto :goto_91

    :cond_8e
    const/16 v3, 0x3e8

    goto :goto_8c

    .line 1656
    .local v7, "interval":I
    :goto_91
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v3, v3, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    iput-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    .line 1657
    iget v5, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/location/GnssLocationProvider;->native_set_position_mode(IIIIIZ)Z

    move-result v3

    if-nez v3, :cond_b0

    .line 1659
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1660
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    return-void

    .line 1663
    :cond_b0
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_start()Z

    move-result v3

    if-nez v3, :cond_c1

    .line 1664
    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1665
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "native_start failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    return-void

    .line 1670
    :cond_c1
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(I)V

    .line 1671
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v1}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->reset()V

    .line 1672
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/location/GnssLocationProvider;->mFixRequestTime:J

    .line 1673
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_ec

    .line 1676
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_ec

    .line 1677
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    .line 1678
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 1677
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1682
    .end local v2    # "agpsEnabled":Z
    .end local v7    # "interval":I
    :cond_ec
    return-void

    nop

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_68
        :pswitch_65
        :pswitch_62
    .end packed-switch
.end method

.method private stopNavigating()V
    .registers 3

    .line 1685
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "stopNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v0, :cond_24

    .line 1688
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->handleGpsRequest(Z)V

    .line 1690
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    .line 1691
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mSingleShot:Z

    .line 1692
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_stop()Z

    .line 1693
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLastFixTime:J

    .line 1696
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->updateStatus(I)V

    .line 1697
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->reset()V

    .line 1699
    :cond_24
    return-void
.end method

.method private subscriptionOrSimChanged(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 616
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "received SIM related action: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    .line 618
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 619
    .local v0, "phone":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    .line 620
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 621
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 622
    .local v2, "mccMnc":Ljava/lang/String;
    const/4 v3, 0x0

    .line 623
    .local v3, "isKeepLppProfile":Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8c

    .line 624
    sget-boolean v4, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v4, :cond_46

    const-string v4, "GnssLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM MCC/MNC is available: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_46
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 626
    if-eqz v1, :cond_5c

    .line 627
    :try_start_4b
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v5

    .line 628
    .local v5, "b":Landroid/os/PersistableBundle;
    if-eqz v5, :cond_5c

    .line 629
    const-string/jumbo v6, "persist_lpp_mode_bool"

    .line 630
    invoke-virtual {v5, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    move v3, v6

    .line 630
    .end local v5    # "b":Landroid/os/PersistableBundle;
    goto :goto_5c

    .line 647
    :catchall_5a
    move-exception v5

    goto :goto_8a

    .line 633
    :cond_5c
    :goto_5c
    if-eqz v3, :cond_74

    .line 635
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, p1, v5}, Lcom/android/server/location/GnssLocationProvider;->loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V

    .line 636
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v6, "LPP_PROFILE"

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 638
    .local v5, "lpp_profile":Ljava/lang/String;
    if-eqz v5, :cond_73

    .line 639
    const-string/jumbo v6, "persist.sys.gps.lpp"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    .end local v5    # "lpp_profile":Ljava/lang/String;
    :cond_73
    goto :goto_7c

    .line 643
    :cond_74
    const-string/jumbo v5, "persist.sys.gps.lpp"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :goto_7c
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, p1, v5}, Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    .line 646
    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-boolean v6, p0, Lcom/android/server/location/GnssLocationProvider;->mSuplEsEnabled:Z

    invoke-virtual {v5, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V

    .line 647
    monitor-exit v4

    goto :goto_97

    :goto_8a
    monitor-exit v4
    :try_end_8b
    .catchall {:try_start_4b .. :try_end_8b} :catchall_5a

    throw v5

    .line 649
    :cond_8c
    sget-boolean v4, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v4, :cond_97

    const-string v4, "GnssLocationProvider"

    const-string v5, "SIM MCC/MNC is still not available"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_97
    :goto_97
    return-void
.end method

.method private translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "ipProtocol"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;

    .line 2691
    const-string v0, "IP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 2692
    return v1

    .line 2694
    :cond_a
    const-string v0, "IPV6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_14

    .line 2695
    return v2

    .line 2697
    :cond_14
    const-string v0, "IPV4V6"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2698
    const/4 v0, 0x3

    return v0

    .line 2702
    :cond_1e
    const-string v0, "Unknown IP Protocol: %s, for APN: %s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2703
    .local v0, "message":Ljava/lang/String;
    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2704
    return v3
.end method

.method private updateClientUids(Landroid/os/WorkSource;)V
    .registers 13
    .param p1, "source"    # Landroid/os/WorkSource;

    .line 1465
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {p1, v0}, Landroid/os/WorkSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1466
    return-void

    .line 1471
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_11

    .line 1474
    goto :goto_19

    .line 1472
    :catch_11
    move-exception v0

    .line 1473
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "GnssLocationProvider"

    const-string v2, "RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1478
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_19
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-static {v0, p1}, Landroid/os/WorkSource;->diffChains(Landroid/os/WorkSource;Landroid/os/WorkSource;)[Ljava/util/ArrayList;

    move-result-object v0

    .line 1479
    .local v0, "diffs":[Ljava/util/List;, "[Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6b

    .line 1480
    aget-object v4, v0, v3

    .line 1481
    .local v4, "newChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    aget-object v5, v0, v2

    .line 1483
    .local v5, "goneChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    if-eqz v4, :cond_47

    .line 1484
    move v6, v3

    .local v6, "i":I
    :goto_2b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_47

    .line 1485
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/WorkSource$WorkChain;

    .line 1486
    .local v7, "newChain":Landroid/os/WorkSource$WorkChain;
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v9

    .line 1487
    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    .line 1486
    invoke-virtual {v8, v1, v9, v10}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    .line 1484
    .end local v7    # "newChain":Landroid/os/WorkSource$WorkChain;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    .line 1491
    .end local v6    # "i":I
    :cond_47
    if-eqz v5, :cond_66

    .line 1492
    move v6, v3

    .restart local v6    # "i":I
    :goto_4a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_66

    .line 1493
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/WorkSource$WorkChain;

    .line 1494
    .local v7, "goneChain":Landroid/os/WorkSource$WorkChain;
    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v9

    .line 1495
    invoke-virtual {v7}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v10

    .line 1494
    invoke-virtual {v8, v1, v9, v10}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1492
    .end local v7    # "goneChain":Landroid/os/WorkSource$WorkChain;
    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    .line 1499
    .end local v6    # "i":I
    :cond_66
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v6, p1}, Landroid/os/WorkSource;->transferWorkChains(Landroid/os/WorkSource;)V

    .line 1503
    .end local v4    # "newChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    .end local v5    # "goneChains":Ljava/util/List;, "Ljava/util/List<Landroid/os/WorkSource$WorkChain;>;"
    :cond_6b
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v4, p1}, Landroid/os/WorkSource;->setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;

    move-result-object v4

    .line 1504
    .local v4, "changes":[Landroid/os/WorkSource;
    if-eqz v4, :cond_a9

    .line 1505
    aget-object v5, v4, v3

    .line 1506
    .local v5, "newWork":Landroid/os/WorkSource;
    aget-object v2, v4, v2

    .line 1509
    .local v2, "goneWork":Landroid/os/WorkSource;
    if-eqz v5, :cond_90

    .line 1510
    move v6, v3

    .restart local v6    # "i":I
    :goto_7a
    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v7

    if-ge v6, v7, :cond_90

    .line 1511
    iget-object v7, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    .line 1512
    invoke-virtual {v5, v6}, Landroid/os/WorkSource;->get(I)I

    move-result v8

    invoke-virtual {v5, v6}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v9

    .line 1511
    invoke-virtual {v7, v1, v8, v9}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    .line 1510
    add-int/lit8 v6, v6, 0x1

    goto :goto_7a

    .line 1517
    .end local v6    # "i":I
    :cond_90
    if-eqz v2, :cond_a9

    .line 1518
    nop

    .local v3, "i":I
    :goto_93
    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-ge v3, v6, :cond_a9

    .line 1519
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v7

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v1, v7, v8}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1518
    add-int/lit8 v3, v3, 0x1

    goto :goto_93

    .line 1523
    .end local v2    # "goneWork":Landroid/os/WorkSource;
    .end local v3    # "i":I
    .end local v5    # "newWork":Landroid/os/WorkSource;
    :cond_a9
    return-void
.end method

.method private updateLowPowerMode()V
    .registers 6

    .line 666
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStopGps:Z

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    .line 668
    .local v0, "disableGps":Z
    :goto_11
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 669
    invoke-virtual {v3, v2}, Landroid/os/PowerManager;->getPowerSaveState(I)Landroid/os/PowerSaveState;

    move-result-object v3

    .line 670
    .local v3, "result":Landroid/os/PowerSaveState;
    iget v4, v3, Landroid/os/PowerSaveState;->gpsMode:I

    if-eq v4, v2, :cond_1c

    goto :goto_2b

    .line 673
    :cond_1c
    iget-boolean v4, v3, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    if-eqz v4, :cond_2a

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-nez v4, :cond_2a

    move v1, v2

    nop

    :cond_2a
    or-int/2addr v0, v1

    .line 676
    :goto_2b
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    if-eq v0, v1, :cond_34

    .line 677
    iput-boolean v0, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    .line 678
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->updateRequirements()V

    .line 680
    :cond_34
    return-void
.end method

.method private updateRequirements()V
    .registers 12

    .line 1376
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-eqz v0, :cond_14b

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    if-nez v0, :cond_a

    goto/16 :goto_14b

    .line 1380
    :cond_a
    const/4 v0, 0x0

    .line 1383
    .local v0, "singleShot":Z
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v1, v1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_7b

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v1, v1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    .line 1384
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7b

    .line 1387
    const/4 v0, 0x1

    .line 1389
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v1, v1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationRequest;

    .line 1390
    .local v4, "lr":Landroid/location/LocationRequest;
    invoke-virtual {v4}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v5

    if-eq v5, v3, :cond_39

    .line 1391
    const/4 v0, 0x0

    .line 1393
    .end local v4    # "lr":Landroid/location/LocationRequest;
    :cond_39
    goto :goto_26

    .line 1398
    :cond_3a
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->needMSACheck:Z

    if-ne v1, v3, :cond_7b

    .line 1399
    if-nez v0, :cond_78

    .line 1400
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v4, "SUPL_MODE"

    invoke-virtual {v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1401
    .local v1, "modeString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1402
    .local v4, "suplMode":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_78

    .line 1404
    :try_start_4f
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v4, v5

    .line 1405
    if-ne v4, v2, :cond_5f

    .line 1406
    const-string v5, "GnssLocationProvider"

    const-string/jumbo v6, "supl mode is MSA, set singleShot true"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/NumberFormatException; {:try_start_4f .. :try_end_5e} :catch_60

    .line 1407
    const/4 v0, 0x1

    .line 1411
    :cond_5f
    goto :goto_78

    .line 1409
    :catch_60
    move-exception v5

    .line 1410
    .local v5, "e":Ljava/lang/NumberFormatException;
    const-string v6, "GnssLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unable to parse SUPL_MODE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    .end local v1    # "modeString":Ljava/lang/String;
    .end local v4    # "suplMode":I
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_78
    :goto_78
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/location/GnssLocationProvider;->needMSACheck:Z

    .line 1419
    :cond_7b
    sget-boolean v1, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v1, :cond_98

    const-string v1, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRequest "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    :cond_98
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v1, v1, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v1, :cond_131

    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    if-nez v1, :cond_131

    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_131

    .line 1422
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1424
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v4, v1, Lcom/android/internal/location/ProviderRequest;->interval:J

    long-to-int v1, v4

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 1425
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v1, v1, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    .line 1427
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    int-to-long v4, v1

    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v6, v1, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_e5

    .line 1428
    const-string v1, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "interval overflow: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v5, v5, Lcom/android/internal/location/ProviderRequest;->interval:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    .line 1433
    :cond_e5
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-eqz v1, :cond_10b

    invoke-direct {p0, v3}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_10b

    .line 1435
    iget v5, p0, Lcom/android/server/location/GnssLocationProvider;->mPositionMode:I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/location/GnssLocationProvider;->native_set_position_mode(IIIIIZ)Z

    move-result v1

    if-nez v1, :cond_107

    .line 1437
    const-string v1, "GnssLocationProvider"

    const-string/jumbo v2, "set_position_mode failed in updateRequirements"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_107
    invoke-direct {p0, v3}, Lcom/android/server/location/GnssLocationProvider;->handleGpsRequest(Z)V

    goto :goto_14a

    .line 1443
    :cond_10b
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    if-nez v1, :cond_113

    .line 1445
    invoke-direct {p0, v0}, Lcom/android/server/location/GnssLocationProvider;->startNavigating(Z)V

    goto :goto_14a

    .line 1448
    :cond_113
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1449
    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    const v3, 0xea60

    if-lt v1, v3, :cond_14a

    .line 1452
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1453
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 1452
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_14a

    .line 1456
    :cond_131
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1458
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->stopNavigating()V

    .line 1459
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1460
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1462
    :cond_14a
    :goto_14a
    return-void

    .line 1377
    .end local v0    # "singleShot":Z
    :cond_14b
    :goto_14b
    return-void
.end method

.method private updateStatus(I)V
    .registers 4
    .param p1, "status"    # I

    .line 1352
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    if-eq p1, v0, :cond_c

    .line 1353
    iput p1, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    .line 1354
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    .line 1356
    :cond_c
    return-void
.end method

.method private xtraDownloadRequest()V
    .registers 4

    .line 2167
    sget-boolean v0, Lcom/android/server/location/GnssLocationProvider;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "xtraDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    :cond_c
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2169
    return-void
.end method


# virtual methods
.method public disable()V
    .registers 4

    .line 1314
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1315
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 1316
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z

    .line 1317
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    .line 1319
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1320
    return-void

    .line 1317
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2835
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "  mStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2836
    const-string v2, "  mFixInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/location/GnssLocationProvider;->mFixInterval:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2837
    const-string v2, "  mLowPowerMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mLowPowerMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2838
    const-string v2, "  mGnssMeasurementsProvider.isRegistered()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    .line 2839
    invoke-virtual {v2}, Lcom/android/server/location/GnssMeasurementsProvider;->isRegistered()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2840
    const-string v2, "  mGnssNavigationMessageProvider.isRegistered()="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    .line 2841
    invoke-virtual {v2}, Lcom/android/server/location/GnssNavigationMessageProvider;->isRegistered()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2842
    const-string v2, "  mDisableGps (battery saver mode)="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/location/GnssLocationProvider;->mDisableGps:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2843
    const-string v1, "  mEngineCapabilities=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEngineCapabilities:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2844
    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2845
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_7c

    const-string v1, "SCHEDULING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2846
    :cond_7c
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_88

    const-string v1, "MSB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2847
    :cond_88
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_94

    const-string v1, "MSA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2848
    :cond_94
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_a1

    const-string v1, "SINGLE_SHOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2849
    :cond_a1
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_ae

    const-string v1, "ON_DEMAND_TIME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2850
    :cond_ae
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_bb

    const-string v1, "GEOFENCING "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2851
    :cond_bb
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_c8

    const-string v1, "MEASUREMENTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2852
    :cond_c8
    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/android/server/location/GnssLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_d5

    const-string v1, "NAV_MESSAGES "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2853
    :cond_d5
    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2854
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMetrics:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-virtual {v1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics;->dumpGnssMetricsAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2855
    const-string v1, "  native internal state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2856
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2857
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2858
    return-void
.end method

.method public enable()V
    .registers 4

    .line 1216
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1217
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    .line 1218
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z

    .line 1219
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    .line 1221
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1222
    return-void

    .line 1219
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getGnssBatchingProvider()Lcom/android/server/location/GnssBatchingProvider;
    .registers 2

    .line 2126
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    return-object v0
.end method

.method public getGnssMeasurementsProvider()Lcom/android/server/location/GnssMeasurementsProvider;
    .registers 2

    .line 514
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    return-object v0
.end method

.method public getGnssMetricsProvider()Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;
    .registers 2

    .line 2140
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$15;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$15;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    return-object v0
.end method

.method public getGnssNavigationMessageProvider()Lcom/android/server/location/GnssNavigationMessageProvider;
    .registers 2

    .line 518
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    return-object v0
.end method

.method public getGnssStatusProvider()Landroid/location/IGnssStatusProvider;
    .registers 2

    .line 506
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    return-object v0
.end method

.method public getGnssSystemInfoProvider()Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;
    .registers 2

    .line 2110
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$14;

    invoke-direct {v0, p0}, Lcom/android/server/location/GnssLocationProvider$14;-><init>(Lcom/android/server/location/GnssLocationProvider;)V

    return-object v0
.end method

.method public getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;
    .registers 2

    .line 510
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mGnssGeofenceProvider:Lcom/android/server/location/GnssGeofenceProvider;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 908
    const-string/jumbo v0, "gps"

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .registers 2

    .line 2289
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .registers 2

    .line 913
    sget-object v0, Lcom/android/server/location/GnssLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 1347
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLocationExtras:Lcom/android/server/location/GnssLocationProvider$LocationExtras;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GnssLocationProvider$LocationExtras;->setBundle(Landroid/os/Bundle;)V

    .line 1348
    iget v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .registers 3

    .line 1360
    iget-wide v0, p0, Lcom/android/server/location/GnssLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public injectTime(JJI)V
    .registers 6
    .param p1, "time"    # J
    .param p3, "timeReference"    # J
    .param p5, "uncertainty"    # I

    .line 922
    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/GnssLocationProvider;->native_inject_time(JJI)V

    .line 923
    return-void
.end method

.method public isEnabled()Z
    .registers 3

    .line 1340
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1341
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/location/GnssLocationProvider;->mEnabled:Z

    monitor-exit v0

    return v1

    .line 1342
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public onUpdateSatelliteBlacklist([I[I)V
    .registers 5
    .param p1, "constellations"    # [I
    .param p2, "svids"    # [I

    .line 610
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$2m3d6BkqWO0fZAJAijxHyPDHfxI;

    invoke-direct {v1, p1, p2}, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$2m3d6BkqWO0fZAJAijxHyPDHfxI;-><init>([I[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 613
    return-void
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;II)V
    .registers 14
    .param p1, "notificationId"    # I
    .param p2, "niType"    # I
    .param p3, "notifyFlags"    # I
    .param p4, "timeout"    # I
    .param p5, "defaultResponse"    # I
    .param p6, "requestorId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "requestorIdEncoding"    # I
    .param p9, "textEncoding"    # I

    .line 2304
    const-string v0, "GnssLocationProvider"

    const-string/jumbo v1, "reportNiNotification: entered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notificationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", niType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", notifyFlags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", defaultResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    const-string v0, "GnssLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", requestorIdEncoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", textEncoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    new-instance v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v0}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 2318
    .local v0, "notification":Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 2319
    iput p2, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 2320
    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_7f

    move v1, v3

    goto :goto_80

    :cond_7f
    move v1, v2

    :goto_80
    iput-boolean v1, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 2321
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_88

    move v1, v3

    goto :goto_89

    :cond_88
    move v1, v2

    :goto_89
    iput-boolean v1, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 2322
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_91

    move v2, v3

    nop

    :cond_91
    iput-boolean v2, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 2324
    iput p4, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 2325
    iput p5, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 2326
    iput-object p6, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 2327
    iput-object p7, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 2328
    iput p8, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 2329
    iput p9, v0, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 2331
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 2332
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 12
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1528
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1530
    .local v0, "identity":J
    const/4 v2, 0x0

    .line 1532
    .local v2, "result":Z
    :try_start_5
    const-string v3, "delete_aiding_data"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1533
    const-string v3, "GnssLocationProvider"

    const-string v4, "delete_aiding_data"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    invoke-direct {p0, p2}, Lcom/android/server/location/GnssLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    move-result v3

    move v2, v3

    goto/16 :goto_109

    .line 1535
    :cond_1b
    const-string v3, "force_time_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1536
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->requestUtcTime()V

    .line 1537
    const/4 v2, 0x1

    goto/16 :goto_109

    .line 1538
    :cond_29
    const-string v3, "force_xtra_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1539
    iget-boolean v3, p0, Lcom/android/server/location/GnssLocationProvider;->mSupportsXtra:Z

    if-eqz v3, :cond_109

    .line 1540
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider;->xtraDownloadRequest()V

    .line 1541
    const/4 v2, 0x1

    goto/16 :goto_109

    .line 1544
    :cond_3b
    const-string v3, "force_location_inject"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 1545
    new-instance v3, Landroid/location/Location;

    const-string/jumbo v4, "gps"

    invoke-direct {v3, v4}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1546
    .local v3, "injectLocation":Landroid/location/Location;
    const-string/jumbo v4, "latitude"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 1547
    const-string/jumbo v4, "longitude"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 1548
    const-string v4, "accuracy"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/location/Location;->setAccuracy(F)V

    .line 1549
    const-string v4, "GnssLocationProvider"

    const-string v5, "force_inject_position"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v3}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1551
    .end local v3    # "injectLocation":Landroid/location/Location;
    goto/16 :goto_109

    :cond_76
    const-string/jumbo v3, "set_position_mode"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f2

    .line 1553
    const-string/jumbo v3, "host"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1554
    .local v3, "host":Ljava/lang/String;
    const-string/jumbo v4, "port"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1555
    .local v4, "port":I
    const-string/jumbo v5, "mode"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1556
    .local v5, "mode":I
    const-string v6, "GnssLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "host:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", port:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v7, "SUPL_HOST"

    invoke-virtual {v6, v7, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1558
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v7, "SUPL_PORT"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1559
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v7, "SUPL_MODE"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1560
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v5, v6, :cond_e5

    .line 1561
    const-string v6, "GnssLocationProvider"

    const-string v8, "MSA mode ,need check singleShot"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    sput-boolean v7, Lcom/android/server/location/GnssLocationProvider;->needMSACheck:Z

    .line 1566
    :cond_e5
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v3, v6}, Lcom/android/server/location/GnssLocationProvider;->setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    iget-object v6, p0, Lcom/android/server/location/GnssLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, v6, v7, v7}, Lcom/android/server/location/GnssLocationProvider;->getSuplMode(Ljava/util/Properties;ZZ)I

    .line 1573
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "port":I
    .end local v5    # "mode":I
    goto :goto_109

    .line 1574
    :cond_f2
    const-string v3, "GnssLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendExtraCommand: unknown command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_109
    .catchall {:try_start_5 .. :try_end_109} :catchall_10e

    .line 1576
    :cond_109
    :goto_109
    nop

    .line 1578
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1576
    return v2

    .line 1578
    .end local v2    # "result":Z
    :catchall_10e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 6
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .line 1365
    new-instance v0, Lcom/android/server/location/GnssLocationProvider$GpsRequest;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/GnssLocationProvider$GpsRequest;-><init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/location/GnssLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1366
    return-void
.end method
