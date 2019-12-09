.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$AdbPortObserver;
    }
.end annotation


# static fields
.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final AUTO_FILL_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.autofill.AutofillManagerService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

.field private static final CAR_SERVICE_HELPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.internal.car.CarServiceHelperService"

.field private static final COMPANION_DEVICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.companion.CompanionDeviceManagerService"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x10303e1

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final FONT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.FontService$Lifecycle"

.field private static final IOT_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.things.services.IoTSystemService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.locksettings.LockSettingsService$Lifecycle"

.field private static final LOWPAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.lowpan.LowpanService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final PERF_SERVICE_CLASS:Ljava/lang/String; = "com.qualcomm.qti.PerfService"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SLICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.slice.SliceManagerService$Lifecycle"

.field private static final SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field private static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final START_HIDL_SERVICES:Ljava/lang/String; = "StartHidlServices"

.field private static final START_SENSOR_SERVICE:Ljava/lang/String; = "StartSensorService"

.field private static final STORAGE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.StorageManagerService$Lifecycle"

.field private static final STORAGE_STATS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usage.StorageStatsService$Lifecycle"

.field private static final SYSTEM_SERVER_TIMING_ASYNC_TAG:Ljava/lang/String; = "SystemServerTimingAsync"

.field private static final SYSTEM_SERVER_TIMING_TAG:Ljava/lang/String; = "SystemServerTiming"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final TIME_ZONE_RULES_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezone.RulesManagerService$Lifecycle"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_CONFIG_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.WearConfigManagerService"

.field private static final WEAR_CONNECTIVITY_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.connectivity.WearConnectivityService"

.field private static final WEAR_DISPLAY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.display.WearDisplayService"

.field private static final WEAR_GLOBAL_ACTIONS_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.globalactions.GlobalActionsService"

.field private static final WEAR_LEFTY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.lefty.WearLeftyService"

.field private static final WEAR_SIDEKICK_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.sidekick.SidekickService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

.field private static final WIFI_AWARE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.aware.WifiAwareService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final sMaxBinderThreads:I = 0x1f


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private final mRuntimeRestart:Z

.field private final mRuntimeStartElapsedTime:J

.field private final mRuntimeStartUptime:J

.field private mSensorServiceStart:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mSmartPixelsReceiver:Lcom/android/server/smartpixels/SmartPixelsReceiver;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field private mZygotePreload:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 165
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTiming"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 324
    const-string v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 326
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 327
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 328
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SystemServer;)Landroid/content/ContentResolver;
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method private createSystemContext()V
    .locals 3

    .line 563
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 564
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 565
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x10303e1

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 567
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    .line 568
    invoke-virtual {v0, v2}, Landroid/content/Context;->setTheme(I)V

    .line 569
    return-void
.end method

.method private isFirstBootOrUpgrade()Z
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic lambda$startBootstrapServices$0()V
    .locals 4

    .line 737
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 739
    const-string v1, "StartSensorService"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 740
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 741
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 742
    return-void
.end method

.method static synthetic lambda$startOtherServices$1()V
    .locals 4

    .line 829
    :try_start_0
    const-string v0, "SystemServer"

    const-string v1, "SecondaryZygotePreload"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 832
    const-string v1, "SecondaryZygotePreload"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 833
    sget-object v1, Landroid/os/Process;->zygoteProcess:Landroid/os/ZygoteProcess;

    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 834
    const-string v1, "SystemServer"

    const-string v2, "Unable to preload default resources"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_0
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    goto :goto_0

    .line 837
    :catch_0
    move-exception v0

    .line 838
    const-string v1, "SystemServer"

    const-string v2, "Exception preloading default resources"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 840
    :goto_0
    return-void
.end method

.method static synthetic lambda$startOtherServices$2()V
    .locals 4

    .line 947
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 949
    const-string v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 950
    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    .line 951
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 952
    return-void
.end method

.method public static synthetic lambda$startOtherServices$3(Lcom/android/server/SystemServer;)V
    .locals 4

    .line 1909
    const-string v0, "SystemServer"

    const-string v1, "WebViewFactoryPreparation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 1912
    const-string v1, "WebViewFactoryPreparation"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 1913
    iget-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v2, "Zygote preload"

    invoke-static {v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 1914
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 1915
    iget-object v1, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v1}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    .line 1916
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 1917
    return-void
.end method

.method public static synthetic lambda$startOtherServices$4(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .locals 7

    move-object v1, p0

    move-object v2, p4

    .line 1890
    const-string v0, "SystemServer"

    const-string v3, "Making services ready"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    const-string v0, "StartActivityManagerReadyPhase"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1892
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x226

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1894
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1895
    const-string v0, "StartObservingNativeCrashes"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1897
    :try_start_0
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1900
    goto :goto_0

    .line 1898
    :catch_0
    move-exception v0

    .line 1899
    const-string v3, "observing native crashes"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1901
    :goto_0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1905
    nop

    .line 1906
    nop

    .line 1907
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    if-eqz v0, :cond_0

    .line 1908
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    new-instance v4, Lcom/android/server/-$$Lambda$SystemServer$Y1gEdKr_Hb7K7cbTDAo_WOJ-SYI;

    invoke-direct {v4, v1}, Lcom/android/server/-$$Lambda$SystemServer$Y1gEdKr_Hb7K7cbTDAo_WOJ-SYI;-><init>(Lcom/android/server/SystemServer;)V

    const-string v5, "WebViewFactoryPreparation"

    invoke-virtual {v0, v4, v5}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 1920
    move-object v4, v0

    goto :goto_1

    :cond_0
    move-object v4, v3

    :goto_1
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.type.automotive"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1921
    const-string v0, "StartCarServiceHelperService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1922
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.internal.car.CarServiceHelperService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1923
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1926
    :cond_1
    const-string v0, "StartSystemUI"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1928
    :try_start_1
    invoke-static {p1, p2}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1931
    goto :goto_2

    .line 1929
    :catch_1
    move-exception v0

    .line 1930
    const-string/jumbo v5, "starting System UI"

    move-object v6, v0

    invoke-direct {v1, v5, v6}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1932
    :goto_2
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1933
    const-string v0, "MakeNetworkManagementServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1935
    if-eqz p3, :cond_2

    :try_start_2
    invoke-virtual {p3}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 1936
    :catch_2
    move-exception v0

    .line 1937
    const-string v5, "making Network Managment Service ready"

    move-object v6, v0

    invoke-direct {v1, v5, v6}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 1938
    :cond_2
    :goto_3
    nop

    .line 1939
    :goto_4
    nop

    .line 1940
    if-eqz v2, :cond_3

    .line 1941
    nop

    .line 1942
    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    .line 1944
    :cond_3
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1945
    const-string v0, "MakeIpSecServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1947
    if-eqz p5, :cond_4

    :try_start_3
    invoke-virtual {p5}, Lcom/android/server/IpSecService;->systemReady()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    .line 1948
    :catch_3
    move-exception v0

    .line 1949
    const-string v5, "making IpSec Service ready"

    move-object v6, v0

    invoke-direct {v1, v5, v6}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 1950
    :cond_4
    :goto_5
    nop

    .line 1951
    :goto_6
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1952
    const-string v0, "MakeNetworkStatsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1954
    if-eqz p6, :cond_5

    :try_start_4
    invoke-virtual {p6}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_7

    .line 1955
    :catch_4
    move-exception v0

    .line 1956
    const-string v5, "making Network Stats Service ready"

    move-object v6, v0

    invoke-direct {v1, v5, v6}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 1957
    :cond_5
    :goto_7
    nop

    .line 1958
    :goto_8
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1959
    const-string v0, "MakeConnectivityServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1961
    if-eqz p7, :cond_6

    :try_start_5
    invoke-virtual {p7}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_9

    .line 1962
    :catch_5
    move-exception v0

    .line 1963
    const-string v5, "making Connectivity Service ready"

    move-object v6, v0

    invoke-direct {v1, v5, v6}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 1964
    :cond_6
    :goto_9
    nop

    .line 1965
    :goto_a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1966
    const-string v0, "MakeNetworkPolicyServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1968
    if-eqz v2, :cond_7

    .line 1969
    :try_start_6
    invoke-virtual {v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_b

    .line 1971
    :catch_6
    move-exception v0

    .line 1972
    const-string v2, "making Network Policy Service ready"

    move-object v3, v0

    invoke-direct {v1, v2, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    .line 1973
    :cond_7
    :goto_b
    nop

    .line 1974
    :goto_c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1976
    const-string v0, "StartWatchdog"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1977
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/Watchdog;->start()V

    .line 1978
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1981
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    .line 1985
    const-string v0, "PhaseThirdPartyAppsCanStart"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1987
    if-eqz v4, :cond_8

    .line 1988
    const-string v0, "WebViewFactoryPreparation"

    invoke-static {v4, v0}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 1990
    :cond_8
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v2, 0x258

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1992
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1994
    const-string v0, "MakeLocationServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1996
    if-eqz p8, :cond_9

    :try_start_7
    invoke-virtual {p8}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_d

    .line 1997
    :catch_7
    move-exception v0

    .line 1998
    const-string v2, "Notifying Location Service running"

    move-object v3, v0

    invoke-direct {v1, v2, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    .line 1999
    :cond_9
    :goto_d
    nop

    .line 2000
    :goto_e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2001
    const-string v0, "MakeCountryDetectionServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2003
    if-eqz p9, :cond_a

    :try_start_8
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_f

    .line 2004
    :catch_8
    move-exception v0

    .line 2005
    const-string v2, "Notifying CountryDetectorService running"

    move-object v3, v0

    invoke-direct {v1, v2, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    .line 2006
    :cond_a
    :goto_f
    nop

    .line 2007
    :goto_10
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2008
    const-string v0, "MakeNetworkTimeUpdateReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2010
    if-eqz p10, :cond_b

    :try_start_9
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_11

    .line 2011
    :catch_9
    move-exception v0

    .line 2012
    const-string v2, "Notifying NetworkTimeService running"

    move-object v3, v0

    invoke-direct {v1, v2, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12

    .line 2013
    :cond_b
    :goto_11
    nop

    .line 2014
    :goto_12
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2015
    const-string v0, "MakeCommonTimeManagementServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2017
    if-eqz p11, :cond_c

    .line 2018
    :try_start_a
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_13

    .line 2020
    :catch_a
    move-exception v0

    .line 2021
    const-string v2, "Notifying CommonTimeManagementService running"

    move-object v3, v0

    invoke-direct {v1, v2, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    .line 2022
    :cond_c
    :goto_13
    nop

    .line 2023
    :goto_14
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2024
    const-string v0, "MakeInputManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2027
    if-eqz p12, :cond_d

    :try_start_b
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_15

    .line 2028
    :catch_b
    move-exception v0

    .line 2029
    const-string v2, "Notifying InputManagerService running"

    move-object v3, v0

    invoke-direct {v1, v2, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    .line 2030
    :cond_d
    :goto_15
    nop

    .line 2031
    :goto_16
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2032
    const-string v0, "MakeTelephonyRegistryReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2034
    if-eqz p13, :cond_e

    :try_start_c
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_17

    .line 2035
    :catch_c
    move-exception v0

    .line 2036
    const-string v2, "Notifying TelephonyRegistry running"

    move-object v3, v0

    invoke-direct {v1, v2, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18

    .line 2037
    :cond_e
    :goto_17
    nop

    .line 2038
    :goto_18
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2039
    const-string v0, "MakeMediaRouterServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2041
    if-eqz p14, :cond_f

    :try_start_d
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_19

    .line 2042
    :catch_d
    move-exception v0

    .line 2043
    const-string v2, "Notifying MediaRouterService running"

    move-object v3, v0

    invoke-direct {v1, v2, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 2044
    :cond_f
    :goto_19
    nop

    .line 2045
    :goto_1a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2046
    const-string v0, "MakeMmsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2048
    if-eqz p15, :cond_10

    :try_start_e
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_1b

    .line 2049
    :catch_e
    move-exception v0

    .line 2050
    const-string v2, "Notifying MmsService running"

    move-object v3, v0

    invoke-direct {v1, v2, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 2051
    :cond_10
    :goto_1b
    nop

    .line 2052
    :goto_1c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2054
    const-string v0, "IncidentDaemonReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2058
    :try_start_f
    const-string v0, "incident"

    .line 2059
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2058
    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    .line 2060
    if-eqz v0, :cond_11

    invoke-interface {v0}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    .line 2063
    :cond_11
    goto :goto_1d

    .line 2061
    :catch_f
    move-exception v0

    .line 2062
    const-string v2, "Notifying incident daemon running"

    invoke-direct {v1, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2064
    :goto_1d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2065
    new-instance v0, Lcom/android/server/smartpixels/SmartPixelsReceiver;

    move-object v2, p1

    invoke-direct {v0, v2}, Lcom/android/server/smartpixels/SmartPixelsReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/SystemServer;->mSmartPixelsReceiver:Lcom/android/server/smartpixels/SmartPixelsReceiver;

    .line 2066
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    .line 317
    new-instance p0, Lcom/android/server/SystemServer;

    invoke-direct {p0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {p0}, Lcom/android/server/SystemServer;->run()V

    .line 318
    return-void
.end method

.method private performPendingShutdown()V
    .locals 7

    .line 509
    const-string/jumbo v0, "sys.shutdown.requested"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 512
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    .line 515
    move v2, v4

    goto :goto_0

    .line 512
    :cond_0
    nop

    .line 515
    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    if-le v3, v4, :cond_1

    .line 516
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 518
    :cond_1
    nop

    .line 526
    move-object v0, v5

    :goto_1
    if-eqz v0, :cond_2

    const-string/jumbo v3, "recovery-update"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 527
    new-instance v3, Ljava/io/File;

    const-string v6, "/cache/recovery/uncrypt_file"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 529
    nop

    .line 531
    :try_start_0
    invoke-static {v3, v1, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    goto :goto_2

    .line 532
    :catch_0
    move-exception v1

    .line 533
    const-string v3, "SystemServer"

    const-string v6, "Error reading uncrypt package file"

    invoke-static {v3, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 536
    move-object v1, v5

    :goto_2
    if-eqz v1, :cond_2

    const-string v3, "/data"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "sys.ota.disable_uncrypt"

    const-string v3, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 537
    new-instance v1, Ljava/io/File;

    const-string v3, "/cache/recovery/block.map"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    .line 538
    const-string v0, "SystemServer"

    const-string v1, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    return-void

    .line 545
    :cond_2
    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    .line 555
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 556
    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 557
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 560
    :cond_3
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 504
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    return-void
.end method

.method private run()V
    .locals 9

    .line 346
    :try_start_0
    const-string v0, "InitBeforeStartServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 352
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-static {v2, v3}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 359
    :cond_0
    const-string/jumbo v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    :cond_1
    const-string v0, "SystemServer"

    const-string v1, "Timezone not set; setting to GMT."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string/jumbo v0, "persist.sys.timezone"

    const-string v1, "GMT"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_2
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 374
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 376
    const-string/jumbo v1, "persist.sys.locale"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string/jumbo v0, "persist.sys.language"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string/jumbo v0, "persist.sys.country"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string/jumbo v0, "persist.sys.localevar"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_3
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    .line 385
    invoke-static {v0}, Landroid/content/pm/PackageItemInfo;->setForceSafeLabels(Z)V

    .line 388
    const-string v1, "FULL"

    sput-object v1, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    .line 391
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    .line 394
    const-string v2, "SystemServer"

    const-string v3, "Entered the Android system server!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    long-to-int v2, v2

    .line 396
    const/16 v3, 0xbc2

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 397
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v3, :cond_4

    .line 398
    const-string v3, "boot_system_server_init"

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 408
    :cond_4
    const-string/jumbo v2, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    invoke-virtual {v2}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 415
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 419
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 423
    invoke-static {v0}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 427
    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 430
    invoke-static {v0}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    .line 433
    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 436
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 439
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 441
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 442
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 443
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 447
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 451
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 454
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 457
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 458
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    iget-wide v5, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v7, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/SystemServiceManager;->setStartInfo(ZJJ)V

    .line 460
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v2}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 462
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 464
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 465
    nop

    .line 469
    :try_start_1
    const-string v0, "StartServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 470
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 471
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 472
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V

    .line 473
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 480
    nop

    .line 482
    invoke-static {v1}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 484
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_5

    .line 485
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    long-to-int v0, v2

    .line 486
    const-string v2, "boot_system_server_ready"

    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 488
    const v1, 0xea60

    if-le v0, v1, :cond_5

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemServerTiming"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_5
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 496
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 474
    :catch_0
    move-exception v0

    .line 475
    :try_start_2
    const-string v1, "System"

    const-string v2, "******************************************"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string v1, "System"

    const-string v2, "************ Failure starting system services"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 477
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 479
    :goto_0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v0

    .line 464
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v0
.end method

.method private startBootstrapServices()V
    .locals 7

    .line 579
    const-string v0, "SystemServer"

    const-string v1, "Reading configuration..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const-string v0, "ReadingSystemConfig"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 582
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    sget-object v1, Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;->INSTANCE:Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;

    const-string v2, "ReadingSystemConfig"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 583
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 588
    const-string v0, "StartInstaller"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/pm/Installer;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Installer;

    .line 590
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 594
    const-string v1, "DeviceIdentifiersPolicyService"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 595
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 596
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 599
    const-string v1, "StartActivityManager"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 600
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 601
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 602
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 603
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 604
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 610
    const-string v1, "StartPowerManager"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 611
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/PowerManagerService;

    iput-object v1, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 612
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 616
    const-string v1, "InitPowerManagement"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 617
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 618
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 621
    const-string v1, "StartRecoverySystemService"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 622
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/RecoverySystemService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 623
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 628
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/RescueParty;->noteBoot(Landroid/content/Context;)V

    .line 631
    const-string v1, "StartLightsService"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 632
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/lights/LightsService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 633
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 635
    const-string v1, "StartSidekickService"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 637
    const-string v1, "config.enable_sidekick_graphics"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.google.android.clockwork.sidekick.SidekickService"

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 640
    :cond_0
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 644
    const-string v1, "StartDisplayManager"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 645
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayManagerService;

    iput-object v1, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 646
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 649
    const-string v1, "WaitForDisplay"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 650
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 651
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 654
    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 655
    const-string/jumbo v3, "trigger_restart_min_framework"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 656
    const-string v1, "SystemServer"

    const-string v3, "Detected encryption in progress - only parsing core apps"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    .line 658
    :cond_1
    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 659
    const-string v1, "SystemServer"

    const-string v3, "Device encrypted - only parsing core apps"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 664
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/4 v3, 0x0

    if-nez v1, :cond_3

    .line 665
    const-string v1, "boot_package_manager_init_start"

    .line 666
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    long-to-int v5, v5

    .line 665
    invoke-static {v3, v1, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 668
    :cond_3
    const-string v1, "StartPackageManagerService"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 669
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v4, v2

    :goto_1
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v1, v0, v4, v5}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 671
    iget-object v1, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 672
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 673
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 674
    iget-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v1

    if-nez v1, :cond_5

    .line 675
    const-string v1, "boot_package_manager_init_ready"

    .line 676
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    long-to-int v4, v4

    .line 675
    invoke-static {v3, v1, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 681
    :cond_5
    iget-boolean v1, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v1, :cond_6

    .line 682
    const-string v1, "config.disable_otadexopt"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 684
    if-nez v1, :cond_6

    .line 685
    const-string v1, "StartOtaDexOptService"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 687
    :try_start_0
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1, v3}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    :goto_2
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 692
    goto :goto_4

    .line 691
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 688
    :catch_0
    move-exception v1

    .line 689
    :try_start_1
    const-string/jumbo v3, "starting OtaDexOptService"

    invoke-direct {p0, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 691
    :goto_3
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v0

    .line 696
    :cond_6
    :goto_4
    const-string v1, "StartUserManagerService"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 697
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v1, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 698
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 701
    const-string v1, "InitAttributerCache"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 702
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 703
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 706
    const-string v1, "SetSystemProcess"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 707
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 708
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 712
    iget-object v1, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    .line 715
    const-string v1, "StartOverlayManagerService"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 716
    new-instance v1, Lcom/android/server/om/OverlayManagerService;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;)V

    .line 718
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 721
    const-string v0, "StartSubstratumService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v3, Lcom/android/server/substratum/SubstratumService;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/substratum/SubstratumService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 724
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 726
    const-string/jumbo v0, "persist.sys.displayinset.top"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_7

    .line 728
    invoke-virtual {v1}, Lcom/android/server/om/OverlayManagerService;->updateSystemUiContext()V

    .line 729
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    .line 736
    :cond_7
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    sget-object v1, Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;

    const-string v2, "StartSensorService"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 743
    return-void
.end method

.method private startCoreServices()V
    .locals 2

    .line 749
    const-string v0, "StartBatteryService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 752
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 755
    const-string v0, "StartUsageService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 757
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 758
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 757
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 759
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 762
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.webview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    const-string v0, "StartWebViewUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 765
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 769
    :cond_0
    const-string v0, "StartBinderCallsStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 770
    invoke-static {}, Lcom/android/server/BinderCallsStatsService;->start()V

    .line 771
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 772
    return-void
.end method

.method private static native startHidlServices()V
.end method

.method private startOtherServices()V
    .locals 35

    .line 779
    move-object/from16 v2, p0

    iget-object v9, v2, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 780
    nop

    .line 781
    nop

    .line 782
    nop

    .line 783
    nop

    .line 784
    nop

    .line 785
    nop

    .line 786
    nop

    .line 787
    nop

    .line 788
    nop

    .line 789
    nop

    .line 790
    nop

    .line 791
    nop

    .line 792
    nop

    .line 793
    nop

    .line 794
    nop

    .line 795
    nop

    .line 796
    nop

    .line 797
    nop

    .line 798
    nop

    .line 800
    const-string v0, "config.disable_systemtextclassifier"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 802
    const-string v0, "config.disable_cameraservice"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 804
    const-string v0, "config.disable_slices"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 805
    const-string v0, "config.enable_lefty"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 807
    const-string/jumbo v0, "ro.kernel.qemu"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 809
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    .line 811
    const-string/jumbo v0, "persist.vendor.perfservice.disable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 813
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 817
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_1

    const-string v3, "debug.crash_system"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 818
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 827
    :cond_1
    :goto_0
    const/4 v8, 0x1

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v3

    sget-object v4, Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;

    const-string v5, "SecondaryZygotePreload"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 842
    const-string v3, "StartKeyAttestationApplicationIdProviderService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 843
    const-string/jumbo v3, "sec_key_att_app_id_provider"

    new-instance v4, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v4, v9}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 845
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 847
    const-string v3, "StartKeyChainSystemService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 848
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 849
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 851
    const-string v3, "StartSchedulingPolicyService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 852
    const-string/jumbo v3, "scheduling_policy"

    new-instance v4, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v4}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 853
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 855
    const-string v3, "StartTelecomLoaderService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 856
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 857
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 859
    const-string v3, "StartTelephonyRegistry"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 860
    new-instance v6, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v6, v9}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_8

    .line 861
    :try_start_1
    const-string/jumbo v3, "telephony.registry"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 862
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 864
    const-string v3, "StartEntropyMixer"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 865
    new-instance v3, Lcom/android/server/EntropyMixer;

    invoke-direct {v3, v9}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 866
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 868
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 871
    const-string v3, "StartAccountManagerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 872
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 873
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 875
    const-string v3, "StartContentService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 876
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 877
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 879
    const-string v3, "InstallSystemProviders"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 880
    iget-object v3, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 882
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    .line 883
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 886
    const-string v3, "StartFontService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 887
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.FontService$Lifecycle"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 888
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 893
    const-string v3, "StartDropBoxManager"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 894
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 895
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 897
    const-string v3, "StartVibratorService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 898
    new-instance v5, Lcom/android/server/VibratorService;

    invoke-direct {v5, v9}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_7

    .line 899
    :try_start_2
    const-string/jumbo v3, "vibrator"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 900
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6

    .line 902
    if-nez v15, :cond_2

    .line 903
    :try_start_3
    const-string v3, "StartConsumerIrService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 904
    new-instance v3, Lcom/android/server/ConsumerIrService;

    invoke-direct {v3, v9}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    .line 905
    const-string v4, "consumer_ir"

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 906
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 1001
    :catch_0
    move-exception v0

    move-object/from16 v22, v6

    move-object v4, v7

    move-object/from16 v17, v4

    :goto_1
    move v1, v8

    goto/16 :goto_6

    .line 909
    :cond_2
    :goto_2
    :try_start_4
    const-string v3, "StartAlarmManagerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 910
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 911
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 913
    const-string v3, "InitWatchdog"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 914
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    .line 915
    iget-object v4, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v9, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 916
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 918
    const-string v3, "StartInputManagerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 919
    new-instance v4, Lcom/android/server/input/InputManagerService;

    invoke-direct {v4, v9}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6

    .line 920
    :try_start_5
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 922
    const-string v3, "StartWindowManagerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 924
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    const-string v1, "StartSensorService"

    invoke-static {v3, v1}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 925
    iput-object v7, v2, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 926
    iget v1, v2, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eq v1, v8, :cond_3

    move v1, v8

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    iget-boolean v3, v2, Lcom/android/server/SystemServer;->mFirstBoot:Z

    xor-int/lit8 v17, v3, 0x1

    iget-boolean v3, v2, Lcom/android/server/SystemServer;->mOnlyCore:Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    :try_start_6
    new-instance v8, Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {v8}, Lcom/android/server/policy/PhoneWindowManager;-><init>()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    move/from16 v19, v3

    move-object v3, v9

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move v5, v1

    move-object v1, v6

    move/from16 v6, v17

    move-object/from16 v17, v7

    move/from16 v7, v19

    move-object/from16 v22, v1

    const/4 v1, 0x1

    :try_start_7
    invoke-static/range {v3 .. v8}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/policy/WindowManagerPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    .line 929
    :try_start_8
    const-string/jumbo v3, "window"

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-static {v3, v7, v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 931
    const-string v3, "input"
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    move-object/from16 v4, v20

    :try_start_9
    invoke-static {v3, v4, v5, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 933
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 935
    const-string v3, "SetWindowManagerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 936
    iget-object v3, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v7}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 937
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 939
    const-string v3, "WindowManagerServiceOnInitReady"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 940
    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    .line 941
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 946
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v3

    sget-object v5, Lcom/android/server/-$$Lambda$SystemServer$NlJmG18aPrQduhRqASIdcn7G0z8;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$NlJmG18aPrQduhRqASIdcn7G0z8;

    const-string v6, "StartHidlServices"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 954
    if-nez v15, :cond_4

    if-eqz v0, :cond_4

    .line 955
    const-string v0, "StartVrManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 956
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 957
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 960
    :cond_4
    const-string v0, "StartInputManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 961
    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 962
    invoke-virtual {v4}, Lcom/android/server/input/InputManagerService;->start()V

    .line 963
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 966
    const-string v0, "DisplayManagerWindowManagerAndInputReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 967
    iget-object v0, v2, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 968
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 973
    if-eqz v14, :cond_5

    .line 974
    const-string v0, "SystemServer"

    const-string v3, "No Bluetooth Service (emulator)"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 975
    :cond_5
    iget v0, v2, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-ne v0, v1, :cond_6

    .line 976
    const-string v0, "SystemServer"

    const-string v3, "No Bluetooth Service (factory test)"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 977
    :cond_6
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.bluetooth"

    .line 978
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 979
    const-string v0, "SystemServer"

    const-string v3, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 981
    :cond_7
    const-string v0, "StartBluetoothService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 982
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/BluetoothService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 983
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 986
    :goto_4
    const-string v0, "IpConnectivityMetrics"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 987
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 988
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 990
    const-string v0, "NetworkWatchlistService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 991
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 992
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 994
    const-string v0, "PinnerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 995
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/PinnerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 996
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 998
    const-string v0, "LongScreenShot Manager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 999
    const-string v0, "longshot"

    invoke-static {v9}, Lcom/android/internal/custom/longshot/LongScreenshotManagerService;->getInstance(Landroid/content/Context;)Lcom/android/internal/custom/longshot/LongScreenshotManagerService;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1000
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1

    .line 1004
    nop

    .line 1006
    move-object v8, v4

    move-object v4, v7

    move-object/from16 v5, v21

    goto/16 :goto_7

    .line 1001
    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v4, v20

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v4, v20

    move-object/from16 v7, v17

    :goto_5
    move-object/from16 v5, v21

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v17, v7

    const/4 v1, 0x1

    goto :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v17, v7

    goto/16 :goto_1

    :catch_6
    move-exception v0

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v17, v7

    move v1, v8

    move-object/from16 v4, v17

    move-object v7, v4

    goto :goto_6

    :catch_7
    move-exception v0

    move-object/from16 v22, v6

    move-object/from16 v17, v7

    move v1, v8

    move-object/from16 v4, v17

    move-object v5, v4

    move-object v7, v5

    goto :goto_6

    :catch_8
    move-exception v0

    move-object/from16 v17, v7

    move v1, v8

    move-object/from16 v4, v17

    move-object v5, v4

    move-object v7, v5

    move-object/from16 v22, v7

    .line 1002
    :goto_6
    const-string v3, "System"

    const-string v6, "******************************************"

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const-string v3, "System"

    const-string v6, "************ Failure starting core service"

    invoke-static {v3, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1006
    move-object v8, v4

    move-object v4, v7

    .line 1007
    :goto_7
    nop

    .line 1008
    nop

    .line 1009
    nop

    .line 1010
    nop

    .line 1011
    nop

    .line 1012
    nop

    .line 1015
    iget v0, v2, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eq v0, v1, :cond_8

    .line 1016
    const-string v0, "StartInputMethodManagerLifecycle"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1017
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/InputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1018
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1020
    const-string v0, "StartAccessibilityManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1022
    :try_start_a
    const-string v0, "accessibility"

    new-instance v3, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v3, v9}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_9

    .line 1026
    goto :goto_8

    .line 1024
    :catch_9
    move-exception v0

    .line 1025
    const-string/jumbo v3, "starting Accessibility Manager"

    invoke-direct {v2, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1027
    :goto_8
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1030
    :cond_8
    const-string v0, "MakeDisplayReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1032
    :try_start_b
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_a

    .line 1035
    goto :goto_9

    .line 1033
    :catch_a
    move-exception v0

    .line 1034
    const-string v3, "making display ready"

    move-object v6, v0

    invoke-direct {v2, v3, v6}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1036
    :goto_9
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1038
    iget v0, v2, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eq v0, v1, :cond_9

    .line 1039
    const-string v0, "0"

    const-string/jumbo v3, "system_init.startmountservice"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1040
    const-string v0, "StartStorageManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1046
    :try_start_c
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.StorageManagerService$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1047
    const-string v0, "mount"

    .line 1048
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1047
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_b

    .line 1051
    goto :goto_a

    .line 1049
    :catch_b
    move-exception v0

    .line 1050
    const-string/jumbo v3, "starting StorageManagerService"

    invoke-direct {v2, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1052
    :goto_a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1054
    const-string v0, "StartStorageStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1056
    :try_start_d
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.usage.StorageStatsService$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_c

    .line 1059
    goto :goto_b

    .line 1057
    :catch_c
    move-exception v0

    .line 1058
    const-string/jumbo v3, "starting StorageStatsService"

    invoke-direct {v2, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1060
    :goto_b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1066
    :cond_9
    const-string v0, "StartUiModeManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1067
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1068
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1070
    if-nez v16, :cond_c

    .line 1072
    :try_start_e
    const-string v0, "SystemServer"

    const-string v3, "Perf Service"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    const-string v0, "com.qualcomm.qti.PerfService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1074
    if-eqz v0, :cond_a

    .line 1075
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    goto :goto_c

    .line 1077
    :cond_a
    move-object/from16 v7, v17

    :goto_c
    if-eqz v7, :cond_b

    .line 1078
    const-string v0, "SystemServer"

    const-string v3, "Successfully get PerfService instance."

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    const-string/jumbo v0, "vendor.perfservice"

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_d

    .line 1081
    :cond_b
    const-string v0, "SystemServer"

    const-string v3, "Failed to get PerfService instance."

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_d

    .line 1084
    :goto_d
    goto :goto_e

    .line 1082
    :catch_d
    move-exception v0

    .line 1083
    const-string/jumbo v3, "starting PerfService"

    invoke-direct {v2, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1087
    :cond_c
    :goto_e
    iget-boolean v0, v2, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_d

    .line 1088
    const-string v0, "UpdatePackagesIfNeeded"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1090
    :try_start_f
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_e

    .line 1093
    goto :goto_f

    .line 1091
    :catch_e
    move-exception v0

    .line 1092
    const-string/jumbo v3, "update packages"

    invoke-direct {v2, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1094
    :goto_f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1097
    :cond_d
    const-string v0, "PerformFstrimIfNeeded"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1099
    :try_start_10
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_f

    .line 1102
    goto :goto_10

    .line 1100
    :catch_f
    move-exception v0

    .line 1101
    const-string/jumbo v3, "performing fstrim"

    invoke-direct {v2, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1103
    :goto_10
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1105
    iget v0, v2, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eq v0, v1, :cond_35

    .line 1106
    const-string v0, "StartLockSettingsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1108
    :try_start_11
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.locksettings.LockSettingsService$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1109
    const-string v0, "lock_settings"

    .line 1110
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1109
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_10

    .line 1113
    nop

    .line 1114
    move-object v7, v0

    goto :goto_11

    .line 1111
    :catch_10
    move-exception v0

    .line 1112
    const-string/jumbo v3, "starting LockSettingsService service"

    invoke-direct {v2, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1114
    move-object/from16 v7, v17

    :goto_11
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1116
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1117
    xor-int/2addr v0, v1

    if-eqz v0, :cond_e

    .line 1118
    const-string v3, "StartPersistentDataBlock"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1119
    iget-object v3, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v3, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1120
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1123
    :cond_e
    if-nez v0, :cond_f

    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1125
    :cond_f
    const-string v0, "StartOemLockService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1126
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1127
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1130
    :cond_10
    const-string v0, "StartDeviceIdleController"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1131
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1132
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1136
    const-string v0, "StartDevicePolicyManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1137
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1138
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1140
    if-nez v15, :cond_11

    .line 1141
    const-string v0, "StartStatusBarManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1143
    :try_start_12
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v0, v9, v4}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    .line 1144
    const-string/jumbo v3, "statusbar"

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_11

    .line 1147
    goto :goto_12

    .line 1145
    :catch_11
    move-exception v0

    .line 1146
    const-string/jumbo v3, "starting StatusBarManagerService"

    invoke-direct {v2, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1148
    :goto_12
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1151
    :cond_11
    const-string v0, "StartClipboardService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1152
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1153
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1155
    const-string v0, "StartNetworkManagementService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1157
    :try_start_13
    invoke-static {v9}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v3
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_13

    .line 1158
    :try_start_14
    const-string v0, "network_management"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_12

    .line 1161
    goto :goto_14

    .line 1159
    :catch_12
    move-exception v0

    goto :goto_13

    :catch_13
    move-exception v0

    move-object/from16 v3, v17

    .line 1160
    :goto_13
    const-string/jumbo v6, "starting NetworkManagement Service"

    invoke-direct {v2, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1162
    :goto_14
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1164
    const-string v0, "StartIpSecService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1166
    :try_start_15
    invoke-static {v9}, Lcom/android/server/IpSecService;->create(Landroid/content/Context;)Lcom/android/server/IpSecService;

    move-result-object v6
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_15

    .line 1167
    :try_start_16
    const-string v0, "ipsec"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_14

    .line 1170
    goto :goto_16

    .line 1168
    :catch_14
    move-exception v0

    goto :goto_15

    :catch_15
    move-exception v0

    move-object/from16 v6, v17

    .line 1169
    :goto_15
    const-string/jumbo v1, "starting IpSec Service"

    invoke-direct {v2, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1171
    :goto_16
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1173
    const-string v0, "StartTextServicesManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1174
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/TextServicesManagerService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1175
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1177
    if-nez v10, :cond_12

    .line 1178
    const-string v0, "StartTextClassificationManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1179
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1180
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1183
    :cond_12
    const-string v0, "StartNetworkScoreService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1184
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/NetworkScoreService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1185
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1187
    const-string v0, "StartNetworkStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1189
    :try_start_17
    invoke-static {v9, v3}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v1
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_17

    .line 1190
    :try_start_18
    const-string v0, "netstats"

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_16

    .line 1193
    goto :goto_18

    .line 1191
    :catch_16
    move-exception v0

    goto :goto_17

    :catch_17
    move-exception v0

    move-object/from16 v1, v17

    .line 1192
    :goto_17
    const-string/jumbo v10, "starting NetworkStats Service"

    invoke-direct {v2, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1194
    :goto_18
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1196
    const-string v0, "StartNetworkPolicyManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1198
    :try_start_19
    new-instance v10, Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v10, v9, v0, v3}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_19

    .line 1200
    :try_start_1a
    const-string v0, "netpolicy"

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_18

    .line 1203
    nop

    .line 1204
    move-object/from16 v24, v6

    goto :goto_1a

    .line 1201
    :catch_18
    move-exception v0

    goto :goto_19

    :catch_19
    move-exception v0

    move-object/from16 v10, v17

    .line 1202
    :goto_19
    move-object/from16 v24, v6

    const-string/jumbo v6, "starting NetworkPolicy Service"

    invoke-direct {v2, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1204
    :goto_1a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1206
    iget-boolean v0, v2, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_17

    .line 1207
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "android.hardware.wifi"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1210
    const-string v0, "StartWifi"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1211
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.WifiService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1212
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1213
    const-string v0, "StartWifiScanning"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1214
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.scanner.WifiScanningService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1216
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1219
    :cond_13
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "android.hardware.wifi.rtt"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1221
    const-string v0, "StartRttService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1222
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.rtt.RttService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1224
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1227
    :cond_14
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "android.hardware.wifi.aware"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1229
    const-string v0, "StartWifiAware"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1230
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.aware.WifiAwareService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1231
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1234
    :cond_15
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "android.hardware.wifi.direct"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1236
    const-string v0, "StartWifiP2P"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1237
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1238
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1241
    :cond_16
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "android.hardware.lowpan"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1243
    const-string v0, "StartLowpan"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1244
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1245
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1249
    :cond_17
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.ethernet"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.usb.host"

    .line 1250
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1251
    :cond_18
    const-string v0, "StartEthernet"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1252
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1253
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1256
    :cond_19
    const-string v0, "StartConnectivityService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1258
    :try_start_1b
    new-instance v6, Lcom/android/server/ConnectivityService;

    invoke-direct {v6, v9, v3, v1, v10}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_1c

    .line 1260
    :try_start_1c
    const-string v0, "connectivity"
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_1b

    move-object/from16 v25, v3

    const/4 v3, 0x6

    move-object/from16 v26, v7

    const/4 v7, 0x0

    :try_start_1d
    invoke-static {v0, v6, v7, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1263
    invoke-virtual {v1, v6}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1264
    invoke-virtual {v10, v6}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_1a

    .line 1267
    goto :goto_1c

    .line 1265
    :catch_1a
    move-exception v0

    goto :goto_1b

    :catch_1b
    move-exception v0

    move-object/from16 v25, v3

    move-object/from16 v26, v7

    goto :goto_1b

    :catch_1c
    move-exception v0

    move-object/from16 v25, v3

    move-object/from16 v26, v7

    move-object/from16 v6, v17

    .line 1266
    :goto_1b
    const-string/jumbo v3, "starting Connectivity Service"

    invoke-direct {v2, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1268
    :goto_1c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1270
    const-string v0, "StartNsdService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1272
    :try_start_1e
    invoke-static {v9}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v0

    .line 1273
    const-string/jumbo v3, "servicediscovery"

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_1d

    .line 1277
    goto :goto_1d

    .line 1275
    :catch_1d
    move-exception v0

    .line 1276
    const-string/jumbo v3, "starting Service Discovery Service"

    invoke-direct {v2, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1278
    :goto_1d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1280
    const-string v0, "StartSystemUpdateManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1282
    :try_start_1f
    const-string/jumbo v0, "system_update"

    new-instance v3, Lcom/android/server/SystemUpdateManagerService;

    invoke-direct {v3, v9}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_1e

    .line 1286
    goto :goto_1e

    .line 1284
    :catch_1e
    move-exception v0

    .line 1285
    const-string/jumbo v3, "starting SystemUpdateManagerService"

    invoke-direct {v2, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1287
    :goto_1e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1289
    const-string v0, "StartUpdateLockService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1291
    :try_start_20
    const-string/jumbo v0, "updatelock"

    new-instance v3, Lcom/android/server/UpdateLockService;

    invoke-direct {v3, v9}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_1f

    .line 1295
    goto :goto_1f

    .line 1293
    :catch_1f
    move-exception v0

    .line 1294
    const-string/jumbo v3, "starting UpdateLockService"

    invoke-direct {v2, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1296
    :goto_1f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1298
    const-string v0, "StartNotificationManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1299
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1300
    invoke-static {v9}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 1301
    const-string v0, "notification"

    .line 1302
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1301
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    .line 1303
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1305
    const-string v0, "StartDeviceMonitor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1306
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1307
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1309
    const-string v0, "StartLocationManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1311
    :try_start_21
    new-instance v7, Lcom/android/server/LocationManagerService;

    invoke-direct {v7, v9}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_21

    .line 1312
    :try_start_22
    const-string v0, "location"

    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_20

    .line 1315
    goto :goto_21

    .line 1313
    :catch_20
    move-exception v0

    goto :goto_20

    :catch_21
    move-exception v0

    move-object/from16 v7, v17

    .line 1314
    :goto_20
    const-string/jumbo v3, "starting Location Manager"

    invoke-direct {v2, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1316
    :goto_21
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1318
    const-string v0, "StartCountryDetectorService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1320
    :try_start_23
    new-instance v3, Lcom/android/server/CountryDetectorService;

    invoke-direct {v3, v9}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_23

    .line 1321
    :try_start_24
    const-string v0, "country_detector"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_22

    .line 1324
    nop

    .line 1325
    move-object/from16 v27, v1

    goto :goto_23

    .line 1322
    :catch_22
    move-exception v0

    goto :goto_22

    :catch_23
    move-exception v0

    move-object/from16 v3, v17

    .line 1323
    :goto_22
    move-object/from16 v27, v1

    const-string/jumbo v1, "starting Country Detector"

    invoke-direct {v2, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1325
    :goto_23
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1327
    if-nez v15, :cond_1a

    .line 1328
    const-string v0, "StartSearchManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1330
    :try_start_25
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_24

    .line 1333
    goto :goto_24

    .line 1331
    :catch_24
    move-exception v0

    .line 1332
    const-string/jumbo v1, "starting Search Service"

    invoke-direct {v2, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1334
    :goto_24
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1337
    :cond_1a
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1338
    const-string v0, "StartWallpaperManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1339
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1340
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1343
    :cond_1b
    const-string v0, "StartAudioService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1344
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1345
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1347
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.broadcastradio"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1348
    const-string v0, "StartBroadcastRadioService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1349
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1350
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1353
    :cond_1c
    const-string v0, "StartDockObserver"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1354
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/DockObserver;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1355
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1357
    if-eqz v15, :cond_1d

    .line 1358
    const-string v0, "StartThermalObserver"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1359
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.google.android.clockwork.ThermalObserver"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1360
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1363
    :cond_1d
    const-string v0, "StartWiredAccessoryManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1366
    :try_start_26
    new-instance v0, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v0, v9, v8}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v8, v0}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_25

    .line 1370
    goto :goto_25

    .line 1368
    :catch_25
    move-exception v0

    .line 1369
    const-string/jumbo v1, "starting WiredAccessoryManager"

    invoke-direct {v2, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1371
    :goto_25
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1373
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.midi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1375
    const-string v0, "StartMidiManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1376
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1377
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1380
    :cond_1e
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.usb.host"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.usb.accessory"

    .line 1381
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    if-eqz v14, :cond_20

    .line 1385
    :cond_1f
    const-string v0, "StartUsbService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1386
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1387
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1390
    :cond_20
    if-nez v15, :cond_21

    .line 1391
    const-string v0, "StartSerialService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1394
    :try_start_27
    new-instance v0, Lcom/android/server/SerialService;

    invoke-direct {v0, v9}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V

    .line 1395
    const-string/jumbo v1, "serial"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_26

    .line 1398
    goto :goto_26

    .line 1396
    :catch_26
    move-exception v0

    .line 1397
    const-string v1, "SystemServer"

    const-string v14, "Failure starting SerialService"

    invoke-static {v1, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1399
    :goto_26
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1402
    :cond_21
    const-string v0, "StartHardwarePropertiesManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1404
    :try_start_28
    new-instance v0, Lcom/android/server/HardwarePropertiesManagerService;

    invoke-direct {v0, v9}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V

    .line 1405
    const-string v1, "hardware_properties"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_27

    .line 1409
    goto :goto_27

    .line 1407
    :catch_27
    move-exception v0

    .line 1408
    const-string v1, "SystemServer"

    const-string v14, "Failure starting HardwarePropertiesManagerService"

    invoke-static {v1, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1410
    :goto_27
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1412
    const-string v0, "StartTwilightService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1413
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1414
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1417
    const-string v0, "StartNightDisplay"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1418
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/display/ColorDisplayService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1419
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1422
    const-string v0, "StartJobScheduler"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1423
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1424
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1426
    const-string v0, "StartSoundTrigger"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1427
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1428
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1430
    const-string v0, "StartTrustManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1431
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1432
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1434
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.backup"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1435
    const-string v0, "StartBackupManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1436
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1437
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1440
    :cond_22
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.app_widgets"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1441
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1442
    :cond_23
    const-string v0, "StartAppWidgerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1443
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1444
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1451
    :cond_24
    const-string v0, "StartVoiceRecognitionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1452
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1453
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1455
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1456
    const-string v0, "StartGestureLauncher"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1457
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1458
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1460
    :cond_25
    const-string v0, "StartSensorNotification"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1461
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1462
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1464
    const-string v0, "StartContextHubSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1465
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1466
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1468
    const-string v0, "StartDiskStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1470
    :try_start_29
    const-string v0, "diskstats"

    new-instance v1, Lcom/android/server/DiskStatsService;

    invoke-direct {v1, v9}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_28

    .line 1473
    goto :goto_28

    .line 1471
    :catch_28
    move-exception v0

    .line 1472
    const-string/jumbo v1, "starting DiskStats Service"

    invoke-direct {v2, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1474
    :goto_28
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1480
    iget-boolean v0, v2, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_26

    .line 1481
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1483
    const/16 v23, 0x1

    goto :goto_29

    .line 1481
    :cond_26
    nop

    .line 1483
    const/16 v23, 0x0

    :goto_29
    if-eqz v23, :cond_27

    .line 1484
    const-string v0, "StartTimeZoneRulesManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1485
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.timezone.RulesManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1486
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1489
    :cond_27
    if-nez v15, :cond_28

    .line 1490
    const-string v0, "StartNetworkTimeUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1492
    :try_start_2a
    new-instance v1, Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {v1, v9}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_2a

    .line 1493
    :try_start_2b
    const-string v0, "network_time_update_service"

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_29

    .line 1496
    goto :goto_2b

    .line 1494
    :catch_29
    move-exception v0

    goto :goto_2a

    :catch_2a
    move-exception v0

    move-object/from16 v1, v17

    .line 1495
    :goto_2a
    const-string/jumbo v14, "starting NetworkTimeUpdate service"

    invoke-direct {v2, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1497
    :goto_2b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_2c

    .line 1500
    :cond_28
    move-object/from16 v1, v17

    :goto_2c
    const-string v0, "StartCommonTimeManagementService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1502
    :try_start_2c
    new-instance v14, Lcom/android/server/CommonTimeManagementService;

    invoke-direct {v14, v9}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_2c

    .line 1503
    :try_start_2d
    const-string v0, "commontime_management"

    invoke-static {v0, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_2b

    .line 1506
    nop

    .line 1507
    move-object/from16 v28, v1

    goto :goto_2e

    .line 1504
    :catch_2b
    move-exception v0

    goto :goto_2d

    :catch_2c
    move-exception v0

    move-object/from16 v14, v17

    .line 1505
    :goto_2d
    move-object/from16 v28, v1

    const-string/jumbo v1, "starting CommonTimeManagementService service"

    invoke-direct {v2, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1507
    :goto_2e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1509
    const-string v0, "CertBlacklister"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1511
    :try_start_2e
    new-instance v0, Lcom/android/server/CertBlacklister;

    invoke-direct {v0, v9}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_2d

    .line 1514
    goto :goto_2f

    .line 1512
    :catch_2d
    move-exception v0

    .line 1513
    const-string/jumbo v1, "starting CertBlacklister"

    invoke-direct {v2, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1515
    :goto_2f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1519
    const-string v0, "StartEmergencyAffordanceService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1520
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1521
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1525
    const-string v0, "StartDreamManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1526
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1527
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1529
    const-string v0, "AddGraphicsStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1530
    const-string v0, "graphicsstats"

    new-instance v1, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v1, v9}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1532
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1534
    sget-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v0, :cond_29

    .line 1535
    const-string v0, "AddCoverageService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1536
    const-string v0, "coverage"

    new-instance v1, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v1}, Lcom/android/server/coverage/CoverageService;-><init>()V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1537
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1540
    :cond_29
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1543
    :try_start_2f
    const-string v0, "SystemServer"

    const-string v1, "Gesture Sensor Service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    new-instance v1, Lcom/android/server/gesture/GestureService;

    invoke-direct {v1, v9, v8}, Lcom/android/server/gesture/GestureService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_2f

    .line 1545
    :try_start_30
    const-string v0, "gesture"

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_2e

    .line 1548
    nop

    .line 1551
    move-object/from16 v29, v1

    move-object/from16 v30, v3

    goto :goto_31

    .line 1546
    :catch_2e
    move-exception v0

    goto :goto_30

    :catch_2f
    move-exception v0

    move-object/from16 v1, v17

    .line 1547
    :goto_30
    move-object/from16 v29, v1

    const-string v1, "SystemServer"

    move-object/from16 v30, v3

    const-string v3, "Failure starting Gesture Sensor Service"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 1551
    :cond_2a
    move-object/from16 v30, v3

    move-object/from16 v29, v17

    :goto_31
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.print"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1552
    const-string v0, "StartPrintManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1553
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.print.PrintManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1554
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1557
    :cond_2b
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.companion_device_setup"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1558
    const-string v0, "StartCompanionDeviceManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1559
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.companion.CompanionDeviceManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1560
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1563
    :cond_2c
    const-string v0, "StartRestrictionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1564
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1565
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1567
    const-string v0, "StartMediaSessionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1568
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1569
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1571
    const-string v0, "StartMediaUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1572
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/media/MediaUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1573
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1575
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1576
    const-string v0, "StartHdmiControlService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1577
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1578
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1581
    :cond_2d
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.live_tv"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.leanback"

    .line 1582
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1583
    :cond_2e
    const-string v0, "StartTvInputManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1584
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1585
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1588
    :cond_2f
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.picture_in_picture"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1589
    const-string v0, "StartMediaResourceMonitor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1590
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1591
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1594
    :cond_30
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1595
    const-string v0, "StartTvRemoteService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1596
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1597
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1600
    :cond_31
    const-string v0, "StartMediaRouterService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1602
    :try_start_31
    new-instance v1, Lcom/android/server/media/MediaRouterService;

    invoke-direct {v1, v9}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_31

    .line 1603
    :try_start_32
    const-string v0, "media_router"

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_30

    .line 1606
    goto :goto_33

    .line 1604
    :catch_30
    move-exception v0

    goto :goto_32

    :catch_31
    move-exception v0

    move-object/from16 v1, v17

    .line 1605
    :goto_32
    const-string/jumbo v3, "starting MediaRouterService"

    invoke-direct {v2, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1607
    :goto_33
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1609
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.fingerprint"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 1610
    const-string v0, "StartFingerprintSensor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1611
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1612
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1615
    :cond_32
    const-string v0, "StartBackgroundDexOptService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1617
    :try_start_33
    invoke-static {v9}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_32

    .line 1620
    nop

    .line 1621
    move-object/from16 v31, v1

    goto :goto_34

    .line 1618
    :catch_32
    move-exception v0

    .line 1619
    const-string/jumbo v3, "starting StartBackgroundDexOptService"

    move-object/from16 v31, v1

    move-object v1, v0

    invoke-direct {v2, v3, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1621
    :goto_34
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1623
    const-string v0, "StartPruneInstantAppsJobService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1625
    :try_start_34
    invoke-static {v9}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_33

    .line 1628
    goto :goto_35

    .line 1626
    :catch_33
    move-exception v0

    .line 1627
    const-string v1, "StartPruneInstantAppsJobService"

    move-object v3, v0

    invoke-direct {v2, v1, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1629
    :goto_35
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1632
    const-string v0, "StartShortcutServiceLifecycle"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1633
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1634
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1636
    const-string v0, "StartLauncherAppsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1637
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1638
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1640
    const-string v0, "StartCrossProfileAppsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1641
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/pm/CrossProfileAppsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1643
    const-string v0, "StartPocketService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1644
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/pocket/PocketService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1645
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1647
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1648
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    .line 1649
    const-string v0, "StartPocketBridgeService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1650
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/pocket/PocketBridgeService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1651
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1655
    :cond_33
    iget-boolean v0, v2, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_34

    .line 1656
    const-string v0, "StartLineageHardwareService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1657
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/custom/LineageHardwareService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1658
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1659
    const-string v0, "StartLiveDisplayService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1660
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/custom/display/LiveDisplayService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1661
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1665
    :cond_34
    move-object/from16 v18, v7

    move-object/from16 v7, v24

    move-object/from16 v17, v25

    move-object/from16 v1, v26

    move-object/from16 v3, v29

    move-object/from16 v16, v31

    move-object/from16 v34, v10

    move-object v10, v6

    move-object/from16 v6, v34

    goto :goto_36

    :cond_35
    move-object/from16 v1, v17

    move-object v3, v1

    move-object v6, v3

    move-object v7, v6

    move-object v10, v7

    move-object v14, v10

    move-object/from16 v16, v14

    move-object/from16 v18, v16

    move-object/from16 v27, v18

    move-object/from16 v28, v27

    move-object/from16 v30, v28

    :goto_36
    if-nez v15, :cond_36

    .line 1666
    const-string v0, "StartMediaProjectionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1667
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v32, v8

    const-class v8, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1668
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_37

    .line 1671
    :cond_36
    move-object/from16 v32, v8

    :goto_37
    if-eqz v15, :cond_38

    .line 1672
    const-string v0, "StartWearConfigService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1673
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.google.android.clockwork.WearConfigManagerService"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1674
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1676
    const-string v0, "StartWearConnectivityService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1677
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1678
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1680
    const-string v0, "StartWearTimeService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1681
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.google.android.clockwork.display.WearDisplayService"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1682
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1683
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1685
    if-eqz v13, :cond_37

    .line 1686
    const-string v0, "StartWearLeftyService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1687
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.google.android.clockwork.lefty.WearLeftyService"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1688
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1691
    :cond_37
    const-string v0, "StartWearGlobalActionsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1692
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.clockwork.globalactions.GlobalActionsService"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1693
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1696
    :cond_38
    if-nez v12, :cond_39

    .line 1697
    const-string v0, "StartSliceManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1698
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.slice.SliceManagerService$Lifecycle"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1699
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1702
    :cond_39
    if-nez v11, :cond_3a

    .line 1703
    const-string v0, "StartCameraServiceProxy"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1704
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1705
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1708
    :cond_3a
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v8, "android.hardware.type.embedded"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1709
    const-string v0, "StartIoTSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1710
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.google.android.things.services.IoTSystemService"

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1711
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1715
    :cond_3b
    const-string v0, "StartStatsCompanionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1716
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/stats/StatsCompanionService$Lifecycle;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1717
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1720
    iget-object v0, v2, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "adb_port"

    const-string/jumbo v11, "service.adb.tcp.port"

    const/4 v12, -0x1

    .line 1721
    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 1720
    invoke-static {v0, v8, v11}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1724
    iget-object v0, v2, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "adb_port"

    .line 1725
    invoke-static {v8}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    new-instance v11, Lcom/android/server/SystemServer$AdbPortObserver;

    invoke-direct {v11, v2}, Lcom/android/server/SystemServer$AdbPortObserver;-><init>(Lcom/android/server/SystemServer;)V

    .line 1724
    const/4 v12, 0x0

    invoke-virtual {v0, v8, v12, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1730
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v8

    .line 1731
    if-eqz v8, :cond_3c

    .line 1732
    const-string v0, "EnterSafeModeAndDisableJitCompilation"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1733
    iget-object v0, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1735
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1736
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_38

    .line 1739
    :cond_3c
    const-string v0, "StartJitCompilation"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1740
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    .line 1741
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1745
    :goto_38
    const-string v0, "StartMmsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1746
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/MmsServiceBroker;

    .line 1747
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1749
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v11, "android.software.autofill"

    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1750
    const-string v0, "StartAutoFillService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1751
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v11, "com.android.server.autofill.AutofillManagerService"

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1752
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1757
    :cond_3d
    const-string v0, "MakeVibratorServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1759
    :try_start_35
    invoke-virtual {v5}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_34

    .line 1762
    goto :goto_39

    .line 1760
    :catch_34
    move-exception v0

    .line 1761
    const-string v5, "making Vibrator Service ready"

    move-object v11, v0

    invoke-direct {v2, v5, v11}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1763
    :goto_39
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1765
    const-string v0, "MakeLockSettingsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1766
    if-eqz v1, :cond_3e

    .line 1768
    :try_start_36
    invoke-interface {v1}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_35

    .line 1771
    goto :goto_3a

    .line 1769
    :catch_35
    move-exception v0

    .line 1770
    const-string v1, "making Lock Settings Service ready"

    move-object v5, v0

    invoke-direct {v2, v1, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1773
    :cond_3e
    :goto_3a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1776
    const-string v0, "StartBootPhaseLockSettingsReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1777
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v1, 0x1e0

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1778
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1780
    const-string v0, "StartBootPhaseSystemServicesReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1781
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1782
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1784
    const-string v0, "MakeWindowManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1786
    :try_start_37
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_36

    .line 1789
    goto :goto_3b

    .line 1787
    :catch_36
    move-exception v0

    .line 1788
    const-string v1, "making Window Manager Service ready"

    move-object v5, v0

    invoke-direct {v2, v1, v5}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1790
    :goto_3b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1792
    if-eqz v8, :cond_3f

    .line 1793
    iget-object v0, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1797
    :cond_3f
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->detectDisableOverlays()Z

    move-result v0

    .line 1798
    if-eqz v0, :cond_40

    .line 1799
    iget-object v0, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->disableOverlays()V

    .line 1805
    :cond_40
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v0

    .line 1806
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1807
    const-string/jumbo v11, "window"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    .line 1808
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1809
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1812
    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 1813
    invoke-virtual {v0}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v1

    if-eqz v1, :cond_41

    .line 1814
    invoke-virtual {v0}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 1817
    :cond_41
    const-string v0, "MakePowerManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1820
    :try_start_38
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    iget-object v1, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_37

    .line 1823
    goto :goto_3c

    .line 1821
    :catch_37
    move-exception v0

    .line 1822
    const-string v1, "making Power Manager Service ready"

    invoke-direct {v2, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1824
    :goto_3c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1826
    const-string v0, "MakePackageManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1827
    iget-object v0, v2, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    .line 1828
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1830
    const-string v0, "MakeDisplayManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1833
    :try_start_39
    iget-object v0, v2, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    iget-boolean v1, v2, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-virtual {v0, v8, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_38

    .line 1836
    goto :goto_3d

    .line 1834
    :catch_38
    move-exception v0

    .line 1835
    const-string v1, "making Display Manager Service ready"

    invoke-direct {v2, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1837
    :goto_3d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1839
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 1842
    const-string v0, "StartDeviceSpecificServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1843
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1845
    array-length v8, v1

    :goto_3e
    if-ge v5, v8, :cond_42

    aget-object v11, v1, v5

    .line 1846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "StartDeviceSpecificServices "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1848
    :try_start_3a
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_39

    .line 1851
    goto :goto_3f

    .line 1849
    :catch_39
    move-exception v0

    .line 1850
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "starting "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1852
    :goto_3f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1845
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    .line 1854
    :cond_42
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1856
    const-string v0, "StartBootPhaseDeviceSpecificServicesReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1857
    iget-object v0, v2, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v1, 0x208

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1858
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1860
    if-eqz v3, :cond_43

    .line 1862
    :try_start_3b
    invoke-virtual {v3}, Lcom/android/server/gesture/GestureService;->systemReady()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_3a

    .line 1865
    goto :goto_40

    .line 1863
    :catch_3a
    move-exception v0

    .line 1864
    const-string v1, "making Gesture Sensor Service ready"

    move-object v3, v0

    invoke-direct {v2, v1, v3}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1869
    :cond_43
    :goto_40
    nop

    .line 1870
    nop

    .line 1871
    nop

    .line 1872
    nop

    .line 1873
    nop

    .line 1874
    nop

    .line 1875
    nop

    .line 1876
    nop

    .line 1877
    nop

    .line 1878
    nop

    .line 1879
    nop

    .line 1880
    nop

    .line 1881
    nop

    .line 1882
    nop

    .line 1889
    iget-object v0, v2, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v15, Lcom/android/server/-$$Lambda$SystemServer$s9erd2iGXiS7bbg_mQJUxyVboQM;

    move-object v1, v15

    move-object v3, v9

    move-object/from16 v5, v17

    move-object/from16 v17, v32

    move-object/from16 v8, v27

    move-object v9, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v30

    move-object/from16 v12, v28

    move-object v13, v14

    move-object/from16 v14, v17

    move-object/from16 v33, v0

    move-object v0, v15

    move-object/from16 v15, v22

    move-object/from16 v17, v19

    invoke-direct/range {v1 .. v17}, Lcom/android/server/-$$Lambda$SystemServer$s9erd2iGXiS7bbg_mQJUxyVboQM;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    sget-object v1, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    move-object/from16 v2, v33

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Landroid/util/TimingsTraceLog;)V

    .line 2067
    return-void
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 4

    .line 2070
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2071
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2073
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2075
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2076
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    .line 2077
    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .locals 1

    .line 2080
    const-string v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2081
    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0, p0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 2082
    return-void
.end method

.method private static traceEnd()V
    .locals 1

    .line 2085
    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2086
    return-void
.end method
