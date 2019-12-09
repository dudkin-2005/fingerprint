.class public final Lcom/android/server/OemExService;
.super Lcom/oem/os/IOemExService$Stub;
.source "OemExService.java"


# static fields
.field private static final ACTION_BACK_COVER:Ljava/lang/String; = "com.oem.intent.action.THREE_BACK_COVER"

.field private static final ACTION_BLACK_MODE_INIT:Ljava/lang/String; = "android.settings.OEM_THEME_MODE.init"

.field private static final ACTION_INSTALL_COMMIT:Ljava/lang/String; = "com.oneplus.exservice.INTENT_PACKAGE_INSTALL_COMMIT"

.field private static final ACTION_OXYGEN_DARK_MODE_INIT:Ljava/lang/String; = "com.oneplus.oxygen.changetheme.init"

.field static final DEBUG:Z = true

.field private static final DEBUG_LOGV:Z

.field static final DEBUG_OEM_OBSERVER:Z = true

.field public static DEBUG_ONEPLUS:Z = false

.field private static final DOZE_MODE_RESET:Ljava/lang/String; = "doze_mode_reset"

.field private static final GET_ONLINECONFIG:I = 0xd348

.field private static final KERNEL_WAKEUP_SOURCES:Ljava/lang/String; = "/d/wakeup_sources"

.field private static MCL_AR_PACKAGE_NAME:Ljava/lang/String; = null

.field private static final MSG_SYSTEM_READY:I = 0x1

.field private static final PACKAGE_INSTALLER_STATUS_UNDEFINED:I = -0x3e8

.field private static final SWAPPID:Ljava/lang/String; = "93PN2J7HGW"

.field private static final TAG:Ljava/lang/String; = "OemExService"

.field private static final VENDOR_APP_INSTALLED:Ljava/lang/String; = "vendor_app_installed"

.field private static mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private static mDropbox:Landroid/os/DropBoxManager;

.field private static mMapConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private static mPackageInstallState:I

.field private static mPackageVerifierEnable:I

.field private static m_InstallingPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static m_IsPkgInstallReceiverRegistered:Z


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLocationListener:Landroid/location/LocationListener;

.field private final mLock:Ljava/lang/Object;

.field private final mOnelineConfigHandler:Landroid/os/Handler;

.field private mPackageInstaller:Landroid/content/pm/PackageInstaller;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSceneModeController:Lcom/android/server/OemSceneModeController;

.field private mSession:Landroid/content/pm/PackageInstaller$Session;

.field private volatile mSystemReady:Z

.field private mThreeKeyAudioPolicy:Lcom/oneplus/three_key/IThreeKeyPolicy;

.field private mThreeKeyVibratorPolicy:Lcom/oneplus/three_key/IThreeKeyPolicy;

.field private mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private threekey:Lcom/oneplus/threekey/ThreeKey;

.field private threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 121
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    .line 127
    const-string v0, "com.oneplus.omar"

    sput-object v0, Lcom/android/server/OemExService;->MCL_AR_PACKAGE_NAME:Ljava/lang/String;

    .line 158
    const-string/jumbo v0, "persist.debug.oemex.all"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OemExService;->DEBUG_LOGV:Z

    .line 164
    sput v1, Lcom/android/server/OemExService;->mPackageVerifierEnable:I

    .line 166
    sput v1, Lcom/android/server/OemExService;->mPackageInstallState:I

    .line 170
    sput-boolean v1, Lcom/android/server/OemExService;->m_IsPkgInstallReceiverRegistered:Z

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/OemExService;->m_InstallingPkgMap:Ljava/util/HashMap;

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/OemExService;->mMapConfig:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 458
    invoke-direct {p0}, Lcom/oem/os/IOemExService$Stub;-><init>()V

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/OemExService;->mLock:Ljava/lang/Object;

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemExService;->mSystemReady:Z

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OemExService;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 181
    new-instance v1, Lcom/android/server/OemExService$1;

    invoke-direct {v1, p0}, Lcom/android/server/OemExService$1;-><init>(Lcom/android/server/OemExService;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 228
    new-instance v1, Lcom/android/server/OemExService$2;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/android/server/OemExService$2;-><init>(Lcom/android/server/OemExService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/android/server/OemExService;->mOnelineConfigHandler:Landroid/os/Handler;

    .line 254
    new-instance v1, Lcom/android/server/OemExService$3;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/android/server/OemExService$3;-><init>(Lcom/android/server/OemExService;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v1, p0, Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;

    .line 753
    new-instance v1, Lcom/android/server/OemExService$6;

    invoke-direct {v1, p0}, Lcom/android/server/OemExService$6;-><init>(Lcom/android/server/OemExService;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->mLocationListener:Landroid/location/LocationListener;

    .line 459
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 460
    .local v1, "pm":Landroid/os/PowerManager;
    iput-object p1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    .line 461
    const-string v2, "OemExService"

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 464
    sput-object v0, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 465
    const-string v0, "dropbox"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    sput-object v0, Lcom/android/server/OemExService;->mDropbox:Landroid/os/DropBoxManager;

    .line 467
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OemExService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .line 116
    iget-object v0, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()I
    .registers 1

    .line 116
    sget v0, Lcom/android/server/OemExService;->mPackageInstallState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/OemExService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemExService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->trackRfData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$110()I
    .registers 2

    .line 116
    sget v0, Lcom/android/server/OemExService;->mPackageInstallState:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/android/server/OemExService;->mPackageInstallState:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/OemExService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemExService;
    .param p1, "x1"    # I

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->trackSwIdData(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/OemExService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemExService;
    .param p1, "x1"    # I

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->setParamSwId(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/OemExService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .line 116
    invoke-direct {p0}, Lcom/android/server/OemExService;->getCountryFromLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .registers 1

    .line 116
    sget-object v0, Lcom/android/server/OemExService;->m_InstallingPkgMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .line 116
    sget-object v0, Lcom/android/server/OemExService;->MCL_AR_PACKAGE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Z
    .registers 1

    .line 116
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_LOGV:Z

    return v0
.end method

.method static synthetic access$500()I
    .registers 1

    .line 116
    sget v0, Lcom/android/server/OemExService;->mPackageVerifierEnable:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/OemExService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .line 116
    invoke-direct {p0}, Lcom/android/server/OemExService;->ungisterPkgInstallReceiver()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/OemExService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemExService;
    .param p1, "x1"    # Z

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->onSystemReady(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/OemExService;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemExService;

    .line 116
    iget-object v0, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/OemExService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/OemExService;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/OemExService;->listAPKs(Ljava/lang/String;)V

    return-void
.end method

.method private getCommitCallback(ILjava/lang/String;)Landroid/content/IntentSender;
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 397
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.exservice.INTENT_PACKAGE_INSTALL_COMMIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string/jumbo v1, "pkgName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v1, p1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 404
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    return-object v2
.end method

.method private getCountryFromLocation()Ljava/lang/String;
    .registers 9

    .line 801
    invoke-direct {p0}, Lcom/android/server/OemExService;->getLocation()Landroid/location/Location;

    move-result-object v0

    .line 802
    .local v0, "location":Landroid/location/Location;
    if-nez v0, :cond_8

    .line 803
    const/4 v1, 0x0

    return-object v1

    .line 806
    :cond_8
    const/4 v1, 0x0

    .line 807
    .local v1, "country":Ljava/lang/String;
    new-instance v2, Landroid/location/Geocoder;

    iget-object v3, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 809
    .local v2, "geoCoder":Landroid/location/Geocoder;
    nop

    .line 810
    :try_start_11
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    const/4 v7, 0x1

    .line 809
    invoke-virtual/range {v2 .. v7}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v3

    .line 811
    .local v3, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v3, :cond_32

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_32

    .line 812
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Address;

    invoke-virtual {v4}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v4
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_31} :catch_33

    move-object v1, v4

    .line 816
    .end local v3    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    :cond_32
    goto :goto_3b

    .line 814
    :catch_33
    move-exception v3

    .line 815
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "OemExService"

    const-string v5, "Exception occurs when getting country from location"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3b
    return-object v1
.end method

.method private getLastKnownLocation(Landroid/location/LocationManager;)Landroid/location/Location;
    .registers 11
    .param p1, "lm"    # Landroid/location/LocationManager;

    .line 785
    invoke-virtual {p1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 786
    .local v0, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 787
    .local v1, "bestLocation":Landroid/location/Location;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 788
    .local v3, "provider":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    .line 789
    .local v4, "lastKnownLocation":Landroid/location/Location;
    if-eqz v4, :cond_2a

    .line 790
    if-eqz v1, :cond_29

    .line 791
    invoke-virtual {v1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v5

    .line 792
    invoke-virtual {v4}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_2a

    .line 793
    :cond_29
    move-object v1, v4

    .line 796
    .end local v3    # "provider":Ljava/lang/String;
    .end local v4    # "lastKnownLocation":Landroid/location/Location;
    :cond_2a
    goto :goto_9

    .line 797
    :cond_2b
    return-object v1
.end method

.method private getLocation()Landroid/location/Location;
    .registers 11

    .line 761
    iget-object v0, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 762
    .local v0, "lm":Landroid/location/LocationManager;
    invoke-direct {p0, v0}, Lcom/android/server/OemExService;->getLastKnownLocation(Landroid/location/LocationManager;)Landroid/location/Location;

    move-result-object v7

    .line 763
    .local v7, "location":Landroid/location/Location;
    if-nez v7, :cond_5a

    .line 765
    :try_start_11
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    move-object v8, v1

    .line 766
    .local v8, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 767
    .local v2, "provider":Ljava/lang/String;
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/OemExService;->mLocationListener:Landroid/location/LocationListener;

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 768
    .end local v2    # "provider":Ljava/lang/String;
    goto :goto_1a

    .line 770
    :cond_31
    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 772
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 773
    .restart local v2    # "provider":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/OemExService;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 774
    .end local v2    # "provider":Ljava/lang/String;
    goto :goto_3a

    .line 776
    :cond_4c
    invoke-direct {p0, v0}, Lcom/android/server/OemExService;->getLastKnownLocation(Landroid/location/LocationManager;)Landroid/location/Location;

    move-result-object v1
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_50} :catch_52

    move-object v7, v1

    .line 779
    .end local v8    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_5a

    .line 777
    :catch_52
    move-exception v1

    .line 778
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OemExService"

    const-string v3, "Exception occurs when getLocation from location providers"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5a
    :goto_5a
    return-object v7
.end method

.method private getParamSwId()I
    .registers 5

    .line 603
    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->getService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v0

    .line 604
    .local v0, "service":Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;
    const/16 v1, 0x18

    invoke-interface {v0, v1}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->getParamIntSYNC(I)I

    move-result v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return v1

    .line 605
    .end local v0    # "service":Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;
    :catch_b
    move-exception v0

    .line 606
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OemExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getting OnePlus param swid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v1, -0x1

    return v1
.end method

.method private installAPKs(Ljava/io/File;)V
    .registers 20
    .param p1, "apkFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 326
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "apkFilePath":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "vendor_app_installed"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, "strAppInstalled":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/OemExService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 329
    .local v5, "info":Landroid/content/pm/PackageInfo;
    if-nez v5, :cond_33

    .line 330
    const-string v0, "OemExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[installAPKs]: PackageInfo is not valid on "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void

    .line 333
    :cond_33
    if-eqz v3, :cond_3d

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_47

    :cond_3d
    iget-object v0, v1, Lcom/android/server/OemExService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 334
    :cond_47
    invoke-direct {v1, v5}, Lcom/android/server/OemExService;->shouldUpdateAPK(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_4e

    goto :goto_52

    .line 371
    :cond_4e
    move-object/from16 v11, p1

    goto/16 :goto_105

    .line 335
    :cond_52
    :goto_52
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 336
    .local v6, "pkgName":Ljava/lang/String;
    sget-object v0, Lcom/android/server/OemExService;->m_InstallingPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 337
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_7b

    const-string v0, "OemExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[installAPKs]: \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' is on installing progress"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_7b
    return-void

    .line 340
    :cond_7c
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_96

    const-string v0, "OemExService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[installAPKs]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_96
    const/4 v7, 0x0

    .line 342
    .local v7, "out":Ljava/io/OutputStream;
    const/4 v0, 0x0

    move-object v8, v0

    .line 345
    .local v8, "in":Ljava/io/InputStream;
    :try_start_99
    invoke-direct/range {p0 .. p0}, Lcom/android/server/OemExService;->registerPkgInstallReceiver()V

    .line 346
    sget v0, Lcom/android/server/OemExService;->mPackageInstallState:I

    const/4 v9, 0x1

    add-int/2addr v0, v9

    sput v0, Lcom/android/server/OemExService;->mPackageInstallState:I

    .line 348
    sget-object v0, Lcom/android/server/OemExService;->m_InstallingPkgMap:Ljava/util/HashMap;

    sget v10, Lcom/android/server/OemExService;->mPackageInstallState:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v6, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v0, v9}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 351
    .local v0, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageInstaller$SessionParams;->setAppPackageName(Ljava/lang/String;)V

    .line 353
    iget-object v9, v1, Lcom/android/server/OemExService;->mPackageInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v9, v0}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v9

    .line 354
    .local v9, "sessionId":I
    iget-object v10, v1, Lcom/android/server/OemExService;->mPackageInstaller:Landroid/content/pm/PackageInstaller;

    invoke-virtual {v10, v9}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/OemExService;->mSession:Landroid/content/pm/PackageInstaller$Session;

    .line 356
    new-instance v10, Ljava/io/FileInputStream;
    :try_end_c5
    .catchall {:try_start_99 .. :try_end_c5} :catchall_108

    move-object/from16 v11, p1

    :try_start_c7
    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v8, v10

    .line 357
    iget-object v12, v1, Lcom/android/server/OemExService;->mSession:Landroid/content/pm/PackageInstaller$Session;

    const-string v13, "SilentPackageInstaller"

    const-wide/16 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-virtual/range {v12 .. v17}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v10

    move-object v7, v10

    .line 358
    const/high16 v10, 0x10000

    new-array v10, v10, [B

    .line 360
    .local v10, "buffer":[B
    :goto_de
    invoke-virtual {v8, v10}, Ljava/io/InputStream;->read([B)I

    move-result v12

    move v13, v12

    .line 360
    .local v13, "c":I
    const/4 v14, -0x1

    if-eq v12, v14, :cond_ea

    .line 361
    invoke-virtual {v7, v10, v4, v13}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_de

    .line 363
    :cond_ea
    iget-object v4, v1, Lcom/android/server/OemExService;->mSession:Landroid/content/pm/PackageInstaller$Session;

    invoke-virtual {v4, v7}, Landroid/content/pm/PackageInstaller$Session;->fsync(Ljava/io/OutputStream;)V
    :try_end_ef
    .catchall {:try_start_c7 .. :try_end_ef} :catchall_106

    .line 365
    .end local v0    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v10    # "buffer":[B
    .end local v13    # "c":I
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 366
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 367
    nop

    .line 366
    nop

    .line 368
    iget-object v0, v1, Lcom/android/server/OemExService;->mSession:Landroid/content/pm/PackageInstaller$Session;

    invoke-direct {v1, v9, v6}, Lcom/android/server/OemExService;->getCommitCallback(ILjava/lang/String;)Landroid/content/IntentSender;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 369
    iget-object v0, v1, Lcom/android/server/OemExService;->mSession:Landroid/content/pm/PackageInstaller$Session;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$Session;->close()V

    .line 371
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "out":Ljava/io/OutputStream;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local v9    # "sessionId":I
    :goto_105
    return-void

    .line 365
    .restart local v6    # "pkgName":Ljava/lang/String;
    .restart local v7    # "out":Ljava/io/OutputStream;
    .restart local v8    # "in":Ljava/io/InputStream;
    :catchall_106
    move-exception v0

    goto :goto_10b

    :catchall_108
    move-exception v0

    move-object/from16 v11, p1

    :goto_10b
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 366
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private listAPKs(Ljava/lang/String;)V
    .registers 10
    .param p1, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 278
    invoke-direct {p0}, Lcom/android/server/OemExService;->waitStorageMounted()V

    .line 279
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, "path":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_86

    sget v1, Lcom/android/server/OemExService;->mPackageInstallState:I

    if-nez v1, :cond_86

    .line 281
    sget-boolean v1, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2c

    const-string v1, "OemExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[listAPKs]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_2c
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemExService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 283
    iget-object v1, p0, Lcom/android/server/OemExService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemExService;->mPackageInstaller:Landroid/content/pm/PackageInstaller;

    .line 286
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 288
    .local v1, "apkFiles":[Ljava/io/File;
    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "package_verifier_enable"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/server/OemExService;->mPackageVerifierEnable:I

    .line 291
    array-length v2, v1

    const/4 v3, 0x0

    :goto_52
    if-ge v3, v2, :cond_86

    aget-object v4, v1, v3

    .line 292
    .local v4, "apkFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_83

    .line 293
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_83

    .line 294
    sget-boolean v5, Lcom/android/server/OemExService;->DEBUG_LOGV:Z

    if-eqz v5, :cond_80

    const-string v5, "OemExService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[listAPKs]: apkFile = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_80
    invoke-direct {p0, v4}, Lcom/android/server/OemExService;->installAPKs(Ljava/io/File;)V

    .line 291
    .end local v4    # "apkFile":Ljava/io/File;
    :cond_83
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 300
    .end local v1    # "apkFiles":[Ljava/io/File;
    :cond_86
    return-void
.end method

.method private onSystemReady(Z)V
    .registers 6
    .param p1, "firstBoot"    # Z

    .line 518
    const-string v0, "OemExService"

    const-string/jumbo v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OemExService;->mSystemReady:Z

    .line 522
    invoke-direct {p0}, Lcom/android/server/OemExService;->sendBroadcastForChangeTheme()V

    .line 524
    new-instance v1, Lcom/oneplus/threekey/ThreeKeyHw;

    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oneplus/threekey/ThreeKeyHw;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    .line 530
    iget-object v1, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-virtual {v1}, Lcom/oneplus/threekey/ThreeKeyHw;->init()V

    .line 535
    new-instance v1, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;

    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oneplus/threekey/ThreeKeyAudioPolicy2;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->mThreeKeyAudioPolicy:Lcom/oneplus/three_key/IThreeKeyPolicy;

    .line 539
    new-instance v1, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;

    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->mThreeKeyVibratorPolicy:Lcom/oneplus/three_key/IThreeKeyPolicy;

    .line 542
    :try_start_2e
    new-instance v1, Lcom/oneplus/threekey/ThreeKey;

    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oneplus/threekey/ThreeKey;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    .line 543
    iget-object v1, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v2, p0, Lcom/android/server/OemExService;->mThreeKeyAudioPolicy:Lcom/oneplus/three_key/IThreeKeyPolicy;

    invoke-virtual {v1, v2}, Lcom/oneplus/threekey/ThreeKey;->addThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V

    .line 544
    iget-object v1, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v2, p0, Lcom/android/server/OemExService;->mThreeKeyVibratorPolicy:Lcom/oneplus/three_key/IThreeKeyPolicy;

    invoke-virtual {v1, v2}, Lcom/oneplus/threekey/ThreeKey;->addThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V

    .line 545
    iget-object v1, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v2, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-virtual {v2}, Lcom/oneplus/threekey/ThreeKeyHw;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/oneplus/threekey/ThreeKey;->init(I)V
    :try_end_50
    .catch Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException; {:try_start_2e .. :try_end_50} :catch_51

    .line 549
    goto :goto_5c

    .line 546
    :catch_51
    move-exception v1

    .line 547
    .local v1, "e":Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;
    const-string v2, "OemExService"

    const-string v3, "device is not support threekey"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    .line 552
    .end local v1    # "e":Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;
    :goto_5c
    new-array v1, v0, [I

    const/16 v2, 0x19

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 553
    sget-boolean v1, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_74

    const-string v1, "OemExService"

    const-string v2, "[scene] satrtMonitorSceneChanging"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_74
    iget-object v1, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    if-nez v1, :cond_81

    .line 555
    new-instance v1, Lcom/android/server/OemSceneModeController;

    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/OemSceneModeController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    .line 557
    :cond_81
    iget-object v1, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v1}, Lcom/android/server/OemSceneModeController;->startMonitor()V

    goto :goto_92

    .line 559
    :cond_87
    sget-boolean v1, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_92

    const-string v1, "OemExService"

    const-string v2, "[scene] Scene mode not supported"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_92
    :goto_92
    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v1

    sget-object v2, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->OPR_RETAIL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    if-ne v1, v2, :cond_a1

    if-eqz p1, :cond_a1

    .line 567
    const-string v1, "/op2/apps/opr"

    invoke-virtual {p0, v1}, Lcom/android/server/OemExService;->startApkInstall(Ljava/lang/String;)V

    .line 574
    :cond_a1
    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v1

    sget-object v2, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->MCL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    if-ne v1, v2, :cond_b0

    if-eqz p1, :cond_b0

    .line 576
    const-string v1, "/op2/apps/mcl"

    invoke-virtual {p0, v1}, Lcom/android/server/OemExService;->startApkInstall(Ljava/lang/String;)V

    .line 590
    :cond_b0
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 591
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-array v2, v0, [I

    aput v3, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_c6

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isUpgrade()Z

    move-result v2

    if-nez v2, :cond_cf

    :cond_c6
    const-string/jumbo v2, "persist.sys.debug.app.h2"

    .line 592
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 593
    :cond_cf
    const-string v2, "/vendor/etc/apps/h2"

    invoke-virtual {p0, v2}, Lcom/android/server/OemExService;->startApkInstall(Ljava/lang/String;)V

    .line 596
    :cond_d4
    new-array v0, v0, [I

    const/16 v2, 0x6d

    aput v2, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 597
    invoke-direct {p0}, Lcom/android/server/OemExService;->setParamSwId()V

    .line 599
    :cond_e3
    return-void
.end method

.method private registerPkgInstallReceiver()V
    .registers 6

    .line 409
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_LOGV:Z

    if-eqz v0, :cond_c

    const-string v0, "OemExService"

    const-string/jumbo v1, "registerPkgInstallReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_c
    sget-boolean v0, Lcom/android/server/OemExService;->m_IsPkgInstallReceiverRegistered:Z

    if-nez v0, :cond_41

    .line 412
    const-string v0, "com.oneplus.exservice.INTENT_PACKAGE_INSTALL_COMMIT"

    .line 413
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 414
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    iget-object v2, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/OemExService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 416
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/OemExService;->m_IsPkgInstallReceiverRegistered:Z

    .line 417
    sget-boolean v2, Lcom/android/server/OemExService;->DEBUG_LOGV:Z

    if-eqz v2, :cond_41

    const-string v2, "OemExService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "m_IsPkgInstallReceiverRegistered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/OemExService;->m_IsPkgInstallReceiverRegistered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_41
    return-void
.end method

.method private sendBroadcastForChangeTheme()V
    .registers 3

    .line 822
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.OEM_THEME_MODE.init"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 823
    .local v0, "blackModeIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 824
    const-string v1, "com.oneplus.skin"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 826
    return-void
.end method

.method private setParamSwId()V
    .registers 4

    .line 622
    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, "platform":Ljava/lang/String;
    if-eqz v0, :cond_32

    const-string/jumbo v1, "sdm845"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_32

    .line 628
    :cond_13
    invoke-direct {p0}, Lcom/android/server/OemExService;->getParamSwId()I

    move-result v1

    if-lez v1, :cond_25

    .line 629
    sget-boolean v1, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_24

    const-string v1, "OemExService"

    const-string v2, "already set sw id."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_24
    return-void

    .line 633
    :cond_25
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/OemExService$5;

    invoke-direct {v2, p0}, Lcom/android/server/OemExService$5;-><init>(Lcom/android/server/OemExService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 711
    return-void

    .line 624
    :cond_32
    :goto_32
    return-void
.end method

.method private setParamSwId(I)V
    .registers 6
    .param p1, "swid"    # I

    .line 613
    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->getService()Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;

    move-result-object v0

    .line 614
    .local v0, "service":Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;
    const/16 v1, 0x18

    invoke-interface {v0, v1, p1}, Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;->setParamInt(II)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 617
    .end local v0    # "service":Lvendor/oneplus/hardware/param/V1_0/IOneplusParam;
    goto :goto_21

    .line 615
    :catch_a
    move-exception v0

    .line 616
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OemExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception setting OnePlus param swid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_21
    return-void
.end method

.method private shouldUpdateAPK(Landroid/content/pm/PackageInfo;)Z
    .registers 9
    .param p1, "info"    # Landroid/content/pm/PackageInfo;

    .line 376
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 377
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/OemExService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 378
    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 379
    .local v2, "apkVersion":I
    iget-object v3, p0, Lcom/android/server/OemExService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 380
    .local v3, "installedPkgVersion":I
    if-le v2, v3, :cond_3f

    .line 381
    const-string v4, "OemExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "We should update ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v0, 0x1

    return v0

    .line 384
    :cond_3f
    sget-boolean v4, Lcom/android/server/OemExService;->DEBUG_LOGV:Z

    if-eqz v4, :cond_6e

    const-string v4, "OemExService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]: installed=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\',  preloaded=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6e} :catch_6f

    .line 390
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "apkVersion":I
    .end local v3    # "installedPkgVersion":I
    :cond_6e
    goto :goto_78

    .line 388
    :catch_6f
    move-exception v1

    .line 389
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "OemExService"

    const-string/jumbo v3, "shouldUpdateAPK error:"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_78
    return v0
.end method

.method private trackRfData(Ljava/lang/String;)V
    .registers 8
    .param p1, "rfVersion"    # Ljava/lang/String;

    .line 714
    if-eqz p1, :cond_49

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_49

    .line 718
    :cond_9
    iget-object v0, p0, Lcom/android/server/OemExService;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    if-nez v0, :cond_18

    .line 719
    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    const-string v2, "93PN2J7HGW"

    invoke-direct {v0, v1, v2}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 722
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 723
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 725
    .local v1, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_22
    const-string/jumbo v2, "rf_version"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_28} :catch_29

    .line 728
    goto :goto_41

    .line 726
    :catch_29
    move-exception v2

    .line 727
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OemExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "trackRfData Exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_41
    iget-object v2, p0, Lcom/android/server/OemExService;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string v3, "RFVERSION"

    invoke-virtual {v2, v3, v1}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 731
    return-void

    .line 715
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_49
    :goto_49
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_55

    const-string v0, "OemExService"

    const-string/jumbo v1, "wrong rfVersion, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_55
    return-void
.end method

.method private trackSwIdData(I)V
    .registers 8
    .param p1, "swid"    # I

    .line 734
    if-gez p1, :cond_f

    .line 735
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_e

    const-string v0, "OemExService"

    const-string/jumbo v1, "wrong swid, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :cond_e
    return-void

    .line 738
    :cond_f
    iget-object v0, p0, Lcom/android/server/OemExService;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    if-nez v0, :cond_1e

    .line 739
    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    const-string v2, "93PN2J7HGW"

    invoke-direct {v0, v1, v2}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 742
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 743
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 745
    .local v1, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_28
    const-string/jumbo v2, "sw_id"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_32} :catch_33

    .line 748
    goto :goto_4b

    .line 746
    :catch_33
    move-exception v2

    .line 747
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "OemExService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "trackSwIdData Exception e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4b
    iget-object v2, p0, Lcom/android/server/OemExService;->mTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string v3, "SWID"

    invoke-virtual {v2, v3, v1}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 751
    return-void
.end method

.method private ungisterPkgInstallReceiver()V
    .registers 4

    .line 424
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_LOGV:Z

    if-eqz v0, :cond_c

    const-string v0, "OemExService"

    const-string/jumbo v1, "ungisterPkgInstallReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_c
    sget-boolean v0, Lcom/android/server/OemExService;->m_IsPkgInstallReceiverRegistered:Z

    if-eqz v0, :cond_42

    .line 427
    :try_start_10
    iget-object v0, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/OemExService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_18

    .line 429
    goto :goto_19

    .line 428
    :catch_18
    move-exception v0

    .line 430
    :goto_19
    iget-object v0, p0, Lcom/android/server/OemExService;->mSession:Landroid/content/pm/PackageInstaller$Session;

    if-eqz v0, :cond_22

    .line 431
    iget-object v0, p0, Lcom/android/server/OemExService;->mSession:Landroid/content/pm/PackageInstaller$Session;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$Session;->abandon()V

    .line 433
    :cond_22
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/OemExService;->m_IsPkgInstallReceiverRegistered:Z

    .line 434
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_LOGV:Z

    if-eqz v0, :cond_42

    const-string v0, "OemExService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "m_IsPkgInstallReceiverRegistered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/OemExService;->m_IsPkgInstallReceiverRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_42
    return-void
.end method

.method private waitStorageMounted()V
    .registers 6

    .line 304
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_LOGV:Z

    if-eqz v0, :cond_b

    const-string v0, "OemExService"

    const-string v1, "[waitStorageMounted]+"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_b
    const/4 v0, 0x0

    move v1, v0

    .line 307
    .local v1, "waitTime":I
    :cond_d
    :try_start_d
    const-string/jumbo v2, "vold.internalSD.mount"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_81

    .line 308
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 309
    add-int/lit8 v1, v1, 0x1

    .line 310
    sget-boolean v2, Lcom/android/server/OemExService;->DEBUG_LOGV:Z

    if-eqz v2, :cond_3e

    const-string v2, "OemExService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "installAPKs: wait internalSD ready for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " s."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_3e
    const/16 v2, 0x14

    if-le v1, v2, :cond_d

    .line 312
    const-string v0, "OemExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "installAPKs: internal sd is not ready for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " s. Skip install."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_5e} :catch_c8
    .catchall {:try_start_d .. :try_end_5e} :catchall_a4

    .line 318
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_80

    if-lez v1, :cond_80

    const-string v0, "OemExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "installAPKs: wait internalSD ready for totally "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " s."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_80
    return-void

    .line 318
    :cond_81
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_d7

    if-lez v1, :cond_d7

    const-string v0, "OemExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_8e
    const-string/jumbo v3, "installAPKs: wait internalSD ready for totally "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " s."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7

    :catchall_a4
    move-exception v0

    sget-boolean v2, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_c7

    if-lez v1, :cond_c7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "installAPKs: wait internalSD ready for totally "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " s."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OemExService"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c7
    throw v0

    .line 316
    :catch_c8
    move-exception v0

    .line 318
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_d7

    if-lez v1, :cond_d7

    const-string v0, "OemExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_8e

    .line 320
    :cond_d7
    :goto_d7
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_LOGV:Z

    if-eqz v0, :cond_e2

    const-string v0, "OemExService"

    const-string v2, "[waitStorageMounted]-"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_e2
    return-void
.end method


# virtual methods
.method public addThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V
    .registers 4
    .param p1, "policy"    # Lcom/oneplus/three_key/IThreeKeyPolicy;

    .line 941
    const-string v0, "OemExService"

    const-string v1, "[setThreeKeyPolicy]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    invoke-virtual {v0, p1}, Lcom/oneplus/threekey/ThreeKey;->addThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V

    .line 943
    return-void
.end method

.method public disableDefaultThreeKey()V
    .registers 3

    .line 931
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v1, p0, Lcom/android/server/OemExService;->mThreeKeyAudioPolicy:Lcom/oneplus/three_key/IThreeKeyPolicy;

    invoke-virtual {v0, v1}, Lcom/oneplus/threekey/ThreeKey;->removeThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V

    .line 932
    const-string v0, "OemExService"

    const-string v1, "[disableDefaultThreeKey]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    return-void
.end method

.method public dumpJankBugreport(Ljava/lang/String;)V
    .registers 21
    .param p1, "tag"    # Ljava/lang/String;

    .line 1056
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1057
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 1058
    .local v1, "bufferWasEmpty":Z
    :goto_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1061
    .local v2, "elapsedStartTime":J
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 1062
    .local v4, "date":Ljava/util/Date;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1065
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v6, "ro.build.display.id"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1067
    .local v6, "buildId":Ljava/lang/String;
    const-string/jumbo v7, "ro.build.fingerprint"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1070
    .local v7, "fingerprint":Ljava/lang/String;
    const-string/jumbo v8, "ro.build.version.sdk"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1072
    .local v8, "sdkVersion":Ljava/lang/String;
    const-string/jumbo v9, "ro.product.model"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1074
    .local v9, "modelName":Ljava/lang/String;
    const-string/jumbo v10, "persist.sys.timezone"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1077
    .local v10, "timeZone":Ljava/lang/String;
    const-string v11, "========================================================\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "== dumpstate: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0xa

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1079
    const-string v11, "========================================================\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Build: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Build fingerprint: \'"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x27

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    const-string v11, "DeviceID: null\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[ro.build.version.sdk]: ["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x5d

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1084
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ro.product.model]: ["

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[persist.sys.timezone]: ["

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1087
    sget-object v11, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    if-eqz v11, :cond_110

    .line 1089
    const-string v11, "-------------------------------------------------------------------------------\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    sget-object v11, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11, v0}, Lcom/android/server/am/ActivityManagerService;->getPidMap(Ljava/lang/StringBuilder;)V

    .line 1093
    const-string v11, "-------------------------------------------------------------------------------\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1094
    const-string v11, "DUMP OF JankInfo:\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    sget-object v11, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11, v0}, Lcom/android/server/am/ActivityManagerService;->dumpJankInfo(Ljava/lang/StringBuilder;)V

    .line 1098
    :cond_110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1099
    .local v11, "elapsedEndTime":J
    sub-long v13, v11, v2

    long-to-double v13, v13

    const-wide v15, 0x408f400000000000L    # 1000.0

    div-double/2addr v13, v15

    .line 1100
    .local v13, "elapsedSeconds":D
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v1

    const-string v1, "--------- "

    .line 1100
    .end local v1    # "bufferWasEmpty":Z
    .local v17, "bufferWasEmpty":Z
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s was the duration of dumpJankBugreport"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    sget-object v1, Lcom/android/server/OemExService;->mDropbox:Landroid/os/DropBoxManager;

    if-eqz v1, :cond_14b

    .line 1104
    sget-object v1, Lcom/android/server/OemExService;->mDropbox:Landroid/os/DropBoxManager;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v15}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14f

    .line 1106
    :cond_14b
    move-object/from16 v18, v0

    move-object/from16 v0, p1

    .line 1106
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .local v18, "sb":Ljava/lang/StringBuilder;
    :goto_14f
    return-void
.end method

.method public dumpLightBugreport(Ljava/lang/String;)V
    .registers 22
    .param p1, "tag"    # Ljava/lang/String;

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v0

    .line 972
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    move v2, v0

    .line 973
    .local v2, "bufferWasEmpty":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 976
    .local v3, "elapsedStartTime":J
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    move-object v5, v0

    .line 977
    .local v5, "date":Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 980
    .local v6, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v0, "ro.build.display.id"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 982
    .local v7, "buildId":Ljava/lang/String;
    const-string/jumbo v0, "ro.build.fingerprint"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 985
    .local v8, "fingerprint":Ljava/lang/String;
    const-string/jumbo v0, "ro.build.version.sdk"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 987
    .local v9, "sdkVersion":Ljava/lang/String;
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 989
    .local v10, "modelName":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 992
    .local v11, "timeZone":Ljava/lang/String;
    const-string v0, "========================================================\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "== dumpstate: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0xa

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    const-string v0, "========================================================\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Build: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Build fingerprint: \'"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    const-string v0, "DeviceID: null\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[ro.build.version.sdk]: ["

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x5d

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ro.product.model]: ["

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[persist.sys.timezone]: ["

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    sget-object v0, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_134

    .line 1004
    const-string v0, "-------------------------------------------------------------------------------\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    sget-object v0, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getPidMap(Ljava/lang/StringBuilder;)V

    .line 1008
    const-string v0, "-------------------------------------------------------------------------------\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    const-string v0, "DUMP OF SERVICE batterystats:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    sget-object v0, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    const/4 v13, 0x0

    invoke-virtual {v0, v1, v13}, Lcom/android/server/am/ActivityManagerService;->dumpBatteryStats(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 1013
    const-string v0, "========================================================\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    const-string v0, "== Checkins\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    const-string v0, "========================================================\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    const-string v0, "------ CHECKIN BATTERYSTATS (dumpsys -t 30 batterystats -c) ------\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    const-string v0, "-c"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1018
    .local v0, "args":[Ljava/lang/String;
    sget-object v13, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v13, v1, v0}, Lcom/android/server/am/ActivityManagerService;->dumpBatteryStats(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 1022
    .end local v0    # "args":[Ljava/lang/String;
    :cond_134
    const-string v0, "-------------------------------------------------------------------------------\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1023
    const-string v0, "DUMP OF SERVICE sensorservice:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    const-string v0, "------ KERNEL WAKE SOURCES (/d/wakeup_sources) ------\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    const/4 v0, 0x0

    .line 1029
    .local v0, "line":Ljava/lang/String;
    :try_start_144
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    new-instance v15, Ljava/io/File;

    const-string v12, "/d/wakeup_sources"

    invoke-direct {v15, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v15}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1030
    .local v13, "reader":Ljava/io/BufferedReader;
    :goto_155
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    if-eqz v12, :cond_165

    .line 1031
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    const/16 v12, 0xa

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_155

    .line 1034
    :cond_165
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_168
    .catch Ljava/io/IOException; {:try_start_144 .. :try_end_168} :catch_169

    .line 1037
    .end local v0    # "line":Ljava/lang/String;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    goto :goto_180

    .line 1035
    :catch_169
    move-exception v0

    .line 1036
    .local v0, "e":Ljava/io/IOException;
    const-string v12, "OemExService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "IOException : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    .end local v0    # "e":Ljava/io/IOException;
    :goto_180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1040
    .local v12, "elapsedEndTime":J
    sub-long v14, v12, v3

    long-to-double v14, v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    div-double v14, v14, v16

    .line 1041
    .local v14, "elapsedSeconds":D
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v2

    const-string v2, "--------- "

    .line 1041
    .end local v2    # "bufferWasEmpty":Z
    .local v18, "bufferWasEmpty":Z
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s was the duration of dumpLightBugreport"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    sget-object v0, Lcom/android/server/OemExService;->mDropbox:Landroid/os/DropBoxManager;

    if-eqz v0, :cond_1bc

    .line 1044
    sget-object v0, Lcom/android/server/OemExService;->mDropbox:Landroid/os/DropBoxManager;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v1

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c0

    .line 1046
    :cond_1bc
    move-object/from16 v19, v1

    move-object/from16 v1, p1

    .line 1046
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    .local v19, "sb":Ljava/lang/StringBuilder;
    :goto_1c0
    return-void
.end method

.method public enalbeDefaultThreeKey()V
    .registers 3

    .line 936
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    iget-object v1, p0, Lcom/android/server/OemExService;->mThreeKeyAudioPolicy:Lcom/oneplus/three_key/IThreeKeyPolicy;

    invoke-virtual {v0, v1}, Lcom/oneplus/threekey/ThreeKey;->addThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V

    .line 937
    const-string v0, "OemExService"

    const-string v1, "[enableDefaultThreeKey]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    return-void
.end method

.method public getThreeKeyStatus()I
    .registers 4

    .line 958
    :try_start_0
    iget-object v0, p0, Lcom/android/server/OemExService;->threekeyhw:Lcom/oneplus/threekey/ThreeKeyHw;

    invoke-virtual {v0}, Lcom/oneplus/threekey/ThreeKeyHw;->getState()I

    move-result v0
    :try_end_6
    .catch Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 959
    :catch_7
    move-exception v0

    .line 960
    .local v0, "e":Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;
    const-string v1, "OemExService"

    const-string/jumbo v2, "system unsupport for threekey"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    .end local v0    # "e":Lcom/oneplus/threekey/ThreeKeyHw$ThreeKeyUnsupportException;
    const/4 v0, 0x0

    return v0
.end method

.method public monitorSceneChanging(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 471
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x19

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 472
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_28

    const-string v0, "OemExService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] monitorSceneChanging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_28
    if-eqz p1, :cond_3d

    .line 475
    iget-object v0, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    if-nez v0, :cond_37

    .line 476
    new-instance v0, Lcom/android/server/OemSceneModeController;

    iget-object v1, p0, Lcom/android/server/OemExService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/OemSceneModeController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    .line 478
    :cond_37
    iget-object v0, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController;->startMonitorPassive()V

    goto :goto_52

    .line 480
    :cond_3d
    iget-object v0, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    if-eqz v0, :cond_52

    .line 481
    iget-object v0, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController;->stopMonitorPassive()V

    goto :goto_52

    .line 485
    :cond_47
    sget-boolean v0, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_52

    const-string v0, "OemExService"

    const-string v1, "[scene] Scene mode not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_52
    :goto_52
    return-void
.end method

.method public pauseExInputEvent()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 888
    return-void
.end method

.method public preEvaluateModeStatus(II)Z
    .registers 7
    .param p1, "modeType"    # I
    .param p2, "switcherType"    # I

    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, "result":Z
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x19

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 493
    sget-boolean v1, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_31

    const-string v1, "OemExService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene] preEvaluateModeStatus: modeType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " swithcer switcherType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_31
    iget-object v1, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    if-eqz v1, :cond_47

    .line 496
    iget-object v1, p0, Lcom/android/server/OemExService;->mSceneModeController:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/OemSceneModeController;->preEvaluateModeStatus(II)Z

    move-result v0

    goto :goto_47

    .line 499
    :cond_3c
    sget-boolean v1, Lcom/android/server/OemExService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_47

    const-string v1, "OemExService"

    const-string v2, "[scene] Scene mode not supported"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_47
    :goto_47
    return v0
.end method

.method public registerInputEvent(Lcom/oem/os/IOemExInputCallBack;I)Z
    .registers 4
    .param p1, "callBackAdd"    # Lcom/oem/os/IOemExInputCallBack;
    .param p2, "keycode"    # I

    .line 881
    const/4 v0, 0x1

    return v0
.end method

.method public removeThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V
    .registers 4
    .param p1, "policy"    # Lcom/oneplus/three_key/IThreeKeyPolicy;

    .line 946
    const-string v0, "OemExService"

    const-string v1, "[removeThreeKeyPolicy]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    invoke-virtual {v0, p1}, Lcom/oneplus/threekey/ThreeKey;->removeThreeKeyPolicy(Lcom/oneplus/three_key/IThreeKeyPolicy;)V

    .line 948
    return-void
.end method

.method public resetThreeKey()V
    .registers 3

    .line 951
    const-string v0, "OemExService"

    const-string v1, "[resetThreeKey]"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v0, p0, Lcom/android/server/OemExService;->threekey:Lcom/oneplus/threekey/ThreeKey;

    invoke-virtual {v0}, Lcom/oneplus/threekey/ThreeKey;->reset()V

    .line 953
    return-void
.end method

.method public resumeExInputEvent()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 891
    return-void
.end method

.method public setActivityManager(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .line 1049
    sput-object p1, Lcom/android/server/OemExService;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 1050
    return-void
.end method

.method public setGammaData(I)V
    .registers 2
    .param p1, "val"    # I

    .line 920
    return-void
.end method

.method public setHomeUpLock()Z
    .registers 3

    .line 914
    const-string v0, "OemExService"

    const-string v1, "[setHomeUpLock]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/4 v0, 0x1

    return v0
.end method

.method public setInteractive(ZJ)Z
    .registers 5
    .param p1, "interactive"    # Z
    .param p2, "delayMillis"    # J

    .line 902
    const/4 v0, 0x1

    return v0
.end method

.method public setKeyMode(I)Z
    .registers 3
    .param p1, "keyMode"    # I

    .line 910
    const/4 v0, 0x1

    return v0
.end method

.method public setLaserSensorCrossTalk(I)V
    .registers 2
    .param p1, "val"    # I

    .line 928
    return-void
.end method

.method public setLaserSensorOffset(I)V
    .registers 2
    .param p1, "val"    # I

    .line 924
    return-void
.end method

.method public setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 906
    const/4 v0, 0x1

    return v0
.end method

.method public startApkInstall(Ljava/lang/String;)V
    .registers 4
    .param p1, "apkPath"    # Ljava/lang/String;

    .line 443
    sget v0, Lcom/android/server/OemExService;->mPackageInstallState:I

    if-nez v0, :cond_10

    .line 444
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/OemExService$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/OemExService$4;-><init>(Lcom/android/server/OemExService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 455
    :cond_10
    return-void
.end method

.method public startUevent(Ljava/lang/String;Lcom/oem/os/IOemUeventCallback;)Z
    .registers 4
    .param p1, "patch"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/oem/os/IOemUeventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 894
    const/4 v0, 0x1

    return v0
.end method

.method public stopUevent(Lcom/oem/os/IOemUeventCallback;)Z
    .registers 3
    .param p1, "callback"    # Lcom/oem/os/IOemUeventCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 898
    const/4 v0, 0x1

    return v0
.end method

.method public systemRunning(Z)V
    .registers 7
    .param p1, "firstBoot"    # Z

    .line 505
    iget-object v0, p0, Lcom/android/server/OemExService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 507
    :try_start_3
    iget-object v1, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_10

    .line 508
    iget-object v1, p0, Lcom/android/server/OemExService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 512
    :cond_10
    iget-object v1, p0, Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 513
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/OemExService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 514
    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    .line 515
    return-void

    .line 514
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public unregisterInputEvent(Lcom/oem/os/IOemExInputCallBack;)V
    .registers 2
    .param p1, "callBackRemove"    # Lcom/oem/os/IOemExInputCallBack;

    .line 885
    return-void
.end method
