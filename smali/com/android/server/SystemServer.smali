.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


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

.field private static final DEFAULT_SYSTEM_THEME:I = 0x10303d4

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final IOT_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.things.services.IoTSystemService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.locksettings.LockSettingsService$Lifecycle"

.field private static final LOWPAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.lowpan.LowpanService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

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

.field private mSecrecyService:Lcom/android/server/secrecy/SecrecyService;

.field private mSensorServiceStart:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

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
    .registers 4

    .line 175
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTiming"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 332
    const-string v0, "1"

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 334
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 335
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 336
    return-void
.end method

.method private createSystemContext()V
    .registers 4

    .line 553
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 554
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 555
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x10303d4

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 557
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 558
    .local v1, "systemUiContext":Landroid/content/Context;
    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 559
    return-void
.end method

.method private isFirstBootOrUpgrade()Z
    .registers 2

    .line 490
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method static synthetic lambda$startBootstrapServices$0()V
    .registers 4

    .line 721
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 723
    .local v0, "traceLog":Landroid/util/TimingsTraceLog;
    const-string v1, "StartSensorService"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 724
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 725
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 726
    return-void
.end method

.method static synthetic lambda$startOtherServices$1()V
    .registers 4

    .line 833
    :try_start_0
    const-string v0, "SystemServer"

    const-string v1, "SecondaryZygotePreload"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 836
    .local v0, "traceLog":Landroid/util/TimingsTraceLog;
    const-string v1, "SecondaryZygotePreload"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 837
    sget-object v1, Landroid/os/Process;->zygoteProcess:Landroid/os/ZygoteProcess;

    sget-object v2, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 838
    const-string v1, "SystemServer"

    const-string v2, "Unable to preload default resources"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_2a
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    .line 843
    .end local v0    # "traceLog":Landroid/util/TimingsTraceLog;
    goto :goto_36

    .line 841
    :catch_2e
    move-exception v0

    .line 842
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "SystemServer"

    const-string v2, "Exception preloading default resources"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 844
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_36
    return-void
.end method

.method static synthetic lambda$startOtherServices$2()V
    .registers 4

    .line 967
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 969
    .local v0, "traceLog":Landroid/util/TimingsTraceLog;
    const-string v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 970
    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    .line 971
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 972
    return-void
.end method

.method public static synthetic lambda$startOtherServices$3(Lcom/android/server/SystemServer;)V
    .registers 5

    .line 1997
    const-string v0, "SystemServer"

    const-string v1, "WebViewFactoryPreparation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string v1, "SystemServerTimingAsync"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 2000
    .local v0, "traceLog":Landroid/util/TimingsTraceLog;
    const-string v1, "WebViewFactoryPreparation"

    invoke-virtual {v0, v1}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 2001
    iget-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v2, "Zygote preload"

    invoke-static {v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 2002
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 2003
    iget-object v1, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v1}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    .line 2004
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2005
    return-void
.end method

.method public static synthetic lambda$startOtherServices$4(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/android/server/OemExService;Lcom/android/server/OnePlusNfcService;)V
    .registers 35
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerF"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "networkManagementF"    # Lcom/android/server/NetworkManagementService;
    .param p4, "networkPolicyF"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p5, "ipSecServiceF"    # Lcom/android/server/IpSecService;
    .param p6, "networkStatsF"    # Lcom/android/server/net/NetworkStatsService;
    .param p7, "connectivityF"    # Lcom/android/server/ConnectivityService;
    .param p8, "locationF"    # Lcom/android/server/LocationManagerService;
    .param p9, "countryDetectorF"    # Lcom/android/server/CountryDetectorService;
    .param p10, "networkTimeUpdaterF"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p11, "commonTimeMgmtServiceF"    # Lcom/android/server/CommonTimeManagementService;
    .param p12, "inputManagerF"    # Lcom/android/server/input/InputManagerService;
    .param p13, "telephonyRegistryF"    # Lcom/android/server/TelephonyRegistry;
    .param p14, "mediaRouterF"    # Lcom/android/server/media/MediaRouterService;
    .param p15, "mmsServiceF"    # Lcom/android/server/MmsServiceBroker;
    .param p16, "mOemExServiceF"    # Lcom/android/server/OemExService;
    .param p17, "mOnePlusNfcServiceF"    # Lcom/android/server/OnePlusNfcService;

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p16

    .line 1978
    const-string v0, "SystemServer"

    const-string v4, "Making services ready"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    const-string v0, "StartActivityManagerReadyPhase"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1980
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x226

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1982
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1983
    const-string v0, "StartObservingNativeCrashes"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1985
    :try_start_21
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_26} :catch_27

    .line 1988
    goto :goto_2e

    .line 1986
    :catch_27
    move-exception v0

    .line 1987
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "observing native crashes"

    invoke-direct {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1989
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1993
    const-string v4, "WebViewFactoryPreparation"

    .line 1994
    .local v4, "WEBVIEW_PREPARATION":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1995
    .local v0, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-boolean v5, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v5, :cond_4b

    iget-object v5, v1, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    if-eqz v5, :cond_4b

    .line 1996
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v5

    new-instance v6, Lcom/android/server/-$$Lambda$SystemServer$Y1gEdKr_Hb7K7cbTDAo_WOJ-SYI;

    invoke-direct {v6, v1}, Lcom/android/server/-$$Lambda$SystemServer$Y1gEdKr_Hb7K7cbTDAo_WOJ-SYI;-><init>(Lcom/android/server/SystemServer;)V

    const-string v7, "WebViewFactoryPreparation"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 2008
    .end local v0    # "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .local v5, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_4b
    move-object v5, v0

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.type.automotive"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 2009
    const-string v0, "StartCarServiceHelperService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2010
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.internal.car.CarServiceHelperService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2011
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2014
    :cond_65
    const-string v0, "StartSystemUI"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2016
    :try_start_6a
    invoke-static/range {p1 .. p2}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6d} :catch_6e

    .line 2019
    goto :goto_76

    .line 2017
    :catch_6e
    move-exception v0

    move-object v6, v0

    .line 2018
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting System UI"

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2020
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_76
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2021
    const-string v0, "MakeNetworkManagementServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2023
    if-eqz p3, :cond_8d

    :try_start_80
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_8d

    .line 2024
    :catch_84
    move-exception v0

    move-object v7, v0

    .line 2025
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making Network Managment Service ready"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2025
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_8e

    .line 2026
    :cond_8d
    :goto_8d
    nop

    .line 2027
    :goto_8e
    const/4 v0, 0x0

    .line 2028
    .local v0, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    if-eqz v2, :cond_96

    .line 2029
    nop

    .line 2030
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    .line 2032
    .end local v0    # "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    .local v7, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    :cond_96
    move-object v7, v0

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2033
    const-string v0, "MakeIpSecServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2035
    if-eqz p5, :cond_ae

    :try_start_a1
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/IpSecService;->systemReady()V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_a4} :catch_a5

    goto :goto_ae

    .line 2036
    :catch_a5
    move-exception v0

    move-object v8, v0

    .line 2037
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "making IpSec Service ready"

    invoke-direct {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2037
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_af

    .line 2038
    :cond_ae
    :goto_ae
    nop

    .line 2039
    :goto_af
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2040
    const-string v0, "MakeNetworkStatsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2042
    if-eqz p6, :cond_c6

    :try_start_b9
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_bc
    .catch Ljava/lang/Throwable; {:try_start_b9 .. :try_end_bc} :catch_bd

    goto :goto_c6

    .line 2043
    :catch_bd
    move-exception v0

    move-object v9, v0

    .line 2044
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "making Network Stats Service ready"

    invoke-direct {v1, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2044
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_c7

    .line 2045
    :cond_c6
    :goto_c6
    nop

    .line 2046
    :goto_c7
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2047
    const-string v0, "MakeConnectivityServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2049
    if-eqz p7, :cond_de

    :try_start_d1
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_d4
    .catch Ljava/lang/Throwable; {:try_start_d1 .. :try_end_d4} :catch_d5

    goto :goto_de

    .line 2050
    :catch_d5
    move-exception v0

    move-object v10, v0

    .line 2051
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "making Connectivity Service ready"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2051
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_df

    .line 2052
    :cond_de
    :goto_de
    nop

    .line 2053
    :goto_df
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2054
    const-string v0, "MakeNetworkPolicyServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2056
    if-eqz v2, :cond_f6

    .line 2057
    :try_start_e9
    invoke-virtual {v2, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_ec
    .catch Ljava/lang/Throwable; {:try_start_e9 .. :try_end_ec} :catch_ed

    goto :goto_f6

    .line 2059
    :catch_ed
    move-exception v0

    move-object v10, v0

    .line 2060
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "making Network Policy Service ready"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2060
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_f7

    .line 2061
    :cond_f6
    :goto_f6
    nop

    .line 2062
    :goto_f7
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2064
    const-string v0, "StartWatchdog"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2065
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/Watchdog;->start()V

    .line 2066
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2069
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    .line 2073
    const-string v0, "PhaseThirdPartyAppsCanStart"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2075
    if-eqz v5, :cond_11a

    .line 2076
    const-string v0, "WebViewFactoryPreparation"

    invoke-static {v5, v0}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 2078
    :cond_11a
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v10, 0x258

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 2080
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2082
    const-string v0, "MakeLocationServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2084
    if-eqz p8, :cond_137

    :try_start_12b
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_12e
    .catch Ljava/lang/Throwable; {:try_start_12b .. :try_end_12e} :catch_12f

    goto :goto_137

    .line 2085
    :catch_12f
    move-exception v0

    move-object v11, v0

    .line 2086
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v11, "Notifying Location Service running"

    invoke-direct {v1, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2086
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_138

    .line 2087
    :cond_137
    :goto_137
    nop

    .line 2088
    :goto_138
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2089
    const-string v0, "MakeCountryDetectionServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2091
    if-eqz p9, :cond_14e

    :try_start_142
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_145
    .catch Ljava/lang/Throwable; {:try_start_142 .. :try_end_145} :catch_146

    goto :goto_14e

    .line 2092
    :catch_146
    move-exception v0

    move-object v12, v0

    .line 2093
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v12, "Notifying CountryDetectorService running"

    invoke-direct {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2093
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_14f

    .line 2094
    :cond_14e
    :goto_14e
    nop

    .line 2095
    :goto_14f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2096
    const-string v0, "MakeNetworkTimeUpdateReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2098
    if-eqz p10, :cond_165

    :try_start_159
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_15c
    .catch Ljava/lang/Throwable; {:try_start_159 .. :try_end_15c} :catch_15d

    goto :goto_165

    .line 2099
    :catch_15d
    move-exception v0

    move-object v13, v0

    .line 2100
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v13, "Notifying NetworkTimeService running"

    invoke-direct {v1, v13, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2100
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_166

    .line 2101
    :cond_165
    :goto_165
    nop

    .line 2102
    :goto_166
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2103
    const-string v0, "MakeCommonTimeManagementServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2105
    if-eqz p11, :cond_17c

    .line 2106
    :try_start_170
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_173
    .catch Ljava/lang/Throwable; {:try_start_170 .. :try_end_173} :catch_174

    goto :goto_17c

    .line 2108
    :catch_174
    move-exception v0

    move-object v14, v0

    .line 2109
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v14, "Notifying CommonTimeManagementService running"

    invoke-direct {v1, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2109
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_17d

    .line 2110
    :cond_17c
    :goto_17c
    nop

    .line 2111
    :goto_17d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2112
    const-string v0, "MakeInputManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2115
    if-eqz p12, :cond_193

    :try_start_187
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_18a
    .catch Ljava/lang/Throwable; {:try_start_187 .. :try_end_18a} :catch_18b

    goto :goto_193

    .line 2116
    :catch_18b
    move-exception v0

    move-object v15, v0

    .line 2117
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v2, "Notifying InputManagerService running"

    invoke-direct {v1, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2117
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_194

    .line 2118
    :cond_193
    :goto_193
    nop

    .line 2119
    :goto_194
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2120
    const-string v0, "MakeTelephonyRegistryReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2122
    if-eqz p13, :cond_1aa

    :try_start_19e
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_1a1
    .catch Ljava/lang/Throwable; {:try_start_19e .. :try_end_1a1} :catch_1a2

    goto :goto_1aa

    .line 2123
    :catch_1a2
    move-exception v0

    move-object v15, v0

    .line 2124
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v2, "Notifying TelephonyRegistry running"

    invoke-direct {v1, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2124
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_1ab

    .line 2125
    :cond_1aa
    :goto_1aa
    nop

    .line 2126
    :goto_1ab
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2127
    const-string v0, "MakeMediaRouterServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2129
    if-eqz p14, :cond_1c1

    :try_start_1b5
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_1b8
    .catch Ljava/lang/Throwable; {:try_start_1b5 .. :try_end_1b8} :catch_1b9

    goto :goto_1c1

    .line 2130
    :catch_1b9
    move-exception v0

    move-object v15, v0

    .line 2131
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v2, "Notifying MediaRouterService running"

    invoke-direct {v1, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2131
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_1c2

    .line 2132
    :cond_1c1
    :goto_1c1
    nop

    .line 2133
    :goto_1c2
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2134
    const-string v0, "MakeMmsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2136
    if-eqz p15, :cond_1d8

    :try_start_1cc
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_1cf
    .catch Ljava/lang/Throwable; {:try_start_1cc .. :try_end_1cf} :catch_1d0

    goto :goto_1d8

    .line 2137
    :catch_1d0
    move-exception v0

    move-object v15, v0

    .line 2138
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v2, "Notifying MmsService running"

    invoke-direct {v1, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2138
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_1d9

    .line 2139
    :cond_1d8
    :goto_1d8
    nop

    .line 2140
    :goto_1d9
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2142
    const-string v0, "IncidentDaemonReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2146
    :try_start_1e1
    const-string/jumbo v0, "incident"

    .line 2147
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2146
    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    .line 2148
    .local v0, "incident":Landroid/os/IIncidentManager;
    if-eqz v0, :cond_1f1

    invoke-interface {v0}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_1f1
    .catch Ljava/lang/Throwable; {:try_start_1e1 .. :try_end_1f1} :catch_1f2

    .line 2151
    .end local v0    # "incident":Landroid/os/IIncidentManager;
    :cond_1f1
    goto :goto_1f8

    .line 2149
    :catch_1f2
    move-exception v0

    .line 2150
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "Notifying incident daemon running"

    invoke-direct {v1, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2152
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1f8
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2155
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getIndicate()V

    .line 2160
    const-string v0, "OemExServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2162
    if-eqz v3, :cond_214

    .line 2163
    :try_start_207
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mFirstBoot:Z

    invoke-virtual {v3, v0}, Lcom/android/server/OemExService;->systemRunning(Z)V
    :try_end_20c
    .catch Ljava/lang/Throwable; {:try_start_207 .. :try_end_20c} :catch_20d

    goto :goto_214

    .line 2164
    :catch_20d
    move-exception v0

    .line 2165
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v2, "Notifying OemExService running"

    invoke-direct {v1, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2165
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_215

    .line 2166
    :cond_214
    :goto_214
    nop

    .line 2167
    :goto_215
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2170
    const-string v0, "OnePlusNfcServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 2172
    if-eqz p17, :cond_22b

    :try_start_21f
    invoke-virtual/range {p17 .. p17}, Lcom/android/server/OnePlusNfcService;->systemRunning()V
    :try_end_222
    .catch Ljava/lang/Throwable; {:try_start_21f .. :try_end_222} :catch_223

    goto :goto_22b

    .line 2173
    :catch_223
    move-exception v0

    move-object v15, v0

    .line 2174
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v2, "Notifying OnePlusNfcService running"

    invoke-direct {v1, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2174
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_22c

    .line 2175
    :cond_22b
    :goto_22b
    nop

    .line 2176
    :goto_22c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 2178
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .param p0, "args"    # [Ljava/lang/String;

    .line 325
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 326
    return-void
.end method

.method private performPendingShutdown()V
    .registers 10

    .line 499
    const-string/jumbo v0, "sys.shutdown.requested"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "shutdownAction":Ljava/lang/String;
    if-eqz v0, :cond_8c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8c

    .line 502
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1d

    move v2, v4

    goto :goto_1e

    :cond_1d
    move v2, v1

    .line 505
    .local v2, "reboot":Z
    :goto_1e
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x0

    if-le v3, v4, :cond_2e

    .line 506
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 506
    .local v3, "reason":Ljava/lang/String;
    goto :goto_2f

    .line 508
    .end local v3    # "reason":Ljava/lang/String;
    :cond_2e
    move-object v3, v5

    .line 516
    .restart local v3    # "reason":Ljava/lang/String;
    :goto_2f
    if-eqz v3, :cond_75

    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 517
    new-instance v6, Ljava/io/File;

    const-string v7, "/cache/recovery/uncrypt_file"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 518
    .local v6, "packageFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_75

    .line 519
    move-object v7, v5

    .line 521
    .local v7, "filename":Ljava/lang/String;
    :try_start_48
    invoke-static {v6, v1, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4c} :catch_4e

    move-object v7, v1

    .line 524
    goto :goto_56

    .line 522
    :catch_4e
    move-exception v1

    .line 523
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "SystemServer"

    const-string v8, "Error reading uncrypt package file"

    invoke-static {v5, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    .end local v1    # "e":Ljava/io/IOException;
    :goto_56
    if-eqz v7, :cond_75

    const-string v1, "/data"

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 527
    new-instance v1, Ljava/io/File;

    const-string v5, "/cache/recovery/block.map"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_75

    .line 528
    const-string v1, "SystemServer"

    const-string v4, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void

    .line 535
    .end local v6    # "packageFile":Ljava/io/File;
    .end local v7    # "filename":Ljava/lang/String;
    :cond_75
    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    .line 545
    .local v1, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v5, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v5

    .line 546
    .local v5, "msg":Landroid/os/Message;
    invoke-virtual {v5, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 547
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 550
    .end local v1    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "reboot":Z
    .end local v3    # "reason":Ljava/lang/String;
    .end local v5    # "msg":Landroid/os/Message;
    :cond_8c
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 494
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 496
    return-void
.end method

.method private run()V
    .registers 12

    .line 340
    :try_start_0
    const-string v0, "InitBeforeStartServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_1a

    .line 346
    const-string v0, "SystemServer"

    const-string v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {v2, v3}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 353
    :cond_1a
    const-string/jumbo v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "timezoneProperty":Ljava/lang/String;
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 355
    :cond_29
    const-string v1, "SystemServer"

    const-string v2, "Timezone not set; setting to GMT."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string/jumbo v1, "persist.sys.timezone"

    const-string v2, "GMT"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_38
    const-string/jumbo v1, "persist.sys.language"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6b

    .line 368
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, "languageTag":Ljava/lang/String;
    const-string/jumbo v2, "persist.sys.locale"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string/jumbo v2, "persist.sys.language"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string/jumbo v2, "persist.sys.country"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string/jumbo v2, "persist.sys.localevar"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .end local v1    # "languageTag":Ljava/lang/String;
    :cond_6b
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    .line 379
    invoke-static {v1}, Landroid/content/pm/PackageItemInfo;->setForceSafeLabels(Z)V

    .line 381
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    .line 384
    const-string v3, "SystemServer"

    const-string v4, "Entered the Android system server!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    long-to-int v3, v3

    .line 386
    .local v3, "uptimeMillis":I
    const/16 v4, 0xbc2

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 387
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v4, :cond_90

    .line 388
    const-string v4, "boot_system_server_init"

    invoke-static {v2, v4, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 398
    :cond_90
    const-string/jumbo v4, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 405
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    const v5, 0x3f4ccccd    # 0.8f

    invoke-virtual {v4, v5}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 409
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 413
    invoke-static {v1}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 417
    invoke-static {v1}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 420
    invoke-static {v1}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    .line 423
    invoke-static {v1}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 426
    const/16 v1, 0x1f

    invoke-static {v1}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 429
    const/4 v1, -0x2

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 431
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 432
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 433
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0xc8

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 437
    const-string v1, "android_servers"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 441
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 444
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 447
    new-instance v1, Lcom/android/server/SystemServiceManager;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 448
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    iget-wide v7, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v9, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/SystemServiceManager;->setStartInfo(ZJJ)V

    .line 450
    const-class v1, Lcom/android/server/SystemServiceManager;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v1, v4}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 452
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;
    :try_end_102
    .catchall {:try_start_0 .. :try_end_102} :catchall_171

    .line 454
    .end local v0    # "timezoneProperty":Ljava/lang/String;
    .end local v3    # "uptimeMillis":I
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 455
    nop

    .line 459
    :try_start_106
    const-string v0, "StartServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 460
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 461
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 462
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V

    .line 463
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->shutdown()V
    :try_end_117
    .catch Ljava/lang/Throwable; {:try_start_106 .. :try_end_117} :catch_15d
    .catchall {:try_start_106 .. :try_end_117} :catchall_15b

    .line 469
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 470
    nop

    .line 472
    invoke-static {v2}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 474
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_150

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_150

    .line 475
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-int v0, v0

    .line 476
    .local v0, "uptimeMillis":I
    const-string v1, "boot_system_server_ready"

    invoke-static {v2, v1, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 477
    const v1, 0xea60

    .line 478
    .local v1, "MAX_UPTIME_MILLIS":I
    const v2, 0xea60

    if-le v0, v2, :cond_150

    .line 479
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SystemServerTiming"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    .end local v0    # "uptimeMillis":I
    .end local v1    # "MAX_UPTIME_MILLIS":I
    :cond_150
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 486
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :catchall_15b
    move-exception v0

    goto :goto_16d

    .line 464
    :catch_15d
    move-exception v0

    .line 465
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_15e
    const-string v1, "System"

    const-string v2, "******************************************"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string v1, "System"

    const-string v2, "************ Failure starting system services"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    throw v0
    :try_end_16d
    .catchall {:try_start_15e .. :try_end_16d} :catchall_15b

    .line 469
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_16d
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v0

    .line 454
    :catchall_171
    move-exception v0

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v0
.end method

.method private startBootstrapServices()V
    .registers 10

    .line 569
    const-string v0, "SystemServer"

    const-string v1, "Reading configuration..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const-string v0, "ReadingSystemConfig"

    .line 571
    .local v0, "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    const-string v1, "ReadingSystemConfig"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 572
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v1

    sget-object v2, Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;->INSTANCE:Lcom/android/server/-$$Lambda$YWiwiKm_Qgqb55C6tTuq_n2JzdY;

    const-string v3, "ReadingSystemConfig"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 573
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 578
    const-string v1, "StartInstaller"

    invoke-static {v1}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 579
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/pm/Installer;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    .line 580
    .local v1, "installer":Lcom/android/server/pm/Installer;
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 584
    const-string v2, "DeviceIdentifiersPolicyService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 585
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 586
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 589
    const-string v2, "StartActivityManager"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 590
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 591
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 592
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 593
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 594
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 600
    const-string v2, "StartPowerManager"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 601
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 602
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 606
    const-string v2, "InitPowerManagement"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 607
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 608
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 611
    const-string v2, "StartRecoverySystemService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 612
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/RecoverySystemService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 613
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 618
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/RescueParty;->noteBoot(Landroid/content/Context;)V

    .line 621
    const-string v2, "StartLightsService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 622
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/lights/LightsService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 623
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 625
    const-string v2, "StartSidekickService"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 627
    const-string v2, "config.enable_sidekick_graphics"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_ba

    .line 628
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.google.android.clockwork.sidekick.SidekickService"

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 630
    :cond_ba
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 634
    const-string v2, "StartDisplayManager"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 635
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 636
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 639
    const-string v2, "WaitForDisplay"

    invoke-static {v2}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 640
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 641
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 644
    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 645
    .local v2, "cryptState":Ljava/lang/String;
    const-string/jumbo v4, "trigger_restart_min_framework"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_fb

    .line 646
    const-string v4, "SystemServer"

    const-string v6, "Detected encryption in progress - only parsing core apps"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_10c

    .line 648
    :cond_fb
    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10c

    .line 649
    const-string v4, "SystemServer"

    const-string v6, "Device encrypted - only parsing core apps"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iput-boolean v5, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 654
    :cond_10c
    :goto_10c
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_124

    .line 655
    const-string v4, "SystemServer"

    const-string v6, "Regionalization Service"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    new-instance v4, Lcom/android/server/os/RegionalizationService;

    invoke-direct {v4}, Lcom/android/server/os/RegionalizationService;-><init>()V

    .line 657
    .local v4, "regionalizationService":Lcom/android/server/os/RegionalizationService;
    const-string/jumbo v6, "regionalization"

    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 661
    .end local v4    # "regionalizationService":Lcom/android/server/os/RegionalizationService;
    :cond_124
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/4 v6, 0x0

    if-nez v4, :cond_133

    .line 662
    const-string v4, "boot_package_manager_init_start"

    .line 663
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    long-to-int v7, v7

    .line 662
    invoke-static {v6, v4, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 665
    :cond_133
    const-string v4, "StartPackageManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 666
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v7, :cond_13f

    goto :goto_140

    :cond_13f
    move v5, v3

    :goto_140
    iget-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v4, v1, v5, v7}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 668
    iget-object v4, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 669
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 670
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 671
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v4, :cond_16f

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v4

    if-nez v4, :cond_16f

    .line 672
    const-string v4, "boot_package_manager_init_ready"

    .line 673
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    long-to-int v5, v7

    .line 672
    invoke-static {v6, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 678
    :cond_16f
    iget-boolean v4, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_199

    .line 679
    const-string v4, "config.disable_otadexopt"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 681
    .local v3, "disableOtaDexopt":Z
    if-nez v3, :cond_199

    .line 682
    const-string v4, "StartOtaDexOptService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 684
    :try_start_180
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4, v5}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_187
    .catch Ljava/lang/Throwable; {:try_start_180 .. :try_end_187} :catch_18d
    .catchall {:try_start_180 .. :try_end_187} :catchall_18b

    .line 688
    :goto_187
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 689
    goto :goto_199

    .line 688
    :catchall_18b
    move-exception v4

    goto :goto_195

    .line 685
    :catch_18d
    move-exception v4

    .line 686
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_18e
    const-string/jumbo v5, "starting OtaDexOptService"

    invoke-direct {p0, v5, v4}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_194
    .catchall {:try_start_18e .. :try_end_194} :catchall_18b

    .line 686
    .end local v4    # "e":Ljava/lang/Throwable;
    goto :goto_187

    .line 688
    :goto_195
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    throw v4

    .line 693
    .end local v3    # "disableOtaDexopt":Z
    :cond_199
    :goto_199
    const-string v3, "StartUserManagerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 694
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 695
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 698
    const-string v3, "InitAttributerCache"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 699
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 700
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 703
    const-string v3, "SetSystemProcess"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 704
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 705
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 709
    iget-object v3, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    .line 712
    const-string v3, "StartOverlayManagerService"

    invoke-static {v3}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 713
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v4, Lcom/android/server/om/OverlayManagerService;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;Lcom/android/server/pm/Installer;)V

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 714
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 720
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v3

    sget-object v4, Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$UyrPns7R814g-ZEylCbDKhe8It4;

    const-string v5, "StartSensorService"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 727
    return-void
.end method

.method private startCoreServices()V
    .registers 3

    .line 733
    const-string v0, "StartBatteryService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 736
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 739
    const-string v0, "StartUsageService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 741
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 742
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 741
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 743
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 746
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.webview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 747
    const-string v0, "StartWebViewUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 748
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 749
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 753
    :cond_49
    const-string v0, "StartBinderCallsStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 754
    invoke-static {}, Lcom/android/server/BinderCallsStatsService;->start()V

    .line 755
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 756
    return-void
.end method

.method private static native startHidlServices()V
.end method

.method private startOtherServices()V
    .registers 75

    .line 763
    move-object/from16 v3, p0

    iget-object v2, v3, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 764
    .local v2, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 765
    .local v1, "vibrator":Lcom/android/server/VibratorService;
    const/4 v10, 0x0

    .line 766
    .local v10, "storageManager":Landroid/os/storage/IStorageManager;
    const/4 v11, 0x0

    .line 767
    .local v11, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 768
    .local v12, "ipSecService":Lcom/android/server/IpSecService;
    const/4 v13, 0x0

    .line 769
    .local v13, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/4 v14, 0x0

    .line 770
    .local v14, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/4 v15, 0x0

    .line 771
    .local v15, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v16, 0x0

    .line 772
    .local v16, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v17, 0x0

    .line 773
    .local v17, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v18, 0x0

    .line 774
    .local v18, "serial":Lcom/android/server/SerialService;
    const/16 v19, 0x0

    .line 775
    .local v19, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v20, 0x0

    .line 776
    .local v20, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/4 v4, 0x0

    .line 777
    .local v4, "inputManager":Lcom/android/server/input/InputManagerService;
    const/4 v5, 0x0

    .line 778
    .local v5, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/4 v6, 0x0

    .line 779
    .local v6, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v21, 0x0

    .line 780
    .local v21, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v22, 0x0

    .line 783
    .local v22, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const/16 v23, 0x0

    .line 787
    .local v23, "mOemExService":Lcom/android/server/OemExService;
    const/16 v24, 0x0

    .line 792
    .local v24, "mSDService":Lcom/android/server/oneplus/display/SDService;
    const/16 v25, 0x0

    .line 796
    .local v25, "mOnePlusPowerController":Lcom/android/server/OnePlusPowerController;
    const/16 v26, 0x0

    .line 801
    .local v26, "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    const/4 v7, 0x0

    .line 804
    .local v7, "mParamService":Lcom/android/server/ParamService;
    const/16 v27, 0x0

    .line 805
    .local v27, "wigigP2pService":Ljava/lang/Object;
    const/16 v28, 0x0

    .line 807
    .local v28, "wigigService":Ljava/lang/Object;
    const-string v0, "config.disable_systemtextclassifier"

    const/4 v9, 0x0

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    .line 809
    .local v29, "disableSystemTextClassifier":Z
    const-string v0, "config.disable_cameraservice"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    .line 811
    .local v30, "disableCameraService":Z
    const-string v0, "config.disable_slices"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v31

    .line 812
    .local v31, "disableSlices":Z
    const-string v0, "config.enable_lefty"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v32

    .line 814
    .local v32, "enableLeftyService":Z
    const-string/jumbo v0, "ro.kernel.qemu"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 815
    .local v33, "isEmulator":Z
    const-string/jumbo v0, "persist.vendor.wigig.enable"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v34

    .line 817
    .local v34, "enableWigig":Z
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v8, "android.hardware.type.watch"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v35

    .line 821
    .local v35, "isWatch":Z
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_73

    const-string v0, "debug.crash_system"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6d

    goto :goto_73

    .line 822
    :cond_6d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 826
    :cond_73
    :goto_73
    :try_start_73
    const-string v0, "SecondaryZygotePreload"
    :try_end_75
    .catch Ljava/lang/RuntimeException; {:try_start_73 .. :try_end_75} :catch_357

    .line 831
    .local v0, "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :try_start_75
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v9

    sget-object v8, Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$VBGb9VpEls6bUcVBPwYLtX7qDTs;

    move-object/from16 v38, v0

    const-string v0, "SecondaryZygotePreload"

    .line 831
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .local v38, "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    invoke-virtual {v9, v8, v0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v3, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 846
    const-string v0, "StartKeyAttestationApplicationIdProviderService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 847
    const-string/jumbo v0, "sec_key_att_app_id_provider"

    new-instance v8, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v8, v2}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 849
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 851
    const-string v0, "StartKeyChainSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 852
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 853
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 855
    const-string v0, "StartSchedulingPolicyService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 856
    const-string/jumbo v0, "scheduling_policy"

    new-instance v8, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v8}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 857
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 859
    const-string v0, "StartTelecomLoaderService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 860
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 861
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 863
    const-string v0, "StartTelephonyRegistry"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 864
    new-instance v0, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v0, v2}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_d3
    .catch Ljava/lang/RuntimeException; {:try_start_75 .. :try_end_d3} :catch_352

    move-object v9, v0

    .line 865
    .end local v5    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v9, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_d4
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 866
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 868
    const-string v0, "StartEntropyMixer"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 869
    new-instance v0, Lcom/android/server/EntropyMixer;

    invoke-direct {v0, v2}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    iput-object v0, v3, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 870
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 872
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, v3, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 875
    const-string v0, "StartAccountManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 876
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 877
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 879
    const-string v0, "StartContentService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 880
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 881
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 885
    const-string v0, "AddParamService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 886
    new-instance v0, Lcom/android/server/ParamService;

    invoke-direct {v0, v2}, Lcom/android/server/ParamService;-><init>(Landroid/content/Context;)V
    :try_end_11a
    .catch Ljava/lang/RuntimeException; {:try_start_d4 .. :try_end_11a} :catch_346

    move-object v8, v0

    .line 887
    .end local v7    # "mParamService":Lcom/android/server/ParamService;
    .local v8, "mParamService":Lcom/android/server/ParamService;
    :try_start_11b
    const-string v0, "ParamService"

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 888
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 891
    const-string v0, "InstallSystemProviders"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 892
    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 894
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    .line 895
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 900
    const-string v0, "StartDropBoxManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 901
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 902
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 904
    const-string v0, "StartVibratorService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 905
    new-instance v0, Lcom/android/server/VibratorService;

    invoke-direct {v0, v2}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_14c
    .catch Ljava/lang/RuntimeException; {:try_start_11b .. :try_end_14c} :catch_339

    move-object v1, v0

    .line 906
    :try_start_14d
    const-string/jumbo v0, "vibrator"

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 907
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_156
    .catch Ljava/lang/RuntimeException; {:try_start_14d .. :try_end_156} :catch_32a

    .line 909
    if-nez v35, :cond_178

    .line 910
    :try_start_158
    const-string v0, "StartConsumerIrService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 911
    new-instance v0, Lcom/android/server/ConsumerIrService;

    invoke-direct {v0, v2}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    move-object v6, v0

    .line 912
    const-string v0, "consumer_ir"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 913
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V
    :try_end_16b
    .catch Ljava/lang/RuntimeException; {:try_start_158 .. :try_end_16b} :catch_16c

    goto :goto_178

    .line 1037
    .end local v38    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catch_16c
    move-exception v0

    move-object/from16 v39, v6

    move-object/from16 v36, v9

    move-object/from16 v44, v15

    move-object/from16 v5, v24

    const/4 v15, 0x0

    goto/16 :goto_362

    .line 916
    .restart local v38    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_178
    :goto_178
    move-object/from16 v39, v6

    .line 916
    .end local v6    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v39, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_17a
    const-string v0, "StartAlarmManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 917
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 918
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 920
    const-string v0, "InitWatchdog"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 921
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    .line 922
    .local v0, "watchdog":Lcom/android/server/Watchdog;
    iget-object v5, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v2, v5}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 923
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 925
    const-string v5, "StartInputManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 926
    new-instance v5, Lcom/android/server/input/InputManagerService;

    invoke-direct {v5, v2}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1a4
    .catch Ljava/lang/RuntimeException; {:try_start_17a .. :try_end_1a4} :catch_31f

    move-object v7, v5

    .line 927
    .end local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v7, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_1a5
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 929
    const-string v4, "StartWindowManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 931
    iget-object v4, v3, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    const-string v5, "StartSensorService"

    invoke-static {v4, v5}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 932
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 933
    iget v4, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1be

    const/4 v6, 0x1

    goto :goto_1bf

    :cond_1be
    const/4 v6, 0x0

    :goto_1bf
    iget-boolean v4, v3, Lcom/android/server/SystemServer;->mFirstBoot:Z

    const/16 v37, 0x1

    xor-int/lit8 v40, v4, 0x1

    iget-boolean v5, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    new-instance v4, Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-direct {v4}, Lcom/android/server/policy/OemPhoneWindowManager;-><init>()V
    :try_end_1cc
    .catch Ljava/lang/RuntimeException; {:try_start_1a5 .. :try_end_1cc} :catch_30e

    move-object/from16 v41, v4

    move-object v4, v2

    move/from16 v42, v5

    move-object v5, v7

    move-object/from16 v43, v1

    move-object v1, v7

    move/from16 v7, v40

    .end local v7    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v1, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v43, "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v44, v15

    move/from16 v15, v37

    move-object/from16 v37, v8

    move/from16 v8, v42

    .line 933
    .end local v8    # "mParamService":Lcom/android/server/ParamService;
    .end local v15    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v37, "mParamService":Lcom/android/server/ParamService;
    .local v44, "connectivity":Lcom/android/server/ConnectivityService;
    move-object/from16 v36, v9

    const/4 v15, 0x0

    move-object/from16 v9, v41

    .line 933
    .end local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v36, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1e4
    invoke-static/range {v4 .. v9}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZLcom/android/server/policy/WindowManagerPolicy;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4
    :try_end_1e8
    .catch Ljava/lang/RuntimeException; {:try_start_1e4 .. :try_end_1e8} :catch_304

    .line 943
    .end local v17    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v4, "wm":Lcom/android/server/wm/WindowManagerService;
    :try_start_1e8
    const-string/jumbo v5, "window"

    const/16 v6, 0x11

    invoke-static {v5, v4, v15, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 945
    const-string/jumbo v5, "input"

    const/4 v6, 0x1

    invoke-static {v5, v1, v15, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 947
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 949
    const-string v5, "SetWindowManagerService"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 950
    iget-object v5, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 951
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 953
    const-string v5, "WindowManagerServiceOnInitReady"

    invoke-static {v5}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 954
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    .line 955
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 959
    new-instance v5, Lcom/android/server/oneplus/display/SDService;

    invoke-direct {v5, v2}, Lcom/android/server/oneplus/display/SDService;-><init>(Landroid/content/Context;)V
    :try_end_217
    .catch Ljava/lang/RuntimeException; {:try_start_1e8 .. :try_end_217} :catch_2fb

    .line 960
    .end local v24    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .local v5, "mSDService":Lcom/android/server/oneplus/display/SDService;
    :try_start_217
    const-string/jumbo v6, "smartdisplay"

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 966
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v6

    sget-object v7, Lcom/android/server/-$$Lambda$SystemServer$NlJmG18aPrQduhRqASIdcn7G0z8;->INSTANCE:Lcom/android/server/-$$Lambda$SystemServer$NlJmG18aPrQduhRqASIdcn7G0z8;

    const-string v8, "StartHidlServices"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 974
    if-nez v35, :cond_239

    .line 975
    const-string v6, "StartVrManagerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 976
    iget-object v6, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 977
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 980
    :cond_239
    const-string v6, "StartInputManager"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 981
    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 982
    invoke-virtual {v1}, Lcom/android/server/input/InputManagerService;->start()V

    .line 983
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 986
    const-string v6, "DisplayManagerWindowManagerAndInputReady"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 987
    iget-object v6, v3, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 988
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 993
    if-eqz v33, :cond_262

    .line 994
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooth Service (emulator)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_292

    .line 995
    :cond_262
    iget v6, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_26f

    .line 996
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooth Service (factory test)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_292

    .line 997
    :cond_26f
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.bluetooth"

    .line 998
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_283

    .line 999
    const-string v6, "SystemServer"

    const-string v7, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_292

    .line 1001
    :cond_283
    const-string v6, "StartBluetoothService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1002
    iget-object v6, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/BluetoothService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1003
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1006
    :goto_292
    const-string v6, "IpConnectivityMetrics"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1007
    iget-object v6, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1008
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1010
    const-string v6, "NetworkWatchlistService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1011
    iget-object v6, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1012
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1014
    const-string v6, "PinnerService"

    invoke-static {v6}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1015
    iget-object v6, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/PinnerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1019
    iget-object v6, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.oneplus.server.OnePlusService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1022
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1026
    const-string v6, "SystemServer"

    const-string v7, "LongScreenShot Manager"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const-string/jumbo v6, "longshot"

    .line 1028
    invoke-static {v2}, Lcom/oneplus/longshot/LongScreenshotManagerService;->getInstance(Landroid/content/Context;)Lcom/oneplus/longshot/LongScreenshotManagerService;

    move-result-object v7

    .line 1027
    invoke-static {v6, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1033
    const/4 v6, 0x1

    new-array v7, v6, [I

    const/16 v6, 0x4e

    aput v6, v7, v15

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_2eb

    .line 1034
    iget-object v6, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.oneplus.server.OIMCService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_2eb
    .catch Ljava/lang/RuntimeException; {:try_start_217 .. :try_end_2eb} :catch_2f7

    .line 1040
    .end local v0    # "watchdog":Lcom/android/server/Watchdog;
    .end local v38    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_2eb
    nop

    .line 1042
    move-object/from16 v24, v5

    move-object/from16 v7, v43

    move-object/from16 v73, v4

    move-object v4, v1

    move-object/from16 v1, v73

    goto/16 :goto_377

    .line 1037
    :catch_2f7
    move-exception v0

    move-object/from16 v17, v4

    goto :goto_300

    .line 1037
    .end local v5    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .restart local v24    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    :catch_2fb
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v5, v24

    .line 1037
    .end local v24    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .end local v37    # "mParamService":Lcom/android/server/ParamService;
    .end local v43    # "vibrator":Lcom/android/server/VibratorService;
    .local v1, "vibrator":Lcom/android/server/VibratorService;
    .local v4, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v5    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .restart local v8    # "mParamService":Lcom/android/server/ParamService;
    .restart local v17    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_300
    move-object/from16 v8, v37

    move-object v4, v1

    goto :goto_30a

    .line 1037
    .end local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v5    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .end local v8    # "mParamService":Lcom/android/server/ParamService;
    .local v1, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v24    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .restart local v37    # "mParamService":Lcom/android/server/ParamService;
    .restart local v43    # "vibrator":Lcom/android/server/VibratorService;
    :catch_304
    move-exception v0

    move-object v4, v1

    move-object/from16 v5, v24

    move-object/from16 v8, v37

    .line 1037
    .end local v24    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .end local v37    # "mParamService":Lcom/android/server/ParamService;
    .end local v43    # "vibrator":Lcom/android/server/VibratorService;
    .local v1, "vibrator":Lcom/android/server/VibratorService;
    .restart local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v5    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .restart local v8    # "mParamService":Lcom/android/server/ParamService;
    :goto_30a
    move-object/from16 v1, v43

    goto/16 :goto_362

    .line 1037
    .end local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v5    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .end local v36    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v7    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v15    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v24    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    :catch_30e
    move-exception v0

    move-object/from16 v43, v1

    move-object v1, v7

    move-object/from16 v37, v8

    move-object/from16 v36, v9

    move-object/from16 v44, v15

    const/4 v15, 0x0

    move-object v4, v1

    move-object/from16 v5, v24

    move-object/from16 v1, v43

    .end local v7    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v8    # "mParamService":Lcom/android/server/ParamService;
    .end local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v15    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v1, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v36    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "mParamService":Lcom/android/server/ParamService;
    .restart local v43    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    goto :goto_362

    .line 1037
    .end local v36    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v37    # "mParamService":Lcom/android/server/ParamService;
    .end local v43    # "vibrator":Lcom/android/server/VibratorService;
    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v1, "vibrator":Lcom/android/server/VibratorService;
    .restart local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v8    # "mParamService":Lcom/android/server/ParamService;
    .restart local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v15    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_31f
    move-exception v0

    move-object/from16 v43, v1

    move-object/from16 v37, v8

    move-object/from16 v36, v9

    move-object/from16 v44, v15

    const/4 v15, 0x0

    goto :goto_336

    .line 1037
    .end local v39    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v6    # "consumerIr":Lcom/android/server/ConsumerIrService;
    :catch_32a
    move-exception v0

    move-object/from16 v43, v1

    move-object/from16 v37, v8

    move-object/from16 v36, v9

    move-object/from16 v44, v15

    const/4 v15, 0x0

    move-object/from16 v39, v6

    .line 1037
    .end local v6    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v24    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .restart local v5    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .restart local v39    # "consumerIr":Lcom/android/server/ConsumerIrService;
    :goto_336
    move-object/from16 v5, v24

    .line 1037
    .end local v1    # "vibrator":Lcom/android/server/VibratorService;
    .end local v8    # "mParamService":Lcom/android/server/ParamService;
    .end local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v15    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v36    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "mParamService":Lcom/android/server/ParamService;
    .restart local v43    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    goto :goto_362

    .line 1037
    .end local v5    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .end local v36    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v37    # "mParamService":Lcom/android/server/ParamService;
    .end local v39    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v43    # "vibrator":Lcom/android/server/VibratorService;
    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v1    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v6    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v8    # "mParamService":Lcom/android/server/ParamService;
    .restart local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v15    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v24    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    :catch_339
    move-exception v0

    move-object/from16 v37, v8

    move-object/from16 v36, v9

    move-object/from16 v44, v15

    const/4 v15, 0x0

    move-object/from16 v39, v6

    move-object/from16 v5, v24

    .line 1037
    .end local v8    # "mParamService":Lcom/android/server/ParamService;
    .end local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v15    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v36    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "mParamService":Lcom/android/server/ParamService;
    .restart local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    goto :goto_362

    .line 1037
    .end local v36    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v37    # "mParamService":Lcom/android/server/ParamService;
    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v7, "mParamService":Lcom/android/server/ParamService;
    .restart local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v15    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_346
    move-exception v0

    move-object/from16 v36, v9

    move-object/from16 v44, v15

    const/4 v15, 0x0

    move-object/from16 v39, v6

    move-object v8, v7

    move-object/from16 v5, v24

    .line 1037
    .end local v9    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v15    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v36    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    goto :goto_362

    .line 1037
    .end local v36    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v5, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v15    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_352
    move-exception v0

    move-object/from16 v44, v15

    const/4 v15, 0x0

    goto :goto_35b

    :catch_357
    move-exception v0

    move-object/from16 v44, v15

    move v15, v9

    .line 1037
    .end local v6    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v7    # "mParamService":Lcom/android/server/ParamService;
    .end local v24    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .local v5, "mSDService":Lcom/android/server/oneplus/display/SDService;
    .restart local v8    # "mParamService":Lcom/android/server/ParamService;
    .restart local v36    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v39    # "consumerIr":Lcom/android/server/ConsumerIrService;
    :goto_35b
    move-object/from16 v36, v5

    move-object/from16 v39, v6

    move-object v8, v7

    move-object/from16 v5, v24

    .line 1038
    .end local v15    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_362
    const-string v6, "System"

    const-string v7, "******************************************"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const-string v6, "System"

    const-string v7, "************ Failure starting core service"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1042
    .end local v0    # "e":Ljava/lang/RuntimeException;
    move-object v7, v1

    move-object/from16 v24, v5

    move-object/from16 v37, v8

    move-object/from16 v1, v17

    .line 1042
    .end local v5    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .end local v8    # "mParamService":Lcom/android/server/ParamService;
    .end local v17    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v1, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v7, "vibrator":Lcom/android/server/VibratorService;
    .restart local v24    # "mSDService":Lcom/android/server/oneplus/display/SDService;
    .restart local v37    # "mParamService":Lcom/android/server/ParamService;
    :goto_377
    const/4 v5, 0x0

    .line 1043
    .local v5, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/4 v6, 0x0

    .line 1044
    .local v6, "notification":Landroid/app/INotificationManager;
    const/4 v8, 0x0

    .line 1045
    .local v8, "location":Lcom/android/server/LocationManagerService;
    const/4 v9, 0x0

    .line 1046
    .local v9, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v17, 0x0

    .line 1047
    .local v17, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v38, 0x0

    .line 1050
    .local v38, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    iget v0, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v15, 0x1

    if-eq v0, v15, :cond_3ad

    .line 1051
    const-string v0, "StartInputMethodManagerLifecycle"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1052
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v15, Lcom/android/server/InputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v15}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1053
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1055
    const-string v0, "StartAccessibilityManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1057
    :try_start_398
    const-string v0, "accessibility"

    new-instance v15, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v15, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a2
    .catch Ljava/lang/Throwable; {:try_start_398 .. :try_end_3a2} :catch_3a3

    .line 1061
    goto :goto_3aa

    .line 1059
    :catch_3a3
    move-exception v0

    .line 1060
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v15, "starting Accessibility Manager"

    invoke-direct {v3, v15, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1062
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3aa
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1065
    :cond_3ad
    const-string v0, "MakeDisplayReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1067
    :try_start_3b2
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_3b5
    .catch Ljava/lang/Throwable; {:try_start_3b2 .. :try_end_3b5} :catch_3b6

    .line 1070
    goto :goto_3be

    .line 1068
    :catch_3b6
    move-exception v0

    move-object v15, v0

    .line 1069
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v15, "making display ready"

    invoke-direct {v3, v15, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1071
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3be
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1075
    const-string/jumbo v0, "ro.build.version.ota"

    const-string v15, ""

    invoke-static {v0, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1076
    .local v15, "curVersion":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.version.ota"

    move-object/from16 v47, v5

    const-string v5, ""

    .line 1076
    .end local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v47, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1077
    .local v5, "lastVersion":Ljava/lang/String;
    iget-boolean v0, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_3fd

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isUpgrade()Z

    move-result v0

    if-nez v0, :cond_3e9

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-eqz v0, :cond_3fd

    :cond_3e9
    const-string v0, ""

    .line 1078
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3fd

    .line 1079
    const-string/jumbo v0, "persist.sys.version.ota"

    invoke-static {v0, v15}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    const-string/jumbo v0, "persist.sys.version.lastota"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    :cond_3fd
    iget v0, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    move-object/from16 v48, v5

    const/4 v5, 0x1

    if-eq v0, v5, :cond_44e

    .line 1085
    .end local v5    # "lastVersion":Ljava/lang/String;
    .local v48, "lastVersion":Ljava/lang/String;
    const-string v0, "0"

    const-string/jumbo v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44e

    .line 1086
    const-string v0, "StartStorageManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1092
    :try_start_418
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.StorageManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1093
    const-string/jumbo v0, "mount"

    .line 1094
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1093
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0
    :try_end_42a
    .catch Ljava/lang/Throwable; {:try_start_418 .. :try_end_42a} :catch_42d

    .line 1097
    .end local v10    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v0, "storageManager":Landroid/os/storage/IStorageManager;
    nop

    .line 1098
    move-object v10, v0

    goto :goto_434

    .line 1095
    .end local v0    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v10    # "storageManager":Landroid/os/storage/IStorageManager;
    :catch_42d
    move-exception v0

    .line 1096
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting StorageManagerService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1098
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_434
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1100
    const-string v0, "StartStorageStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1102
    :try_start_43c
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.usage.StorageStatsService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_443
    .catch Ljava/lang/Throwable; {:try_start_43c .. :try_end_443} :catch_444

    .line 1105
    goto :goto_44b

    .line 1103
    :catch_444
    move-exception v0

    .line 1104
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting StorageStatsService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1106
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_44b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1112
    .end local v10    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v40, "storageManager":Landroid/os/storage/IStorageManager;
    :cond_44e
    move-object/from16 v40, v10

    const-string v0, "StartUiModeManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1113
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1114
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1116
    iget-boolean v0, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_478

    .line 1117
    const-string v0, "UpdatePackagesIfNeeded"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1119
    :try_start_468
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_46d
    .catch Ljava/lang/Throwable; {:try_start_468 .. :try_end_46d} :catch_46e

    .line 1122
    goto :goto_475

    .line 1120
    :catch_46e
    move-exception v0

    .line 1121
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "update packages"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1123
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_475
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1126
    :cond_478
    const-string v0, "PerformFstrimIfNeeded"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1128
    :try_start_47d
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_482
    .catch Ljava/lang/Throwable; {:try_start_47d .. :try_end_482} :catch_483

    .line 1131
    goto :goto_48a

    .line 1129
    :catch_483
    move-exception v0

    .line 1130
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "performing fstrim"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1132
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_48a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1134
    iget v0, v3, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v0, v5, :cond_cf7

    .line 1135
    const-string v0, "StartLockSettingsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1137
    :try_start_497
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.locksettings.LockSettingsService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1138
    const-string/jumbo v0, "lock_settings"

    .line 1139
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1138
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0
    :try_end_4a9
    .catch Ljava/lang/Throwable; {:try_start_497 .. :try_end_4a9} :catch_4ad

    .line 1142
    .end local v17    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v0, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    nop

    .line 1143
    move-object/from16 v17, v0

    goto :goto_4b4

    .line 1140
    .end local v0    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v17    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :catch_4ad
    move-exception v0

    .line 1141
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting LockSettingsService service"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1143
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_4b4
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1145
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    xor-int/2addr v0, v5

    move v5, v0

    .line 1146
    .local v5, "hasPdb":Z
    if-eqz v5, :cond_4d8

    .line 1147
    const-string v0, "StartPersistentDataBlock"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1148
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1149
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1152
    :cond_4d8
    if-nez v5, :cond_4e0

    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v0

    if-eqz v0, :cond_4ef

    .line 1154
    :cond_4e0
    const-string v0, "StartOemLockService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1155
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1156
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1159
    :cond_4ef
    const-string v0, "StartDeviceIdleController"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1160
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1161
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1165
    const-string v0, "StartOnePlusPowerController"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1166
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/OnePlusPowerController;

    .line 1167
    .end local v25    # "mOnePlusPowerController":Lcom/android/server/OnePlusPowerController;
    .local v10, "mOnePlusPowerController":Lcom/android/server/OnePlusPowerController;
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1172
    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10, v0}, Lcom/android/server/OnePlusPowerController;->setActivityManager(Lcom/android/server/am/ActivityManagerService;)V

    .line 1177
    const-string v0, "StartDevicePolicyManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1178
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v49, v5

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    .line 1178
    .end local v5    # "hasPdb":Z
    .local v49, "hasPdb":Z
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1179
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1181
    if-nez v35, :cond_551

    .line 1182
    const-string v0, "StartStatusBarManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1184
    :try_start_52e
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v0, v2, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_533
    .catch Ljava/lang/Throwable; {:try_start_52e .. :try_end_533} :catch_540

    move-object v5, v0

    .line 1185
    .end local v47    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v5, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_534
    const-string/jumbo v0, "statusbar"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_53a
    .catch Ljava/lang/Throwable; {:try_start_534 .. :try_end_53a} :catch_53e

    .line 1188
    nop

    .line 1189
    move-object/from16 v50, v5

    goto :goto_54b

    .line 1186
    :catch_53e
    move-exception v0

    goto :goto_543

    .line 1186
    .end local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v47    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_540
    move-exception v0

    move-object/from16 v5, v47

    .line 1187
    .end local v47    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_543
    move-object/from16 v50, v5

    const-string/jumbo v5, "starting StatusBarManagerService"

    .line 1187
    .end local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v50, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1189
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_54b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1192
    move-object/from16 v5, v50

    goto :goto_553

    .line 1192
    .end local v50    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v47    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_551
    move-object/from16 v5, v47

    .line 1192
    .end local v47    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_553
    const-string v0, "StartClipboardService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1193
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v51, v5

    const-class v5, Lcom/android/server/clipboard/ClipboardService;

    .line 1193
    .end local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v51, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1194
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1196
    const-string v0, "StartNetworkManagementService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1198
    :try_start_569
    invoke-static {v2}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v0

    move-object v11, v0

    .line 1199
    const-string/jumbo v0, "network_management"

    invoke-static {v0, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_574
    .catch Ljava/lang/Throwable; {:try_start_569 .. :try_end_574} :catch_575

    .line 1202
    goto :goto_57c

    .line 1200
    :catch_575
    move-exception v0

    .line 1201
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting NetworkManagement Service"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1203
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_57c
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1205
    const-string v0, "StartIpSecService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1207
    :try_start_584
    invoke-static {v2}, Lcom/android/server/IpSecService;->create(Landroid/content/Context;)Lcom/android/server/IpSecService;

    move-result-object v0

    move-object v12, v0

    .line 1208
    const-string/jumbo v0, "ipsec"

    invoke-static {v0, v12}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_58f
    .catch Ljava/lang/Throwable; {:try_start_584 .. :try_end_58f} :catch_590

    .line 1211
    goto :goto_597

    .line 1209
    :catch_590
    move-exception v0

    .line 1210
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting IpSec Service"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1212
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_597
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1214
    const-string v0, "StartTextServicesManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1215
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/TextServicesManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1216
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1218
    if-nez v29, :cond_5ba

    .line 1219
    const-string v0, "StartTextClassificationManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1220
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1221
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1224
    :cond_5ba
    const-string v0, "StartNetworkScoreService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1225
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/NetworkScoreService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1226
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1228
    const-string v0, "StartNetworkStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1230
    :try_start_5ce
    invoke-static {v2, v11}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v0

    move-object v13, v0

    .line 1231
    const-string/jumbo v0, "netstats"

    invoke-static {v0, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d9
    .catch Ljava/lang/Throwable; {:try_start_5ce .. :try_end_5d9} :catch_5da

    .line 1234
    goto :goto_5e1

    .line 1232
    :catch_5da
    move-exception v0

    .line 1233
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting NetworkStats Service"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1235
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_5e1
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1237
    const-string v0, "StartNetworkPolicyManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1239
    :try_start_5e9
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v5, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v2, v5, v11}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V

    move-object v14, v0

    .line 1241
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5f7
    .catch Ljava/lang/Throwable; {:try_start_5e9 .. :try_end_5f7} :catch_5f8

    .line 1244
    goto :goto_5ff

    .line 1242
    :catch_5f8
    move-exception v0

    .line 1243
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting NetworkPolicy Service"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1247
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_5ff
    invoke-static {}, Lcom/android/server/am/OnePlusEsportApisController;->getInstance()Lcom/android/server/am/OnePlusEsportApisController;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/android/server/am/OnePlusEsportApisController;->initNetworkPolicy(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 1249
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1251
    iget-boolean v0, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_6a3

    .line 1252
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "android.hardware.wifi"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_637

    .line 1255
    const-string v0, "StartWifi"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1256
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1257
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1258
    const-string v0, "StartWifiScanning"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1259
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.scanner.WifiScanningService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1261
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1264
    :cond_637
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "android.hardware.wifi.rtt"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_652

    .line 1266
    const-string v0, "StartRttService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1267
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.rtt.RttService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1269
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1272
    :cond_652
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "android.hardware.wifi.aware"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66d

    .line 1274
    const-string v0, "StartWifiAware"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1275
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.aware.WifiAwareService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1276
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1279
    :cond_66d
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "android.hardware.wifi.direct"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_688

    .line 1281
    const-string v0, "StartWifiP2P"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1282
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1283
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1286
    :cond_688
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "android.hardware.lowpan"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6a3

    .line 1288
    const-string v0, "StartLowpan"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1289
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1290
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1294
    :cond_6a3
    if-eqz v34, :cond_738

    .line 1296
    :try_start_6a5
    const-string v0, "SystemServer"

    const-string v5, "Wigig Service"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    const-string v0, "/system/framework/wigig-service.jar:/system/framework/vendor.qti.hardware.wigig.supptunnel-V1.0-java.jar:/system/framework/vendor.qti.hardware.wigig.netperftuner-V1.0-java.jar"

    .line 1301
    .local v0, "wigigClassPath":Ljava/lang/String;
    new-instance v5, Ldalvik/system/PathClassLoader;
    :try_end_6b0
    .catch Ljava/lang/Throwable; {:try_start_6a5 .. :try_end_6b0} :catch_72c

    .line 1302
    move-object/from16 v52, v6

    :try_start_6b2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 1302
    .end local v6    # "notification":Landroid/app/INotificationManager;
    .local v52, "notification":Landroid/app/INotificationManager;
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1303
    .local v5, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.qualcomm.qti.server.wigig.p2p.WigigP2pServiceImpl"

    invoke-virtual {v5, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6
    :try_end_6c3
    .catch Ljava/lang/Throwable; {:try_start_6b2 .. :try_end_6c3} :catch_728

    .line 1305
    .local v6, "wigigP2pClass":Ljava/lang/Class;
    move-object/from16 v54, v0

    move-object/from16 v53, v8

    const/4 v8, 0x1

    :try_start_6c8
    new-array v0, v8, [Ljava/lang/Class;

    .line 1305
    .end local v0    # "wigigClassPath":Ljava/lang/String;
    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .local v53, "location":Lcom/android/server/LocationManagerService;
    .local v54, "wigigClassPath":Ljava/lang/String;
    const-class v8, Landroid/content/Context;

    const/16 v25, 0x0

    aput-object v8, v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1306
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    move-object/from16 v55, v6

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/Object;

    .line 1306
    .end local v6    # "wigigP2pClass":Ljava/lang/Class;
    .local v55, "wigigP2pClass":Ljava/lang/Class;
    aput-object v2, v6, v25

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v27, v6

    .line 1307
    const-string v6, "SystemServer"

    const-string v8, "Successfully loaded WigigP2pServiceImpl class"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const-string/jumbo v6, "wigigp2p"

    move-object/from16 v8, v27

    check-cast v8, Landroid/os/IBinder;

    invoke-static {v6, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1310
    const-string v6, "com.qualcomm.qti.server.wigig.WigigService"

    invoke-virtual {v5, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 1312
    .local v6, "wigigClass":Ljava/lang/Class;
    move-object/from16 v56, v0

    const/4 v8, 0x1

    new-array v0, v8, [Ljava/lang/Class;

    .line 1312
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .local v56, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const-class v8, Landroid/content/Context;

    const/16 v25, 0x0

    aput-object v8, v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1313
    .end local v56    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .restart local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    move-object/from16 v57, v5

    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/Object;

    .line 1313
    .end local v5    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    .local v57, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    aput-object v2, v5, v25

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v28, v5

    .line 1314
    const-string v5, "SystemServer"

    const-string v8, "Successfully loaded WigigService class"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    const-string/jumbo v5, "wigig"

    move-object/from16 v8, v28

    check-cast v8, Landroid/os/IBinder;

    invoke-static {v5, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_725
    .catch Ljava/lang/Throwable; {:try_start_6c8 .. :try_end_725} :catch_726

    .line 1318
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v6    # "wigigClass":Ljava/lang/Class;
    .end local v54    # "wigigClassPath":Ljava/lang/String;
    .end local v55    # "wigigP2pClass":Ljava/lang/Class;
    .end local v57    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    goto :goto_73c

    .line 1316
    :catch_726
    move-exception v0

    goto :goto_731

    .line 1316
    .end local v53    # "location":Lcom/android/server/LocationManagerService;
    .restart local v8    # "location":Lcom/android/server/LocationManagerService;
    :catch_728
    move-exception v0

    move-object/from16 v53, v8

    .line 1316
    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .restart local v53    # "location":Lcom/android/server/LocationManagerService;
    goto :goto_731

    .line 1316
    .end local v52    # "notification":Landroid/app/INotificationManager;
    .end local v53    # "location":Lcom/android/server/LocationManagerService;
    .local v6, "notification":Landroid/app/INotificationManager;
    .restart local v8    # "location":Lcom/android/server/LocationManagerService;
    :catch_72c
    move-exception v0

    move-object/from16 v52, v6

    move-object/from16 v53, v8

    .line 1317
    .end local v6    # "notification":Landroid/app/INotificationManager;
    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v52    # "notification":Landroid/app/INotificationManager;
    .restart local v53    # "location":Lcom/android/server/LocationManagerService;
    :goto_731
    const-string/jumbo v5, "starting WigigService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1317
    .end local v0    # "e":Ljava/lang/Throwable;
    goto :goto_73c

    .line 1321
    .end local v52    # "notification":Landroid/app/INotificationManager;
    .end local v53    # "location":Lcom/android/server/LocationManagerService;
    .restart local v6    # "notification":Landroid/app/INotificationManager;
    .restart local v8    # "location":Lcom/android/server/LocationManagerService;
    :cond_738
    move-object/from16 v52, v6

    move-object/from16 v53, v8

    .line 1321
    .end local v6    # "notification":Landroid/app/INotificationManager;
    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .restart local v52    # "notification":Landroid/app/INotificationManager;
    .restart local v53    # "location":Lcom/android/server/LocationManagerService;
    :goto_73c
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.ethernet"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_750

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    .line 1322
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75f

    .line 1323
    :cond_750
    const-string v0, "StartEthernet"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1324
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1325
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1328
    :cond_75f
    const-string v0, "StartConnectivityService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1330
    :try_start_764
    new-instance v0, Lcom/android/server/ConnectivityService;

    invoke-direct {v0, v2, v11, v13, v14}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_769
    .catch Ljava/lang/Throwable; {:try_start_764 .. :try_end_769} :catch_77a

    move-object v5, v0

    .line 1332
    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v5, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_76a
    const-string v0, "connectivity"

    const/4 v6, 0x6

    const/4 v8, 0x0

    invoke-static {v0, v5, v8, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1335
    invoke-virtual {v13, v5}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1336
    invoke-virtual {v14, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_777
    .catch Ljava/lang/Throwable; {:try_start_76a .. :try_end_777} :catch_778

    .line 1339
    goto :goto_783

    .line 1337
    :catch_778
    move-exception v0

    goto :goto_77d

    .line 1337
    .end local v5    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_77a
    move-exception v0

    move-object/from16 v5, v44

    .line 1338
    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v5    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_77d
    const-string/jumbo v6, "starting Connectivity Service"

    invoke-direct {v3, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1340
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_783
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1342
    const-string v0, "StartNsdService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1344
    :try_start_78b
    invoke-static {v2}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v0
    :try_end_78f
    .catch Ljava/lang/Throwable; {:try_start_78b .. :try_end_78f} :catch_799

    move-object v6, v0

    .line 1345
    .end local v16    # "serviceDiscovery":Lcom/android/server/NsdService;
    .local v6, "serviceDiscovery":Lcom/android/server/NsdService;
    :try_start_790
    const-string/jumbo v0, "servicediscovery"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_796
    .catch Ljava/lang/Throwable; {:try_start_790 .. :try_end_796} :catch_797

    .line 1349
    goto :goto_7a2

    .line 1347
    :catch_797
    move-exception v0

    goto :goto_79c

    .line 1347
    .end local v6    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v16    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_799
    move-exception v0

    move-object/from16 v6, v16

    .line 1348
    .end local v16    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v6    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_79c
    const-string/jumbo v8, "starting Service Discovery Service"

    invoke-direct {v3, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1350
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v6    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v16    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_7a2
    move-object/from16 v16, v6

    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1352
    const-string v0, "StartSystemUpdateManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1354
    :try_start_7ac
    const-string/jumbo v0, "system_update"

    new-instance v6, Lcom/android/server/SystemUpdateManagerService;

    invoke-direct {v6, v2}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7b7
    .catch Ljava/lang/Throwable; {:try_start_7ac .. :try_end_7b7} :catch_7b8

    .line 1358
    goto :goto_7bf

    .line 1356
    :catch_7b8
    move-exception v0

    .line 1357
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting SystemUpdateManagerService"

    invoke-direct {v3, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1359
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_7bf
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1361
    const-string v0, "StartUpdateLockService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1363
    :try_start_7c7
    const-string/jumbo v0, "updatelock"

    new-instance v6, Lcom/android/server/UpdateLockService;

    invoke-direct {v6, v2}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7d2
    .catch Ljava/lang/Throwable; {:try_start_7c7 .. :try_end_7d2} :catch_7d3

    .line 1367
    goto :goto_7da

    .line 1365
    :catch_7d3
    move-exception v0

    .line 1366
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "starting UpdateLockService"

    invoke-direct {v3, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1368
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_7da
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1370
    const-string v0, "StartNotificationManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1371
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1372
    invoke-static {v2}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 1373
    const-string/jumbo v0, "notification"

    .line 1374
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1373
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v6

    .line 1375
    .end local v52    # "notification":Landroid/app/INotificationManager;
    .local v6, "notification":Landroid/app/INotificationManager;
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1377
    const-string v0, "StartDeviceMonitor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1378
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1379
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1381
    const-string v0, "StartLocationManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1383
    :try_start_80e
    new-instance v0, Lcom/android/server/LocationManagerService;

    invoke-direct {v0, v2}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_813
    .catch Ljava/lang/Throwable; {:try_start_80e .. :try_end_813} :catch_820

    move-object v8, v0

    .line 1384
    .end local v53    # "location":Lcom/android/server/LocationManagerService;
    .restart local v8    # "location":Lcom/android/server/LocationManagerService;
    :try_start_814
    const-string/jumbo v0, "location"

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_81a
    .catch Ljava/lang/Throwable; {:try_start_814 .. :try_end_81a} :catch_81e

    .line 1387
    nop

    .line 1388
    move-object/from16 v58, v5

    goto :goto_82b

    .line 1385
    :catch_81e
    move-exception v0

    goto :goto_823

    .line 1385
    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .restart local v53    # "location":Lcom/android/server/LocationManagerService;
    :catch_820
    move-exception v0

    move-object/from16 v8, v53

    .line 1386
    .end local v53    # "location":Lcom/android/server/LocationManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v8    # "location":Lcom/android/server/LocationManagerService;
    :goto_823
    move-object/from16 v58, v5

    const-string/jumbo v5, "starting Location Manager"

    .line 1386
    .end local v5    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v58, "connectivity":Lcom/android/server/ConnectivityService;
    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1388
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_82b
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1390
    const-string v0, "StartCountryDetectorService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1392
    :try_start_833
    new-instance v0, Lcom/android/server/CountryDetectorService;

    invoke-direct {v0, v2}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V

    move-object v9, v0

    .line 1393
    const-string v0, "country_detector"

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_83e
    .catch Ljava/lang/Throwable; {:try_start_833 .. :try_end_83e} :catch_83f

    .line 1396
    goto :goto_846

    .line 1394
    :catch_83f
    move-exception v0

    .line 1395
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting Country Detector"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1397
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_846
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1399
    if-nez v35, :cond_862

    .line 1400
    const-string v0, "StartSearchManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1402
    :try_start_850
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_857
    .catch Ljava/lang/Throwable; {:try_start_850 .. :try_end_857} :catch_858

    .line 1405
    goto :goto_85f

    .line 1403
    :catch_858
    move-exception v0

    .line 1404
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting Search Service"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1406
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_85f
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1409
    :cond_862
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x112006c

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_87e

    .line 1410
    const-string v0, "StartWallpaperManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1411
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1412
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1415
    :cond_87e
    const-string v0, "StartAudioService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1416
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1417
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1419
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.broadcastradio"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8a6

    .line 1420
    const-string v0, "StartBroadcastRadioService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1421
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1422
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1425
    :cond_8a6
    const-string v0, "StartDockObserver"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1426
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1427
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1429
    if-eqz v35, :cond_8c6

    .line 1430
    const-string v0, "StartThermalObserver"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1431
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.ThermalObserver"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1432
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1435
    :cond_8c6
    const-string v0, "StartWiredAccessoryManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1438
    :try_start_8cb
    new-instance v0, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v0, v2, v4}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v4, v0}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_8d3
    .catch Ljava/lang/Throwable; {:try_start_8cb .. :try_end_8d3} :catch_8d4

    .line 1442
    goto :goto_8db

    .line 1440
    :catch_8d4
    move-exception v0

    .line 1441
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting WiredAccessoryManager"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1443
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_8db
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1445
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.midi"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f7

    .line 1447
    const-string v0, "StartMidiManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1448
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1449
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1452
    :cond_8f7
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.host"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90d

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.accessory"

    .line 1453
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90d

    if-eqz v33, :cond_91c

    .line 1457
    :cond_90d
    const-string v0, "StartUsbService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1458
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1459
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1462
    :cond_91c
    if-nez v35, :cond_94b

    .line 1463
    const-string v0, "StartSerialService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1466
    :try_start_923
    new-instance v0, Lcom/android/server/SerialService;

    invoke-direct {v0, v2}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_928
    .catch Ljava/lang/Throwable; {:try_start_923 .. :try_end_928} :catch_935

    move-object v5, v0

    .line 1467
    .end local v18    # "serial":Lcom/android/server/SerialService;
    .local v5, "serial":Lcom/android/server/SerialService;
    :try_start_929
    const-string/jumbo v0, "serial"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_92f
    .catch Ljava/lang/Throwable; {:try_start_929 .. :try_end_92f} :catch_933

    .line 1470
    nop

    .line 1471
    move-object/from16 v60, v6

    goto :goto_945

    .line 1468
    :catch_933
    move-exception v0

    goto :goto_938

    .line 1468
    .end local v5    # "serial":Lcom/android/server/SerialService;
    .restart local v18    # "serial":Lcom/android/server/SerialService;
    :catch_935
    move-exception v0

    move-object/from16 v5, v18

    .line 1469
    .end local v18    # "serial":Lcom/android/server/SerialService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v5    # "serial":Lcom/android/server/SerialService;
    :goto_938
    move-object/from16 v59, v5

    const-string v5, "SystemServer"

    .line 1469
    .end local v5    # "serial":Lcom/android/server/SerialService;
    .local v59, "serial":Lcom/android/server/SerialService;
    move-object/from16 v60, v6

    const-string v6, "Failure starting SerialService"

    .line 1469
    .end local v6    # "notification":Landroid/app/INotificationManager;
    .local v60, "notification":Landroid/app/INotificationManager;
    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1471
    .end local v0    # "e":Ljava/lang/Throwable;
    move-object/from16 v5, v59

    .line 1471
    .end local v59    # "serial":Lcom/android/server/SerialService;
    .restart local v5    # "serial":Lcom/android/server/SerialService;
    :goto_945
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1474
    move-object/from16 v18, v5

    goto :goto_94d

    .line 1474
    .end local v5    # "serial":Lcom/android/server/SerialService;
    .end local v60    # "notification":Landroid/app/INotificationManager;
    .restart local v6    # "notification":Landroid/app/INotificationManager;
    .restart local v18    # "serial":Lcom/android/server/SerialService;
    :cond_94b
    move-object/from16 v60, v6

    .line 1474
    .end local v6    # "notification":Landroid/app/INotificationManager;
    .restart local v60    # "notification":Landroid/app/INotificationManager;
    :goto_94d
    const-string v0, "StartHardwarePropertiesManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1476
    :try_start_952
    new-instance v0, Lcom/android/server/HardwarePropertiesManagerService;

    invoke-direct {v0, v2}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_957
    .catch Ljava/lang/Throwable; {:try_start_952 .. :try_end_957} :catch_964

    move-object v5, v0

    .line 1477
    .end local v22    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v5, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :try_start_958
    const-string/jumbo v0, "hardware_properties"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_95e
    .catch Ljava/lang/Throwable; {:try_start_958 .. :try_end_95e} :catch_962

    .line 1481
    nop

    .line 1482
    move-object/from16 v22, v5

    goto :goto_972

    .line 1479
    :catch_962
    move-exception v0

    goto :goto_967

    .line 1479
    .end local v5    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v22    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :catch_964
    move-exception v0

    move-object/from16 v5, v22

    .line 1480
    .end local v22    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v5    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_967
    const-string v6, "SystemServer"

    move-object/from16 v61, v5

    const-string v5, "Failure starting HardwarePropertiesManagerService"

    .line 1480
    .end local v5    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v61, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    invoke-static {v6, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1482
    .end local v0    # "e":Ljava/lang/Throwable;
    move-object/from16 v22, v61

    .line 1482
    .end local v61    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v22    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_972
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1484
    const-string v0, "StartTwilightService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1485
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1486
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1488
    invoke-static {v2}, Lcom/android/internal/app/ColorDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_999

    .line 1489
    const-string v0, "StartNightDisplay"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1492
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1497
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1500
    :cond_999
    const-string v0, "StartJobScheduler"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1501
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1502
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1504
    const-string v0, "StartSoundTrigger"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1505
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1506
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1508
    const-string v0, "StartTrustManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1509
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1510
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1512
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.backup"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9df

    .line 1513
    const-string v0, "StartBackupManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1514
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1515
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1518
    :cond_9df
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.app_widgets"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9f6

    .line 1519
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1120058

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_a05

    .line 1520
    :cond_9f6
    const-string v0, "StartAppWidgerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1521
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1522
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1529
    :cond_a05
    const-string v0, "StartVoiceRecognitionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1530
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1531
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1533
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_a2d

    .line 1534
    const-string v0, "StartGestureLauncher"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1535
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1536
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1538
    :cond_a2d
    const-string v0, "StartSensorNotification"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1539
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1540
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1542
    const-string v0, "StartContextHubSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1543
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1544
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1546
    const-string v0, "StartDiskStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1548
    :try_start_a50
    const-string v0, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v2}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a5a
    .catch Ljava/lang/Throwable; {:try_start_a50 .. :try_end_a5a} :catch_a5b

    .line 1551
    goto :goto_a62

    .line 1549
    :catch_a5b
    move-exception v0

    .line 1550
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting DiskStats Service"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1552
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_a62
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1558
    iget-boolean v0, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_a78

    .line 1559
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x112006b

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_a78

    const/4 v0, 0x1

    goto :goto_a79

    :cond_a78
    const/4 v0, 0x0

    :goto_a79
    move v5, v0

    .line 1561
    .local v5, "startRulesManagerService":Z
    if-eqz v5, :cond_a8b

    .line 1562
    const-string v0, "StartTimeZoneRulesManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1563
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.timezone.RulesManagerService$Lifecycle"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1564
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1567
    :cond_a8b
    if-nez v35, :cond_ab0

    .line 1568
    const-string v0, "StartNetworkTimeUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1570
    :try_start_a92
    new-instance v0, Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {v0, v2}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_a97
    .catch Ljava/lang/Throwable; {:try_start_a92 .. :try_end_a97} :catch_aa6

    move-object v6, v0

    .line 1571
    .end local v19    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v6, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :try_start_a98
    const-string/jumbo v0, "network_time_update_service"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a9e
    .catch Ljava/lang/Throwable; {:try_start_a98 .. :try_end_a9e} :catch_aa2

    .line 1574
    nop

    .line 1575
    move-object/from16 v19, v6

    goto :goto_aad

    .line 1572
    :catch_aa2
    move-exception v0

    move-object/from16 v19, v6

    goto :goto_aa7

    .line 1572
    .end local v6    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v19    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_aa6
    move-exception v0

    .line 1573
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_aa7
    const-string/jumbo v6, "starting NetworkTimeUpdate service"

    invoke-direct {v3, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1575
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_aad
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1578
    :cond_ab0
    const-string v0, "StartCommonTimeManagementService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1580
    :try_start_ab5
    new-instance v0, Lcom/android/server/CommonTimeManagementService;

    invoke-direct {v0, v2}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_aba
    .catch Ljava/lang/Throwable; {:try_start_ab5 .. :try_end_aba} :catch_ac6

    move-object v6, v0

    .line 1581
    .end local v20    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v6, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_abb
    const-string v0, "commontime_management"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ac0
    .catch Ljava/lang/Throwable; {:try_start_abb .. :try_end_ac0} :catch_ac4

    .line 1584
    nop

    .line 1585
    move/from16 v62, v5

    goto :goto_ad1

    .line 1582
    :catch_ac4
    move-exception v0

    goto :goto_ac9

    .line 1582
    .end local v6    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v20    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_ac6
    move-exception v0

    move-object/from16 v6, v20

    .line 1583
    .end local v20    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v6    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_ac9
    move/from16 v62, v5

    const-string/jumbo v5, "starting CommonTimeManagementService service"

    .line 1583
    .end local v5    # "startRulesManagerService":Z
    .local v62, "startRulesManagerService":Z
    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1585
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_ad1
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1587
    const-string v0, "CertBlacklister"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1589
    :try_start_ad9
    new-instance v0, Lcom/android/server/CertBlacklister;

    invoke-direct {v0, v2}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_ade
    .catch Ljava/lang/Throwable; {:try_start_ad9 .. :try_end_ade} :catch_adf

    .line 1592
    goto :goto_ae6

    .line 1590
    :catch_adf
    move-exception v0

    .line 1591
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting CertBlacklister"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1593
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_ae6
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1597
    const-string v0, "StartEmergencyAffordanceService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1598
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1599
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1603
    const-string v0, "StartDreamManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1604
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1605
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1607
    const-string v0, "AddGraphicsStatsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1608
    const-string/jumbo v0, "graphicsstats"

    new-instance v5, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v5, v2}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1610
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1612
    sget-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v0, :cond_b30

    .line 1613
    const-string v0, "AddCoverageService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1614
    const-string v0, "coverage"

    new-instance v5, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v5}, Lcom/android/server/coverage/CoverageService;-><init>()V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1615
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1620
    :cond_b30
    const-string v0, "AddOemExService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1621
    new-instance v0, Lcom/android/server/OemExService;

    invoke-direct {v0, v2}, Lcom/android/server/OemExService;-><init>(Landroid/content/Context;)V

    move-object v5, v0

    .line 1622
    .end local v23    # "mOemExService":Lcom/android/server/OemExService;
    .local v5, "mOemExService":Lcom/android/server/OemExService;
    const-string v0, "OEMExService"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1623
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1628
    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/OemExService;->setActivityManager(Lcom/android/server/am/ActivityManagerService;)V

    .line 1632
    const-string v0, "AddOnePlusNfcService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1633
    new-instance v0, Lcom/android/server/OnePlusNfcService;

    invoke-direct {v0, v2}, Lcom/android/server/OnePlusNfcService;-><init>(Landroid/content/Context;)V

    move-object/from16 v63, v0

    .line 1634
    .end local v26    # "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    .local v63, "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    const-string v0, "OnePlusNfcService"

    move-object/from16 v64, v5

    move-object/from16 v5, v63

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1635
    .end local v63    # "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    .local v5, "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    .local v64, "mOemExService":Lcom/android/server/OemExService;
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1638
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v65, v5

    const-string v5, "android.software.print"

    .line 1638
    .end local v5    # "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    .local v65, "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b7b

    .line 1639
    const-string v0, "StartPrintManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1640
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1641
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1644
    :cond_b7b
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.companion_device_setup"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b94

    .line 1645
    const-string v0, "StartCompanionDeviceManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1646
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.companion.CompanionDeviceManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1647
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1650
    :cond_b94
    const-string v0, "StartRestrictionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1651
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1652
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1654
    const-string v0, "StartMediaSessionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1655
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1656
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1658
    const-string v0, "StartMediaUpdateService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1659
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaUpdateService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1660
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1662
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bda

    .line 1663
    const-string v0, "StartHdmiControlService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1664
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1665
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1668
    :cond_bda
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.live_tv"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_bee

    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.leanback"

    .line 1669
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bfd

    .line 1670
    :cond_bee
    const-string v0, "StartTvInputManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1671
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1672
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1675
    :cond_bfd
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.picture_in_picture"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c16

    .line 1676
    const-string v0, "StartMediaResourceMonitor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1677
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1678
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1681
    :cond_c16
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.leanback"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c2f

    .line 1682
    const-string v0, "StartTvRemoteService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1683
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1684
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1687
    :cond_c2f
    const-string v0, "StartMediaRouterService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1689
    :try_start_c34
    new-instance v0, Lcom/android/server/media/MediaRouterService;

    invoke-direct {v0, v2}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_c39
    .catch Ljava/lang/Throwable; {:try_start_c34 .. :try_end_c39} :catch_c46

    move-object v5, v0

    .line 1690
    .end local v38    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v5, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_c3a
    const-string/jumbo v0, "media_router"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c40
    .catch Ljava/lang/Throwable; {:try_start_c3a .. :try_end_c40} :catch_c44

    .line 1693
    nop

    .line 1694
    move-object/from16 v66, v5

    goto :goto_c51

    .line 1691
    :catch_c44
    move-exception v0

    goto :goto_c49

    .line 1691
    .end local v5    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v38    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_c46
    move-exception v0

    move-object/from16 v5, v38

    .line 1692
    .end local v38    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v5    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_c49
    move-object/from16 v66, v5

    const-string/jumbo v5, "starting MediaRouterService"

    .line 1692
    .end local v5    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v66, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1694
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_c51
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1696
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.fingerprint"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c6d

    .line 1697
    const-string v0, "StartFingerprintSensor"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1698
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1699
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1702
    :cond_c6d
    const-string v0, "StartBackgroundDexOptService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1704
    :try_start_c72
    invoke-static {v2}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_c75
    .catch Ljava/lang/Throwable; {:try_start_c72 .. :try_end_c75} :catch_c76

    .line 1707
    goto :goto_c7e

    .line 1705
    :catch_c76
    move-exception v0

    move-object v5, v0

    .line 1706
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting StartBackgroundDexOptService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1708
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_c7e
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1710
    const-string v0, "StartPruneInstantAppsJobService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1712
    :try_start_c86
    invoke-static {v2}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_c89
    .catch Ljava/lang/Throwable; {:try_start_c86 .. :try_end_c89} :catch_c8a

    .line 1715
    goto :goto_c91

    .line 1713
    :catch_c8a
    move-exception v0

    move-object v5, v0

    .line 1714
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v5, "StartPruneInstantAppsJobService"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1716
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_c91
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1719
    const-string v0, "StartShortcutServiceLifecycle"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1720
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1721
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1723
    const-string v0, "StartLauncherAppsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1724
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1725
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1727
    const-string v0, "StartCrossProfileAppsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1728
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/CrossProfileAppsService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1729
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1732
    const-string v0, "SystemServer"

    const-string v5, "Secrecy Service"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/secrecy/SecrecyService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/secrecy/SecrecyService;

    iput-object v0, v3, Lcom/android/server/SystemServer;->mSecrecyService:Lcom/android/server/secrecy/SecrecyService;

    .line 1737
    .end local v49    # "hasPdb":Z
    .end local v62    # "startRulesManagerService":Z
    move-object/from16 v38, v6

    move-object/from16 v53, v8

    move-object/from16 v43, v9

    move-object/from16 v42, v10

    move-object/from16 v20, v11

    move-object/from16 v23, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v16

    move-object/from16 v14, v17

    move-object/from16 v41, v22

    move-object/from16 v13, v27

    move-object/from16 v47, v51

    move-object/from16 v52, v60

    move-object/from16 v22, v12

    move-object/from16 v27, v18

    move-object/from16 v12, v28

    move-object/from16 v28, v19

    goto :goto_d1f

    .end local v10    # "mOnePlusPowerController":Lcom/android/server/OnePlusPowerController;
    .end local v51    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v58    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v60    # "notification":Landroid/app/INotificationManager;
    .end local v64    # "mOemExService":Lcom/android/server/OemExService;
    .end local v65    # "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    .end local v66    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v6, "notification":Landroid/app/INotificationManager;
    .restart local v20    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v23    # "mOemExService":Lcom/android/server/OemExService;
    .restart local v25    # "mOnePlusPowerController":Lcom/android/server/OnePlusPowerController;
    .restart local v26    # "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    .restart local v38    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v47    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_cf7
    move-object/from16 v52, v6

    move-object/from16 v53, v8

    move-object/from16 v43, v9

    move-object/from16 v41, v22

    move-object/from16 v64, v23

    move-object/from16 v42, v25

    move-object/from16 v65, v26

    move-object/from16 v66, v38

    move-object/from16 v58, v44

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move-object/from16 v25, v14

    move-object/from16 v26, v16

    move-object/from16 v14, v17

    move-object/from16 v38, v20

    move-object/from16 v13, v27

    move-object/from16 v12, v28

    move-object/from16 v20, v11

    move-object/from16 v27, v18

    move-object/from16 v28, v19

    .end local v6    # "notification":Landroid/app/INotificationManager;
    .end local v8    # "location":Lcom/android/server/LocationManagerService;
    .end local v9    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v11    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v16    # "serviceDiscovery":Lcom/android/server/NsdService;
    .end local v17    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v18    # "serial":Lcom/android/server/SerialService;
    .end local v19    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v12, "wigigService":Ljava/lang/Object;
    .local v13, "wigigP2pService":Ljava/lang/Object;
    .local v14, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v20, "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v22, "ipSecService":Lcom/android/server/IpSecService;
    .local v23, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v25, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v26, "serviceDiscovery":Lcom/android/server/NsdService;
    .local v27, "serial":Lcom/android/server/SerialService;
    .local v28, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v38, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v41, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v42, "mOnePlusPowerController":Lcom/android/server/OnePlusPowerController;
    .local v43, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v52    # "notification":Landroid/app/INotificationManager;
    .restart local v53    # "location":Lcom/android/server/LocationManagerService;
    .restart local v58    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v64    # "mOemExService":Lcom/android/server/OemExService;
    .restart local v65    # "mOnePlusNfcService":Lcom/android/server/OnePlusNfcService;
    .restart local v66    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_d1f
    if-nez v35, :cond_d30

    .line 1738
    const-string v0, "StartMediaProjectionManager"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1739
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1740
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1743
    :cond_d30
    if-eqz v35, :cond_d86

    .line 1744
    const-string v0, "StartWearConfigService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1745
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.WearConfigManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1746
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1748
    const-string v0, "StartWearConnectivityService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1749
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1750
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1752
    const-string v0, "StartWearTimeService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1753
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.display.WearDisplayService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1754
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1755
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1757
    if-eqz v32, :cond_d77

    .line 1758
    const-string v0, "StartWearLeftyService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1759
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.clockwork.lefty.WearLeftyService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1760
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1763
    :cond_d77
    const-string v0, "StartWearGlobalActionsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1764
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.clockwork.globalactions.GlobalActionsService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1765
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1768
    :cond_d86
    if-nez v31, :cond_d97

    .line 1769
    const-string v0, "StartSliceManagerService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1770
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.slice.SliceManagerService$Lifecycle"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1771
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1774
    :cond_d97
    if-nez v30, :cond_da8

    .line 1775
    const-string v0, "StartCameraServiceProxy"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1776
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1777
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1780
    :cond_da8
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v5, "android.hardware.type.embedded"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dc3

    .line 1781
    const-string v0, "StartIoTSystemService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1782
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.google.android.things.services.IoTSystemService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1783
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1787
    :cond_dc3
    const-string v0, "StartStatsCompanionService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1788
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/stats/StatsCompanionService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1789
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1793
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v11

    .line 1794
    .local v11, "safeMode":Z
    if-eqz v11, :cond_ded

    .line 1795
    const-string v0, "EnterSafeModeAndDisableJitCompilation"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1796
    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1798
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1799
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    goto :goto_dfc

    .line 1802
    :cond_ded
    const-string v0, "StartJitCompilation"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1803
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    .line 1804
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1808
    :goto_dfc
    const-string v0, "StartMmsService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1809
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/server/MmsServiceBroker;

    .line 1810
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1812
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.autofill"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e29

    .line 1813
    const-string v0, "StartAutoFillService"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1814
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.server.autofill.AutofillManagerService"

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1815
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1820
    :cond_e29
    const-string v0, "MakeVibratorServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1822
    :try_start_e2e
    invoke-virtual {v7}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_e31
    .catch Ljava/lang/Throwable; {:try_start_e2e .. :try_end_e31} :catch_e32

    .line 1825
    goto :goto_e3a

    .line 1823
    :catch_e32
    move-exception v0

    move-object v5, v0

    .line 1824
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "making Vibrator Service ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1826
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_e3a
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1828
    const-string v0, "MakeLockSettingsServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1829
    if-eqz v14, :cond_e50

    .line 1831
    :try_start_e44
    invoke-interface {v14}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_e47
    .catch Ljava/lang/Throwable; {:try_start_e44 .. :try_end_e47} :catch_e48

    .line 1834
    goto :goto_e50

    .line 1832
    :catch_e48
    move-exception v0

    move-object v5, v0

    .line 1833
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "making Lock Settings Service ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1836
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_e50
    :goto_e50
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1839
    const-string v0, "StartBootPhaseLockSettingsReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1840
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1841
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1843
    const-string v0, "StartBootPhaseSystemServicesReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1844
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1845
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1849
    if-eqz v34, :cond_ec6

    .line 1851
    :try_start_e73
    const-string v0, "SystemServer"

    const-string v6, "calling onBootPhase for Wigig Services"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1853
    .local v0, "wigigP2pClass":Ljava/lang/Class;
    const-string/jumbo v6, "onBootPhase"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-virtual {v0, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 1854
    .local v6, "m":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-virtual {v6, v13, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1857
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 1858
    .local v8, "wigigClass":Ljava/lang/Class;
    const-string/jumbo v9, "onBootPhase"

    const/4 v10, 0x1

    new-array v5, v10, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v10, v5, v16

    invoke-virtual {v8, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1859
    .end local v6    # "m":Ljava/lang/reflect/Method;
    .local v5, "m":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Integer;

    const/16 v10, 0x1f4

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    const/4 v10, 0x0

    aput-object v9, v6, v10

    invoke-virtual {v5, v12, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ebf
    .catch Ljava/lang/Throwable; {:try_start_e73 .. :try_end_ebf} :catch_ec0

    .line 1863
    .end local v0    # "wigigP2pClass":Ljava/lang/Class;
    .end local v5    # "m":Ljava/lang/reflect/Method;
    .end local v8    # "wigigClass":Ljava/lang/Class;
    goto :goto_ec6

    .line 1861
    :catch_ec0
    move-exception v0

    .line 1862
    .local v0, "e":Ljava/lang/Throwable;
    const-string v5, "Wigig services ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1866
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_ec6
    :goto_ec6
    const-string v0, "MakeWindowManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1869
    :try_start_ecb
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_ece
    .catch Ljava/lang/Throwable; {:try_start_ecb .. :try_end_ece} :catch_ecf

    .line 1872
    goto :goto_ed7

    .line 1870
    :catch_ecf
    move-exception v0

    move-object v5, v0

    .line 1871
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "making Window Manager Service ready"

    invoke-direct {v3, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1873
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_ed7
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1875
    if-eqz v11, :cond_ee1

    .line 1876
    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1882
    :cond_ee1
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v9

    .line 1883
    .local v9, "config":Landroid/content/res/Configuration;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v6, v0

    .line 1884
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v0, "window"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/view/WindowManager;

    .line 1885
    .local v8, "w":Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1886
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9, v6}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1889
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1890
    .local v5, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v5}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_f11

    .line 1891
    invoke-virtual {v5}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 1894
    :cond_f11
    const-string v0, "MakePowerManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1897
    :try_start_f16
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    iget-object v10, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_f21
    .catch Ljava/lang/Throwable; {:try_start_f16 .. :try_end_f21} :catch_f22

    .line 1900
    goto :goto_f29

    .line 1898
    :catch_f22
    move-exception v0

    .line 1899
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "making Power Manager Service ready"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1901
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_f29
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1906
    :try_start_f2c
    const-string v0, "SystemServer"

    const-string v10, "Secrecy systemReady"

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSecrecyService:Lcom/android/server/secrecy/SecrecyService;

    invoke-virtual {v0}, Lcom/android/server/secrecy/SecrecyService;->systemReady()V
    :try_end_f38
    .catch Ljava/lang/Throwable; {:try_start_f2c .. :try_end_f38} :catch_f39

    .line 1910
    goto :goto_f40

    .line 1908
    :catch_f39
    move-exception v0

    .line 1909
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "making secrecy Service ready"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1913
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_f40
    const-string v0, "MakePackageManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1914
    iget-object v0, v3, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    .line 1915
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1917
    const-string v0, "MakeDisplayManagerServiceReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1920
    :try_start_f52
    iget-object v0, v3, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    iget-boolean v10, v3, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-virtual {v0, v11, v10}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_f59
    .catch Ljava/lang/Throwable; {:try_start_f52 .. :try_end_f59} :catch_f5a

    .line 1923
    goto :goto_f61

    .line 1921
    :catch_f5a
    move-exception v0

    .line 1922
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "making Display Manager Service ready"

    invoke-direct {v3, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1924
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_f61
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1926
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 1929
    const-string v0, "StartDeviceSpecificServices"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1930
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x1070022

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 1932
    .local v10, "classes":[Ljava/lang/String;
    move-object/from16 v67, v2

    array-length v2, v10

    .line 1932
    .end local v2    # "context":Landroid/content/Context;
    .local v67, "context":Landroid/content/Context;
    move-object/from16 v68, v5

    const/4 v5, 0x0

    .line 1932
    .end local v5    # "systemTheme":Landroid/content/res/Resources$Theme;
    .local v68, "systemTheme":Landroid/content/res/Resources$Theme;
    :goto_f81
    if-ge v5, v2, :cond_fca

    move/from16 v69, v2

    aget-object v2, v10, v5

    .line 1933
    .local v2, "className":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v70, v6

    const-string v6, "StartDeviceSpecificServices "

    .line 1933
    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    .local v70, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1935
    :try_start_f9d
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_fa2
    .catch Ljava/lang/Throwable; {:try_start_f9d .. :try_end_fa2} :catch_fa6

    .line 1938
    nop

    .line 1939
    move-object/from16 v71, v7

    goto :goto_fbe

    .line 1936
    :catch_fa6
    move-exception v0

    .line 1937
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v71, v7

    const-string/jumbo v7, "starting "

    .line 1937
    .end local v7    # "vibrator":Lcom/android/server/VibratorService;
    .local v71, "vibrator":Lcom/android/server/VibratorService;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1939
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_fbe
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1932
    .end local v2    # "className":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v69

    move-object/from16 v6, v70

    move-object/from16 v7, v71

    goto :goto_f81

    .line 1941
    .end local v70    # "metrics":Landroid/util/DisplayMetrics;
    .end local v71    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v6    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v7    # "vibrator":Lcom/android/server/VibratorService;
    :cond_fca
    move-object/from16 v70, v6

    move-object/from16 v71, v7

    .line 1941
    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    .end local v7    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v70    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v71    # "vibrator":Lcom/android/server/VibratorService;
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1943
    const-string v0, "StartBootPhaseDeviceSpecificServicesReady"

    invoke-static {v0}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1944
    iget-object v0, v3, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v2, 0x208

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1945
    invoke-static {}, Lcom/android/server/SystemServer;->traceEnd()V

    .line 1948
    move-object/from16 v44, v48

    move-object/from16 v45, v68

    move-object/from16 v5, v20

    .line 1949
    .end local v48    # "lastVersion":Ljava/lang/String;
    .end local v68    # "systemTheme":Landroid/content/res/Resources$Theme;
    .local v5, "networkManagementF":Lcom/android/server/NetworkManagementService;
    .local v44, "lastVersion":Ljava/lang/String;
    .local v45, "systemTheme":Landroid/content/res/Resources$Theme;
    move-object/from16 v46, v8

    move-object/from16 v8, v23

    .line 1950
    .local v8, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .local v46, "w":Landroid/view/WindowManager;
    move-object/from16 v48, v70

    move-object/from16 v6, v25

    .line 1951
    .end local v70    # "metrics":Landroid/util/DisplayMetrics;
    .local v6, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v48, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v49, v9

    move-object/from16 v9, v58

    .line 1952
    .local v9, "connectivityF":Lcom/android/server/ConnectivityService;
    .local v49, "config":Landroid/content/res/Configuration;
    move-object/from16 v50, v10

    const/4 v2, 0x0

    const/4 v7, 0x1

    move-object/from16 v10, v53

    .line 1953
    .local v10, "locationF":Lcom/android/server/LocationManagerService;
    .local v50, "classes":[Ljava/lang/String;
    move/from16 v51, v11

    move-object/from16 v11, v43

    .line 1954
    .local v11, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .local v51, "safeMode":Z
    move-object/from16 v54, v12

    move-object/from16 v12, v28

    .line 1955
    .local v12, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .local v54, "wigigService":Ljava/lang/Object;
    move-object/from16 v55, v13

    move-object/from16 v13, v38

    .line 1956
    .local v13, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .local v55, "wigigP2pService":Ljava/lang/Object;
    move-object/from16 v56, v14

    move-object v14, v4

    .line 1957
    .local v14, "inputManagerF":Lcom/android/server/input/InputManagerService;
    .local v56, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    move/from16 v59, v2

    move v2, v7

    move-object/from16 v57, v15

    move-object/from16 v15, v36

    .line 1958
    .local v15, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .local v57, "curVersion":Ljava/lang/String;
    move-object/from16 v16, v66

    .line 1959
    .local v16, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v17, v21

    .line 1960
    .local v17, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v60, v71

    move-object/from16 v7, v22

    .line 1961
    .end local v71    # "vibrator":Lcom/android/server/VibratorService;
    .local v7, "ipSecServiceF":Lcom/android/server/IpSecService;
    .local v60, "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v61, v4

    move-object v4, v1

    .line 1965
    .local v4, "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .local v61, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v18, v64

    .line 1969
    .local v18, "mOemExServiceF":Lcom/android/server/OemExService;
    move-object/from16 v19, v65

    .line 1977
    .local v19, "mOnePlusNfcServiceF":Lcom/android/server/OnePlusNfcService;
    iget-object v0, v3, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v72, v0

    new-instance v0, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;

    move-object/from16 v62, v1

    move-object v1, v0

    .line 1977
    .end local v1    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v62, "wm":Lcom/android/server/wm/WindowManagerService;
    move-object/from16 v63, v67

    move-object v2, v3

    .line 1977
    .end local v67    # "context":Landroid/content/Context;
    .local v63, "context":Landroid/content/Context;
    move-object/from16 v3, v63

    invoke-direct/range {v1 .. v19}, Lcom/android/server/-$$Lambda$SystemServer$nNUhyO53LbxeRcVHwYDTgyDWFNQ;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/IpSecService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;Lcom/android/server/OemExService;Lcom/android/server/OnePlusNfcService;)V

    sget-object v1, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    move-object/from16 v2, v72

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Landroid/util/TimingsTraceLog;)V

    .line 2182
    const/4 v1, 0x1

    new-array v0, v1, [I

    const/16 v1, 0x2c

    aput v1, v0, v59

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_104a

    .line 2183
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPCBNumber()V

    goto :goto_104c

    .line 2185
    :cond_104a
    move-object/from16 v1, p0

    :goto_104c
    return-void
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .line 2188
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2189
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2191
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2193
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2194
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    .line 2195
    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 2198
    const-string v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0, p0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 2200
    return-void
.end method

.method private static traceEnd()V
    .registers 1

    .line 2203
    sget-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Landroid/util/TimingsTraceLog;

    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 2204
    return-void
.end method
