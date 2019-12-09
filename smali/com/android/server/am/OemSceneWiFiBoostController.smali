.class public Lcom/android/server/am/OemSceneWiFiBoostController;
.super Ljava/lang/Object;
.source "OemSceneWiFiBoostController.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OemSceneWiFiBoostController$WiFiBoostThreadHandler;,
        Lcom/android/server/am/OemSceneWiFiBoostController$GameModeNetWorkAccContentObserver;,
        Lcom/android/server/am/OemSceneWiFiBoostController$WlanReceiver;,
        Lcom/android/server/am/OemSceneWiFiBoostController$WifiBoostConfigUpdater;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static ENABLE_ONLINECONFIG:Z = false

.field private static final GAME_MODE_NETWORK_ACC:Ljava/lang/String; = "game_mode_network_acceleration"

.field private static final GAME_NETWORK_BOOST_KEY:Ljava/lang/String; = "persist.sys.gamemode.wifiboost"

.field private static final HANDLE_DELAY_TIME:I = 0x1388

.field private static final MSG_GAME_NETWORK_ACC_CHANGED:I = 0x3

.field private static final MSG_GET_ONLINECONFIG:I = 0x5

.field private static final MSG_USER_SWITCHED:I = 0x4

.field private static final MSG_WIFI_STATE_DISABLED:I = 0x1

.field private static final MSG_WIFI_STATE_ENABLED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "OemSceneWiFiBoostController"

.field private static final URI_GAME_NETWORK_ACC:Landroid/net/Uri;

.field private static final VALUE_NETWORK_BOOST_DEFAULT:Ljava/lang/String; = "-1"

.field private static final VALUE_NETWORK_BOOST_INIT:Ljava/lang/String; = "1"

.field private static final VALUE_NETWORK_BOOST_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_NETWORK_BOOST_ON:Ljava/lang/String; = "2"

.field private static final VALUE_OFF_INT:I = 0x0

.field private static final VALUE_ON_INT:I = 0x1

.field private static final WIFIBOOST_CONFIG_NAME:Ljava/lang/String; = "WifiBoost"

.field private static mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;


# instance fields
.field private mCallback:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCurPropt:Ljava/lang/String;

.field private mGameModeNetWorkAccObserver:Lcom/android/server/am/OemSceneWiFiBoostController$GameModeNetWorkAccContentObserver;

.field private mModeStatus:Z

.field private mModeStatusLock:Ljava/lang/Object;

.field public mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

.field private mOnePlusWIFIBoostConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mOneTime:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mWiFiBoostHandler:Landroid/os/Handler;

.field private mWifiBoost:I

.field private mWifiBoost_new:I

.field private mWlanReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 57
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    .line 59
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 62
    const-string v0, "game_mode_network_acceleration"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OemSceneWiFiBoostController;->URI_GAME_NETWORK_ACC:Landroid/net/Uri;

    .line 75
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OemSceneWiFiBoostController;->ENABLE_ONLINECONFIG:Z

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 8
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;

    .line 82
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost:I

    .line 83
    iput v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost_new:I

    .line 84
    iput-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWlanReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    const-string v0, "-1"

    iput-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mCurPropt:Ljava/lang/String;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOneTime:Z

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatus:Z

    .line 88
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatusLock:Ljava/lang/Object;

    .line 277
    new-instance v2, Lcom/android/server/am/OemSceneWiFiBoostController$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/OemSceneWiFiBoostController$1;-><init>(Lcom/android/server/am/OemSceneWiFiBoostController;)V

    iput-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mCallback:Ljava/lang/Runnable;

    .line 106
    const-string v2, "OemSceneWiFiBoostController"

    const-string v3, "OemSceneBatterySaverController init"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mContext:Landroid/content/Context;

    .line 108
    iget-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mResolver:Landroid/content/ContentResolver;

    .line 110
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "WiFiBoostThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 111
    .local v2, "mWiFiBoostThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 112
    new-instance v3, Lcom/android/server/am/OemSceneWiFiBoostController$WiFiBoostThreadHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/am/OemSceneWiFiBoostController$WiFiBoostThreadHandler;-><init>(Lcom/android/server/am/OemSceneWiFiBoostController;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;

    .line 114
    new-instance v3, Lcom/android/server/am/OemSceneWiFiBoostController$GameModeNetWorkAccContentObserver;

    iget-object v4, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/am/OemSceneWiFiBoostController$GameModeNetWorkAccContentObserver;-><init>(Lcom/android/server/am/OemSceneWiFiBoostController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mGameModeNetWorkAccObserver:Lcom/android/server/am/OemSceneWiFiBoostController$GameModeNetWorkAccContentObserver;

    .line 115
    iget-object v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/am/OemSceneWiFiBoostController;->URI_GAME_NETWORK_ACC:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mGameModeNetWorkAccObserver:Lcom/android/server/am/OemSceneWiFiBoostController$GameModeNetWorkAccContentObserver;

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 117
    invoke-static {p1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OnePlusNetCgroupSetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .line 119
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->registerWlanReceiver()V

    .line 120
    invoke-virtual {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->initOnlineConfig()V

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OemSceneWiFiBoostController;Lorg/json/JSONArray;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OemSceneWiFiBoostController;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/am/OemSceneWiFiBoostController;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/OemSceneWiFiBoostController;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OemSceneWiFiBoostController;
    .param p1, "x1"    # I

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/am/OemSceneWiFiBoostController;->handleUserSwitched(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/OemSceneWiFiBoostController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 54
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/OemSceneWiFiBoostController;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OemSceneWiFiBoostController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Boolean;

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OemSceneWiFiBoostController;->setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 54
    sget-boolean v0, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/am/OemSceneWiFiBoostController;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 54
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/OemSceneWiFiBoostController;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 54
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/OemSceneWiFiBoostController;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OemSceneWiFiBoostController;
    .param p1, "x1"    # I

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/am/OemSceneWiFiBoostController;->validateNetWorkACCValue(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/am/OemSceneWiFiBoostController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 54
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/am/OemSceneWiFiBoostController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 54
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->handleWifiStateDisable()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/OemSceneWiFiBoostController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 54
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->handleWifiStateEnable()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/OemSceneWiFiBoostController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 54
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->handleGameNetWorkAccChanged()V

    return-void
.end method

.method private clearHandler()V
    .registers 3

    .line 295
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 296
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 298
    :cond_11
    return-void
.end method

.method private getCurrentUserId()I
    .registers 2

    .line 379
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    return v0
.end method

.method private getGameModeNetWorkAcc()I
    .registers 5

    .line 387
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "game_mode_network_acceleration"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static final getInstance()Lcom/android/server/am/OemSceneWiFiBoostController;
    .registers 3

    .line 101
    sget-boolean v0, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "OemSceneWiFiBoostController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance() OemSceneWiFiBoostController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/OemSceneWiFiBoostController;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_1c
    sget-object v0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    return-object v0
.end method

.method public static final getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OemSceneWiFiBoostController;
    .registers 4
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 93
    sget-object v0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    if-nez v0, :cond_b

    .line 94
    new-instance v0, Lcom/android/server/am/OemSceneWiFiBoostController;

    invoke-direct {v0, p0}, Lcom/android/server/am/OemSceneWiFiBoostController;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    .line 96
    :cond_b
    sget-boolean v0, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    if-eqz v0, :cond_27

    const-string v0, "OemSceneWiFiBoostController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance(ActivityManagerService ams) OemSceneWiFiBoostController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/OemSceneWiFiBoostController;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_27
    sget-object v0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOemSceneWiFiBoostController:Lcom/android/server/am/OemSceneWiFiBoostController;

    return-object v0
.end method

.method private handleGameNetWorkAccChanged()V
    .registers 5

    .line 332
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->getGameModeNetWorkAcc()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost:I

    .line 333
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->getCurrentUserId()I

    move-result v0

    .line 334
    .local v0, "mCurrentUserId":I
    sget-boolean v1, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    if-eqz v1, :cond_47

    const-string v1, "OemSceneWiFiBoostController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleGameNetWorkAccChanged, isWifi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/am/OemSceneWiFiBoostController;->isWifi(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " |mOneTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOneTime:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " |mCurrentUserId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |mWifiBoost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_47
    iget v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_52

    .line 340
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_WiFiBackgroudNetLimit:Lcom/oneplus/oimc/OIMCRule;

    invoke-static {v1}, Lcom/oneplus/oimc/OIMCManager;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    goto :goto_5b

    .line 341
    :cond_52
    iget v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost:I

    if-nez v1, :cond_5b

    .line 342
    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_WiFiBackgroudNetLimit:Lcom/oneplus/oimc/OIMCRule;

    invoke-static {v1}, Lcom/oneplus/oimc/OIMCManager;->removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    .line 344
    :cond_5b
    :goto_5b
    return-void
.end method

.method private handleUserSwitched(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 322
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->getGameModeNetWorkAcc()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost_new:I

    .line 323
    sget-boolean v0, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    if-eqz v0, :cond_35

    const-string v0, "OemSceneWiFiBoostController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleUserSwitched, userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |mWifiBoost_new:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost_new:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |mWifiBoost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_35
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->handleGameNetWorkAccChanged()V

    .line 329
    return-void
.end method

.method private handleWifiStateDisable()V
    .registers 4

    .line 285
    sget-boolean v0, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    if-eqz v0, :cond_27

    const-string v0, "OemSceneWiFiBoostController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleWifiStateDisable, mWifiBoost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |mOneTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOneTime:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_27
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mCurPropt:Ljava/lang/String;

    const-string v1, "0"

    if-eq v0, v1, :cond_38

    .line 287
    const-string v0, "0"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OemSceneWiFiBoostController;->setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_3b

    .line 289
    :cond_38
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->clearHandler()V

    .line 291
    :goto_3b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOneTime:Z

    .line 292
    return-void
.end method

.method private handleWifiStateEnable()V
    .registers 5

    .line 301
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_3
    sget-boolean v1, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    if-eqz v1, :cond_34

    const-string v1, "OemSceneWiFiBoostController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleWifiStateEnable, mWifiBoost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |mOneTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOneTime:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " |mModeStatusLock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatusLock:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_34
    iget-boolean v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatus:Z

    if-eqz v1, :cond_6f

    .line 304
    iget-boolean v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOneTime:Z

    if-eqz v1, :cond_48

    .line 305
    const-string v1, "1"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/server/am/OemSceneWiFiBoostController;->setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 306
    iput-boolean v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOneTime:Z

    .line 309
    :cond_48
    sget-boolean v1, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    if-eqz v1, :cond_65

    const-string v1, "OemSceneWiFiBoostController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleWifiStateEnable mModeStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_65
    const-string v1, "2"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/OemSceneWiFiBoostController;->setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 312
    :cond_6f
    monitor-exit v0

    .line 313
    return-void

    .line 312
    :catchall_71
    move-exception v1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_3 .. :try_end_73} :catchall_71

    throw v1
.end method

.method private isWifi(Landroid/content/Context;)Z
    .registers 6
    .param p1, "mContext"    # Landroid/content/Context;

    .line 368
    const-string v0, "connectivity"

    .line 369
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 370
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 371
    .local v1, "activeNetInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_16

    .line 372
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    .line 373
    return v3

    .line 375
    :cond_16
    const/4 v2, 0x0

    return v2
.end method

.method private registerWlanReceiver()V
    .registers 4

    .line 192
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWlanReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_29

    .line 193
    sget-boolean v0, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    if-eqz v0, :cond_10

    const-string v0, "OemSceneWiFiBoostController"

    const-string/jumbo v1, "registerWlanReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_10
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 195
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    new-instance v1, Lcom/android/server/am/OemSceneWiFiBoostController$WlanReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OemSceneWiFiBoostController$WlanReceiver;-><init>(Lcom/android/server/am/OemSceneWiFiBoostController;Lcom/android/server/am/OemSceneWiFiBoostController$1;)V

    iput-object v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWlanReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    iget-object v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWlanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_29
    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .registers 12
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 137
    if-nez p1, :cond_a

    .line 138
    const-string v0, "OemSceneWiFiBoostController"

    const-string v1, "[OnlineConfig] resolveConfigFromJSON jsonArray is null, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 143
    :cond_a
    const/4 v0, 0x0

    move v1, v0

    .line 143
    .local v1, "index":I
    :goto_c
    :try_start_c
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_79

    .line 144
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 145
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 146
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 147
    .local v3, "jArray":Lorg/json/JSONArray;
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    .line 148
    .local v4, "enable_new":Z
    sget-boolean v5, Lcom/android/server/am/OemSceneWiFiBoostController;->ENABLE_ONLINECONFIG:Z

    if-eq v4, v5, :cond_76

    .line 149
    sput-boolean v4, Lcom/android/server/am/OemSceneWiFiBoostController;->ENABLE_ONLINECONFIG:Z

    .line 150
    iget-object v5, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatusLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_39} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_39} :catch_94
    .catchall {:try_start_c .. :try_end_39} :catchall_92

    .line 151
    :try_start_39
    sget-boolean v6, Lcom/android/server/am/OemSceneWiFiBoostController;->ENABLE_ONLINECONFIG:Z

    if-eqz v6, :cond_67

    .line 152
    const-string v6, "WiFiBackgroudNetLimit"

    invoke-static {v6}, Lcom/oneplus/oimc/OIMCManager;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result v6

    .line 153
    .local v6, "funStatus":I
    const-string v7, "OemSceneWiFiBoostController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] funStatus:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v7, 0x1

    if-ne v6, v7, :cond_66

    .line 155
    iput-boolean v7, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatus:Z

    .line 156
    invoke-virtual {p0, v7}, Lcom/android/server/am/OemSceneWiFiBoostController;->handleGameModeNetBoost(Z)V

    .line 157
    iget-object v8, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-virtual {v8, v7}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->opStatusChanged(Z)V

    .line 159
    .end local v6    # "funStatus":I
    :cond_66
    goto :goto_71

    .line 160
    :cond_67
    iput-boolean v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatus:Z

    .line 161
    invoke-virtual {p0, v0}, Lcom/android/server/am/OemSceneWiFiBoostController;->handleGameModeNetBoost(Z)V

    .line 162
    iget-object v6, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-virtual {v6, v0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->opStatusChanged(Z)V

    .line 164
    :goto_71
    monitor-exit v5

    goto :goto_76

    :catchall_73
    move-exception v0

    monitor-exit v5
    :try_end_75
    .catchall {:try_start_39 .. :try_end_75} :catchall_73

    :try_start_75
    throw v0
    :try_end_76
    .catch Lorg/json/JSONException; {:try_start_75 .. :try_end_76} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_76} :catch_94
    .catchall {:try_start_75 .. :try_end_76} :catchall_92

    .line 143
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "jArray":Lorg/json/JSONArray;
    .end local v4    # "enable_new":Z
    :cond_76
    :goto_76
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 176
    .end local v1    # "index":I
    :cond_79
    const-string v0, "OemSceneWiFiBoostController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_80
    const-string v2, "[OnlineConfig] resolveConfigFromJSON ENABLE_ONLINECONFIG:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OemSceneWiFiBoostController;->ENABLE_ONLINECONFIG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    goto :goto_e0

    .line 175
    :catchall_92
    move-exception v0

    goto :goto_e1

    .line 171
    :catch_94
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    :try_start_95
    const-string v1, "OemSceneWiFiBoostController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b2
    .catchall {:try_start_95 .. :try_end_b2} :catchall_92

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, "OemSceneWiFiBoostController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_80

    .line 168
    :catch_ba
    move-exception v0

    .line 169
    .local v0, "e":Lorg/json/JSONException;
    :try_start_bb
    const-string v1, "OemSceneWiFiBoostController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_d8
    .catchall {:try_start_bb .. :try_end_d8} :catchall_92

    .line 176
    .end local v0    # "e":Lorg/json/JSONException;
    const-string v0, "OemSceneWiFiBoostController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_80

    .line 179
    :goto_e0
    return-void

    .line 175
    :goto_e1
    nop

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON ENABLE_ONLINECONFIG:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OemSceneWiFiBoostController;->ENABLE_ONLINECONFIG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OemSceneWiFiBoostController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "isDelay"    # Ljava/lang/Boolean;

    .line 347
    sget-boolean v0, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    if-eqz v0, :cond_2d

    const-string v0, "OemSceneWiFiBoostController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "persist.sys.gamemode.wifiboost value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |isDelay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " |mCurPropt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mCurPropt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_2d
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mCurPropt:Ljava/lang/String;

    if-ne v0, p1, :cond_32

    return-void

    .line 350
    :cond_32
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 351
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 354
    :cond_43
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 355
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6b

    .line 358
    :cond_53
    :try_start_53
    const-string/jumbo v0, "persist.sys.gamemode.wifiboost"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iput-object p1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mCurPropt:Ljava/lang/String;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5b} :catch_5c

    .line 363
    goto :goto_6b

    .line 360
    :catch_5c
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    if-eqz v1, :cond_68

    const-string v1, "OemSceneWiFiBoostController"

    const-string v2, "failed to set system property"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 365
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6b
    return-void
.end method

.method private validateNetWorkACCValue(I)Z
    .registers 3
    .param p1, "value"    # I

    .line 383
    const/4 v0, 0x1

    if-eq v0, p1, :cond_8

    if-nez p1, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    nop

    :cond_8
    :goto_8
    return v0
.end method


# virtual methods
.method public addOrRemoveRule(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 316
    sget-boolean v0, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    if-eqz v0, :cond_1a

    const-string v0, "OemSceneWiFiBoostController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addOrRemoveRule, userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_1a
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 318
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 319
    return-void
.end method

.method public config(Ljava/lang/Object;)I
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 443
    const-string v0, "OemSceneWiFiBoostController"

    const-string v1, "WiFiBoost config"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v0, 0x0

    return v0
.end method

.method public handleGameModeNetBoost(Z)V
    .registers 5
    .param p1, "action"    # Z

    .line 391
    sget-boolean v0, Lcom/android/server/am/OemSceneWiFiBoostController;->DEBUG:Z

    if-eqz v0, :cond_3d

    const-string v0, "OemSceneWiFiBoostController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleGameModeNetBoost, action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mModeStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mWifiBoost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |isWifi(mContext):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mContext:Landroid/content/Context;

    .line 394
    invoke-direct {p0, v2}, Lcom/android/server/am/OemSceneWiFiBoostController;->isWifi(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 391
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_3d
    iget-boolean v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    .line 397
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/am/OemSceneWiFiBoostController;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 398
    iget-boolean v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOneTime:Z

    if-eqz v0, :cond_59

    .line 399
    const-string v0, "1"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/OemSceneWiFiBoostController;->setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 400
    iput-boolean v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOneTime:Z

    .line 402
    :cond_59
    const-string v0, "2"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OemSceneWiFiBoostController;->setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_77

    .line 405
    :cond_64
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mCurPropt:Ljava/lang/String;

    const-string v2, "0"

    if-eq v0, v2, :cond_74

    .line 406
    const-string v0, "0"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OemSceneWiFiBoostController;->setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_77

    .line 408
    :cond_74
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->clearHandler()V

    .line 411
    :cond_77
    :goto_77
    return-void
.end method

.method public initOnlineConfig()V
    .registers 6

    .line 124
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/OemSceneWiFiBoostController$WifiBoostConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OemSceneWiFiBoostController$WifiBoostConfigUpdater;-><init>(Lcom/android/server/am/OemSceneWiFiBoostController;)V

    const-string v4, "WifiBoost"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOnePlusWIFIBoostConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 125
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOnePlusWIFIBoostConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 126
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWiFiBoostHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 127
    return-void
.end method

.method public isInitFunc()Z
    .registers 4

    .line 182
    invoke-direct {p0}, Lcom/android/server/am/OemSceneWiFiBoostController;->getGameModeNetWorkAcc()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost:I

    .line 183
    const-string v0, "OemSceneWiFiBoostController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isInitFunc mWifiBoost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mWifiBoost:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_25

    .line 185
    return v1

    .line 187
    :cond_25
    const/4 v0, 0x0

    return v0
.end method

.method public start(Ljava/lang/Object;)I
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 415
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_3
    sget-boolean v1, Lcom/android/server/am/OemSceneWiFiBoostController;->ENABLE_ONLINECONFIG:Z

    if-eqz v1, :cond_42

    .line 417
    const-string v1, "OemSceneWiFiBoostController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WiFiBoost start isWifi(mContext):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/server/am/OemSceneWiFiBoostController;->isWifi(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " |mOneTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOneTime:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " |oldModeStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatus:Z

    .line 420
    invoke-virtual {p0, v1}, Lcom/android/server/am/OemSceneWiFiBoostController;->handleGameModeNetBoost(Z)V

    .line 421
    iget-object v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-virtual {v2, v1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->opStatusChanged(Z)V

    .line 423
    :cond_42
    monitor-exit v0

    .line 424
    const/4 v0, 0x0

    return v0

    .line 423
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public stop(Ljava/lang/Object;)I
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 429
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_3
    sget-boolean v1, Lcom/android/server/am/OemSceneWiFiBoostController;->ENABLE_ONLINECONFIG:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    .line 431
    const-string v1, "OemSceneWiFiBoostController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WiFiBoost stop oldModeStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iput-boolean v2, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mModeStatus:Z

    .line 434
    invoke-virtual {p0, v2}, Lcom/android/server/am/OemSceneWiFiBoostController;->handleGameModeNetBoost(Z)V

    .line 435
    iget-object v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->opStatusChanged(Z)V

    .line 437
    :cond_2a
    monitor-exit v0

    .line 438
    return v2

    .line 437
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method
