.class public Lcom/android/server/LocationManagerService;
.super Landroid/location/ILocationManager$Stub;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LocationManagerService$LocationWorkerHandler;,
        Lcom/android/server/LocationManagerService$UpdateRecord;,
        Lcom/android/server/LocationManagerService$LinkedCallback;,
        Lcom/android/server/LocationManagerService$Receiver;,
        Lcom/android/server/LocationManagerService$Identity;,
        Lcom/android/server/LocationManagerService$EmergencyCallStateListener;
    }
.end annotation


# static fields
.field private static final ACCESS_LOCATION_EXTRA_COMMANDS:Ljava/lang/String; = "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

.field private static final ACCESS_MOCK_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_MOCK_LOCATION"

.field public static final D:Z

.field private static DEBUG_ONEPLUS:Z = false

.field private static final DEFAULT_BACKGROUND_THROTTLE_INTERVAL_MS:J = 0x1b7740L

.field private static final DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

.field private static final EMERGENCY_PlATFORM:Ljava/lang/String; = "18811"

.field private static final FOREGROUND_IMPORTANCE_CUTOFF:I = 0x7d

.field private static final FUSED_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.FusedLocationProvider"

.field private static final HIGH_POWER_INTERVAL_MS:J = 0x493e0L

.field private static final INSTALL_LOCATION_PROVIDER:Ljava/lang/String; = "android.permission.INSTALL_LOCATION_PROVIDER"

.field private static final MAX_PROVIDER_SCHEDULING_JITTER_MS:I = 0x64

.field private static final MSG_LOCATION_CHANGED:I = 0x1

.field private static final NANOS_PER_MILLI:J = 0xf4240L

.field private static final NETWORK_LOCATION_SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.v3.NetworkLocationProvider"

.field private static final RESOLUTION_LEVEL_COARSE:I = 0x1

.field private static final RESOLUTION_LEVEL_FINE:I = 0x2

.field private static final RESOLUTION_LEVEL_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LocationManagerService"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "*location*"

.field static mBlockLocationUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static mBlockReceiverUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mEmWifiStatus:Z

.field private static sLastKnownCoarseIntervalLocation:Landroid/location/Location;

.field private static sLastKnownLocation:Landroid/location/Location;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlacklist:Lcom/android/server/location/LocationBlacklist;

.field private mComboNlpPackageName:Ljava/lang/String;

.field private mComboNlpReadyMarker:Ljava/lang/String;

.field private mComboNlpScreenMarker:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mCurrentUserProfiles:[I

.field private final mDisabledProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEmergencyStateListener:Lcom/android/server/LocationManagerService$EmergencyCallStateListener;

.field private final mEnabledProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

.field private mGeofenceManager:Lcom/android/server/location/GeofenceManager;

.field private mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

.field private mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedCallback;

.field private mGnssBatchingInProgress:Z

.field private mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

.field private final mGnssMeasurementsListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/LocationManagerService$Identity;",
            ">;"
        }
    .end annotation
.end field

.field private mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

.field private mGnssMetricsProvider:Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

.field private final mGnssNavigationMessageListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/LocationManagerService$Identity;",
            ">;"
        }
    .end annotation
.end field

.field private mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

.field private mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

.field private mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

.field private mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

.field private final mLastLocation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastLocationCoarseInterval:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationFudger:Lcom/android/server/location/LocationFudger;

.field private mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

.field private mLocationThread:Landroid/os/HandlerThread;

.field private final mLock:Ljava/lang/Object;

.field private final mMockProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/MockProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPassiveProvider:Lcom/android/server/location/PassiveProvider;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvidersByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mProxyProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/location/LocationProviderProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mRealProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordsByProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserManager:Landroid/os/UserManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 134
    const-string v0, "LocationManagerService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    .line 139
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/LocationManagerService;->DEBUG_ONEPLUS:Z

    .line 180
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 244
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/LocationManagerService;->sLastKnownLocation:Landroid/location/Location;

    .line 245
    sput-object v0, Lcom/android/server/LocationManagerService;->sLastKnownCoarseIntervalLocation:Landroid/location/Location;

    .line 282
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/LocationManagerService;->mEmWifiStatus:Z

    .line 3813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerService;->mBlockLocationUids:Ljava/util/ArrayList;

    .line 3960
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerService;->mBlockReceiverUids:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 288
    invoke-direct {p0}, Landroid/location/ILocationManager$Stub;-><init>()V

    .line 186
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 211
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    .line 214
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    .line 228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    .line 239
    new-instance v0, Lcom/android/server/location/LocationRequestStatistics;

    invoke-direct {v0}, Lcom/android/server/location/LocationRequestStatistics;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    .line 249
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    .line 257
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    .line 259
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    .line 261
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    .line 266
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v0, v1, v0

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    .line 275
    iput-boolean v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    .line 3430
    new-instance v0, Lcom/android/server/LocationManagerService$9;

    invoke-direct {v0, p0}, Lcom/android/server/LocationManagerService$9;-><init>(Lcom/android/server/LocationManagerService;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 289
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 290
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 294
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 296
    .local v0, "packageManagerInternal":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Lcom/android/server/LocationManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$1;-><init>(Lcom/android/server/LocationManagerService;)V

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 305
    sget-boolean v1, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v1, :cond_ad

    const-string v1, "LocationManagerService"

    const-string v2, "Constructed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_ad
    return-void
.end method

.method private DumpUpdateRecord()V
    .registers 3

    .line 3113
    const-string v0, "LocationManagerService"

    const-string v1, "DumpUpdateRecord"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_22

    .line 3116
    const-string/jumbo v0, "gps"

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->DumpUpdateRecordProvider(Ljava/lang/String;)V

    .line 3117
    const-string/jumbo v0, "network"

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->DumpUpdateRecordProvider(Ljava/lang/String;)V

    .line 3118
    const-string/jumbo v0, "passive"

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->DumpUpdateRecordProvider(Ljava/lang/String;)V

    .line 3119
    const-string v0, "fused"

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->DumpUpdateRecordProvider(Ljava/lang/String;)V

    .line 3121
    :cond_22
    return-void
.end method

.method private DumpUpdateRecordProvider(Ljava/lang/String;)V
    .registers 10
    .param p1, "provider"    # Ljava/lang/String;

    .line 3094
    const/4 v0, 0x0

    .line 3095
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3096
    .local v1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v1, :cond_9b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_13

    goto/16 :goto_9b

    .line 3098
    :cond_13
    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "provider= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  records.size=  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 3100
    .local v3, "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v4, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 3101
    .local v4, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    const-string v5, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " receiver.mUid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v7, v7, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " receiver.mPid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v7, v7, Lcom/android/server/LocationManagerService$Identity;->mPid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "\n    receiver.mPackageName "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n    receiver.mListener "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n    receiver.mPendingIntent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/LocationManagerService$Receiver;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    add-int/lit8 v0, v0, 0x1

    .line 3109
    .end local v3    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v4    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    goto :goto_3a

    .line 3110
    :cond_9a
    return-void

    .line 3096
    :cond_9b
    :goto_9b
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LocationManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 132
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 132
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/LocationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 132
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->shutdownComponents()V

    return-void
.end method

.method static synthetic access$1100()Z
    .registers 1

    .line 132
    sget-boolean v0, Lcom/android/server/LocationManagerService;->DEBUG_ONEPLUS:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/LocationManagerService;)Landroid/net/wifi/WifiManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 132
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1300()Z
    .registers 1

    .line 132
    sget-boolean v0, Lcom/android/server/LocationManagerService;->mEmWifiStatus:Z

    return v0
.end method

.method static synthetic access$1302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 132
    sput-boolean p0, Lcom/android/server/LocationManagerService;->mEmWifiStatus:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/server/LocationManagerService;II)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/LocationManagerService;)Landroid/os/PowerManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 132
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 132
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/LocationManagerService;)Landroid/app/AppOpsManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 132
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/LocationManagerService;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # I

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getResolutionPermission(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 132
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # Lcom/android/server/LocationManagerService$Receiver;

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/LocationManagerService;)Landroid/app/ActivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 132
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$2300(I)Z
    .registers 2
    .param p0, "x0"    # I

    .line 132
    invoke-static {p0}, Lcom/android/server/LocationManagerService;->isImportanceForeground(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 132
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/LocationRequestStatistics;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 132
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # Landroid/location/Location;
    .param p2, "x2"    # Z

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->handleLocationChanged(Landroid/location/Location;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/LocationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 132
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->applyAllProviderRequirementsLocked()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/LocationManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->onUidImportanceChanged(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 132
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/LocationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 132
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/LocationManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 132
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateBackgroundThrottlingWhitelistLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/LocationManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;
    .param p1, "x1"    # I

    .line 132
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->switchUser(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/LocationManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/LocationManagerService;

    .line 132
    iget v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    return v0
.end method

.method private addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V
    .registers 4
    .param p1, "provider"    # Lcom/android/server/location/LocationProviderInterface;

    .line 1412
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1413
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    return-void
.end method

.method private addTestProviderLocked(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/android/internal/location/ProviderProperties;

    .line 3523
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_21

    .line 3526
    new-instance v0, Lcom/android/server/location/MockProvider;

    invoke-direct {v0, p1, p0, p2}, Lcom/android/server/location/MockProvider;-><init>(Ljava/lang/String;Landroid/location/ILocationManager;Lcom/android/internal/location/ProviderProperties;)V

    .line 3527
    .local v0, "provider":Lcom/android/server/location/MockProvider;
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 3528
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3529
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3530
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3531
    return-void

    .line 3524
    .end local v0    # "provider":Lcom/android/server/location/MockProvider;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private applyAllProviderRequirementsLocked()V
    .registers 4

    .line 2398
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 2400
    .local v1, "p":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 2401
    goto :goto_6

    .line 2404
    :cond_1d
    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 2405
    .end local v1    # "p":Lcom/android/server/location/LocationProviderInterface;
    goto :goto_6

    .line 2406
    :cond_25
    return-void
.end method

.method private applyRequirementsLocked(Ljava/lang/String;)V
    .registers 20
    .param p1, "provider"    # Ljava/lang/String;

    move-object/from16 v0, p0

    .line 1837
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 1838
    .local v2, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v2, :cond_f

    return-void

    .line 1840
    :cond_f
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1841
    .local v3, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    new-instance v4, Landroid/os/WorkSource;

    invoke-direct {v4}, Landroid/os/WorkSource;-><init>()V

    .line 1842
    .local v4, "worksource":Landroid/os/WorkSource;
    new-instance v5, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v5}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    .line 1844
    .local v5, "providerRequest":Lcom/android/internal/location/ProviderRequest;
    iget-object v6, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1845
    .local v6, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v7, "location_background_throttle_interval_ms"

    const-wide/32 v8, 0x1b7740

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    .line 1851
    .local v7, "backgroundThrottleInterval":J
    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    .line 1852
    if-eqz v3, :cond_137

    .line 1853
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_cd

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1856
    .local v11, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v12, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v12, v12, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v12, v12, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-direct {v0, v12}, Lcom/android/server/LocationManagerService;->isCurrentProfile(I)Z

    move-result v12

    if-eqz v12, :cond_c7

    iget-object v12, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v12, v12, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v12, v12, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-static {v12}, Lcom/android/server/LocationManagerService;->checkUidBlock(I)Z

    move-result v12

    if-nez v12, :cond_c7

    .line 1860
    iget-object v12, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v12, v12, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v12, v12, Lcom/android/server/LocationManagerService$Identity;->mPid:I

    iget-object v13, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v13, v13, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v13, v13, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    iget-object v14, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v14, v14, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v14, v14, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    iget-object v15, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v15, v15, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_c7

    .line 1865
    iget-object v12, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    .line 1866
    .local v12, "locationRequest":Landroid/location/LocationRequest;
    invoke-virtual {v12}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v13

    .line 1868
    .local v13, "interval":J
    iget-object v15, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v15, v15, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    invoke-direct {v0, v15}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/LocationManagerService$Identity;)Z

    move-result v15

    if-nez v15, :cond_a7

    .line 1869
    iget-boolean v15, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    if-nez v15, :cond_96

    .line 1870
    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    .line 1872
    :cond_96
    invoke-virtual {v12}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v15

    cmp-long v15, v13, v15

    if-eqz v15, :cond_a7

    .line 1873
    new-instance v15, Landroid/location/LocationRequest;

    invoke-direct {v15, v12}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    move-object v12, v15

    .line 1874
    invoke-virtual {v12, v13, v14}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    .line 1878
    :cond_a7
    iput-object v12, v11, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 1879
    iget-object v15, v5, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1880
    invoke-virtual {v12}, Landroid/location/LocationRequest;->isLowPowerMode()Z

    move-result v15

    if-nez v15, :cond_b7

    .line 1881
    const/4 v15, 0x0

    iput-boolean v15, v5, Lcom/android/internal/location/ProviderRequest;->lowPowerMode:Z

    .line 1883
    :cond_b7
    move-object/from16 v17, v10

    iget-wide v9, v5, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v9, v13, v9

    if-gez v9, :cond_c5

    .line 1884
    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    .line 1885
    iput-wide v13, v5, Lcom/android/internal/location/ProviderRequest;->interval:J

    .line 1885
    .end local v11    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v12    # "locationRequest":Landroid/location/LocationRequest;
    .end local v13    # "interval":J
    goto :goto_c9

    .line 1889
    :cond_c5
    const/4 v9, 0x1

    goto :goto_c9

    :cond_c7
    move-object/from16 v17, v10

    .line 1853
    :goto_c9
    move-object/from16 v10, v17

    goto/16 :goto_3a

    .line 1891
    :cond_cd
    iget-boolean v9, v5, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v9, :cond_137

    .line 1897
    iget-wide v9, v5, Lcom/android/internal/location/ProviderRequest;->interval:J

    const-wide/16 v11, 0x3e8

    add-long/2addr v9, v11

    const-wide/16 v11, 0x3

    mul-long/2addr v9, v11

    const-wide/16 v11, 0x2

    div-long/2addr v9, v11

    .line 1898
    .local v9, "thresholdInterval":J
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_e0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_137

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1899
    .local v12, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v13, v12, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v13, v13, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v13, v13, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-direct {v0, v13}, Lcom/android/server/LocationManagerService;->isCurrentProfile(I)Z

    move-result v13

    if-eqz v13, :cond_136

    .line 1900
    iget-object v13, v12, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 1904
    .local v13, "locationRequest":Landroid/location/LocationRequest;
    iget-object v14, v5, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_107

    .line 1905
    goto :goto_e0

    .line 1908
    :cond_107
    invoke-virtual {v13}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v14

    cmp-long v14, v14, v9

    if-gtz v14, :cond_136

    .line 1909
    iget-object v14, v12, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v14, v14, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    if-eqz v14, :cond_127

    iget-object v14, v12, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v14, v14, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    .line 1910
    invoke-static {v14}, Lcom/android/server/LocationManagerService;->isValidWorkSource(Landroid/os/WorkSource;)Z

    move-result v14

    if-eqz v14, :cond_127

    .line 1911
    iget-object v14, v12, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v14, v14, Lcom/android/server/LocationManagerService$Receiver;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v4, v14}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_136

    .line 1915
    :cond_127
    iget-object v14, v12, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v14, v14, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v14, v14, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    iget-object v15, v12, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v15, v15, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v15, v15, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v14, v15}, Landroid/os/WorkSource;->add(ILjava/lang/String;)Z

    .line 1921
    .end local v12    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v13    # "locationRequest":Landroid/location/LocationRequest;
    :cond_136
    :goto_136
    goto :goto_e0

    .line 1925
    .end local v9    # "thresholdInterval":J
    :cond_137
    sget-boolean v9, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v9, :cond_15a

    const-string v9, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "provider request: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    :cond_15a
    invoke-interface {v2, v5, v4}, Lcom/android/server/location/LocationProviderInterface;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 1927
    return-void
.end method

.method private canCallerAccessMockLocation(Ljava/lang/String;)Z
    .registers 5
    .param p1, "opPackageName"    # Ljava/lang/String;

    .line 3491
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3a

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private checkCallerIsProvider()V
    .registers 3

    .line 3006
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_LOCATION_PROVIDER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 3008
    return-void

    .line 3018
    :cond_b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->isUidALocationProvider(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3019
    return-void

    .line 3022
    :cond_16
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "need INSTALL_LOCATION_PROVIDER permission, or UID of a currently bound location provider"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkDeviceStatsAllowed()V
    .registers 4

    .line 1588
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    return-void
.end method

.method private checkIntentAndListener(Landroid/app/PendingIntent;Landroid/location/ILocationListener;)V
    .registers 5
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Landroid/location/ILocationListener;

    .line 2223
    if-nez p1, :cond_e

    if-eqz p2, :cond_5

    goto :goto_e

    .line 2224
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "need either listener or intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2225
    :cond_e
    :goto_e
    if-eqz p1, :cond_1b

    if-nez p2, :cond_13

    goto :goto_1b

    .line 2226
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot register both listener and intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2228
    :cond_1b
    :goto_1b
    return-void
.end method

.method private checkInteractAcrossUsersPermission(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 2976
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2977
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v1, p1, :cond_1d

    .line 2978
    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v1

    if-nez v1, :cond_15

    goto :goto_1d

    .line 2981
    :cond_15
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires INTERACT_ACROSS_USERS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2984
    :cond_1d
    :goto_1d
    return-void
.end method

.method private checkListenerOrIntentLocked(Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .registers 19
    .param p1, "listener"    # Landroid/location/ILocationListener;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "hideFromAppOps"    # Z

    move-object v8, p0

    move-object v9, p2

    .line 2213
    move-object v10, p1

    invoke-direct {v8, v9, v10}, Lcom/android/server/LocationManagerService;->checkIntentAndListener(Landroid/app/PendingIntent;Landroid/location/ILocationListener;)V

    .line 2214
    if-eqz v9, :cond_1a

    .line 2215
    invoke-direct {v8, v9}, Lcom/android/server/LocationManagerService;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 2216
    move-object v0, v8

    move-object v1, v9

    move v2, p3

    move v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v0

    return-object v0

    .line 2218
    :cond_1a
    const/4 v1, 0x0

    move-object v0, v8

    move-object v2, v10

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/location/LocationRequest;Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v0

    return-object v0
.end method

.method private checkListenerOrIntentLocked(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .registers 20
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/ILocationListener;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "workSource"    # Landroid/os/WorkSource;
    .param p8, "hideFromAppOps"    # Z

    .line 2232
    move-object v8, p0

    move-object v9, p2

    move-object v10, p3

    invoke-direct {v8, v10, v9}, Lcom/android/server/LocationManagerService;->checkIntentAndListener(Landroid/app/PendingIntent;Landroid/location/ILocationListener;)V

    .line 2233
    move-object v0, v8

    move-object v1, p1

    move-object v2, v9

    move v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/LocationManagerService;->getReceiverLocked(Landroid/location/LocationRequest;Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v0

    return-object v0
.end method

.method private checkPackageName(Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2189
    if-eqz p1, :cond_4e

    .line 2192
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2193
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 2194
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_36

    .line 2197
    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 2198
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    return-void

    .line 2197
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2200
    :cond_1e
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2195
    :cond_36
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2190
    .end local v0    # "uid":I
    .end local v1    # "packages":[Ljava/lang/String;
    :cond_4e
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid package name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkPendingIntent(Landroid/app/PendingIntent;)V
    .registers 5
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 2204
    if-eqz p1, :cond_3

    .line 2207
    return-void

    .line 2205
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid pending intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkReceiverUid(I)Z
    .registers 3
    .param p0, "uid"    # I

    .line 3963
    sget-object v0, Lcom/android/server/LocationManagerService;->mBlockReceiverUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private checkResolutionLevelIsSufficientForGeofenceUse(I)V
    .registers 4
    .param p1, "allowedResolutionLevel"    # I

    .line 1519
    const/4 v0, 0x2

    if-lt p1, v0, :cond_4

    .line 1522
    return-void

    .line 1520
    :cond_4
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Geofence usage requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V
    .registers 7
    .param p1, "allowedResolutionLevel"    # I
    .param p2, "providerName"    # Ljava/lang/String;

    .line 1567
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->getMinimumResolutionLevelForProviderUse(Ljava/lang/String;)I

    move-result v0

    .line 1568
    .local v0, "requiredResolutionLevel":I
    if-ge p1, v0, :cond_5d

    .line 1569
    packed-switch v0, :pswitch_data_5e

    .line 1577
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Insufficient permission for \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" location provider."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1571
    :pswitch_25
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" location provider requires ACCESS_FINE_LOCATION permission."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1574
    :pswitch_41
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" location provider requires ACCESS_COARSE_LOCATION or ACCESS_FINE_LOCATION permission."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1581
    :cond_5d
    return-void

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_41
        :pswitch_25
    .end packed-switch
.end method

.method public static checkUidBlock(I)Z
    .registers 3
    .param p0, "uid"    # I

    .line 3957
    sget-object v0, Lcom/android/server/LocationManagerService;->mBlockLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private checkUpdateAppOpsAllowed()V
    .registers 4

    .line 1593
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    return-void
.end method

.method private createSanitizedRequest(Landroid/location/LocationRequest;IZ)Landroid/location/LocationRequest;
    .registers 9
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "resolutionLevel"    # I
    .param p3, "callerHasLocationHardwarePermission"    # Z

    .line 2159
    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0, p1}, Landroid/location/LocationRequest;-><init>(Landroid/location/LocationRequest;)V

    .line 2160
    .local v0, "sanitizedRequest":Landroid/location/LocationRequest;
    if-nez p3, :cond_b

    .line 2162
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setLowPowerMode(Z)Landroid/location/LocationRequest;

    .line 2164
    :cond_b
    const/4 v1, 0x2

    if-ge p2, v1, :cond_40

    .line 2165
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getQuality()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_21

    const/16 v2, 0xcb

    if-eq v1, v2, :cond_1b

    goto :goto_27

    .line 2170
    :cond_1b
    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    goto :goto_27

    .line 2167
    :cond_21
    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    .line 2168
    nop

    .line 2174
    :goto_27
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v1

    const-wide/32 v3, 0x927c0

    cmp-long v1, v1, v3

    if-gez v1, :cond_35

    .line 2175
    invoke-virtual {v0, v3, v4}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    .line 2177
    :cond_35
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-gez v1, :cond_40

    .line 2178
    invoke-virtual {v0, v3, v4}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 2182
    :cond_40
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_53

    .line 2183
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    .line 2185
    :cond_53
    return-object v0
.end method

.method private doesUidHavePackage(ILjava/lang/String;)Z
    .registers 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3030
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 3031
    return v0

    .line 3033
    :cond_4
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 3034
    .local v1, "packageNames":[Ljava/lang/String;
    if-nez v1, :cond_d

    .line 3035
    return v0

    .line 3037
    :cond_d
    array-length v2, v1

    move v3, v0

    :goto_f
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 3038
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 3039
    const/4 v0, 0x1

    return v0

    .line 3037
    .end local v4    # "name":Ljava/lang/String;
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 3042
    :cond_1e
    return v0
.end method

.method private ensureFallbackFusedProviderPresentLocked(Ljava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 593
    .local p1, "pkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 594
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, "systemPackageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/server/ServiceWatcher;->getSignatureSets(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    .line 597
    .local v2, "sigSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashSet<Landroid/content/pm/Signature;>;>;"
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.location.service.FusedLocationProvider"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    const/16 v5, 0x80

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 600
    .local v3, "rInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_25
    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_129

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 601
    .local v5, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 607
    .local v6, "packageName":Ljava/lang/String;
    const/16 v7, 0x40

    :try_start_37
    invoke-virtual {v0, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 608
    .local v7, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v8, v2}, Lcom/android/server/ServiceWatcher;->isSignatureMatch([Landroid/content/pm/Signature;Ljava/util/List;)Z

    move-result v8

    if-nez v8, :cond_64

    .line 609
    const-string v8, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " resolves service "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "com.android.location.service.FusedLocationProvider"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", but has wrong signature, ignoring"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_63} :catch_10f

    .line 611
    goto :goto_25

    .line 616
    .end local v7    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_64
    nop

    .line 619
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v7, :cond_82

    .line 620
    const-string v7, "LocationManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found fused provider without metadata: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    goto :goto_25

    .line 624
    :cond_82
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v8, "serviceVersion"

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 626
    .local v7, "version":I
    if-nez v7, :cond_f3

    .line 630
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_b6

    .line 631
    sget-boolean v8, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v8, :cond_25

    const-string v8, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Fallback candidate not in /system: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 637
    :cond_b6
    invoke-virtual {v0, v1, v6}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_d8

    .line 639
    sget-boolean v8, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v8, :cond_25

    .line 640
    const-string v8, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Fallback candidate not signed the same as system: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 647
    :cond_d8
    sget-boolean v4, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v4, :cond_f2

    const-string v4, "LocationManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found fallback provider: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_f2
    return-void

    .line 650
    :cond_f3
    sget-boolean v8, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v8, :cond_10d

    const-string v8, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Fallback candidate not version 0: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    .end local v5    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "version":I
    :cond_10d
    goto/16 :goto_25

    .line 613
    .restart local v5    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v6    # "packageName":Ljava/lang/String;
    :catch_10f
    move-exception v7

    .line 614
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "missing package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    goto/16 :goto_25

    .line 654
    .end local v5    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_129
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unable to find a fused location provider that is in the system partition with version 0 and signed with the platform certificate. Such a package is needed to provide a default fused location provider in the event that no other fused location provider has been installed or is currently available. For example, coreOnly boot mode when decrypting the data partition. The fallback must also be marked coreApp=\"true\" in the manifest"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getAllowedResolutionLevel(II)I
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 1493
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_c

    .line 1495
    const/4 v0, 0x2

    return v0

    .line 1496
    :cond_c
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_18

    .line 1498
    const/4 v0, 0x1

    return v0

    .line 1500
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method private getCallerAllowedResolutionLevel()I
    .registers 3

    .line 1510
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v0

    return v0
.end method

.method private getMinimumResolutionLevelForProviderUse(Ljava/lang/String;)I
    .registers 7
    .param p1, "provider"    # Ljava/lang/String;

    .line 1531
    const-string/jumbo v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_47

    const-string/jumbo v0, "passive"

    .line 1532
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_47

    .line 1535
    :cond_14
    const-string/jumbo v0, "network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_46

    const-string v0, "fused"

    .line 1536
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_46

    .line 1541
    :cond_27
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1542
    .local v0, "lp":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v0, :cond_45

    .line 1543
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v3

    .line 1544
    .local v3, "properties":Lcom/android/internal/location/ProviderProperties;
    if-eqz v3, :cond_45

    .line 1545
    iget-boolean v4, v3, Lcom/android/internal/location/ProviderProperties;->mRequiresSatellite:Z

    if-eqz v4, :cond_3c

    .line 1547
    return v1

    .line 1548
    :cond_3c
    iget-boolean v4, v3, Lcom/android/internal/location/ProviderProperties;->mRequiresNetwork:Z

    if-nez v4, :cond_44

    iget-boolean v4, v3, Lcom/android/internal/location/ProviderProperties;->mRequiresCell:Z

    if-eqz v4, :cond_45

    .line 1550
    :cond_44
    return v2

    .line 1555
    .end local v0    # "lp":Lcom/android/server/location/LocationProviderInterface;
    .end local v3    # "properties":Lcom/android/internal/location/ProviderProperties;
    :cond_45
    return v1

    .line 1538
    :cond_46
    :goto_46
    return v2

    .line 1534
    :cond_47
    :goto_47
    return v1
.end method

.method private getReceiverLocked(Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .registers 20
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "workSource"    # Landroid/os/WorkSource;
    .param p6, "hideFromAppOps"    # Z

    move-object v9, p0

    move-object v10, p1

    .line 2140
    iget-object v0, v9, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/server/LocationManagerService$Receiver;

    .line 2141
    .local v11, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    if-nez v11, :cond_25

    .line 2142
    new-instance v12, Lcom/android/server/LocationManagerService$Receiver;

    const/4 v2, 0x0

    move-object v0, v12

    move-object v1, v9

    move-object v3, v10

    move v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)V

    move-object v11, v12

    .line 2144
    iget-object v0, v9, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2146
    :cond_25
    return-object v11
.end method

.method private getReceiverLocked(Landroid/location/LocationRequest;Landroid/location/ILocationListener;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;
    .registers 27
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/ILocationListener;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "workSource"    # Landroid/os/WorkSource;
    .param p7, "hideFromAppOps"    # Z

    move-object/from16 v10, p0

    move-object/from16 v11, p5

    .line 2088
    invoke-interface/range {p2 .. p2}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 2089
    .local v12, "binder":Landroid/os/IBinder;
    iget-object v0, v10, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 2090
    .local v0, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    const/4 v1, 0x0

    .line 2091
    .local v1, "isGetReceiverFromCache":Z
    const/4 v2, 0x0

    .line 2092
    .local v2, "AppRequestProvider":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2093
    .local v3, "recieversCount":I
    if-nez v0, :cond_126

    .line 2094
    if-eqz p1, :cond_b0

    .line 2095
    invoke-virtual/range {p1 .. p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v2

    .line 2096
    iget-object v4, v10, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2097
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v6, v6, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v6, v6, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 2098
    add-int/lit8 v3, v3, 0x1

    .line 2100
    :cond_43
    const/4 v6, 0x0

    .line 2101
    .local v6, "isSameRequest":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    if-eqz v7, :cond_aa

    .line 2102
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_aa

    .line 2103
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$UpdateRecord;

    iget-object v6, v7, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    .line 2104
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v7, v7, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    move/from16 v13, p4

    if-ne v7, v13, :cond_a7

    .line 2105
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v7, v7, Lcom/android/server/LocationManagerService$Identity;->mPid:I

    move/from16 v14, p3

    if-ne v7, v14, :cond_ae

    .line 2106
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ae

    .line 2107
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ae

    .line 2108
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 2109
    const/4 v1, 0x1

    .line 2109
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v6    # "isSameRequest":Ljava/lang/String;
    goto :goto_ae

    .line 2112
    :cond_a7
    move/from16 v14, p3

    goto :goto_ae

    :cond_aa
    move/from16 v14, p3

    move/from16 v13, p4

    :cond_ae
    :goto_ae
    goto/16 :goto_25

    .line 2114
    :cond_b0
    move/from16 v14, p3

    move/from16 v13, p4

    move v15, v1

    move-object v8, v2

    move v9, v3

    .line 2114
    .end local v1    # "isGetReceiverFromCache":Z
    .end local v2    # "AppRequestProvider":Ljava/lang/String;
    .end local v3    # "recieversCount":I
    .local v8, "AppRequestProvider":Ljava/lang/String;
    .local v9, "recieversCount":I
    .local v15, "isGetReceiverFromCache":Z
    const/16 v1, 0x14

    if-lt v9, v1, :cond_ed

    if-eqz v15, :cond_ed

    .line 2115
    const/4 v1, 0x0

    .line 2116
    .end local v15    # "isGetReceiverFromCache":Z
    .restart local v1    # "isGetReceiverFromCache":Z
    const/4 v2, 0x0

    .line 2117
    .end local v9    # "recieversCount":I
    .local v2, "recieversCount":I
    sget-boolean v3, Lcom/android/server/LocationManagerService;->D:Z

    if-nez v3, :cond_c7

    sget-boolean v3, Lcom/android/server/LocationManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_ec

    .line 2118
    :cond_c7
    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "packageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", has already registered"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "return this receiver instead of create a new receiver"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    :cond_ec
    return-object v0

    .line 2125
    .end local v1    # "isGetReceiverFromCache":Z
    .end local v2    # "recieversCount":I
    .restart local v9    # "recieversCount":I
    .restart local v15    # "isGetReceiverFromCache":Z
    :cond_ed
    new-instance v16, Lcom/android/server/LocationManagerService$Receiver;

    const/4 v4, 0x0

    move-object/from16 v1, v16

    move-object v2, v10

    move-object/from16 v3, p2

    move v5, v14

    move v6, v13

    move-object v7, v11

    move-object/from16 v17, v8

    move-object/from16 v8, p6

    .line 2125
    .end local v8    # "AppRequestProvider":Ljava/lang/String;
    .local v17, "AppRequestProvider":Ljava/lang/String;
    move/from16 v18, v9

    move/from16 v9, p7

    .line 2125
    .end local v9    # "recieversCount":I
    .local v18, "recieversCount":I
    invoke-direct/range {v1 .. v9}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)V

    .line 2128
    .end local v0    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .local v1, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :try_start_103
    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_10f
    .catch Landroid/os/RemoteException; {:try_start_103 .. :try_end_10f} :catch_11b

    .line 2132
    nop

    .line 2133
    iget-object v0, v10, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2135
    move-object v0, v1

    move-object/from16 v2, v17

    move/from16 v3, v18

    goto :goto_12b

    .line 2129
    :catch_11b
    move-exception v0

    .line 2130
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LocationManagerService"

    const-string/jumbo v3, "linkToDeath failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2131
    const/4 v2, 0x0

    return-object v2

    .line 2135
    .end local v15    # "isGetReceiverFromCache":Z
    .end local v17    # "AppRequestProvider":Ljava/lang/String;
    .end local v18    # "recieversCount":I
    .local v0, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .local v1, "isGetReceiverFromCache":Z
    .local v2, "AppRequestProvider":Ljava/lang/String;
    .restart local v3    # "recieversCount":I
    :cond_126
    move/from16 v14, p3

    move/from16 v13, p4

    move v15, v1

    .line 2135
    .end local v1    # "isGetReceiverFromCache":Z
    .restart local v15    # "isGetReceiverFromCache":Z
    :goto_12b
    return-object v0
.end method

.method private getResolutionPermission(I)Ljava/lang/String;
    .registers 3
    .param p1, "resolutionLevel"    # I

    .line 1475
    packed-switch p1, :pswitch_data_c

    .line 1481
    const/4 v0, 0x0

    return-object v0

    .line 1477
    :pswitch_5
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    return-object v0

    .line 1479
    :pswitch_8
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    return-object v0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private handleLocationChanged(Landroid/location/Location;Z)V
    .registers 7
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "passive"    # Z

    .line 3405
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 3406
    .local v0, "myLocation":Landroid/location/Location;
    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 3411
    .local v1, "provider":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v2

    if-nez v2, :cond_19

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isMockProvider(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3412
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/location/Location;->setIsFromMockProvider(Z)V

    .line 3415
    :cond_19
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3416
    :try_start_1c
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 3417
    if-nez p2, :cond_32

    .line 3418
    invoke-direct {p0, p1, v1}, Lcom/android/server/LocationManagerService;->screenLocationLocked(Landroid/location/Location;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    move-object p1, v3

    .line 3419
    if-nez p1, :cond_2d

    .line 3420
    monitor-exit v2

    return-void

    .line 3423
    :cond_2d
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    invoke-virtual {v3, v0}, Lcom/android/server/location/PassiveProvider;->updateLocation(Landroid/location/Location;)V

    .line 3425
    :cond_32
    invoke-direct {p0, v0, p2}, Lcom/android/server/LocationManagerService;->handleLocationChangedLocked(Landroid/location/Location;Z)V

    .line 3427
    :cond_35
    monitor-exit v2

    .line 3428
    return-void

    .line 3427
    :catchall_37
    move-exception v3

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_1c .. :try_end_39} :catchall_37

    throw v3
.end method

.method private handleLocationChangedLocked(Landroid/location/Location;Z)V
    .registers 35
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "passive"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3123
    sget-boolean v2, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v2, :cond_1f

    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "incoming location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    :cond_1f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3125
    .local v2, "now":J
    if-eqz p2, :cond_29

    const-string/jumbo v5, "passive"

    goto :goto_2d

    :cond_29
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    .line 3127
    .local v5, "provider":Ljava/lang/String;
    :goto_2d
    iget-object v6, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/location/LocationProviderInterface;

    .line 3128
    .local v6, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v6, :cond_38

    return-void

    .line 3129
    :cond_38
    invoke-direct {v0, v1, v5}, Lcom/android/server/LocationManagerService;->updateLastLocationLocked(Landroid/location/Location;Ljava/lang/String;)V

    .line 3131
    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Location;

    .line 3132
    .local v7, "lastLocation":Landroid/location/Location;
    if-nez v7, :cond_4e

    .line 3133
    const-string v8, "LocationManagerService"

    const-string/jumbo v9, "handleLocationChangedLocked() updateLastLocation failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3134
    return-void

    .line 3138
    :cond_4e
    iget-object v8, v0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/Location;

    .line 3139
    .local v8, "lastLocationCoarseInterval":Landroid/location/Location;
    if-nez v8, :cond_65

    .line 3140
    new-instance v9, Landroid/location/Location;

    invoke-direct {v9, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object v8, v9

    .line 3141
    iget-object v9, v0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v9, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3144
    sput-object v8, Lcom/android/server/LocationManagerService;->sLastKnownCoarseIntervalLocation:Landroid/location/Location;

    .line 3147
    :cond_65
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v9

    .line 3148
    invoke-virtual {v8}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v11

    sub-long/2addr v9, v11

    .line 3149
    .local v9, "timeDiffNanos":J
    const-wide v11, 0x8bb2c97000L

    cmp-long v11, v9, v11

    if-lez v11, :cond_7a

    .line 3150
    invoke-virtual {v8, v1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 3155
    :cond_7a
    const-string/jumbo v11, "noGPSLocation"

    .line 3156
    invoke-virtual {v8, v11}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v11

    .line 3159
    .local v11, "noGPSLocation":Landroid/location/Location;
    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .line 3160
    .local v12, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v12, :cond_2fb

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_9f

    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v19, v8

    move-wide/from16 v20, v9

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    goto/16 :goto_307

    .line 3163
    :cond_9f
    const/4 v13, 0x0

    .line 3164
    .local v13, "coarseLocation":Landroid/location/Location;
    if-eqz v11, :cond_a8

    .line 3165
    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v14, v11}, Lcom/android/server/location/LocationFudger;->getOrCreate(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v13

    .line 3169
    :cond_a8
    invoke-interface {v6}, Lcom/android/server/location/LocationProviderInterface;->getStatusUpdateTime()J

    move-result-wide v14

    .line 3172
    .local v14, "newStatusUpdateTime":J
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3173
    .local v1, "extras":Landroid/os/Bundle;
    invoke-interface {v6, v1}, Lcom/android/server/location/LocationProviderInterface;->getStatus(Landroid/os/Bundle;)I

    move-result v4

    .line 3175
    .local v4, "status":I
    const/16 v16, 0x0

    .line 3176
    .local v16, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    const/16 v17, 0x0

    .line 3179
    .local v17, "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    move-object/from16 v18, v6

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 3179
    .end local v6    # "p":Lcom/android/server/location/LocationProviderInterface;
    .local v18, "p":Lcom/android/server/location/LocationProviderInterface;
    move-object/from16 v19, v8

    move-wide/from16 v20, v9

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    .line 3179
    .end local v16    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v17    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .local v8, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .local v9, "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .local v19, "lastLocationCoarseInterval":Landroid/location/Location;
    .local v20, "timeDiffNanos":J
    :goto_c7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2b5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 3180
    .local v10, "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    move-object/from16 v22, v6

    iget-object v6, v10, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 3181
    .local v6, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    const/16 v16, 0x0

    .line 3183
    .local v16, "receiverDead":Z
    move-object/from16 v23, v11

    iget-object v11, v6, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    .line 3183
    .end local v11    # "noGPSLocation":Landroid/location/Location;
    .local v23, "noGPSLocation":Landroid/location/Location;
    iget v11, v11, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 3184
    .local v11, "receiverUserId":I
    invoke-direct {v0, v11}, Lcom/android/server/LocationManagerService;->isCurrentProfile(I)Z

    move-result v17

    if-nez v17, :cond_13c

    move-object/from16 v24, v12

    iget-object v12, v6, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    .line 3184
    .end local v12    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .local v24, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    iget v12, v12, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    .line 3185
    invoke-direct {v0, v12}, Lcom/android/server/LocationManagerService;->isUidALocationProvider(I)Z

    move-result v12

    if-nez v12, :cond_137

    .line 3186
    sget-boolean v12, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v12, :cond_131

    .line 3187
    const-string v12, "LocationManagerService"

    move-object/from16 v25, v8

    new-instance v8, Ljava/lang/StringBuilder;

    .line 3187
    .end local v8    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .local v25, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v9

    const-string/jumbo v9, "skipping loc update for background user "

    .line 3187
    .end local v9    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .local v26, "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " (current user: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", app: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d5

    .line 3179
    .end local v6    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v10    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v11    # "receiverUserId":I
    .end local v16    # "receiverDead":Z
    .end local v25    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v26    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v8    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v9    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_131
    move-object/from16 v25, v8

    move-object/from16 v26, v9

    .line 3179
    .end local v8    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v9    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v25    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v26    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    goto/16 :goto_1d5

    .line 3194
    .end local v25    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v26    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v6    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .restart local v8    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v9    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v10    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    .restart local v11    # "receiverUserId":I
    .restart local v16    # "receiverDead":Z
    :cond_137
    move-object/from16 v25, v8

    move-object/from16 v26, v9

    .line 3194
    .end local v8    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v9    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v25    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v26    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    goto :goto_142

    .line 3194
    .end local v24    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v25    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v26    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v8    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v9    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v12    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_13c
    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v24, v12

    .line 3194
    .end local v8    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v9    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v12    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v24    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v25    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v26    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :goto_142
    iget-object v8, v0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    iget-object v9, v6, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16e

    .line 3195
    sget-boolean v8, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v8, :cond_1d5

    .line 3196
    const-string v8, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "skipping loc update for blacklisted app: "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v6, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v12, v12, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d5

    .line 3203
    :cond_16e
    iget-object v8, v6, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v8, v8, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-static {v8}, Lcom/android/server/LocationManagerService;->checkUidBlock(I)Z

    move-result v8

    if-eqz v8, :cond_1a0

    .line 3204
    const-string v8, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "uid block  uid = "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v6, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v12, v12, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " package ="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v6, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v12, v12, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    goto :goto_1d5

    .line 3210
    :cond_1a0
    iget-object v8, v6, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v8, v8, Lcom/android/server/LocationManagerService$Identity;->mPid:I

    iget-object v9, v6, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v9, v9, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    iget-object v12, v6, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v12, v12, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    move/from16 v27, v11

    iget v11, v6, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    .end local v11    # "receiverUserId":I
    .local v27, "receiverUserId":I
    invoke-virtual {v0, v8, v9, v12, v11}, Lcom/android/server/LocationManagerService;->reportLocationAccessNoThrow(IILjava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_1e1

    .line 3215
    sget-boolean v8, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v8, :cond_1d5

    .line 3216
    const-string v8, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "skipping loc update for no op app: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v11, v11, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    .end local v6    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v10    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v16    # "receiverDead":Z
    .end local v27    # "receiverUserId":I
    :cond_1d5
    :goto_1d5
    move-object/from16 v6, v22

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    goto/16 :goto_c7

    .line 3222
    .restart local v6    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .restart local v10    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    .restart local v16    # "receiverDead":Z
    .restart local v27    # "receiverUserId":I
    :cond_1e1
    const/4 v8, 0x0

    .line 3223
    .local v8, "notifyLocation":Landroid/location/Location;
    iget v9, v6, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    const/4 v11, 0x2

    if-ge v9, v11, :cond_1e9

    .line 3224
    move-object v8, v13

    goto :goto_1ea

    .line 3226
    :cond_1e9
    move-object v8, v7

    .line 3228
    :goto_1ea
    if-eqz v8, :cond_232

    .line 3229
    iget-object v9, v10, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    .line 3230
    .local v9, "lastLoc":Landroid/location/Location;
    if-eqz v9, :cond_1fa

    invoke-static {v8, v9, v10, v2, v3}, Lcom/android/server/LocationManagerService;->shouldBroadcastSafe(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;J)Z

    move-result v12

    if-eqz v12, :cond_1f7

    goto :goto_1fa

    .line 3245
    .end local v9    # "lastLoc":Landroid/location/Location;
    :cond_1f7
    move-object/from16 v28, v7

    goto :goto_234

    .line 3231
    .restart local v9    # "lastLoc":Landroid/location/Location;
    :cond_1fa
    :goto_1fa
    if-nez v9, :cond_205

    .line 3232
    new-instance v12, Landroid/location/Location;

    invoke-direct {v12, v8}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object v9, v12

    .line 3233
    iput-object v9, v10, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    goto :goto_208

    .line 3235
    :cond_205
    invoke-virtual {v9, v8}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 3237
    :goto_208
    invoke-virtual {v6, v8}, Lcom/android/server/LocationManagerService$Receiver;->callLocationChangedLocked(Landroid/location/Location;)Z

    move-result v12

    if-nez v12, :cond_22a

    .line 3238
    const-string v12, "LocationManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v7

    const-string v7, "RemoteException calling onLocationChanged on "

    .line 3238
    .end local v7    # "lastLocation":Landroid/location/Location;
    .local v28, "lastLocation":Landroid/location/Location;
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3239
    const/4 v7, 0x1

    .line 3241
    .end local v16    # "receiverDead":Z
    .local v7, "receiverDead":Z
    move/from16 v16, v7

    goto :goto_22c

    .line 3241
    .end local v28    # "lastLocation":Landroid/location/Location;
    .local v7, "lastLocation":Landroid/location/Location;
    .restart local v16    # "receiverDead":Z
    :cond_22a
    move-object/from16 v28, v7

    .line 3241
    .end local v7    # "lastLocation":Landroid/location/Location;
    .restart local v28    # "lastLocation":Landroid/location/Location;
    :goto_22c
    iget-object v7, v10, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    invoke-virtual {v7}, Landroid/location/LocationRequest;->decrementNumUpdates()V

    .line 3241
    .end local v9    # "lastLoc":Landroid/location/Location;
    goto :goto_234

    .line 3245
    .end local v28    # "lastLocation":Landroid/location/Location;
    .restart local v7    # "lastLocation":Landroid/location/Location;
    :cond_232
    move-object/from16 v28, v7

    .line 3245
    .end local v7    # "lastLocation":Landroid/location/Location;
    .restart local v28    # "lastLocation":Landroid/location/Location;
    :goto_234
    iget-wide v11, v10, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    .line 3246
    .local v11, "prevStatusUpdateTime":J
    cmp-long v7, v14, v11

    if-lez v7, :cond_26a

    const-wide/16 v29, 0x0

    cmp-long v7, v11, v29

    if-nez v7, :cond_247

    const/4 v7, 0x2

    if-eq v4, v7, :cond_244

    goto :goto_247

    .line 3257
    :cond_244
    move-object/from16 v31, v1

    goto :goto_26c

    .line 3249
    :cond_247
    :goto_247
    iput-wide v14, v10, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    .line 3250
    invoke-virtual {v6, v5, v4, v1}, Lcom/android/server/LocationManagerService$Receiver;->callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v7

    if-nez v7, :cond_26a

    .line 3251
    const/16 v16, 0x1

    .line 3252
    const-string v7, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v1

    const-string v1, "RemoteException calling onStatusChanged on "

    .line 3252
    .end local v1    # "extras":Landroid/os/Bundle;
    .local v31, "extras":Landroid/os/Bundle;
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26c

    .line 3257
    .end local v31    # "extras":Landroid/os/Bundle;
    .restart local v1    # "extras":Landroid/os/Bundle;
    :cond_26a
    move-object/from16 v31, v1

    .line 3257
    .end local v1    # "extras":Landroid/os/Bundle;
    .restart local v31    # "extras":Landroid/os/Bundle;
    :goto_26c
    iget-object v1, v10, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    invoke-virtual {v1}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v1

    if-lez v1, :cond_282

    iget-object v1, v10, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    invoke-virtual {v1}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v29

    cmp-long v1, v29, v2

    if-gez v1, :cond_27f

    goto :goto_282

    .line 3264
    :cond_27f
    move-object/from16 v9, v26

    goto :goto_290

    .line 3258
    :cond_282
    :goto_282
    if-nez v26, :cond_28b

    .line 3259
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v1

    .line 3259
    .end local v26    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .local v9, "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    goto :goto_28d

    .line 3261
    .end local v9    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v26    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_28b
    move-object/from16 v9, v26

    .line 3261
    .end local v26    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v9    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :goto_28d
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3264
    :goto_290
    if-eqz v16, :cond_2a7

    .line 3265
    if-nez v25, :cond_29a

    .line 3266
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3266
    .end local v25    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .local v1, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    goto :goto_29c

    .line 3268
    .end local v1    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v25    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_29a
    move-object/from16 v1, v25

    .line 3268
    .end local v25    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v1    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :goto_29c
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2a5

    .line 3269
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3272
    .end local v6    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v8    # "notifyLocation":Landroid/location/Location;
    .end local v10    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v11    # "prevStatusUpdateTime":J
    .end local v16    # "receiverDead":Z
    .end local v27    # "receiverUserId":I
    :cond_2a5
    move-object v8, v1

    goto :goto_2a9

    .line 3272
    .end local v1    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v25    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_2a7
    move-object/from16 v8, v25

    .line 3179
    .end local v25    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .local v8, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :goto_2a9
    move-object/from16 v6, v22

    move-object/from16 v11, v23

    move-object/from16 v12, v24

    move-object/from16 v7, v28

    move-object/from16 v1, v31

    goto/16 :goto_c7

    .line 3275
    .end local v23    # "noGPSLocation":Landroid/location/Location;
    .end local v24    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v28    # "lastLocation":Landroid/location/Location;
    .end local v31    # "extras":Landroid/os/Bundle;
    .local v1, "extras":Landroid/os/Bundle;
    .restart local v7    # "lastLocation":Landroid/location/Location;
    .local v11, "noGPSLocation":Landroid/location/Location;
    .restart local v12    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_2b5
    move-object/from16 v31, v1

    move-object/from16 v28, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    .line 3275
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v7    # "lastLocation":Landroid/location/Location;
    .end local v8    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v9    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v11    # "noGPSLocation":Landroid/location/Location;
    .end local v12    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v23    # "noGPSLocation":Landroid/location/Location;
    .restart local v24    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v25    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v26    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v28    # "lastLocation":Landroid/location/Location;
    .restart local v31    # "extras":Landroid/os/Bundle;
    if-eqz v25, :cond_2d9

    .line 3276
    move-object/from16 v8, v25

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3276
    .end local v25    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v8    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :goto_2c9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2db

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$Receiver;

    .line 3277
    .restart local v6    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    invoke-direct {v0, v6}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 3278
    .end local v6    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    goto :goto_2c9

    .line 3280
    .end local v8    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v25    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_2d9
    move-object/from16 v8, v25

    .line 3280
    .end local v25    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v8    # "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_2db
    if-eqz v26, :cond_2f8

    .line 3281
    move-object/from16 v9, v26

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3281
    .end local v26    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v9    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :goto_2e3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 3282
    .local v6, "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked(Z)V

    .line 3283
    .end local v6    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    goto :goto_2e3

    .line 3284
    :cond_2f4
    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    goto :goto_2fa

    .line 3286
    .end local v9    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v26    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_2f8
    move-object/from16 v9, v26

    .line 3286
    .end local v26    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v9    # "deadUpdateRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :goto_2fa
    return-void

    .line 3160
    .end local v4    # "status":I
    .end local v13    # "coarseLocation":Landroid/location/Location;
    .end local v14    # "newStatusUpdateTime":J
    .end local v18    # "p":Lcom/android/server/location/LocationProviderInterface;
    .end local v19    # "lastLocationCoarseInterval":Landroid/location/Location;
    .end local v20    # "timeDiffNanos":J
    .end local v23    # "noGPSLocation":Landroid/location/Location;
    .end local v24    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v28    # "lastLocation":Landroid/location/Location;
    .end local v31    # "extras":Landroid/os/Bundle;
    .local v6, "p":Lcom/android/server/location/LocationProviderInterface;
    .restart local v7    # "lastLocation":Landroid/location/Location;
    .local v8, "lastLocationCoarseInterval":Landroid/location/Location;
    .local v9, "timeDiffNanos":J
    .restart local v11    # "noGPSLocation":Landroid/location/Location;
    .restart local v12    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_2fb
    move-object/from16 v18, v6

    move-object/from16 v28, v7

    move-object/from16 v19, v8

    move-wide/from16 v20, v9

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    .line 3160
    .end local v6    # "p":Lcom/android/server/location/LocationProviderInterface;
    .end local v7    # "lastLocation":Landroid/location/Location;
    .end local v8    # "lastLocationCoarseInterval":Landroid/location/Location;
    .end local v9    # "timeDiffNanos":J
    .end local v11    # "noGPSLocation":Landroid/location/Location;
    .end local v12    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v18    # "p":Lcom/android/server/location/LocationProviderInterface;
    .restart local v19    # "lastLocationCoarseInterval":Landroid/location/Location;
    .restart local v20    # "timeDiffNanos":J
    .restart local v23    # "noGPSLocation":Landroid/location/Location;
    .restart local v24    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v28    # "lastLocation":Landroid/location/Location;
    :goto_307
    return-void
.end method

.method private hasGnssPermissions(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1232
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v0

    .line 1233
    .local v0, "allowedResolutionLevel":I
    const-string/jumbo v1, "gps"

    invoke-direct {p0, v0, v1}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 1237
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1238
    .local v1, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1239
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1242
    .local v3, "identity":J
    :try_start_16
    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z

    move-result v5
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_20

    .line 1244
    .local v5, "hasLocationAccess":Z
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1245
    nop

    .line 1244
    nop

    .line 1247
    return v5

    .line 1244
    .end local v5    # "hasLocationAccess":Z
    :catchall_20
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z
    .registers 3
    .param p1, "provider"    # Ljava/lang/String;

    .line 1430
    iget v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/LocationManagerService;->isAllowedByUserSettingsLockedForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isAllowedByUserSettingsLocked(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userId"    # I

    .line 1462
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->isCurrentProfile(I)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->isUidALocationProvider(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1463
    const/4 v0, 0x0

    return v0

    .line 1465
    :cond_12
    invoke-direct {p0, p1, p3}, Lcom/android/server/LocationManagerService;->isAllowedByUserSettingsLockedForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isAllowedByUserSettingsLockedForUser(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1442
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1443
    const/4 v0, 0x1

    return v0

    .line 1445
    :cond_a
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1446
    const/4 v0, 0x0

    return v0

    .line 1448
    :cond_14
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->isLocationProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private isCurrentProfile(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 587
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 588
    :try_start_3
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 589
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private static isImportanceForeground(I)Z
    .registers 2
    .param p0, "importance"    # I

    .line 548
    const/16 v0, 0x7d

    if-gt p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private isLocationProviderEnabledForUser(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2957
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2960
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2961
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v3, "location_providers_allowed"

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 2963
    .local v3, "allowedProviders":Ljava/lang/String;
    const/16 v4, 0x2c

    invoke-static {v3, v4, p1}, Landroid/text/TextUtils;->delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z

    move-result v4
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1b

    .line 2965
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2963
    return v4

    .line 2965
    .end local v2    # "cr":Landroid/content/ContentResolver;
    .end local v3    # "allowedProviders":Ljava/lang/String;
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private isMockProvider(Ljava/lang/String;)Z
    .registers 4
    .param p1, "provider"    # Ljava/lang/String;

    .line 3332
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3333
    :try_start_3
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3334
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private isThrottlingExemptLocked(Lcom/android/server/LocationManagerService$Identity;)Z
    .registers 7
    .param p1, "identity"    # Lcom/android/server/LocationManagerService$Identity;

    .line 1970
    iget v0, p1, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_8

    .line 1971
    return v1

    .line 1975
    :cond_8
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    iget-object v2, p1, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p1, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    const-string v2, "cttl"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_3f

    .line 1980
    :cond_1d
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderProxy;

    .line 1981
    .local v2, "provider":Lcom/android/server/location/LocationProviderProxy;
    iget-object v3, p1, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 1982
    return v1

    .line 1984
    .end local v2    # "provider":Lcom/android/server/location/LocationProviderProxy;
    :cond_3c
    goto :goto_23

    .line 1986
    :cond_3d
    const/4 v0, 0x0

    return v0

    .line 1976
    :cond_3f
    :goto_3f
    return v1
.end method

.method private isUidALocationProvider(I)Z
    .registers 6
    .param p1, "uid"    # I

    .line 2993
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_6

    .line 2994
    return v0

    .line 2996
    :cond_6
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v1, :cond_17

    .line 2997
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    invoke-virtual {v1}, Lcom/android/server/location/GeocoderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/LocationManagerService;->doesUidHavePackage(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    return v0

    .line 2999
    :cond_17
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderProxy;

    .line 3000
    .local v2, "proxy":Lcom/android/server/location/LocationProviderProxy;
    invoke-virtual {v2}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/server/LocationManagerService;->doesUidHavePackage(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    return v0

    .line 3001
    .end local v2    # "proxy":Lcom/android/server/location/LocationProviderProxy;
    :cond_34
    goto :goto_1d

    .line 3002
    :cond_35
    const/4 v0, 0x0

    return v0
.end method

.method private static isValidWorkSource(Landroid/os/WorkSource;)Z
    .registers 5
    .param p0, "workSource"    # Landroid/os/WorkSource;

    .line 1933
    invoke-virtual {p0}, Landroid/os/WorkSource;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_11

    .line 1936
    invoke-virtual {p0, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    :goto_10
    return v1

    .line 1940
    :cond_11
    invoke-virtual {p0}, Landroid/os/WorkSource;->getWorkChains()Ljava/util/ArrayList;

    move-result-object v0

    .line 1941
    .local v0, "workChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WorkSource$WorkChain;>;"
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1942
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v3}, Landroid/os/WorkSource$WorkChain;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    .line 1941
    :cond_2a
    move v1, v2

    :goto_2b
    return v1
.end method

.method private loadProvidersLocked()V
    .registers 32

    .line 664
    move-object/from16 v0, p0

    new-instance v1, Lcom/android/server/location/PassiveProvider;

    invoke-direct {v1, v0}, Lcom/android/server/location/PassiveProvider;-><init>(Landroid/location/ILocationManager;)V

    .line 665
    .local v1, "passiveProvider":Lcom/android/server/location/PassiveProvider;
    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 666
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/android/server/location/PassiveProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 667
    iput-object v1, v0, Lcom/android/server/LocationManagerService;->mPassiveProvider:Lcom/android/server/location/PassiveProvider;

    .line 669
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 671
    new-instance v2, Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 672
    invoke-virtual {v4}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/android/server/location/GnssLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V

    .line 673
    .local v2, "gnssProvider":Lcom/android/server/location/GnssLocationProvider;
    invoke-virtual {v2}, Lcom/android/server/location/GnssLocationProvider;->getGnssSystemInfoProvider()Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/LocationManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    .line 674
    invoke-virtual {v2}, Lcom/android/server/location/GnssLocationProvider;->getGnssBatchingProvider()Lcom/android/server/location/GnssBatchingProvider;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    .line 675
    invoke-virtual {v2}, Lcom/android/server/location/GnssLocationProvider;->getGnssMetricsProvider()Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/LocationManagerService;->mGnssMetricsProvider:Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

    .line 676
    invoke-virtual {v2}, Lcom/android/server/location/GnssLocationProvider;->getGnssStatusProvider()Landroid/location/IGnssStatusProvider;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    .line 677
    invoke-virtual {v2}, Lcom/android/server/location/GnssLocationProvider;->getNetInitiatedListener()Landroid/location/INetInitiatedListener;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 678
    invoke-direct {v0, v2}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 679
    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    const-string/jumbo v4, "gps"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    invoke-virtual {v2}, Lcom/android/server/location/GnssLocationProvider;->getGnssMeasurementsProvider()Lcom/android/server/location/GnssMeasurementsProvider;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    .line 681
    invoke-virtual {v2}, Lcom/android/server/location/GnssLocationProvider;->getGnssNavigationMessageProvider()Lcom/android/server/location/GnssNavigationMessageProvider;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    .line 682
    invoke-virtual {v2}, Lcom/android/server/location/GnssLocationProvider;->getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/LocationManagerService;->mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    .line 696
    .end local v2    # "gnssProvider":Lcom/android/server/location/GnssLocationProvider;
    :cond_63
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 697
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .local v3, "providerPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v4, 0x107002e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 700
    .local v5, "pkgs":[Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v6, :cond_93

    .line 701
    const-string v6, "LocationManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "certificates for location providers pulled from: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 701
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_93
    if-eqz v5, :cond_9c

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 706
    :cond_9c
    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;->ensureFallbackFusedProviderPresentLocked(Ljava/util/ArrayList;)V

    .line 709
    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "network"

    const-string v9, "com.android.location.service.v3.NetworkLocationProvider"

    const v10, 0x1120066

    const v11, 0x104016d

    const v12, 0x107002e

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-static/range {v7 .. v13}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v6

    .line 717
    .local v6, "networkProvider":Lcom/android/server/location/LocationProviderProxy;
    if-eqz v6, :cond_c8

    .line 718
    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    const-string/jumbo v8, "network"

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    iget-object v7, v0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    invoke-direct {v0, v6}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    goto :goto_d0

    .line 722
    :cond_c8
    const-string v7, "LocationManagerService"

    const-string/jumbo v8, "no network location provider found"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :goto_d0
    iget-object v9, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v10, "fused"

    const-string v11, "com.android.location.service.FusedLocationProvider"

    const v12, 0x112005d

    const v13, 0x1040154

    const v14, 0x107002e

    iget-object v15, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-static/range {v9 .. v15}, Lcom/android/server/location/LocationProviderProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)Lcom/android/server/location/LocationProviderProxy;

    move-result-object v7

    .line 734
    .local v7, "fusedLocationProvider":Lcom/android/server/location/LocationProviderProxy;
    if-eqz v7, :cond_100

    .line 735
    invoke-direct {v0, v7}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 736
    iget-object v8, v0, Lcom/android/server/LocationManagerService;->mProxyProviders:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    iget-object v8, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-virtual {v7}, Lcom/android/server/location/LocationProviderProxy;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 738
    iget-object v8, v0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    const-string v9, "fused"

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10f

    .line 740
    :cond_100
    const-string v8, "LocationManagerService"

    const-string/jumbo v9, "no fused location provider found"

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Location service needs a fused location provider"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 745
    :goto_10f
    iget-object v8, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v9, 0x112005e

    const v10, 0x1040155

    iget-object v11, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-static {v8, v9, v10, v4, v11}, Lcom/android/server/location/GeocoderProxy;->createAndBind(Landroid/content/Context;IIILandroid/os/Handler;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    .line 750
    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-nez v4, :cond_12b

    .line 751
    const-string v4, "LocationManagerService"

    const-string/jumbo v8, "no geocoder provider found"

    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_12b
    iget-object v9, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const v10, 0x112005f

    const v11, 0x1040156

    const v12, 0x107002e

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mGpsGeofenceProxy:Landroid/location/IGpsGeofenceHardware;

    const/4 v15, 0x0

    invoke-static/range {v9 .. v15}, Lcom/android/server/location/GeofenceProxy;->createAndBind(Landroid/content/Context;IIILandroid/os/Handler;Landroid/location/IGpsGeofenceHardware;Landroid/location/IFusedGeofenceHardware;)Lcom/android/server/location/GeofenceProxy;

    move-result-object v4

    .line 762
    .local v4, "provider":Lcom/android/server/location/GeofenceProxy;
    if-nez v4, :cond_148

    .line 763
    const-string v8, "LocationManagerService"

    const-string v9, "Unable to bind FLP Geofence proxy."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_148
    invoke-static {}, Landroid/hardware/location/ActivityRecognitionHardware;->isSupported()Z

    move-result v8

    .line 768
    .local v8, "activityRecognitionHardwareIsSupported":Z
    const/4 v9, 0x0

    .line 769
    .local v9, "activityRecognitionHardware":Landroid/hardware/location/ActivityRecognitionHardware;
    if-eqz v8, :cond_156

    .line 770
    iget-object v10, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/hardware/location/ActivityRecognitionHardware;->getInstance(Landroid/content/Context;)Landroid/hardware/location/ActivityRecognitionHardware;

    move-result-object v9

    goto :goto_15d

    .line 772
    :cond_156
    const-string v10, "LocationManagerService"

    const-string v11, "Hardware Activity-Recognition not supported."

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :goto_15d
    iget-object v10, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v11, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    const v14, 0x1120057

    const v15, 0x1040124

    const v16, 0x107002e

    move v12, v8

    move-object v13, v9

    invoke-static/range {v10 .. v16}, Lcom/android/server/location/ActivityRecognitionProxy;->createAndBind(Landroid/content/Context;Landroid/os/Handler;ZLandroid/hardware/location/ActivityRecognitionHardware;III)Lcom/android/server/location/ActivityRecognitionProxy;

    move-result-object v10

    .line 782
    .local v10, "proxy":Lcom/android/server/location/ActivityRecognitionProxy;
    if-nez v10, :cond_179

    .line 783
    const-string v11, "LocationManagerService"

    const-string v12, "Unable to bind ActivityRecognitionProxy."

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_179
    const v11, 0x1040131

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    .line 788
    iget-object v11, v0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    if-eqz v11, :cond_1b0

    .line 789
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".nlp:ready"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/server/LocationManagerService;->mComboNlpReadyMarker:Ljava/lang/String;

    .line 790
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".nlp:screen"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/server/LocationManagerService;->mComboNlpScreenMarker:Ljava/lang/String;

    .line 793
    :cond_1b0
    const v11, 0x107004a

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    .line 795
    .local v11, "testProviderStrings":[Ljava/lang/String;
    array-length v12, v11

    const/4 v14, 0x0

    :goto_1b9
    if-ge v14, v12, :cond_24c

    aget-object v15, v11, v14

    .line 796
    .local v15, "testProviderString":Ljava/lang/String;
    const-string v13, ","

    invoke-virtual {v15, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 797
    .local v13, "fragments":[Ljava/lang/String;
    move-object/from16 v18, v1

    const/16 v16, 0x0

    aget-object v1, v13, v16

    .line 797
    .end local v1    # "passiveProvider":Lcom/android/server/location/PassiveProvider;
    .local v18, "passiveProvider":Lcom/android/server/location/PassiveProvider;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 798
    .local v1, "name":Ljava/lang/String;
    move-object/from16 v19, v2

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    .line 798
    .end local v2    # "resources":Landroid/content/res/Resources;
    .local v19, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_22e

    .line 801
    new-instance v2, Lcom/android/internal/location/ProviderProperties;

    const/16 v17, 0x1

    move-object/from16 v30, v3

    aget-object v3, v13, v17

    .line 802
    .end local v3    # "providerPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v30, "providerPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v21

    const/4 v3, 0x2

    aget-object v3, v13, v3

    .line 803
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v22

    const/4 v3, 0x3

    aget-object v3, v13, v3

    .line 804
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v23

    const/4 v3, 0x4

    aget-object v3, v13, v3

    .line 805
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v24

    const/4 v3, 0x5

    aget-object v3, v13, v3

    .line 806
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v25

    const/4 v3, 0x6

    aget-object v3, v13, v3

    .line 807
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v26

    const/4 v3, 0x7

    aget-object v3, v13, v3

    .line 808
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v27

    const/16 v3, 0x8

    aget-object v3, v13, v3

    .line 809
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    const/16 v3, 0x9

    aget-object v3, v13, v3

    .line 810
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v20, v2

    invoke-direct/range {v20 .. v29}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    .line 811
    .local v2, "properties":Lcom/android/internal/location/ProviderProperties;
    invoke-direct {v0, v1, v2}, Lcom/android/server/LocationManagerService;->addTestProviderLocked(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V

    .line 795
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "properties":Lcom/android/internal/location/ProviderProperties;
    .end local v13    # "fragments":[Ljava/lang/String;
    .end local v15    # "testProviderString":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v30

    goto :goto_1b9

    .line 799
    .end local v30    # "providerPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "providerPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13    # "fragments":[Ljava/lang/String;
    .restart local v15    # "testProviderString":Ljava/lang/String;
    :cond_22e
    move-object/from16 v30, v3

    .line 799
    .end local v3    # "providerPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v30    # "providerPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Provider \""

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\" already exists"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 813
    .end local v13    # "fragments":[Ljava/lang/String;
    .end local v15    # "testProviderString":Ljava/lang/String;
    .end local v18    # "passiveProvider":Lcom/android/server/location/PassiveProvider;
    .end local v19    # "resources":Landroid/content/res/Resources;
    .end local v30    # "providerPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v1, "passiveProvider":Lcom/android/server/location/PassiveProvider;
    .local v2, "resources":Landroid/content/res/Resources;
    .restart local v3    # "providerPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_24c
    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v30, v3

    .line 813
    .end local v1    # "passiveProvider":Lcom/android/server/location/PassiveProvider;
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v3    # "providerPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "passiveProvider":Lcom/android/server/location/PassiveProvider;
    .restart local v19    # "resources":Landroid/content/res/Resources;
    .restart local v30    # "providerPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 4
    .param p1, "log"    # Ljava/lang/String;

    .line 3693
    const-string v0, "LocationManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3694
    const-string v0, "LocationManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3696
    :cond_e
    return-void
.end method

.method private onUidImportanceChanged(II)V
    .registers 14
    .param p1, "uid"    # I
    .param p2, "importance"    # I

    .line 487
    invoke-static {p2}, Lcom/android/server/LocationManagerService;->isImportanceForeground(I)Z

    move-result v0

    .line 488
    .local v0, "foreground":Z
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 489
    .local v1, "affectedProviders":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 491
    :try_start_12
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 492
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 493
    .local v5, "provider":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_38
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 494
    .local v7, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v8, v7, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v8, v8, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    if-ne v8, p1, :cond_8a

    iget-boolean v8, v7, Lcom/android/server/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    if-eq v8, v0, :cond_8a

    .line 496
    sget-boolean v8, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v8, :cond_7a

    .line 497
    const-string v8, "LocationManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "request from uid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " is now "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    if-eqz v0, :cond_6e

    const-string v10, "foreground"

    goto :goto_70

    :cond_6e
    const-string v10, "background)"

    :goto_70
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 497
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :cond_7a
    invoke-virtual {v7, v0}, Lcom/android/server/LocationManagerService$UpdateRecord;->updateForeground(Z)V

    .line 502
    iget-object v8, v7, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    invoke-direct {p0, v8}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/LocationManagerService$Identity;)Z

    move-result v8

    if-nez v8, :cond_8a

    .line 503
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 506
    .end local v7    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_8a
    goto :goto_38

    .line 507
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    .end local v5    # "provider":Ljava/lang/String;
    :cond_8b
    goto :goto_1c

    .line 508
    :cond_8c
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_90
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 509
    .local v4, "provider":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 510
    .end local v4    # "provider":Ljava/lang/String;
    goto :goto_90

    .line 512
    :cond_a0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_aa
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_119

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 513
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/LocationManagerService$Identity;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$Identity;

    iget v5, v5, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    if-ne v5, p1, :cond_118

    .line 514
    sget-boolean v5, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v5, :cond_ea

    .line 515
    const-string v5, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "gnss measurements listener from uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is now "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    if-eqz v0, :cond_de

    const-string v7, "foreground"

    goto :goto_e0

    :cond_de
    const-string v7, "background)"

    :goto_e0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 515
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_ea
    if-nez v0, :cond_109

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$Identity;

    invoke-direct {p0, v5}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/LocationManagerService$Identity;)Z

    move-result v5

    if-eqz v5, :cond_f9

    goto :goto_109

    .line 522
    :cond_f9
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    .line 523
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v6}, Landroid/location/IGnssMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssMeasurementsListener;

    move-result-object v6

    .line 522
    invoke-virtual {v5, v6}, Lcom/android/server/location/GnssMeasurementsProvider;->removeListener(Landroid/os/IInterface;)V

    .line 522
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/LocationManagerService$Identity;>;"
    goto :goto_118

    .line 519
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/LocationManagerService$Identity;>;"
    :cond_109
    :goto_109
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    .line 520
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v6}, Landroid/location/IGnssMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssMeasurementsListener;

    move-result-object v6

    .line 519
    invoke-virtual {v5, v6}, Lcom/android/server/location/GnssMeasurementsProvider;->addListener(Landroid/os/IInterface;)Z

    .line 526
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/LocationManagerService$Identity;>;"
    :cond_118
    :goto_118
    goto :goto_aa

    .line 528
    :cond_119
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_123
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_192

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 529
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/LocationManagerService$Identity;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$Identity;

    iget v5, v5, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    if-ne v5, p1, :cond_191

    .line 530
    sget-boolean v5, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v5, :cond_163

    .line 531
    const-string v5, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "gnss navigation message listener from uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is now "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    if-eqz v0, :cond_157

    const-string v7, "foreground"

    goto :goto_159

    :cond_157
    const-string v7, "background)"

    :goto_159
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 531
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_163
    if-nez v0, :cond_182

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$Identity;

    invoke-direct {p0, v5}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/LocationManagerService$Identity;)Z

    move-result v5

    if-eqz v5, :cond_172

    goto :goto_182

    .line 539
    :cond_172
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    .line 540
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v6}, Landroid/location/IGnssNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNavigationMessageListener;

    move-result-object v6

    .line 539
    invoke-virtual {v5, v6}, Lcom/android/server/location/GnssNavigationMessageProvider;->removeListener(Landroid/os/IInterface;)V

    .line 539
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/LocationManagerService$Identity;>;"
    goto :goto_191

    .line 536
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/LocationManagerService$Identity;>;"
    :cond_182
    :goto_182
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    .line 537
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/IBinder;

    invoke-static {v6}, Landroid/location/IGnssNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNavigationMessageListener;

    move-result-object v6

    .line 536
    invoke-virtual {v5, v6}, Lcom/android/server/location/GnssNavigationMessageProvider;->addListener(Landroid/os/IInterface;)Z

    .line 543
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Lcom/android/server/LocationManagerService$Identity;>;"
    :cond_191
    :goto_191
    goto :goto_123

    .line 544
    :cond_192
    monitor-exit v2

    .line 545
    return-void

    .line 544
    :catchall_194
    move-exception v3

    monitor-exit v2
    :try_end_196
    .catchall {:try_start_12 .. :try_end_196} :catchall_194

    throw v3
.end method

.method private pickBest(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1736
    .local p1, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "gps"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1737
    const-string/jumbo v0, "gps"

    return-object v0

    .line 1738
    :cond_d
    const-string/jumbo v0, "network"

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1739
    const-string/jumbo v0, "network"

    return-object v0

    .line 1741
    :cond_1a
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V
    .registers 4
    .param p1, "provider"    # Lcom/android/server/location/LocationProviderInterface;

    .line 1417
    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    .line 1418
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1419
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    return-void
.end method

.method private removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    .registers 7
    .param p1, "receiver"    # Lcom/android/server/LocationManagerService$Receiver;

    .line 2360
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/LocationManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_27

    :cond_8
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    :cond_27
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4c

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2364
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 2365
    monitor-enter p1

    .line 2366
    :try_start_44
    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V

    .line 2367
    monitor-exit p1

    goto :goto_4c

    :catchall_49
    move-exception v0

    monitor-exit p1
    :try_end_4b
    .catchall {:try_start_44 .. :try_end_4b} :catchall_49

    throw v0

    .line 2370
    :cond_4c
    :goto_4c
    invoke-virtual {p1, v1}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 2373
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2374
    .local v0, "providers":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p1, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 2375
    .local v2, "oldRecords":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v2, :cond_77

    .line 2377
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_60
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_70

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2379
    .local v4, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    invoke-virtual {v4, v1}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked(Z)V

    .line 2380
    .end local v4    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    goto :goto_60

    .line 2382
    :cond_70
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2386
    :cond_77
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_92

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2388
    .local v3, "provider":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8e

    .line 2389
    goto :goto_7b

    .line 2392
    :cond_8e
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    .line 2393
    .end local v3    # "provider":Ljava/lang/String;
    goto :goto_7b

    .line 2394
    :cond_92
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->DumpUpdateRecord()V

    .line 2395
    return-void
.end method

.method private requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;IILjava/lang/String;)V
    .registers 12
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "receiver"    # Lcom/android/server/LocationManagerService$Receiver;
    .param p3, "pid"    # I
    .param p4, "uid"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .line 2292
    if-nez p1, :cond_4

    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 2293
    :cond_4
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 2294
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_c3

    .line 2298
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 2299
    .local v1, "provider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v1, :cond_ab

    .line 2303
    new-instance v2, Lcom/android/server/LocationManagerService$UpdateRecord;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/server/LocationManagerService$UpdateRecord;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;)V

    .line 2306
    .local v2, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    sget-boolean v3, Lcom/android/server/LocationManagerService;->D:Z

    if-nez v3, :cond_21

    sget-boolean v3, Lcom/android/server/LocationManagerService;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_86

    .line 2307
    :cond_21
    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2309
    iget-boolean v5, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mIsForegroundUid:Z

    if-eqz v5, :cond_65

    const-string v5, "foreground"

    goto :goto_67

    :cond_65
    const-string v5, "background"

    :goto_67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2310
    iget-object v5, p2, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    invoke-direct {p0, v5}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/LocationManagerService$Identity;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 2311
    const-string v5, " [whitelisted]"

    goto :goto_77

    :cond_75
    const-string v5, ""

    :goto_77
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2307
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    :cond_86
    iget-object v3, p2, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2315
    .local v3, "oldRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    const/4 v4, 0x0

    if-eqz v3, :cond_94

    .line 2316
    invoke-virtual {v3, v4}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked(Z)V

    .line 2319
    :cond_94
    iget v5, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-direct {p0, v0, p4, v5}, Lcom/android/server/LocationManagerService;->isAllowedByUserSettingsLocked(Ljava/lang/String;II)Z

    move-result v5

    .line 2320
    .local v5, "isProviderEnabled":Z
    if-eqz v5, :cond_a0

    .line 2321
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    goto :goto_a3

    .line 2324
    :cond_a0
    invoke-virtual {p2, v0, v4}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    .line 2328
    :goto_a3
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lcom/android/server/LocationManagerService$Receiver;->updateMonitoring(Z)V

    .line 2329
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->DumpUpdateRecord()V

    .line 2330
    return-void

    .line 2300
    .end local v2    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v3    # "oldRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v5    # "isProviderEnabled":Z
    :cond_ab
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "provider doesn\'t exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2295
    .end local v1    # "provider":Lcom/android/server/location/LocationProviderInterface;
    :cond_c3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "provider name must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static resolutionLevelToOp(I)I
    .registers 2
    .param p0, "allowedResolutionLevel"    # I

    .line 1598
    if-eqz p0, :cond_8

    .line 1599
    const/4 v0, 0x1

    if-ne p0, v0, :cond_7

    .line 1600
    const/4 v0, 0x0

    return v0

    .line 1602
    :cond_7
    return v0

    .line 1605
    :cond_8
    const/4 v0, -0x1

    return v0
.end method

.method private screenLocationLocked(Landroid/location/Location;Ljava/lang/String;)Landroid/location/Location;
    .registers 13
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "provider"    # Ljava/lang/String;

    .line 3339
    const-string/jumbo v0, "network"

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->isMockProvider(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3340
    return-object p1

    .line 3342
    :cond_a
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    const-string/jumbo v1, "network"

    .line 3343
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderProxy;

    .line 3344
    .local v0, "providerProxy":Lcom/android/server/location/LocationProviderProxy;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    if-eqz v1, :cond_e2

    if-eqz v0, :cond_e2

    const-string/jumbo v1, "network"

    .line 3345
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e2

    const-string/jumbo v1, "network"

    .line 3346
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isMockProvider(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    goto/16 :goto_e2

    .line 3350
    :cond_2f
    invoke-virtual {v0}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3351
    .local v1, "connectedNlpPackage":Ljava/lang/String;
    if-eqz v1, :cond_e1

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    goto/16 :goto_e1

    .line 3355
    :cond_3f
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 3356
    .local v2, "extras":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 3358
    .local v3, "isBeingScreened":Z
    if-eqz v2, :cond_61

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mComboNlpReadyMarker:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4f

    goto :goto_61

    .line 3392
    :cond_4f
    sget-boolean v4, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v4, :cond_5a

    .line 3393
    const-string v4, "LocationManagerService"

    const-string v5, "This location is marked as ready for broadcast"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3396
    :cond_5a
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mComboNlpReadyMarker:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_e0

    .line 3360
    :cond_61
    :goto_61
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    const-string/jumbo v5, "passive"

    .line 3361
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3362
    .local v4, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v4, :cond_d0

    .line 3363
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_72
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 3364
    .local v6, "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v7, v6, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mComboNlpPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_cf

    .line 3365
    if-nez v3, :cond_a3

    .line 3366
    const/4 v3, 0x1

    .line 3367
    if-nez v2, :cond_9d

    .line 3368
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v7}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 3369
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 3371
    :cond_9d
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mComboNlpScreenMarker:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3374
    :cond_a3
    iget-object v7, v6, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v7, p1}, Lcom/android/server/LocationManagerService$Receiver;->callLocationChangedLocked(Landroid/location/Location;)Z

    move-result v7

    if-nez v7, :cond_c4

    .line 3375
    const-string v7, "LocationManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RemoteException calling onLocationChanged on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf

    .line 3378
    :cond_c4
    sget-boolean v7, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v7, :cond_cf

    .line 3379
    const-string v7, "LocationManagerService"

    const-string v8, "Sending location for screening"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    .end local v6    # "r":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_cf
    :goto_cf
    goto :goto_72

    .line 3385
    :cond_d0
    if-eqz v3, :cond_d4

    .line 3386
    const/4 v5, 0x0

    return-object v5

    .line 3388
    :cond_d4
    sget-boolean v5, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v5, :cond_df

    .line 3389
    const-string v5, "LocationManagerService"

    const-string v6, "Not screening locations"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3391
    .end local v4    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_df
    nop

    .line 3399
    :goto_e0
    return-object p1

    .line 3352
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "isBeingScreened":Z
    :cond_e1
    :goto_e1
    return-object p1

    .line 3347
    .end local v1    # "connectedNlpPackage":Ljava/lang/String;
    :cond_e2
    :goto_e2
    return-object p1
.end method

.method private setTestProviderEnabled(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 3622
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3623
    :try_start_3
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/MockProvider;

    .line 3624
    .local v1, "mockProvider":Lcom/android/server/location/MockProvider;
    if-eqz v1, :cond_36

    .line 3627
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3628
    .local v2, "identity":J
    if-eqz p2, :cond_21

    .line 3629
    invoke-virtual {v1}, Lcom/android/server/location/MockProvider;->enable()V

    .line 3630
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3631
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 3633
    :cond_21
    invoke-virtual {v1}, Lcom/android/server/location/MockProvider;->disable()V

    .line 3634
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3635
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3637
    :goto_2e
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 3638
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3639
    .end local v1    # "mockProvider":Lcom/android/server/location/MockProvider;
    .end local v2    # "identity":J
    monitor-exit v0

    .line 3640
    return-void

    .line 3625
    .restart local v1    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_36
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3639
    .end local v1    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    throw v1
.end method

.method private static shouldBroadcastSafe(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;J)Z
    .registers 16
    .param p0, "loc"    # Landroid/location/Location;
    .param p1, "lastLoc"    # Landroid/location/Location;
    .param p2, "record"    # Lcom/android/server/LocationManagerService$UpdateRecord;
    .param p3, "now"    # J

    .line 3064
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 3065
    return v0

    .line 3069
    :cond_4
    iget-object v1, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    invoke-virtual {v1}, Landroid/location/LocationRequest;->getFastestInterval()J

    move-result-wide v1

    .line 3070
    .local v1, "minTime":J
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    .line 3072
    .local v3, "delta":J
    const-wide/16 v5, 0x64

    sub-long v5, v1, v5

    cmp-long v5, v3, v5

    const/4 v6, 0x0

    if-gez v5, :cond_21

    .line 3073
    return v6

    .line 3077
    :cond_21
    iget-object v5, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    invoke-virtual {v5}, Landroid/location/LocationRequest;->getSmallestDisplacement()F

    move-result v5

    float-to-double v7, v5

    .line 3078
    .local v7, "minDistance":D
    const-wide/16 v9, 0x0

    cmpl-double v5, v7, v9

    if-lez v5, :cond_38

    .line 3079
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v5

    float-to-double v9, v5

    cmpg-double v5, v9, v7

    if-gtz v5, :cond_38

    .line 3080
    return v6

    .line 3085
    :cond_38
    iget-object v5, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    invoke-virtual {v5}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v5

    if-gtz v5, :cond_41

    .line 3086
    return v6

    .line 3090
    :cond_41
    iget-object v5, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRealRequest:Landroid/location/LocationRequest;

    invoke-virtual {v5}, Landroid/location/LocationRequest;->getExpireAt()J

    move-result-wide v9

    cmp-long v5, v9, p3

    if-ltz v5, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v6

    :goto_4d
    return v0
.end method

.method private shutdownComponents()V
    .registers 3

    .line 560
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_b

    const-string v0, "LocationManagerService"

    const-string v1, "Shutting down components..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_b
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 563
    .local v0, "gpsProvider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v0, :cond_21

    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 564
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    .line 566
    :cond_21
    return-void
.end method

.method private switchUser(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 821
    iget v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    if-ne v0, p1, :cond_5

    .line 822
    return-void

    .line 824
    :cond_5
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v0, p1}, Lcom/android/server/location/LocationBlacklist;->switchUser(I)V

    .line 825
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->removeMessages(I)V

    .line 826
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 827
    :try_start_13
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 828
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 829
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 830
    .local v2, "p":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v2}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    .line 831
    .end local v2    # "p":Lcom/android/server/location/LocationProviderInterface;
    goto :goto_23

    .line 832
    :cond_38
    iput p1, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    .line 833
    invoke-virtual {p0, p1}, Lcom/android/server/LocationManagerService;->updateUserProfiles(I)V

    .line 834
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 835
    monitor-exit v0

    .line 836
    return-void

    .line 835
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_13 .. :try_end_44} :catchall_42

    throw v1
.end method

.method private updateBackgroundThrottlingWhitelistLocked()V
    .registers 4

    .line 1955
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 1956
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_background_throttle_package_whitelist"

    .line 1955
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1958
    .local v0, "setting":Ljava/lang/String;
    if-nez v0, :cond_11

    .line 1959
    const-string v0, ""

    .line 1962
    :cond_11
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 1963
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    .line 1964
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SystemConfig;->getAllowUnthrottledLocation()Landroid/util/ArraySet;

    move-result-object v2

    .line 1963
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 1965
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    const-string v2, ","

    .line 1966
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1965
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1967
    return-void
.end method

.method private updateLastLocationLocked(Landroid/location/Location;Ljava/lang/String;)V
    .registers 7
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "provider"    # Ljava/lang/String;

    .line 3295
    const-string/jumbo v0, "noGPSLocation"

    invoke-virtual {p1, v0}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 3297
    .local v0, "noGPSLocation":Landroid/location/Location;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 3298
    .local v1, "lastLocation":Landroid/location/Location;
    if-nez v1, :cond_1f

    .line 3299
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 3300
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3303
    sput-object v1, Lcom/android/server/LocationManagerService;->sLastKnownLocation:Landroid/location/Location;

    goto :goto_30

    .line 3306
    :cond_1f
    const-string/jumbo v2, "noGPSLocation"

    invoke-virtual {v1, v2}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 3307
    .local v2, "lastNoGPSLocation":Landroid/location/Location;
    if-nez v0, :cond_30

    if-eqz v2, :cond_30

    .line 3310
    const-string/jumbo v3, "noGPSLocation"

    invoke-virtual {p1, v3, v2}, Landroid/location/Location;->setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V

    .line 3313
    .end local v2    # "lastNoGPSLocation":Landroid/location/Location;
    :cond_30
    :goto_30
    invoke-virtual {v1, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 3314
    return-void
.end method

.method public static updateLocationReceiver(IZZ)V
    .registers 4
    .param p0, "uid"    # I
    .param p1, "add"    # Z
    .param p2, "receiver"    # Z

    .line 3940
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/am/OnePlusProcessManager;->updateLocationReceiverUidsChange(IZZZ)V

    .line 3941
    return-void
.end method

.method public static updateLocationReceiver(IZZZ)V
    .registers 4
    .param p0, "uid"    # I
    .param p1, "add"    # Z
    .param p2, "receiver"    # Z
    .param p3, "isGps"    # Z

    .line 3944
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusProcessManager;->updateLocationReceiverUidsChange(IZZZ)V

    .line 3945
    return-void
.end method

.method private updateProviderListenersLocked(Ljava/lang/String;Z)V
    .registers 12
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 1787
    const/4 v0, 0x0

    .line 1788
    .local v0, "listeners":I
    const-string v1, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateProviderListenersLocked provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " enabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 1790
    .local v1, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v1, :cond_2b

    return-void

    .line 1792
    :cond_2b
    const/4 v2, 0x0

    .line 1794
    .local v2, "deadReceivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1795
    .local v3, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v3, :cond_a6

    .line 1796
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1797
    .local v5, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v6, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v6, v6, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v6, v6, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/LocationManagerService;->isCurrentProfile(I)Z

    move-result v6

    if-eqz v6, :cond_a5

    .line 1802
    iget-object v6, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v6, v6, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v6, v6, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-static {v6}, Lcom/android/server/LocationManagerService;->checkUidBlock(I)Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 1803
    const-string v6, "LocationManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateProviderListeners uid block  uid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v8, v8, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " package ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    goto :goto_3a

    .line 1809
    :cond_8e
    iget-object v6, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_a3

    .line 1810
    if-nez v2, :cond_9e

    .line 1811
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    .line 1813
    :cond_9e
    iget-object v6, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1815
    :cond_a3
    add-int/lit8 v0, v0, 0x1

    .line 1817
    .end local v5    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_a5
    goto :goto_3a

    .line 1820
    :cond_a6
    if-eqz v2, :cond_bc

    .line 1821
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1821
    .local v4, "i":I
    :goto_ae
    if-ltz v4, :cond_bc

    .line 1822
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$Receiver;

    invoke-direct {p0, v5}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1821
    add-int/lit8 v4, v4, -0x1

    goto :goto_ae

    .line 1826
    .end local v4    # "i":I
    :cond_bc
    if-eqz p2, :cond_c7

    .line 1827
    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->enable()V

    .line 1828
    if-lez v0, :cond_ca

    .line 1829
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V

    goto :goto_ca

    .line 1832
    :cond_c7
    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    .line 1834
    :cond_ca
    :goto_ca
    return-void
.end method

.method private updateProvidersLocked()V
    .registers 9

    .line 1759
    const/4 v0, 0x0

    .line 1760
    .local v0, "changesMade":Z
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_3e

    .line 1761
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    .line 1762
    .local v3, "p":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v3}, Lcom/android/server/location/LocationProviderInterface;->isEnabled()Z

    move-result v4

    .line 1763
    .local v4, "isEnabled":Z
    invoke-interface {v3}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1764
    .local v5, "name":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v6

    .line 1765
    .local v6, "shouldBeEnabled":Z
    if-eqz v4, :cond_33

    if-nez v6, :cond_33

    .line 1766
    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    .line 1770
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 1771
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 1772
    const/4 v0, 0x1

    goto :goto_3b

    .line 1773
    :cond_33
    if-nez v4, :cond_3b

    if-eqz v6, :cond_3b

    .line 1774
    invoke-direct {p0, v5, v2}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    .line 1775
    const/4 v0, 0x1

    .line 1760
    .end local v3    # "p":Lcom/android/server/location/LocationProviderInterface;
    .end local v4    # "isEnabled":Z
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "shouldBeEnabled":Z
    :cond_3b
    :goto_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1778
    .end local v1    # "i":I
    :cond_3e
    if-eqz v0, :cond_5c

    .line 1779
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1781
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.location.MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1784
    :cond_5c
    return-void
.end method

.method public static updateUidBlock(IZ)V
    .registers 4
    .param p0, "uid"    # I
    .param p1, "isBlock"    # Z

    .line 3948
    if-eqz p1, :cond_15

    .line 3949
    sget-object v0, Lcom/android/server/LocationManagerService;->mBlockLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3950
    sget-object v0, Lcom/android/server/LocationManagerService;->mBlockLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 3952
    :cond_15
    sget-object v0, Lcom/android/server/LocationManagerService;->mBlockLocationUids:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3954
    :goto_1e
    return-void
.end method


# virtual methods
.method public addGnssBatchingCallback(Landroid/location/IBatchedLocationCallback;Ljava/lang/String;)Z
    .registers 7
    .param p1, "callback"    # Landroid/location/IBatchedLocationCallback;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1271
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware batching"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    if-nez v0, :cond_15

    goto :goto_33

    .line 1278
    :cond_15
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    .line 1279
    new-instance v0, Lcom/android/server/LocationManagerService$LinkedCallback;

    invoke-direct {v0, p0, p1}, Lcom/android/server/LocationManagerService$LinkedCallback;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/IBatchedLocationCallback;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedCallback;

    .line 1281
    :try_start_1e
    invoke-interface {p1}, Landroid/location/IBatchedLocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedCallback;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_2a

    .line 1287
    nop

    .line 1289
    const/4 v0, 0x1

    return v0

    .line 1282
    :catch_2a
    move-exception v0

    .line 1285
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LocationManagerService"

    const-string v3, "Remote listener already died."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1286
    return v1

    .line 1275
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_33
    :goto_33
    return v1
.end method

.method public addGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;)Z
    .registers 8
    .param p1, "listener"    # Landroid/location/IGnssMeasurementsListener;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2631
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    if-nez v0, :cond_b

    goto :goto_55

    .line 2635
    :cond_b
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2636
    :try_start_e
    new-instance v1, Lcom/android/server/LocationManagerService$Identity;

    .line 2637
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-direct {v1, v2, v3, p2}, Lcom/android/server/LocationManagerService$Identity;-><init>(IILjava/lang/String;)V

    .line 2638
    .local v1, "callerIdentity":Lcom/android/server/LocationManagerService$Identity;
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/location/IGnssMeasurementsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2639
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_52

    .line 2641
    .local v2, "identity":J
    :try_start_28
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/LocationManagerService$Identity;)Z

    move-result v4

    if-nez v4, :cond_42

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 2643
    invoke-virtual {v4, p2}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v4

    .line 2642
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->isImportanceForeground(I)Z

    move-result v4
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_4d

    if-eqz v4, :cond_3b

    goto :goto_42

    .line 2647
    :cond_3b
    :try_start_3b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2648
    nop

    .line 2650
    const/4 v4, 0x1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_52

    return v4

    .line 2644
    :cond_42
    :goto_42
    :try_start_42
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v4, p1}, Lcom/android/server/location/GnssMeasurementsProvider;->addListener(Landroid/os/IInterface;)Z

    move-result v4
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_4d

    .line 2647
    :try_start_48
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 2644
    return v4

    .line 2647
    :catchall_4d
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2651
    .end local v1    # "callerIdentity":Lcom/android/server/LocationManagerService$Identity;
    .end local v2    # "identity":J
    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_52

    throw v1

    .line 2632
    :cond_55
    :goto_55
    const/4 v0, 0x0

    return v0
.end method

.method public addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;)Z
    .registers 8
    .param p1, "listener"    # Landroid/location/IGnssNavigationMessageListener;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2668
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    if-nez v0, :cond_b

    goto :goto_55

    .line 2672
    :cond_b
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2673
    :try_start_e
    new-instance v1, Lcom/android/server/LocationManagerService$Identity;

    .line 2674
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-direct {v1, v2, v3, p2}, Lcom/android/server/LocationManagerService$Identity;-><init>(IILjava/lang/String;)V

    .line 2675
    .local v1, "callerIdentity":Lcom/android/server/LocationManagerService$Identity;
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/location/IGnssNavigationMessageListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2676
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_52

    .line 2678
    .local v2, "identity":J
    :try_start_28
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/LocationManagerService$Identity;)Z

    move-result v4

    if-nez v4, :cond_42

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 2680
    invoke-virtual {v4, p2}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v4

    .line 2679
    invoke-static {v4}, Lcom/android/server/LocationManagerService;->isImportanceForeground(I)Z

    move-result v4
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_4d

    if-eqz v4, :cond_3b

    goto :goto_42

    .line 2684
    :cond_3b
    :try_start_3b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2685
    nop

    .line 2687
    const/4 v4, 0x1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_52

    return v4

    .line 2681
    :cond_42
    :goto_42
    :try_start_42
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v4, p1}, Lcom/android/server/location/GnssNavigationMessageProvider;->addListener(Landroid/os/IInterface;)Z

    move-result v4
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_4d

    .line 2684
    :try_start_48
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0

    .line 2681
    return v4

    .line 2684
    :catchall_4d
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2688
    .end local v1    # "callerIdentity":Lcom/android/server/LocationManagerService$Identity;
    .end local v2    # "identity":J
    :catchall_52
    move-exception v1

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_48 .. :try_end_54} :catchall_52

    throw v1

    .line 2669
    :cond_55
    :goto_55
    const/4 v0, 0x0

    return v0
.end method

.method public addTestProvider(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Ljava/lang/String;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/android/internal/location/ProviderProperties;
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 3497
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3498
    return-void

    .line 3501
    :cond_7
    const-string/jumbo v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    .line 3505
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3506
    .local v0, "identity":J
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3508
    :try_start_17
    const-string/jumbo v3, "gps"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    const-string/jumbo v3, "network"

    .line 3509
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    const-string v3, "fused"

    .line 3510
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 3511
    :cond_31
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    .line 3512
    .local v3, "p":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v3, :cond_3e

    .line 3513
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 3516
    .end local v3    # "p":Lcom/android/server/location/LocationProviderInterface;
    :cond_3e
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->addTestProviderLocked(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;)V

    .line 3517
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 3518
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_17 .. :try_end_45} :catchall_49

    .line 3519
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3520
    return-void

    .line 3518
    :catchall_49
    move-exception v3

    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v3

    .line 3502
    .end local v0    # "identity":J
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot mock the passive location provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkLocationAccess(IILjava/lang/String;I)Z
    .registers 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "allowedResolutionLevel"    # I

    .line 1621
    invoke-static {p4}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    move-result v0

    .line 1622
    .local v0, "op":I
    const/4 v1, 0x0

    if-ltz v0, :cond_10

    .line 1623
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_10

    .line 1624
    return v1

    .line 1628
    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v2

    if-lt v2, p4, :cond_18

    const/4 v1, 0x1

    nop

    :cond_18
    return v1
.end method

.method public clearAllPendingBroadcastsLocked()V
    .registers 4

    .line 1638
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1639
    :try_start_3
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 1640
    .local v2, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V

    .line 1641
    .end local v2    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    goto :goto_d

    .line 1642
    :cond_1d
    monitor-exit v0

    .line 1643
    return-void

    .line 1642
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 3644
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3645
    return-void

    .line 3648
    :cond_7
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3649
    :try_start_a
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/MockProvider;

    .line 3650
    .local v1, "mockProvider":Lcom/android/server/location/MockProvider;
    if-eqz v1, :cond_2a

    .line 3653
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3654
    .local v2, "identity":J
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3655
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3656
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 3657
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3658
    .end local v1    # "mockProvider":Lcom/android/server/location/MockProvider;
    .end local v2    # "identity":J
    monitor-exit v0

    .line 3659
    return-void

    .line 3651
    .restart local v1    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_2a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3658
    .end local v1    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_a .. :try_end_48} :catchall_46

    throw v1
.end method

.method public clearTestProviderLocation(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 3599
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3600
    return-void

    .line 3603
    :cond_7
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3604
    :try_start_a
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/MockProvider;

    .line 3605
    .local v1, "mockProvider":Lcom/android/server/location/MockProvider;
    if-eqz v1, :cond_19

    .line 3608
    invoke-virtual {v1}, Lcom/android/server/location/MockProvider;->clearLocation()V

    .line 3609
    .end local v1    # "mockProvider":Lcom/android/server/location/MockProvider;
    monitor-exit v0

    .line 3610
    return-void

    .line 3606
    .restart local v1    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3609
    .end local v1    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_a .. :try_end_37} :catchall_35

    throw v1
.end method

.method public clearTestProviderStatus(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 3679
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3680
    return-void

    .line 3683
    :cond_7
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3684
    :try_start_a
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/MockProvider;

    .line 3685
    .local v1, "mockProvider":Lcom/android/server/location/MockProvider;
    if-eqz v1, :cond_19

    .line 3688
    invoke-virtual {v1}, Lcom/android/server/location/MockProvider;->clearStatus()V

    .line 3689
    .end local v1    # "mockProvider":Lcom/android/server/location/MockProvider;
    monitor-exit v0

    .line 3690
    return-void

    .line 3686
    .restart local v1    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3689
    .end local v1    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_a .. :try_end_37} :catchall_35

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3700
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "LocationManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 3702
    :cond_b
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3703
    :try_start_e
    array-length v1, p3

    const/4 v2, 0x0

    if-lez v1, :cond_2b

    aget-object v1, p3, v2

    const-string v3, "--gnssmetrics"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 3704
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMetricsProvider:Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

    if-eqz v1, :cond_29

    .line 3705
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMetricsProvider:Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;

    invoke-interface {v1}, Lcom/android/server/location/GnssLocationProvider$GnssMetricsProvider;->getGnssMetricsAsProtoString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3707
    :cond_29
    monitor-exit v0

    return-void

    .line 3709
    :cond_2b
    const-string v1, "Current Location Manager state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3710
    const-string v1, "  Location Listeners:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3711
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Receiver;

    .line 3712
    .local v3, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3713
    .end local v3    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    goto :goto_3f

    .line 3714
    :cond_60
    const-string v1, "  Active Records by Provider:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3715
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3716
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3717
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 3718
    .local v5, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3719
    .end local v5    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    goto :goto_a4

    .line 3720
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    :cond_c5
    goto :goto_6f

    .line 3721
    :cond_c6
    const-string v1, "  Active GnssMeasurement Listeners:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3722
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_118

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Identity;

    .line 3723
    .local v3, "identity":Lcom/android/server/LocationManagerService$Identity;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/LocationManagerService$Identity;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3724
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/LocationManagerService$Identity;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3723
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3725
    .end local v3    # "identity":Lcom/android/server/LocationManagerService$Identity;
    goto :goto_d5

    .line 3726
    :cond_118
    const-string v1, "  Active GnssNavigationMessage Listeners:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3727
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_127
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Identity;

    .line 3728
    .restart local v3    # "identity":Lcom/android/server/LocationManagerService$Identity;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/LocationManagerService$Identity;->mPid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3729
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->isThrottlingExemptLocked(Lcom/android/server/LocationManagerService$Identity;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3728
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3730
    .end local v3    # "identity":Lcom/android/server/LocationManagerService$Identity;
    goto :goto_127

    .line 3731
    :cond_16a
    const-string v1, "  Overlay Provider Packages:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3732
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_175
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1ad

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    .line 3733
    .local v3, "provider":Lcom/android/server/location/LocationProviderInterface;
    instance-of v4, v3, Lcom/android/server/location/LocationProviderProxy;

    if-eqz v4, :cond_1ac

    .line 3734
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v5, v3

    check-cast v5, Lcom/android/server/location/LocationProviderProxy;

    .line 3735
    invoke-virtual {v5}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3734
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3737
    .end local v3    # "provider":Lcom/android/server/location/LocationProviderInterface;
    :cond_1ac
    goto :goto_175

    .line 3738
    :cond_1ad
    const-string v1, "  Historical Records by Provider:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3740
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mRequestStatistics:Lcom/android/server/location/LocationRequestStatistics;

    iget-object v1, v1, Lcom/android/server/location/LocationRequestStatistics;->statistics:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1be
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1ff

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3741
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;

    .line 3742
    .local v4, "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    .line 3743
    .local v5, "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;->providerName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3744
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;>;"
    .end local v4    # "key":Lcom/android/server/location/LocationRequestStatistics$PackageProviderKey;
    .end local v5    # "stats":Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    goto :goto_1be

    .line 3745
    :cond_1ff
    const-string v1, "  Last Known Locations:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3746
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_20e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_243

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3747
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3748
    .local v4, "provider":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    .line 3749
    .local v5, "location":Landroid/location/Location;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3750
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    .end local v4    # "provider":Ljava/lang/String;
    .end local v5    # "location":Landroid/location/Location;
    goto :goto_20e

    .line 3752
    :cond_243
    const-string v1, "  Last Known Locations Coarse Intervals:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3753
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_252
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_287

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3754
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3755
    .restart local v4    # "provider":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    .line 3756
    .restart local v5    # "location":Landroid/location/Location;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3757
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    .end local v4    # "provider":Ljava/lang/String;
    .end local v5    # "location":Landroid/location/Location;
    goto :goto_252

    .line 3759
    :cond_287
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    invoke-virtual {v1, p2}, Lcom/android/server/location/GeofenceManager;->dump(Ljava/io/PrintWriter;)V

    .line 3761
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2c0

    .line 3762
    const-string v1, "  Enabled Providers:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3763
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3764
    .local v3, "i":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3765
    .end local v3    # "i":Ljava/lang/String;
    goto :goto_29f

    .line 3768
    :cond_2c0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2f4

    .line 3769
    const-string v1, "  Disabled Providers:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3770
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3771
    .restart local v3    # "i":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3772
    .end local v3    # "i":Ljava/lang/String;
    goto :goto_2d3

    .line 3774
    :cond_2f4
    const-string v1, "  "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3775
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v1, p2}, Lcom/android/server/location/LocationBlacklist;->dump(Ljava/io/PrintWriter;)V

    .line 3776
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_32d

    .line 3777
    const-string v1, "  Mock Providers:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3778
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_315
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3779
    .local v3, "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/MockProvider;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/MockProvider;

    const-string v5, "      "

    invoke-virtual {v4, p2, v5}, Lcom/android/server/location/MockProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 3780
    .end local v3    # "i":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/MockProvider;>;"
    goto :goto_315

    .line 3783
    :cond_32d
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_361

    .line 3784
    const-string v1, "  Throttling Whitelisted Packages:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3785
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_340
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_361

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3786
    .local v3, "packageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3787
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_340

    .line 3790
    :cond_361
    const-string v1, "  fudger: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3791
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/location/LocationFudger;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3793
    array-length v1, p3

    if-lez v1, :cond_37b

    const-string/jumbo v1, "short"

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37b

    .line 3794
    monitor-exit v0

    return-void

    .line 3796
    :cond_37b
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_381
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 3797
    .local v2, "provider":Lcom/android/server/location/LocationProviderInterface;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Internal State"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3798
    instance-of v3, v2, Lcom/android/server/location/LocationProviderProxy;

    if-eqz v3, :cond_3c9

    .line 3799
    move-object v3, v2

    check-cast v3, Lcom/android/server/location/LocationProviderProxy;

    .line 3800
    .local v3, "proxy":Lcom/android/server/location/LocationProviderProxy;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3802
    .end local v3    # "proxy":Lcom/android/server/location/LocationProviderProxy;
    :cond_3c9
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3803
    invoke-interface {v2, p1, p2, p3}, Lcom/android/server/location/LocationProviderInterface;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3804
    .end local v2    # "provider":Lcom/android/server/location/LocationProviderInterface;
    goto :goto_381

    .line 3805
    :cond_3d2
    iget-boolean v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    if-eqz v1, :cond_3db

    .line 3806
    const-string v1, "  GNSS batching in progress"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3808
    :cond_3db
    monitor-exit v0

    .line 3809
    return-void

    .line 3808
    :catchall_3dd
    move-exception v1

    monitor-exit v0
    :try_end_3df
    .catchall {:try_start_e .. :try_end_3df} :catchall_3dd

    throw v1
.end method

.method public flushGnssBatch(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1358
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware batching"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1362
    const-string v0, "LocationManagerService"

    const-string v1, "flushGnssBatch called without GNSS permissions"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    return-void

    .line 1366
    :cond_17
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    if-nez v0, :cond_22

    .line 1367
    const-string v0, "LocationManagerService"

    const-string v1, "flushGnssBatch called with no batch in progress"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    :cond_22
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    if-eqz v0, :cond_2b

    .line 1371
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider;->flush()V

    .line 1373
    :cond_2b
    return-void
.end method

.method public geocoderIsPresent()Z
    .registers 2

    .line 3460
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public getActiveLocationUidType()Landroid/util/ArrayMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3816
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3817
    :try_start_3
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 3819
    .local v1, "mActiveLocation":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Receiver;

    .line 3820
    .local v3, "i":Lcom/android/server/LocationManagerService$Receiver;
    iget-object v4, v3, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_72

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 3822
    .local v5, "j":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v5, :cond_71

    .line 3823
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 3824
    .local v6, "mUpdateRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    if-eqz v6, :cond_71

    iget-object v7, v6, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v7}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v7

    const-wide/32 v9, 0x493e0

    cmp-long v7, v7, v9

    if-gtz v7, :cond_71

    .line 3825
    iget-object v7, v6, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v7, v7, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    .line 3826
    .local v7, "uid":I
    iget-object v8, v6, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    .line 3827
    .local v8, "privider":Ljava/lang/String;
    sget-object v9, Lcom/android/server/LocationManagerService;->mBlockLocationUids:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_71

    if-eqz v8, :cond_71

    const-string/jumbo v9, "gps"

    .line 3828
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_71

    .line 3829
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3834
    .end local v5    # "j":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v6    # "mUpdateRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v7    # "uid":I
    .end local v8    # "privider":Ljava/lang/String;
    :cond_71
    goto :goto_28

    .line 3835
    .end local v3    # "i":Lcom/android/server/LocationManagerService$Receiver;
    :cond_72
    goto :goto_12

    .line 3836
    :cond_73
    monitor-exit v0

    return-object v1

    .line 3837
    .end local v1    # "mActiveLocation":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :catchall_75
    move-exception v1

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_3 .. :try_end_77} :catchall_75

    throw v1
.end method

.method public getAllProviders()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1653
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1654
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1655
    .local v1, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    .line 1656
    .local v3, "provider":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v3}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1657
    .local v4, "name":Ljava/lang/String;
    const-string v5, "fused"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1658
    goto :goto_14

    .line 1660
    :cond_2d
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1661
    .end local v3    # "provider":Lcom/android/server/location/LocationProviderInterface;
    .end local v4    # "name":Ljava/lang/String;
    goto :goto_14

    .line 1662
    :cond_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_4e

    move-object v0, v1

    .line 1663
    .end local v1    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-boolean v1, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v1, :cond_4d

    const-string v1, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllProviders()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    :cond_4d
    return-object v0

    .line 1662
    .end local v0    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public getBackgroundThrottlingWhitelist()[Ljava/lang/String;
    .registers 4

    .line 1948
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1949
    :try_start_3
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mBackgroundThrottlePackageWhitelist:Landroid/util/ArraySet;

    .line 1950
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 1949
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1951
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .registers 9
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z

    .line 1716
    const/4 v0, 0x0

    .line 1718
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v1

    .line 1719
    .local v1, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 1720
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->pickBest(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 1721
    sget-boolean v2, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v2, :cond_39

    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBestProvider("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_39
    return-object v0

    .line 1724
    :cond_3a
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v1

    .line 1725
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_74

    .line 1726
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->pickBest(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 1727
    sget-boolean v2, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v2, :cond_73

    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBestProvider("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :cond_73
    return-object v0

    .line 1731
    :cond_74
    sget-boolean v3, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v3, :cond_9e

    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBestProvider("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ")="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    :cond_9e
    return-object v2
.end method

.method public getCurrentProviderPackageList(Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3845
    if-nez p1, :cond_4

    .line 3846
    const/4 v0, 0x0

    return-object v0

    .line 3848
    :cond_4
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3849
    :try_start_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3850
    .local v1, "mActiveLocation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 3851
    .local v2, "p":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v2}, Lcom/android/server/location/LocationProviderInterface;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 3852
    monitor-exit v0

    return-object v1

    .line 3855
    :cond_1c
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_fa

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$Receiver;

    .line 3856
    .local v4, "i":Lcom/android/server/LocationManagerService$Receiver;
    iget-object v5, v4, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v5, v5, Lcom/android/server/LocationManagerService$Identity;->mPid:I

    iget-object v6, v4, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v6, v6, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    iget-object v7, v4, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_66

    .line 3861
    const-string v5, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCurrentProviderPackageList mUid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v7, v7, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " checkLocationAccess false, continue"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3862
    goto :goto_26

    .line 3865
    :cond_66
    iget-object v5, v4, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_70
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 3866
    .local v6, "j":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v6, :cond_f6

    .line 3867
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 3868
    .local v7, "mUpdateRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    if-eqz v7, :cond_f6

    iget-object v8, v7, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v8, v8, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v8

    if-eqz v8, :cond_f6

    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mUserManager:Landroid/os/UserManager;

    iget-object v9, v7, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v9, v9, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    .line 3869
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v8

    if-eqz v8, :cond_aa

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    if-eqz v8, :cond_ba

    :cond_aa
    iget-object v8, v7, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v8, v8, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    .line 3870
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    if-ne v8, v9, :cond_f6

    :cond_ba
    iget-object v8, v7, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 3871
    invoke-virtual {v8}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v8

    const-wide/32 v10, 0x493e0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_f6

    .line 3872
    iget-object v8, v7, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    .line 3873
    .local v8, "mPrivider":Ljava/lang/String;
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f6

    iget-object v9, v7, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f6

    sget-object v9, Lcom/android/server/LocationManagerService;->mBlockLocationUids:Ljava/util/ArrayList;

    iget-object v10, v7, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v10, v10, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v10, v10, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f6

    .line 3874
    iget-object v9, v7, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3878
    .end local v6    # "j":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v7    # "mUpdateRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v8    # "mPrivider":Ljava/lang/String;
    :cond_f6
    goto/16 :goto_70

    .line 3879
    .end local v4    # "i":Lcom/android/server/LocationManagerService$Receiver;
    :cond_f8
    goto/16 :goto_26

    .line 3880
    :cond_fa
    monitor-exit v0

    return-object v1

    .line 3881
    .end local v1    # "mActiveLocation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "p":Lcom/android/server/location/LocationProviderInterface;
    :catchall_fc
    move-exception v1

    monitor-exit v0
    :try_end_fe
    .catchall {:try_start_7 .. :try_end_fe} :catchall_fc

    throw v1
.end method

.method public getCurrentProviderPackageListsForInteger(Ljava/lang/String;)Ljava/util/List;
    .registers 14
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3885
    if-nez p1, :cond_4

    .line 3886
    const/4 v0, 0x0

    return-object v0

    .line 3888
    :cond_4
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3889
    :try_start_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3890
    .local v1, "mActiveLocation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 3891
    .local v2, "p":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v2}, Lcom/android/server/location/LocationProviderInterface;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 3892
    monitor-exit v0

    return-object v1

    .line 3895
    :cond_1c
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_cc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$Receiver;

    .line 3896
    .local v4, "i":Lcom/android/server/LocationManagerService$Receiver;
    iget-object v5, v4, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ca

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 3897
    .local v6, "j":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v6, :cond_c8

    .line 3898
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 3899
    .local v7, "mUpdateRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    if-eqz v7, :cond_c8

    iget-object v8, v7, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v8, v8, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v8

    if-eqz v8, :cond_c8

    iget-object v8, v7, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v8, v8, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    .line 3900
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    if-eq v8, v9, :cond_88

    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mUserManager:Landroid/os/UserManager;

    .line 3901
    invoke-virtual {v8}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v8

    iget-object v9, v7, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v9, v9, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c8

    :cond_88
    iget-object v8, v7, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 3902
    invoke-virtual {v8}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v8

    const-wide/32 v10, 0x493e0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_c8

    .line 3903
    iget-object v8, v7, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    .line 3904
    .local v8, "mPrivider":Ljava/lang/String;
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c8

    iget-object v9, v7, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Identity;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c8

    sget-object v9, Lcom/android/server/LocationManagerService;->mBlockLocationUids:Ljava/util/ArrayList;

    iget-object v10, v7, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v10, v10, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v10, v10, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c8

    .line 3905
    iget-object v9, v7, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v9, v9, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3909
    .end local v6    # "j":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v7    # "mUpdateRecord":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v8    # "mPrivider":Ljava/lang/String;
    :cond_c8
    goto/16 :goto_3c

    .line 3910
    .end local v4    # "i":Lcom/android/server/LocationManagerService$Receiver;
    :cond_ca
    goto/16 :goto_26

    .line 3911
    :cond_cc
    monitor-exit v0

    return-object v1

    .line 3912
    .end local v1    # "mActiveLocation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "p":Lcom/android/server/location/LocationProviderInterface;
    :catchall_ce
    move-exception v1

    monitor-exit v0
    :try_end_d0
    .catchall {:try_start_7 .. :try_end_d0} :catchall_ce

    throw v1
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .registers 18
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .param p6, "params"    # Landroid/location/GeocoderParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .local p7, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object v0, p0

    .line 3466
    iget-object v1, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v1, :cond_13

    .line 3467
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/location/GeocoderProxy;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3470
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .registers 28
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "lowerLeftLatitude"    # D
    .param p4, "lowerLeftLongitude"    # D
    .param p6, "upperRightLatitude"    # D
    .param p8, "upperRightLongitude"    # D
    .param p10, "maxResults"    # I
    .param p11, "params"    # Landroid/location/GeocoderParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .local p12, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    move-object v0, p0

    .line 3480
    iget-object v1, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v1, :cond_1c

    .line 3481
    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-virtual/range {v2 .. v14}, Lcom/android/server/location/GeocoderProxy;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3485
    :cond_1c
    const/4 v1, 0x0

    return-object v1
.end method

.method public getGnssBatchSize(Ljava/lang/String;)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1255
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware batching"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    if-eqz v0, :cond_1a

    .line 1259
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider;->getBatchSize()I

    move-result v0

    return v0

    .line 1261
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public getGnssHardwareModelName()Ljava/lang/String;
    .registers 2

    .line 1220
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    if-eqz v0, :cond_b

    .line 1221
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    invoke-interface {v0}, Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1223
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGnssYearOfHardware()I
    .registers 2

    .line 1206
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    if-eqz v0, :cond_b

    .line 1207
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssSystemInfoProvider:Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;

    invoke-interface {v0}, Lcom/android/server/location/GnssLocationProvider$GnssSystemInfoProvider;->getGnssYearOfHardware()I

    move-result v0

    return v0

    .line 1209
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .registers 3

    .line 2479
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_b

    const-string v0, "LocationManagerService"

    const-string v1, "getLastKnownLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    :cond_b
    sget-object v0, Lcom/android/server/LocationManagerService;->sLastKnownLocation:Landroid/location/Location;

    .line 2481
    .local v0, "location":Landroid/location/Location;
    if-nez v0, :cond_15

    .line 2482
    sget-object v0, Lcom/android/server/LocationManagerService;->sLastKnownCoarseIntervalLocation:Landroid/location/Location;

    .line 2483
    if-nez v0, :cond_15

    .line 2484
    const/4 v1, 0x0

    return-object v1

    .line 2487
    :cond_15
    return-object v0
.end method

.method public getLastLocation(Landroid/location/LocationRequest;Ljava/lang/String;)Landroid/location/Location;
    .registers 15
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2410
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_1a

    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    :cond_1a
    if-nez p1, :cond_1e

    sget-object p1, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 2412
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v0

    .line 2413
    .local v0, "allowedResolutionLevel":I
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 2414
    nop

    .line 2415
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 2414
    invoke-direct {p0, v0, v1}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 2418
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2419
    .local v1, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2420
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2422
    .local v3, "identity":J
    :try_start_39
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v5, p2}, Lcom/android/server/location/LocationBlacklist;->isBlacklisted(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_62

    .line 2423
    sget-boolean v5, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v5, :cond_5d

    .line 2424
    const-string v5, "LocationManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "not returning last loc for blacklisted app: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_39 .. :try_end_5d} :catchall_fa

    .line 2427
    :cond_5d
    nop

    .line 2471
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2427
    return-object v6

    .line 2430
    :cond_62
    :try_start_62
    invoke-virtual {p0, v1, v2, p2, v0}, Lcom/android/server/LocationManagerService;->reportLocationAccessNoThrow(IILjava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_88

    .line 2431
    sget-boolean v5, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v5, :cond_83

    .line 2432
    const-string v5, "LocationManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "not returning last loc for no op app: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catchall {:try_start_62 .. :try_end_83} :catchall_fa

    .line 2435
    :cond_83
    nop

    .line 2471
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2435
    return-object v6

    .line 2438
    :cond_88
    :try_start_88
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_fa

    .line 2441
    :try_start_8b
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v7

    .line 2442
    .local v7, "name":Ljava/lang/String;
    if-nez v7, :cond_94

    const-string v8, "fused"

    move-object v7, v8

    .line 2443
    :cond_94
    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/location/LocationProviderInterface;

    .line 2444
    .local v8, "provider":Lcom/android/server/location/LocationProviderInterface;
    if-nez v8, :cond_a3

    monitor-exit v5
    :try_end_9f
    .catchall {:try_start_8b .. :try_end_9f} :catchall_f7

    .line 2471
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2444
    return-object v6

    .line 2446
    :cond_a3
    :try_start_a3
    iget v9, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-direct {p0, v7, v2, v9}, Lcom/android/server/LocationManagerService;->isAllowedByUserSettingsLocked(Ljava/lang/String;II)Z

    move-result v9

    if-nez v9, :cond_b0

    monitor-exit v5
    :try_end_ac
    .catchall {:try_start_a3 .. :try_end_ac} :catchall_f7

    .line 2471
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2446
    return-object v6

    .line 2449
    :cond_b0
    const/4 v9, 0x2

    if-ge v0, v9, :cond_bc

    .line 2452
    :try_start_b3
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/location/Location;

    .line 2452
    .local v10, "location":Landroid/location/Location;
    goto :goto_c4

    .line 2454
    .end local v10    # "location":Landroid/location/Location;
    :cond_bc
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/location/Location;

    .line 2456
    .restart local v10    # "location":Landroid/location/Location;
    :goto_c4
    if-nez v10, :cond_cb

    .line 2457
    monitor-exit v5
    :try_end_c7
    .catchall {:try_start_b3 .. :try_end_c7} :catchall_f7

    .line 2471
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2457
    return-object v6

    .line 2459
    :cond_cb
    if-ge v0, v9, :cond_ed

    .line 2460
    :try_start_cd
    const-string/jumbo v9, "noGPSLocation"

    invoke-virtual {v10, v9}, Landroid/location/Location;->getExtraLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v9

    .line 2462
    .local v9, "noGPSLocation":Landroid/location/Location;
    if-eqz v9, :cond_e6

    .line 2463
    new-instance v6, Landroid/location/Location;

    iget-object v11, p0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    invoke-virtual {v11, v9}, Lcom/android/server/location/LocationFudger;->getOrCreate(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v11

    invoke-direct {v6, v11}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    monitor-exit v5
    :try_end_e2
    .catchall {:try_start_cd .. :try_end_e2} :catchall_f7

    .line 2471
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2463
    return-object v6

    .line 2465
    .end local v9    # "noGPSLocation":Landroid/location/Location;
    :cond_e6
    nop

    .line 2468
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "provider":Lcom/android/server/location/LocationProviderInterface;
    .end local v10    # "location":Landroid/location/Location;
    :try_start_e7
    monitor-exit v5
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_f7

    .line 2469
    nop

    .line 2471
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2469
    return-object v6

    .line 2466
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v8    # "provider":Lcom/android/server/location/LocationProviderInterface;
    .restart local v10    # "location":Landroid/location/Location;
    :cond_ed
    :try_start_ed
    new-instance v6, Landroid/location/Location;

    invoke-direct {v6, v10}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    monitor-exit v5
    :try_end_f3
    .catchall {:try_start_ed .. :try_end_f3} :catchall_f7

    .line 2471
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2466
    return-object v6

    .line 2468
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "provider":Lcom/android/server/location/LocationProviderInterface;
    .end local v10    # "location":Landroid/location/Location;
    :catchall_f7
    move-exception v6

    :try_start_f8
    monitor-exit v5
    :try_end_f9
    .catchall {:try_start_f8 .. :try_end_f9} :catchall_f7

    :try_start_f9
    throw v6
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_fa

    .line 2471
    :catchall_fa
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public getLocationListenersUid()[I
    .registers 10

    .line 3918
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3919
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3920
    .local v1, "outUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Receiver;

    .line 3921
    .local v3, "i":Lcom/android/server/LocationManagerService$Receiver;
    iget-object v4, v3, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 3923
    .local v5, "j":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$UpdateRecord;

    iget-object v6, v6, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v6, v6, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v6, v6, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3924
    .end local v5    # "j":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    goto :goto_28

    .line 3925
    .end local v3    # "i":Lcom/android/server/LocationManagerService$Receiver;
    :cond_4d
    goto :goto_12

    .line 3926
    :cond_4e
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 3927
    .local v2, "size":I
    if-gtz v2, :cond_57

    .line 3928
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 3930
    :cond_57
    new-array v3, v2, [I

    .line 3931
    .local v3, "res":[I
    const/4 v4, 0x0

    .line 3932
    .local v4, "j":I
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_62
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_79

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 3933
    .local v6, "it":Ljava/lang/Integer;
    add-int/lit8 v7, v4, 0x1

    .local v7, "j":I
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v3, v4

    .line 3934
    .end local v4    # "j":I
    .end local v6    # "it":Ljava/lang/Integer;
    nop

    .line 3932
    move v4, v7

    goto :goto_62

    .line 3935
    .end local v7    # "j":I
    .restart local v4    # "j":I
    :cond_79
    monitor-exit v0

    return-object v3

    .line 3936
    .end local v1    # "outUidMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v2    # "size":I
    .end local v3    # "res":[I
    .end local v4    # "j":I
    :catchall_7b
    move-exception v1

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_3 .. :try_end_7d} :catchall_7b

    throw v1
.end method

.method public getNetworkProviderPackage()Ljava/lang/String;
    .registers 5

    .line 2769
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2770
    :try_start_3
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    const-string/jumbo v2, "network"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 2771
    monitor-exit v0

    return-object v2

    .line 2773
    :cond_11
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    const-string/jumbo v3, "network"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 2774
    .local v1, "p":Lcom/android/server/location/LocationProviderInterface;
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_2a

    .line 2776
    instance-of v0, v1, Lcom/android/server/location/LocationProviderProxy;

    if-eqz v0, :cond_29

    .line 2777
    move-object v0, v1

    check-cast v0, Lcom/android/server/location/LocationProviderProxy;

    invoke-virtual {v0}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2779
    :cond_29
    return-object v2

    .line 2774
    .end local v1    # "p":Lcom/android/server/location/LocationProviderInterface;
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method public getProviderProperties(Ljava/lang/String;)Lcom/android/internal/location/ProviderProperties;
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;

    .line 2745
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2746
    return-object v1

    .line 2749
    :cond_a
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 2753
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2754
    :try_start_14
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 2755
    .local v2, "p":Lcom/android/server/location/LocationProviderInterface;
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_25

    .line 2757
    if-nez v2, :cond_20

    return-object v1

    .line 2758
    :cond_20
    invoke-interface {v2}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v0

    return-object v0

    .line 2755
    .end local v2    # "p":Lcom/android/server/location/LocationProviderInterface;
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .registers 13
    .param p1, "criteria"    # Landroid/location/Criteria;
    .param p2, "enabledOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1674
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v0

    .line 1676
    .local v0, "allowedResolutionLevel":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1677
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1679
    .local v2, "identity":J
    :try_start_c
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_80

    .line 1680
    :try_start_f
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1681
    .local v5, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_20
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/location/LocationProviderInterface;

    .line 1682
    .local v7, "provider":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v7}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1683
    .local v8, "name":Ljava/lang/String;
    const-string v9, "fused"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 1684
    goto :goto_20

    .line 1686
    :cond_39
    invoke-direct {p0, v8}, Lcom/android/server/LocationManagerService;->getMinimumResolutionLevelForProviderUse(Ljava/lang/String;)I

    move-result v9

    if-lt v0, v9, :cond_5a

    .line 1687
    if-eqz p2, :cond_4a

    iget v9, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    .line 1688
    invoke-direct {p0, v8, v1, v9}, Lcom/android/server/LocationManagerService;->isAllowedByUserSettingsLocked(Ljava/lang/String;II)Z

    move-result v9

    if-nez v9, :cond_4a

    .line 1689
    goto :goto_20

    .line 1691
    :cond_4a
    if-eqz p1, :cond_57

    .line 1692
    invoke-interface {v7}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v9

    .line 1691
    invoke-static {v8, v9, p1}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    move-result v9

    if-nez v9, :cond_57

    .line 1693
    goto :goto_20

    .line 1695
    :cond_57
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1697
    .end local v7    # "provider":Lcom/android/server/location/LocationProviderInterface;
    .end local v8    # "name":Ljava/lang/String;
    :cond_5a
    goto :goto_20

    .line 1698
    :cond_5b
    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_f .. :try_end_5c} :catchall_7d

    move-object v4, v5

    .line 1700
    .end local v5    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1701
    nop

    .line 1700
    nop

    .line 1703
    sget-boolean v5, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v5, :cond_7c

    const-string v5, "LocationManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getProviders()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    :cond_7c
    return-object v4

    .line 1698
    .end local v4    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_7d
    move-exception v5

    :try_start_7e
    monitor-exit v4
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    :try_start_7f
    throw v5
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_80

    .line 1700
    :catchall_80
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public injectLocation(Landroid/location/Location;)Z
    .registers 9
    .param p1, "location"    # Landroid/location/Location;

    .line 2504
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to inject location"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2506
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "Access Fine Location permission not granted to inject Location"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2509
    const/4 v0, 0x0

    if-nez p1, :cond_22

    .line 2510
    sget-boolean v1, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v1, :cond_21

    .line 2511
    const-string v1, "LocationManagerService"

    const-string/jumbo v2, "injectLocation(): called with null location"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    :cond_21
    return v0

    .line 2515
    :cond_22
    const/4 v1, 0x0

    .line 2516
    .local v1, "p":Lcom/android/server/location/LocationProviderInterface;
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    .line 2517
    .local v2, "provider":Ljava/lang/String;
    if-eqz v2, :cond_32

    .line 2518
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 2520
    :cond_32
    if-nez v1, :cond_41

    .line 2521
    sget-boolean v3, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v3, :cond_40

    .line 2522
    const-string v3, "LocationManagerService"

    const-string/jumbo v4, "injectLocation(): unknown provider"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    :cond_40
    return v0

    .line 2526
    :cond_41
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2527
    :try_start_44
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_68

    .line 2528
    sget-boolean v4, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v4, :cond_66

    .line 2529
    const-string v4, "LocationManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Location disabled in Settings for current user:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    :cond_66
    monitor-exit v3

    return v0

    .line 2536
    :cond_68
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_76

    .line 2537
    invoke-direct {p0, p1, v2}, Lcom/android/server/LocationManagerService;->updateLastLocationLocked(Landroid/location/Location;Ljava/lang/String;)V

    .line 2545
    monitor-exit v3

    .line 2546
    const/4 v0, 0x1

    return v0

    .line 2539
    :cond_76
    sget-boolean v4, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v4, :cond_82

    .line 2540
    const-string v4, "LocationManagerService"

    const-string/jumbo v5, "injectLocation(): Location exists. Not updating"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    :cond_82
    monitor-exit v3

    return v0

    .line 2545
    :catchall_84
    move-exception v0

    monitor-exit v3
    :try_end_86
    .catchall {:try_start_44 .. :try_end_86} :catchall_84

    throw v0
.end method

.method public isLocationEnabledForUser(I)Z
    .registers 11
    .param p1, "userId"    # I

    .line 2791
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->checkInteractAcrossUsersPermission(I)V

    .line 2793
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2795
    .local v0, "identity":J
    :try_start_7
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_66

    .line 2796
    :try_start_a
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 2797
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "location_providers_allowed"

    .line 2796
    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 2800
    .local v3, "allowedProviders":Ljava/lang/String;
    const/4 v4, 0x0

    if-nez v3, :cond_1f

    .line 2801
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_63

    .line 2816
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2801
    return v4

    .line 2803
    :cond_1f
    :try_start_1f
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 2804
    .local v5, "providerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_33
    :goto_33
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2805
    .local v7, "provider":Ljava/lang/String;
    const-string/jumbo v8, "passive"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_33

    const-string v8, "fused"

    .line 2806
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_51

    .line 2807
    goto :goto_33

    .line 2809
    :cond_51
    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5d

    .line 2810
    const/4 v4, 0x1

    monitor-exit v2
    :try_end_59
    .catchall {:try_start_1f .. :try_end_59} :catchall_63

    .line 2816
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2810
    return v4

    .line 2812
    .end local v7    # "provider":Ljava/lang/String;
    :cond_5d
    goto :goto_33

    .line 2813
    :cond_5e
    :try_start_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_63

    .line 2816
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2813
    return v4

    .line 2814
    .end local v3    # "allowedProviders":Ljava/lang/String;
    .end local v5    # "providerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_63
    move-exception v3

    :try_start_64
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    :try_start_65
    throw v3
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    .line 2816
    :catchall_66
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isProviderEnabledForUser(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 2889
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->checkInteractAcrossUsersPermission(I)V

    .line 2893
    const-string v0, "fused"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    return v1

    .line 2895
    :cond_d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2896
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2897
    :try_start_14
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    .line 2898
    .local v3, "p":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v3, :cond_26

    .line 2899
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/LocationManagerService;->isAllowedByUserSettingsLocked(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v1, 0x1

    nop

    :cond_26
    monitor-exit v2

    .line 2898
    return v1

    .line 2900
    .end local v3    # "p":Lcom/android/server/location/LocationProviderInterface;
    :catchall_28
    move-exception v1

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public locationCallbackFinished(Landroid/location/ILocationListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/location/ILocationListener;

    .line 1187
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1188
    :try_start_3
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1189
    .local v1, "binder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 1190
    .local v2, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    if-eqz v2, :cond_21

    .line 1191
    monitor-enter v2
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_23

    .line 1193
    :try_start_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1194
    .local v3, "identity":J
    # invokes: Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V
    invoke-static {v2}, Lcom/android/server/LocationManagerService$Receiver;->access$2100(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1195
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1196
    .end local v3    # "identity":J
    monitor-exit v2

    goto :goto_21

    :catchall_1e
    move-exception v3

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_12 .. :try_end_20} :catchall_1e

    :try_start_20
    throw v3

    .line 1198
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v2    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :cond_21
    :goto_21
    monitor-exit v0

    .line 1199
    return-void

    .line 1198
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public providerMeetsCriteria(Ljava/lang/String;Landroid/location/Criteria;)Z
    .registers 8
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "criteria"    # Landroid/location/Criteria;

    .line 1747
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1748
    .local v0, "p":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v0, :cond_43

    .line 1752
    nop

    .line 1753
    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/server/location/LocationProviderInterface;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v2

    .line 1752
    invoke-static {v1, v2, p2}, Landroid/location/LocationProvider;->propertiesMeetCriteria(Ljava/lang/String;Lcom/android/internal/location/ProviderProperties;Landroid/location/Criteria;)Z

    move-result v1

    .line 1754
    .local v1, "result":Z
    sget-boolean v2, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v2, :cond_42

    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "providerMeetsCriteria("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    :cond_42
    return v1

    .line 1749
    .end local v1    # "result":Z
    :cond_43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;)Z
    .registers 7
    .param p1, "callback"    # Landroid/location/IGnssStatusListener;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2604
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    if-nez v0, :cond_c

    goto :goto_1e

    .line 2609
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    invoke-interface {v0, p1}, Landroid/location/IGnssStatusProvider;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_14

    .line 2613
    nop

    .line 2614
    const/4 v0, 0x1

    return v0

    .line 2610
    :catch_14
    move-exception v0

    .line 2611
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LocationManagerService"

    const-string/jumbo v3, "mGpsStatusProvider.registerGnssStatusCallback failed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2612
    return v1

    .line 2605
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1e
    :goto_1e
    return v1
.end method

.method public removeGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 7
    .param p1, "geofence"    # Landroid/location/Geofence;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 2587
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 2588
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 2590
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_29

    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeGeofence: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2593
    :cond_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2595
    .local v0, "identity":J
    :try_start_2d
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/location/GeofenceManager;->removeFence(Landroid/location/Geofence;Landroid/app/PendingIntent;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_37

    .line 2597
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2598
    nop

    .line 2599
    return-void

    .line 2597
    :catchall_37
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public removeGnssBatchingCallback()V
    .registers 4

    .line 1318
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    invoke-interface {v0}, Landroid/location/IBatchedLocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedCallback;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_c
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_c} :catch_d

    .line 1324
    goto :goto_15

    .line 1320
    :catch_d
    move-exception v0

    .line 1323
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "LocationManagerService"

    const-string v2, "Couldn\'t unlink death callback."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1325
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :goto_15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    .line 1326
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingDeathCallback:Lcom/android/server/LocationManagerService$LinkedCallback;

    .line 1327
    return-void
.end method

.method public removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/location/IGnssMeasurementsListener;

    .line 2656
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    if-eqz v0, :cond_1a

    .line 2657
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2658
    :try_start_7
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsListeners:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/location/IGnssMeasurementsListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2659
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssMeasurementsProvider:Lcom/android/server/location/GnssMeasurementsProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/location/GnssMeasurementsProvider;->removeListener(Landroid/os/IInterface;)V

    .line 2660
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1

    .line 2662
    :cond_1a
    :goto_1a
    return-void
.end method

.method public removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/location/IGnssNavigationMessageListener;

    .line 2693
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    if-eqz v0, :cond_1a

    .line 2694
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2695
    :try_start_7
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageListeners:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/location/IGnssNavigationMessageListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2696
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssNavigationMessageProvider:Lcom/android/server/location/GnssNavigationMessageProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/location/GnssNavigationMessageProvider;->removeListener(Landroid/os/IInterface;)V

    .line 2697
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v1

    .line 2699
    :cond_1a
    :goto_1a
    return-void
.end method

.method public removeTestProvider(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "opPackageName"    # Ljava/lang/String;

    .line 3535
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3536
    return-void

    .line 3539
    :cond_7
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3543
    :try_start_a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->clearTestProviderEnabled(Ljava/lang/String;Ljava/lang/String;)V

    .line 3544
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->clearTestProviderLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 3545
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->clearTestProviderStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 3547
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/MockProvider;

    .line 3548
    .local v1, "mockProvider":Lcom/android/server/location/MockProvider;
    if-eqz v1, :cond_4c

    .line 3551
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3552
    .local v2, "identity":J
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->removeProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 3555
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    .line 3556
    .local v4, "realProvider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v4, :cond_39

    .line 3557
    invoke-direct {p0, v4}, Lcom/android/server/LocationManagerService;->addProviderLocked(Lcom/android/server/location/LocationProviderInterface;)V

    .line 3559
    :cond_39
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLastLocation:Ljava/util/HashMap;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3560
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLastLocationCoarseInterval:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3561
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 3562
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3563
    .end local v1    # "mockProvider":Lcom/android/server/location/MockProvider;
    .end local v2    # "identity":J
    .end local v4    # "realProvider":Lcom/android/server/location/LocationProviderInterface;
    monitor-exit v0

    .line 3564
    return-void

    .line 3549
    .restart local v1    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_4c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3563
    .end local v1    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_68
    move-exception v1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_a .. :try_end_6a} :catchall_68

    throw v1
.end method

.method public removeUpdates(Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 21
    .param p1, "listener"    # Landroid/location/ILocationListener;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .param p3, "packageName"    # Ljava/lang/String;

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    .line 2335
    move-object/from16 v11, p3

    invoke-direct {v9, v11}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 2337
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 2338
    .local v12, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 2340
    .local v13, "uid":I
    iget-object v14, v9, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 2341
    const/4 v15, 0x0

    .line 2342
    .local v15, "workSource":Landroid/os/WorkSource;
    const/16 v16, 0x0

    .line 2343
    .local v16, "hideFromAppOps":Z
    move-object v1, v9

    move-object/from16 v2, p1

    move-object v3, v10

    move v4, v12

    move v5, v13

    move-object v6, v11

    move-object v7, v15

    move/from16 v8, v16

    :try_start_21
    invoke-direct/range {v1 .. v8}, Lcom/android/server/LocationManagerService;->checkListenerOrIntentLocked(Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v0

    move-object v1, v0

    .line 2345
    .local v1, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    const-string v0, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeUpdates: uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_53
    .catchall {:try_start_21 .. :try_end_53} :catchall_7a

    move-object/from16 v3, p1

    :try_start_55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " intent= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_6b
    .catchall {:try_start_55 .. :try_end_6b} :catchall_7f

    .line 2350
    .local v4, "identity":J
    :try_start_6b
    invoke-direct {v9, v1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_74

    .line 2352
    :try_start_6e
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2353
    nop

    .line 2354
    .end local v1    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v4    # "identity":J
    .end local v15    # "workSource":Landroid/os/WorkSource;
    .end local v16    # "hideFromAppOps":Z
    monitor-exit v14

    .line 2355
    return-void

    .line 2352
    .restart local v1    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .restart local v4    # "identity":J
    .restart local v15    # "workSource":Landroid/os/WorkSource;
    .restart local v16    # "hideFromAppOps":Z
    :catchall_74
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v2, v0

    throw v2

    .line 2354
    .end local v1    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    .end local v4    # "identity":J
    .end local v15    # "workSource":Landroid/os/WorkSource;
    .end local v16    # "hideFromAppOps":Z
    :catchall_7a
    move-exception v0

    move-object/from16 v3, p1

    :goto_7d
    monitor-exit v14
    :try_end_7e
    .catchall {:try_start_6e .. :try_end_7e} :catchall_7f

    throw v0

    :catchall_7f
    move-exception v0

    goto :goto_7d
.end method

.method public reportLocation(Landroid/location/Location;Z)V
    .registers 6
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "passive"    # Z

    .line 3047
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkCallerIsProvider()V

    .line 3049
    invoke-virtual {p1}, Landroid/location/Location;->isComplete()Z

    move-result v0

    if-nez v0, :cond_20

    .line 3050
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dropping incomplete location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3051
    return-void

    .line 3054
    :cond_20
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3055
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3056
    .local v0, "m":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 3057
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 3058
    return-void
.end method

.method reportLocationAccessNoThrow(IILjava/lang/String;I)Z
    .registers 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "allowedResolutionLevel"    # I

    .line 1610
    invoke-static {p4}, Lcom/android/server/LocationManagerService;->resolutionLevelToOp(I)I

    move-result v0

    .line 1611
    .local v0, "op":I
    const/4 v1, 0x0

    if-ltz v0, :cond_10

    .line 1612
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v2, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_10

    .line 1613
    return v1

    .line 1617
    :cond_10
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getAllowedResolutionLevel(II)I

    move-result v2

    if-lt v2, p4, :cond_18

    const/4 v1, 0x1

    nop

    :cond_18
    return v1
.end method

.method public reportLocationBatch(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 1393
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkCallerIsProvider()V

    .line 1396
    const-string/jumbo v0, "gps"

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->isAllowedByCurrentUserSettingsLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1397
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    if-nez v0, :cond_19

    .line 1398
    const-string v0, "LocationManagerService"

    const-string/jumbo v1, "reportLocationBatch() called without active Callback"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    return-void

    .line 1402
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingCallback:Landroid/location/IBatchedLocationCallback;

    invoke-interface {v0, p1}, Landroid/location/IBatchedLocationCallback;->onLocationBatch(Ljava/util/List;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_1f

    goto :goto_28

    .line 1403
    :catch_1f
    move-exception v0

    .line 1404
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManagerService"

    const-string/jumbo v2, "mGnssBatchingCallback.onLocationBatch failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1405
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_28
    goto :goto_31

    .line 1407
    :cond_29
    const-string v0, "LocationManagerService"

    const-string/jumbo v1, "reportLocationBatch() called without user permission, locations blocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :goto_31
    return-void
.end method

.method public requestGeofence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 23
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "geofence"    # Landroid/location/Geofence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "packageName"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v9, p3

    .line 2552
    if-nez p1, :cond_a

    sget-object v0, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 2553
    .end local p1    # "request":Landroid/location/LocationRequest;
    .local v0, "request":Landroid/location/LocationRequest;
    move-object v10, v0

    goto :goto_c

    .line 2553
    .end local v0    # "request":Landroid/location/LocationRequest;
    .restart local p1    # "request":Landroid/location/LocationRequest;
    :cond_a
    move-object/from16 v10, p1

    .line 2553
    .end local p1    # "request":Landroid/location/LocationRequest;
    .local v10, "request":Landroid/location/LocationRequest;
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v11

    .line 2554
    .local v11, "allowedResolutionLevel":I
    invoke-direct {v1, v11}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForGeofenceUse(I)V

    .line 2555
    invoke-direct {v1, v9}, Lcom/android/server/LocationManagerService;->checkPendingIntent(Landroid/app/PendingIntent;)V

    .line 2556
    move-object/from16 v12, p4

    invoke-direct {v1, v12}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 2557
    nop

    .line 2558
    invoke-virtual {v10}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 2557
    invoke-direct {v1, v11, v0}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 2560
    iget-object v0, v1, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.LOCATION_HARDWARE"

    .line 2561
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    move v13, v0

    .line 2563
    .local v13, "callerHasLocationHardwarePermission":Z
    invoke-direct {v1, v10, v11, v13}, Lcom/android/server/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;IZ)Landroid/location/LocationRequest;

    move-result-object v14

    .line 2566
    .local v14, "sanitizedRequest":Landroid/location/LocationRequest;
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v0, :cond_63

    const-string v0, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestGeofence: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 2569
    :cond_63
    move-object/from16 v15, p2

    :goto_65
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2571
    .local v8, "uid":I
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eqz v0, :cond_78

    .line 2573
    const-string v0, "LocationManagerService"

    const-string/jumbo v2, "proximity alerts are currently available only to the primary user"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    return-void

    .line 2576
    :cond_78
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    move-wide v6, v2

    .line 2578
    .local v6, "identity":J
    :try_start_7d
    iget-object v2, v1, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;
    :try_end_7f
    .catchall {:try_start_7d .. :try_end_7f} :catchall_94

    move-object v3, v14

    move-object v4, v15

    move-object v5, v9

    move-object/from16 v16, v10

    move-wide v9, v6

    move v6, v11

    .line 2578
    .end local v6    # "identity":J
    .end local v10    # "request":Landroid/location/LocationRequest;
    .local v9, "identity":J
    .local v16, "request":Landroid/location/LocationRequest;
    move v7, v8

    move/from16 v17, v8

    move-object v8, v12

    .line 2578
    .end local v8    # "uid":I
    .local v17, "uid":I
    :try_start_8a
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/location/GeofenceManager;->addFence(Landroid/location/LocationRequest;Landroid/location/Geofence;Landroid/app/PendingIntent;IILjava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_92

    .line 2581
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2582
    nop

    .line 2583
    return-void

    .line 2581
    :catchall_92
    move-exception v0

    goto :goto_9a

    .line 2581
    .end local v9    # "identity":J
    .end local v16    # "request":Landroid/location/LocationRequest;
    .end local v17    # "uid":I
    .restart local v6    # "identity":J
    .restart local v8    # "uid":I
    .restart local v10    # "request":Landroid/location/LocationRequest;
    :catchall_94
    move-exception v0

    move/from16 v17, v8

    move-object/from16 v16, v10

    move-wide v9, v6

    .line 2581
    .end local v6    # "identity":J
    .end local v8    # "uid":I
    .end local v10    # "request":Landroid/location/LocationRequest;
    .restart local v9    # "identity":J
    .restart local v16    # "request":Landroid/location/LocationRequest;
    .restart local v17    # "uid":I
    :goto_9a
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;Ljava/lang/String;)V
    .registers 29
    .param p1, "request"    # Landroid/location/LocationRequest;
    .param p2, "listener"    # Landroid/location/ILocationListener;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .param p4, "packageName"    # Ljava/lang/String;

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    .line 2240
    move-object/from16 v12, p4

    if-nez p1, :cond_c

    sget-object v0, Lcom/android/server/LocationManagerService;->DEFAULT_LOCATION_REQUEST:Landroid/location/LocationRequest;

    .line 2241
    .end local p1    # "request":Landroid/location/LocationRequest;
    .local v0, "request":Landroid/location/LocationRequest;
    move-object v13, v0

    goto :goto_e

    .line 2241
    .end local v0    # "request":Landroid/location/LocationRequest;
    .restart local p1    # "request":Landroid/location/LocationRequest;
    :cond_c
    move-object/from16 v13, p1

    .line 2241
    .end local p1    # "request":Landroid/location/LocationRequest;
    .local v13, "request":Landroid/location/LocationRequest;
    :goto_e
    invoke-direct {v10, v12}, Lcom/android/server/LocationManagerService;->checkPackageName(Ljava/lang/String;)V

    .line 2242
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v14

    .line 2243
    .local v14, "allowedResolutionLevel":I
    nop

    .line 2244
    invoke-virtual {v13}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v0

    .line 2243
    invoke-direct {v10, v14, v0}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 2245
    invoke-virtual {v13}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v15

    .line 2246
    .local v15, "workSource":Landroid/os/WorkSource;
    if-eqz v15, :cond_2c

    invoke-virtual {v15}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 2247
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->checkDeviceStatsAllowed()V

    .line 2249
    :cond_2c
    invoke-virtual {v13}, Landroid/location/LocationRequest;->getHideFromAppOps()Z

    move-result v16

    .line 2250
    .local v16, "hideFromAppOps":Z
    if-eqz v16, :cond_35

    .line 2251
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->checkUpdateAppOpsAllowed()V

    .line 2253
    :cond_35
    iget-object v0, v10, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    .line 2254
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_41

    const/4 v0, 0x1

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    move v9, v0

    .line 2256
    .local v9, "callerHasLocationHardwarePermission":Z
    invoke-direct {v10, v13, v14, v9}, Lcom/android/server/LocationManagerService;->createSanitizedRequest(Landroid/location/LocationRequest;IZ)Landroid/location/LocationRequest;

    move-result-object v17

    .line 2259
    .local v17, "sanitizedRequest":Landroid/location/LocationRequest;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 2260
    .local v8, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2262
    .local v7, "uid":I
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestLocationUpdates: uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", provider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/location/LocationRequest;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " listener= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " intent= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2263
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    move-wide v4, v0

    .line 2267
    .local v4, "identity":J
    :try_start_99
    invoke-virtual {v10, v8, v7, v12, v14}, Lcom/android/server/LocationManagerService;->checkLocationAccess(IILjava/lang/String;I)Z

    .line 2269
    iget-object v3, v10, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_9f
    .catchall {:try_start_99 .. :try_end_9f} :catchall_f5

    .line 2272
    const/4 v0, 0x0

    .line 2273
    .local v0, "recevier":Lcom/android/server/LocationManagerService$Receiver;
    if-nez v11, :cond_c1

    .line 2274
    move-object v1, v10

    move-object v2, v13

    move-object/from16 v18, v3

    move-object v3, v6

    move-object/from16 v19, v13

    move/from16 v20, v14

    move-wide v13, v4

    move-object v4, v11

    .line 2274
    .end local v4    # "identity":J
    .end local v14    # "allowedResolutionLevel":I
    .local v13, "identity":J
    .local v19, "request":Landroid/location/LocationRequest;
    .local v20, "allowedResolutionLevel":I
    move v5, v8

    move v6, v7

    move/from16 v21, v7

    move-object v7, v12

    .line 2274
    .end local v7    # "uid":I
    .local v21, "uid":I
    move/from16 v22, v8

    move-object v8, v15

    .line 2274
    .end local v8    # "pid":I
    .local v22, "pid":I
    move/from16 v23, v9

    move/from16 v9, v16

    .line 2274
    .end local v9    # "callerHasLocationHardwarePermission":Z
    .local v23, "callerHasLocationHardwarePermission":Z
    :try_start_b9
    invoke-direct/range {v1 .. v9}, Lcom/android/server/LocationManagerService;->checkListenerOrIntentLocked(Landroid/location/LocationRequest;Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v1

    move-object v0, v1

    goto :goto_df

    .line 2282
    .end local v0    # "recevier":Lcom/android/server/LocationManagerService$Receiver;
    :catchall_bf
    move-exception v0

    goto :goto_f1

    .line 2277
    .end local v19    # "request":Landroid/location/LocationRequest;
    .end local v20    # "allowedResolutionLevel":I
    .end local v21    # "uid":I
    .end local v22    # "pid":I
    .end local v23    # "callerHasLocationHardwarePermission":Z
    .restart local v0    # "recevier":Lcom/android/server/LocationManagerService$Receiver;
    .restart local v4    # "identity":J
    .restart local v7    # "uid":I
    .restart local v8    # "pid":I
    .restart local v9    # "callerHasLocationHardwarePermission":Z
    .local v13, "request":Landroid/location/LocationRequest;
    .restart local v14    # "allowedResolutionLevel":I
    :cond_c1
    move-object/from16 v18, v3

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    move-object/from16 v19, v13

    move/from16 v20, v14

    move-wide v13, v4

    .line 2277
    .end local v4    # "identity":J
    .end local v7    # "uid":I
    .end local v8    # "pid":I
    .end local v9    # "callerHasLocationHardwarePermission":Z
    .end local v14    # "allowedResolutionLevel":I
    .local v13, "identity":J
    .restart local v19    # "request":Landroid/location/LocationRequest;
    .restart local v20    # "allowedResolutionLevel":I
    .restart local v21    # "uid":I
    .restart local v22    # "pid":I
    .restart local v23    # "callerHasLocationHardwarePermission":Z
    move-object v1, v10

    move-object/from16 v2, p2

    move-object v3, v11

    move/from16 v4, v22

    move/from16 v5, v21

    move-object v6, v12

    move-object v7, v15

    move/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lcom/android/server/LocationManagerService;->checkListenerOrIntentLocked(Landroid/location/ILocationListener;Landroid/app/PendingIntent;IILjava/lang/String;Landroid/os/WorkSource;Z)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v1

    move-object v0, v1

    .line 2281
    :goto_df
    move-object v1, v10

    move-object/from16 v2, v17

    move-object v3, v0

    move/from16 v4, v22

    move/from16 v5, v21

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;IILjava/lang/String;)V

    .line 2282
    .end local v0    # "recevier":Lcom/android/server/LocationManagerService$Receiver;
    monitor-exit v18
    :try_end_ec
    .catchall {:try_start_b9 .. :try_end_ec} :catchall_bf

    .line 2284
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2285
    nop

    .line 2286
    return-void

    .line 2282
    :goto_f1
    :try_start_f1
    monitor-exit v18
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_bf

    :try_start_f2
    throw v0
    :try_end_f3
    .catchall {:try_start_f2 .. :try_end_f3} :catchall_f3

    .line 2284
    :catchall_f3
    move-exception v0

    goto :goto_101

    .line 2284
    .end local v19    # "request":Landroid/location/LocationRequest;
    .end local v20    # "allowedResolutionLevel":I
    .end local v21    # "uid":I
    .end local v22    # "pid":I
    .end local v23    # "callerHasLocationHardwarePermission":Z
    .restart local v4    # "identity":J
    .restart local v7    # "uid":I
    .restart local v8    # "pid":I
    .restart local v9    # "callerHasLocationHardwarePermission":Z
    .local v13, "request":Landroid/location/LocationRequest;
    .restart local v14    # "allowedResolutionLevel":I
    :catchall_f5
    move-exception v0

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v23, v9

    move-object/from16 v19, v13

    move/from16 v20, v14

    move-wide v13, v4

    .line 2284
    .end local v4    # "identity":J
    .end local v7    # "uid":I
    .end local v8    # "pid":I
    .end local v9    # "callerHasLocationHardwarePermission":Z
    .end local v14    # "allowedResolutionLevel":I
    .local v13, "identity":J
    .restart local v19    # "request":Landroid/location/LocationRequest;
    .restart local v20    # "allowedResolutionLevel":I
    .restart local v21    # "uid":I
    .restart local v22    # "pid":I
    .restart local v23    # "callerHasLocationHardwarePermission":Z
    :goto_101
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 7
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2703
    if-eqz p1, :cond_34

    .line 2707
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->getCallerAllowedResolutionLevel()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/LocationManagerService;->checkResolutionLevelIsSufficientForProviderUse(ILjava/lang/String;)V

    .line 2711
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2c

    .line 2716
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2717
    :try_start_16
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 2718
    .local v1, "p":Lcom/android/server/location/LocationProviderInterface;
    if-nez v1, :cond_23

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 2720
    :cond_23
    invoke-interface {v1, p2, p3}, Lcom/android/server/location/LocationProviderInterface;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2721
    .end local v1    # "p":Lcom/android/server/location/LocationProviderInterface;
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_29

    throw v1

    .line 2713
    :cond_2c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires ACCESS_LOCATION_EXTRA_COMMANDS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2705
    :cond_34
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public sendNiResponse(II)Z
    .registers 6
    .param p1, "notifId"    # I
    .param p2, "userResponse"    # I

    .line 2726
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_1b

    .line 2731
    :try_start_a
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    invoke-interface {v0, p1, p2}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z

    move-result v0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_10} :catch_11

    return v0

    .line 2732
    :catch_11
    move-exception v0

    .line 2733
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LocationManagerService"

    const-string v2, "RemoteException in LocationManagerService.sendNiResponse"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    const/4 v1, 0x0

    return v1

    .line 2727
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "calling sendNiResponse from outside of the system is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLocationEnabledForUser(ZI)V
    .registers 13
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 2828
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const-string v2, "Requires WRITE_SECURE_SETTINGS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2833
    invoke-direct {p0, p2}, Lcom/android/server/LocationManagerService;->checkInteractAcrossUsersPermission(I)V

    .line 2835
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2837
    .local v0, "identity":J
    :try_start_10
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_9c

    .line 2838
    :try_start_13
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 2841
    .local v3, "allRealProviders":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Landroid/util/ArraySet;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(I)V

    .line 2842
    .local v4, "allProvidersSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2845
    if-nez p1, :cond_35

    .line 2846
    const-string/jumbo v5, "gps"

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2847
    const-string/jumbo v5, "network"

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2849
    :cond_35
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 2850
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_13 .. :try_end_3c} :catchall_99

    .line 2875
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2850
    return-void

    .line 2855
    :cond_40
    if-eqz p1, :cond_45

    :try_start_42
    const-string v5, "+"

    goto :goto_47

    :cond_45
    const-string v5, "-"

    .line 2856
    .local v5, "prefix":Ljava/lang/String;
    :goto_47
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 2857
    .local v6, "locationProvidersAllowed":Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_50
    :goto_50
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2858
    .local v8, "provider":Ljava/lang/String;
    const-string/jumbo v9, "passive"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_50

    const-string v9, "fused"

    .line 2859
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 2860
    goto :goto_50

    .line 2862
    :cond_6e
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2863
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2864
    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2865
    .end local v8    # "provider":Ljava/lang/String;
    goto :goto_50

    .line 2867
    :cond_7a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2868
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 2869
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "location_providers_allowed"

    .line 2871
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2868
    invoke-static {v7, v8, v9, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 2873
    .end local v3    # "allRealProviders":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "allProvidersSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "prefix":Ljava/lang/String;
    .end local v6    # "locationProvidersAllowed":Ljava/lang/StringBuilder;
    monitor-exit v2
    :try_end_94
    .catchall {:try_start_42 .. :try_end_94} :catchall_99

    .line 2875
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2876
    nop

    .line 2877
    return-void

    .line 2873
    :catchall_99
    move-exception v3

    :try_start_9a
    monitor-exit v2
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    :try_start_9b
    throw v3
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9c

    .line 2875
    :catchall_9c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setProviderEnabledForUser(Ljava/lang/String;ZI)Z
    .registers 10
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 2913
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const-string v2, "Requires WRITE_SECURE_SETTINGS permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2918
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->checkInteractAcrossUsersPermission(I)V

    .line 2922
    const-string v0, "fused"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    return v1

    .line 2924
    :cond_16
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2926
    .local v2, "identity":J
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_66

    .line 2928
    :try_start_1d
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_63

    .line 2945
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2928
    return v1

    .line 2931
    :cond_2a
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 2932
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->setTestProviderEnabled(Ljava/lang/String;Z)V

    .line 2933
    const/4 v1, 0x1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_63

    .line 2945
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2933
    return v1

    .line 2939
    :cond_3b
    :try_start_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_45

    const-string v4, "+"

    goto :goto_47

    :cond_45
    const-string v4, "-"

    :goto_47
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2940
    .local v1, "providerChange":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 2941
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "location_providers_allowed"

    .line 2940
    invoke-static {v4, v5, v1, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_3b .. :try_end_5f} :catchall_63

    .line 2945
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2940
    return v4

    .line 2943
    .end local v1    # "providerChange":Ljava/lang/String;
    :catchall_63
    move-exception v1

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    :try_start_65
    throw v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_66

    .line 2945
    :catchall_66
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 3614
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3615
    return-void

    .line 3617
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->setTestProviderEnabled(Ljava/lang/String;Z)V

    .line 3618
    return-void
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)V
    .registers 12
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "loc"    # Landroid/location/Location;
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 3568
    invoke-direct {p0, p3}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3569
    return-void

    .line 3572
    :cond_7
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3573
    :try_start_a
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/MockProvider;

    .line 3574
    .local v1, "mockProvider":Lcom/android/server/location/MockProvider;
    if-eqz v1, :cond_70

    .line 3580
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 3581
    .local v2, "mock":Landroid/location/Location;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/location/Location;->setIsFromMockProvider(Z)V

    .line 3583
    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_64

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_64

    .line 3586
    const v4, 0x534e4554

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "33091107"

    aput-object v7, v5, v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "!="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3587
    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 3586
    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3591
    :cond_64
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3592
    .local v3, "identity":J
    invoke-virtual {v1, v2}, Lcom/android/server/location/MockProvider;->setLocation(Landroid/location/Location;)V

    .line 3593
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3594
    .end local v1    # "mockProvider":Lcom/android/server/location/MockProvider;
    .end local v2    # "mock":Landroid/location/Location;
    .end local v3    # "identity":J
    monitor-exit v0

    .line 3595
    return-void

    .line 3575
    .restart local v1    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_70
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3594
    .end local v1    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_8c
    move-exception v1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_a .. :try_end_8e} :catchall_8c

    throw v1
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;JLjava/lang/String;)V
    .registers 12
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "updateTime"    # J
    .param p6, "opPackageName"    # Ljava/lang/String;

    .line 3664
    invoke-direct {p0, p6}, Lcom/android/server/LocationManagerService;->canCallerAccessMockLocation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3665
    return-void

    .line 3668
    :cond_7
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3669
    :try_start_a
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/MockProvider;

    .line 3670
    .local v1, "mockProvider":Lcom/android/server/location/MockProvider;
    if-eqz v1, :cond_19

    .line 3673
    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/android/server/location/MockProvider;->setStatus(ILandroid/os/Bundle;J)V

    .line 3674
    .end local v1    # "mockProvider":Lcom/android/server/location/MockProvider;
    monitor-exit v0

    .line 3675
    return-void

    .line 3671
    .restart local v1    # "mockProvider":Lcom/android/server/location/MockProvider;
    :cond_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3674
    .end local v1    # "mockProvider":Lcom/android/server/location/MockProvider;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_a .. :try_end_37} :catchall_35

    throw v1
.end method

.method public startGnssBatch(JZLjava/lang/String;)Z
    .registers 8
    .param p1, "periodNanos"    # J
    .param p3, "wakeOnFifoFull"    # Z
    .param p4, "packageName"    # Ljava/lang/String;

    .line 1335
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware batching"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    invoke-direct {p0, p4}, Lcom/android/server/LocationManagerService;->hasGnssPermissions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    if-nez v0, :cond_14

    goto :goto_2d

    .line 1342
    :cond_14
    iget-boolean v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    if-eqz v0, :cond_23

    .line 1344
    const-string v0, "LocationManagerService"

    const-string/jumbo v1, "startGnssBatch unexpectedly called w/o stopping prior batch"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    invoke-virtual {p0}, Lcom/android/server/LocationManagerService;->stopGnssBatch()Z

    .line 1349
    :cond_23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    .line 1350
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/location/GnssBatchingProvider;->start(JZ)Z

    move-result v0

    return v0

    .line 1339
    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    return v0
.end method

.method public stopGnssBatch()Z
    .registers 4

    .line 1380
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.LOCATION_HARDWARE"

    const-string v2, "Location Hardware permission not granted to access hardware batching"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 1384
    iput-boolean v1, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingInProgress:Z

    .line 1385
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGnssBatchingProvider:Lcom/android/server/location/GnssBatchingProvider;

    invoke-virtual {v0}, Lcom/android/server/location/GnssBatchingProvider;->stop()Z

    move-result v0

    return v0

    .line 1387
    :cond_17
    return v1
.end method

.method public systemRunning()V
    .registers 8

    .line 311
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_3
    sget-boolean v1, Lcom/android/server/LocationManagerService;->D:Z

    if-eqz v1, :cond_f

    const-string v1, "LocationManagerService"

    const-string/jumbo v2, "systemRunning()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_f
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 318
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 321
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    .line 322
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 323
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "LocationThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationThread:Landroid/os/HandlerThread;

    .line 324
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 326
    new-instance v1, Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 329
    new-instance v1, Lcom/android/server/location/LocationFudger;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v1, v2, v3}, Lcom/android/server/location/LocationFudger;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationFudger:Lcom/android/server/location/LocationFudger;

    .line 330
    new-instance v1, Lcom/android/server/location/LocationBlacklist;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v1, v2, v3}, Lcom/android/server/location/LocationBlacklist;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    .line 331
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-virtual {v1}, Lcom/android/server/location/LocationBlacklist;->init()V

    .line 332
    new-instance v1, Lcom/android/server/location/GeofenceManager;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mBlacklist:Lcom/android/server/location/LocationBlacklist;

    invoke-direct {v1, v2, v3}, Lcom/android/server/location/GeofenceManager;-><init>(Landroid/content/Context;Lcom/android/server/location/LocationBlacklist;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGeofenceManager:Lcom/android/server/location/GeofenceManager;

    .line 335
    new-instance v1, Lcom/android/server/LocationManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$2;-><init>(Lcom/android/server/LocationManagerService;)V

    .line 346
    .local v1, "callback":Landroid/app/AppOpsManager$OnOpChangedListener;
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 348
    new-instance v2, Lcom/android/server/LocationManagerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/LocationManagerService$3;-><init>(Lcom/android/server/LocationManagerService;)V

    .line 357
    .local v2, "permissionListener":Landroid/content/pm/PackageManager$OnPermissionsChangedListener;
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 360
    new-instance v3, Lcom/android/server/LocationManagerService$4;

    invoke-direct {v3, p0}, Lcom/android/server/LocationManagerService$4;-><init>(Lcom/android/server/LocationManagerService;)V

    .line 372
    .local v3, "uidImportanceListener":Landroid/app/ActivityManager$OnUidImportanceListener;
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v5, 0x7d

    invoke-virtual {v4, v3, v5}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    .line 375
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    iput-object v4, p0, Lcom/android/server/LocationManagerService;->mUserManager:Landroid/os/UserManager;

    .line 376
    iget v4, p0, Lcom/android/server/LocationManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v4}, Lcom/android/server/LocationManagerService;->updateUserProfiles(I)V

    .line 378
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateBackgroundThrottlingWhitelistLocked()V

    .line 381
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->loadProvidersLocked()V

    .line 382
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 383
    .end local v1    # "callback":Landroid/app/AppOpsManager$OnOpChangedListener;
    .end local v2    # "permissionListener":Landroid/content/pm/PackageManager$OnPermissionsChangedListener;
    .end local v3    # "uidImportanceListener":Landroid/app/ActivityManager$OnUidImportanceListener;
    monitor-exit v0
    :try_end_af
    .catchall {:try_start_3 .. :try_end_af} :catchall_166

    .line 386
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_providers_allowed"

    .line 387
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/LocationManagerService$5;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/LocationManagerService$5;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    .line 386
    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 396
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_background_throttle_interval_ms"

    .line 397
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/LocationManagerService$6;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v2, p0, v5}, Lcom/android/server/LocationManagerService$6;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    .line 396
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 407
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_background_throttle_package_whitelist"

    .line 408
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/LocationManagerService$7;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v2, p0, v5}, Lcom/android/server/LocationManagerService$7;-><init>(Lcom/android/server/LocationManagerService;Landroid/os/Handler;)V

    .line 407
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 420
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 423
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 424
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/LocationManagerService$8;

    invoke-direct {v2, p0}, Lcom/android/server/LocationManagerService$8;-><init>(Lcom/android/server/LocationManagerService;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 450
    const-string v1, "18811"

    const-string/jumbo v2, "ro.boot.project_name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    .line 451
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 452
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 453
    new-instance v1, Lcom/android/server/LocationManagerService$EmergencyCallStateListener;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$EmergencyCallStateListener;-><init>(Lcom/android/server/LocationManagerService;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mEmergencyStateListener:Lcom/android/server/LocationManagerService$EmergencyCallStateListener;

    .line 454
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mEmergencyStateListener:Lcom/android/server/LocationManagerService$EmergencyCallStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 457
    :cond_165
    return-void

    .line 383
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :catchall_166
    move-exception v1

    :try_start_167
    monitor-exit v0
    :try_end_168
    .catchall {:try_start_167 .. :try_end_168} :catchall_166

    throw v1
.end method

.method public unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    .registers 6
    .param p1, "callback"    # Landroid/location/IGnssStatusListener;

    .line 2619
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2621
    :try_start_3
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mGnssStatusProvider:Landroid/location/IGnssStatusProvider;

    invoke-interface {v1, p1}, Landroid/location/IGnssStatusProvider;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    .line 2624
    goto :goto_14

    .line 2625
    :catchall_9
    move-exception v1

    goto :goto_16

    .line 2622
    :catch_b
    move-exception v1

    .line 2623
    .local v1, "e":Ljava/lang/Exception;
    :try_start_c
    const-string v2, "LocationManagerService"

    const-string/jumbo v3, "mGpsStatusProvider.unregisterGnssStatusCallback failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2625
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_14
    monitor-exit v0

    .line 2626
    return-void

    .line 2625
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_9

    throw v1
.end method

.method public updateReceiverBlockRequest(IZ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "isBlock"    # Z

    .line 3967
    if-eqz p2, :cond_27

    .line 3968
    sget-object v0, Lcom/android/server/LocationManagerService;->mBlockLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3969
    sget-object v0, Lcom/android/server/LocationManagerService;->mBlockLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3970
    sget-object v0, Lcom/android/server/LocationManagerService;->mBlockReceiverUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3971
    sget-object v0, Lcom/android/server/LocationManagerService;->mBlockReceiverUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 3973
    :cond_27
    sget-object v0, Lcom/android/server/LocationManagerService;->mBlockLocationUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3974
    sget-object v0, Lcom/android/server/LocationManagerService;->mBlockReceiverUids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3976
    :goto_39
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3977
    const/4 v1, 0x0

    .line 3978
    .local v1, "needApplyAgain":Z
    :try_start_3d
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Receiver;

    .line 3979
    .local v3, "i":Lcom/android/server/LocationManagerService$Receiver;
    iget-object v4, v3, Lcom/android/server/LocationManagerService$Receiver;->mIdentity:Lcom/android/server/LocationManagerService$Identity;

    iget v4, v4, Lcom/android/server/LocationManagerService$Identity;->mUid:I

    if-ne v4, p1, :cond_63

    .line 3980
    invoke-static {p1}, Lcom/android/server/LocationManagerService;->checkUidBlock(I)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 3981
    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V

    .line 3983
    :cond_62
    const/4 v1, 0x1

    .line 3985
    .end local v3    # "i":Lcom/android/server/LocationManagerService$Receiver;
    :cond_63
    goto :goto_47

    .line 3986
    :cond_64
    if-eqz v1, :cond_69

    .line 3987
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->applyAllProviderRequirementsLocked()V

    .line 3989
    .end local v1    # "needApplyAgain":Z
    :cond_69
    monitor-exit v0

    .line 3990
    return-void

    .line 3989
    :catchall_6b
    move-exception v1

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_3d .. :try_end_6d} :catchall_6b

    throw v1
.end method

.method updateUserProfiles(I)V
    .registers 5
    .param p1, "currentUserId"    # I

    .line 576
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    .line 577
    .local v0, "profileIds":[I
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 578
    :try_start_9
    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mCurrentUserProfiles:[I

    .line 579
    monitor-exit v1

    .line 580
    return-void

    .line 579
    :catchall_d
    move-exception v2

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v2
.end method
