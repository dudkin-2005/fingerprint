.class public final Lcom/android/server/am/OnePlusDuallteManager;
.super Ljava/lang/Object;
.source "OnePlusDuallteManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusDuallteManager$DuallteConfigUpdater;,
        Lcom/android/server/am/OnePlusDuallteManager$OnePlusDuallteManagerHandler;
    }
.end annotation


# static fields
.field private static final ACTION_DEBUG:Ljava/lang/String; = "com.Duallte.action.debug"

.field private static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final DBG:Z

.field private static final DEFAULT_NONE:Ljava/lang/String; = ""

.field private static final DUALLTE_CONFIG_NAME:Ljava/lang/String; = "Duallte"

.field private static final DUALLTE_KEY:Ljava/lang/String; = "persist.radio.duallte.enable"

.field private static final DUALLTE_OPERATED:Ljava/lang/String; = "persist.radio.duallte.operated"

.field public static ENABLE:Z = false

.field public static IN_USING:Z = false

.field private static final MESSAGE_SETDUALLTE:I = 0x2

.field private static final MESSAGE_UPDATE_FORGEGROUND:I = 0x1

.field private static final MSG_GET_ONLINECONFIG:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OnePlusDuallteManager"

.field private static final VALUE_FIRST_EXIT_PKG:I = 0x2

.field private static final VALUE_IN_SPECIAL_GAME:I = 0x1

.field private static final VALUE_NOT_FIRST_EXIT_PKG:I = 0x0

.field private static final VERSION:I = 0x78492d21

.field private static mDualSimStateReady:Z

.field private static mGamePkgLock:Ljava/lang/Object;

.field private static mMobile4gStateReady:Z

.field private static mOnePlusDuallteManager:Lcom/android/server/am/OnePlusDuallteManager;

.field private static operateDelayTime:J

.field private static sim1State:I

.field private static sim2State:I


# instance fields
.field private IExtTelephony:Ljava/lang/Object;

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private inEsportMode:Z

.field private isOperated:Z

.field private mContext:Landroid/content/Context;

.field private mCurFrontPkg:Ljava/lang/String;

.field private mGeneralReceiver:Landroid/content/BroadcastReceiver;

.field private mOnePlusDuallteConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mOnePlusDuallteManagerHandler:Landroid/os/Handler;

.field private mPkgStatus:I

.field private mSpecialGameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private method:Ljava/lang/reflect/Method;

.field private offScreenPkgName:Ljava/lang/String;

.field private screenOn:Z

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManager:Lcom/android/server/am/OnePlusDuallteManager;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusDuallteManager;->mGamePkgLock:Ljava/lang/Object;

    .line 54
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/android/server/am/OnePlusDuallteManager;->operateDelayTime:J

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    .line 72
    sput v0, Lcom/android/server/am/OnePlusDuallteManager;->sim1State:I

    .line 73
    sput v0, Lcom/android/server/am/OnePlusDuallteManager;->sim2State:I

    .line 74
    sput-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    .line 75
    sput-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mMobile4gStateReady:Z

    .line 77
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->IN_USING:Z

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 8
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mPkgStatus:I

    .line 60
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->offScreenPkgName:Ljava/lang/String;

    .line 61
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    .line 62
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->screenOn:Z

    .line 63
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->isOperated:Z

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mContext:Landroid/content/Context;

    .line 65
    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    .line 68
    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->method:Ljava/lang/reflect/Method;

    .line 69
    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->IExtTelephony:Ljava/lang/Object;

    .line 70
    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 71
    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 78
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->inEsportMode:Z

    .line 222
    new-instance v1, Lcom/android/server/am/OnePlusDuallteManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/OnePlusDuallteManager$1;-><init>(Lcom/android/server/am/OnePlusDuallteManager;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusDuallteManager;->isSupportDualLTEProject(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->IN_USING:Z

    .line 98
    sget-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->IN_USING:Z

    sput-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    .line 99
    const-string v1, "OnePlusDuallteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnePlusDuallteManager VERSION = v2018061601 |ENABLE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mContext:Landroid/content/Context;

    .line 102
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->screenOn:Z

    .line 104
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "com.Duallte.action.debug"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v3, p0, Lcom/android/server/am/OnePlusDuallteManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v4, "mOnePlusDuallteManagerThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 111
    .local v3, "mOnePlusDuallteManagerThread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 112
    new-instance v4, Lcom/android/server/am/OnePlusDuallteManager$OnePlusDuallteManagerHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/am/OnePlusDuallteManager$OnePlusDuallteManagerHandler;-><init>(Lcom/android/server/am/OnePlusDuallteManager;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    .line 114
    iget-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 115
    iget-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v4

    .line 116
    .local v4, "numSlots":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_bc

    .line 117
    iget-object v5, p0, Lcom/android/server/am/OnePlusDuallteManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusDuallteManager;->sim1State:I

    .line 118
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusDuallteManager;->sim2State:I

    .line 119
    sget v0, Lcom/android/server/am/OnePlusDuallteManager;->sim1State:I

    const/4 v5, 0x5

    if-ne v0, v5, :cond_bc

    sget v0, Lcom/android/server/am/OnePlusDuallteManager;->sim2State:I

    if-ne v0, v5, :cond_bc

    .line 121
    sput-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    .line 125
    :cond_bc
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 126
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 127
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_de

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_de

    .line 128
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_de

    .line 129
    sput-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->mMobile4gStateReady:Z

    .line 133
    :cond_de
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->init()V

    .line 134
    sput-object p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManager:Lcom/android/server/am/OnePlusDuallteManager;

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OnePlusDuallteManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusDuallteManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusDuallteManager;->handlePkgChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusDuallteManager;Z)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusDuallteManager;
    .param p1, "x1"    # Z

    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusDuallteManager;->setDuallte(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusDuallteManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusDuallteManager;

    .line 35
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->handleDualSimStateReadyIfNeed()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/OnePlusDuallteManager;Ljava/lang/Boolean;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusDuallteManager;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusDuallteManager;->handleMobile4gStateReady(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusDuallteManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusDuallteManager;

    .line 35
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusDuallteManager;Lorg/json/JSONArray;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusDuallteManager;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 35
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusDuallteManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusDuallteManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusDuallteManager;

    .line 35
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->dumpInfo()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusDuallteManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusDuallteManager;

    .line 35
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->dumpPkgInfos()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/OnePlusDuallteManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusDuallteManager;

    .line 35
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->setDuallteTest()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusDuallteManager;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusDuallteManager;

    .line 35
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$800()I
    .registers 1

    .line 35
    sget v0, Lcom/android/server/am/OnePlusDuallteManager;->sim1State:I

    return v0
.end method

.method static synthetic access$802(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 35
    sput p0, Lcom/android/server/am/OnePlusDuallteManager;->sim1State:I

    return p0
.end method

.method static synthetic access$900()I
    .registers 1

    .line 35
    sget v0, Lcom/android/server/am/OnePlusDuallteManager;->sim2State:I

    return v0
.end method

.method static synthetic access$902(I)I
    .registers 1
    .param p0, "x0"    # I

    .line 35
    sput p0, Lcom/android/server/am/OnePlusDuallteManager;->sim2State:I

    return p0
.end method

.method private dumpInfo()V
    .registers 5

    .line 271
    const-string v0, "OnePlusDuallteManager"

    const-string v1, "# dump # VERSION # 2018061601"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # ENABLE # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dump # operateDelayTime # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusDuallteManager;->operateDelayTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void
.end method

.method private dumpPkgInfos()V
    .registers 8

    .line 277
    sget-object v0, Lcom/android/server/am/OnePlusDuallteManager;->mGamePkgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 278
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_19

    .line 279
    const-string v1, "OnePlusDuallteManager"

    const-string v2, "# dump # mSpecialGameList = null, return"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    monitor-exit v0

    return-void

    .line 282
    :cond_19
    const/4 v1, 0x0

    .line 283
    .local v1, "index":I
    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 284
    .local v3, "pkg":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 285
    const-string v4, "OnePlusDuallteManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# dump # mSpecialGameList # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local v3    # "pkg":Ljava/lang/String;
    goto :goto_20

    .line 287
    .end local v1    # "index":I
    :cond_4d
    monitor-exit v0

    .line 288
    return-void

    .line 287
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method private getIExtTelephony()Ljava/lang/Object;
    .registers 9

    .line 493
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "OnePlusDuallteManager"

    const-string v1, "getIExtTelephony()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_b
    const/4 v0, 0x0

    :try_start_c
    const-string v1, "extphone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 496
    .local v1, "remoteService":Ljava/lang/Object;
    const-string/jumbo v2, "org.codeaurora.internal.IExtTelephony$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 497
    .local v2, "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "asInterface"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 498
    .local v3, "asInterface":Ljava/lang/reflect/Method;
    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->IExtTelephony:Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_31} :catch_35

    .line 503
    .end local v1    # "remoteService":Ljava/lang/Object;
    .end local v2    # "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "asInterface":Ljava/lang/reflect/Method;
    nop

    .line 505
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->IExtTelephony:Ljava/lang/Object;

    return-object v0

    .line 499
    :catch_35
    move-exception v1

    .line 500
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OnePlusDuallteManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIExtTelephony() exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 502
    return-object v0
.end method

.method public static final getInstance()Lcom/android/server/am/OnePlusDuallteManager;
    .registers 1

    .line 81
    sget-object v0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManager:Lcom/android/server/am/OnePlusDuallteManager;

    return-object v0
.end method

.method public static final getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OnePlusDuallteManager;
    .registers 2
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 85
    sget-object v0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManager:Lcom/android/server/am/OnePlusDuallteManager;

    if-nez v0, :cond_b

    .line 86
    new-instance v0, Lcom/android/server/am/OnePlusDuallteManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusDuallteManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManager:Lcom/android/server/am/OnePlusDuallteManager;

    .line 88
    :cond_b
    sget-object v0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManager:Lcom/android/server/am/OnePlusDuallteManager;

    return-object v0
.end method

.method private getMethod()Ljava/lang/reflect/Method;
    .registers 6

    .line 509
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "OnePlusDuallteManager"

    const-string v1, "getMethod()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_b
    :try_start_b
    const-string/jumbo v0, "org.codeaurora.internal.IExtTelephony"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 512
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "generalSetter"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->method:Ljava/lang/reflect/Method;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_27} :catch_2b

    .line 517
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 519
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->method:Ljava/lang/reflect/Method;

    return-object v0

    .line 513
    :catch_2b
    move-exception v0

    .line 514
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OnePlusDuallteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMethod() exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 516
    const/4 v1, 0x0

    return-object v1
.end method

.method private handleDualSimStateReady(Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "ready"    # Ljava/lang/Boolean;

    .line 387
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v0, :cond_25

    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleDualSimStateReady ready:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " |mCurFrontPkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_25
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_4e

    .line 389
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    .line 390
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    if-eqz v0, :cond_4b

    .line 391
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mMobile4gStateReady:Z

    if-eqz v0, :cond_4e

    .line 392
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 393
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 394
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_4e

    .line 396
    :cond_4b
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->recoverOperatedImmediately()V

    .line 399
    :cond_4e
    :goto_4e
    return-void
.end method

.method private handleDualSimStateReadyIfNeed()V
    .registers 3

    .line 359
    sget v0, Lcom/android/server/am/OnePlusDuallteManager;->sim1State:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_16

    sget v0, Lcom/android/server/am/OnePlusDuallteManager;->sim2State:I

    if-ne v0, v1, :cond_16

    .line 361
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    if-nez v0, :cond_22

    .line 362
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusDuallteManager;->handleDualSimStateReady(Ljava/lang/Boolean;)V

    goto :goto_22

    .line 365
    :cond_16
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    if-eqz v0, :cond_22

    .line 366
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusDuallteManager;->handleDualSimStateReady(Ljava/lang/Boolean;)V

    .line 369
    :cond_22
    :goto_22
    return-void
.end method

.method private handleMobile4gStateReady(Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "ready"    # Ljava/lang/Boolean;

    .line 372
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v0, :cond_25

    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMobile4gStateReady ready:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " |mCurFrontPkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_25
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mMobile4gStateReady:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_4e

    .line 374
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mMobile4gStateReady:Z

    .line 375
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mMobile4gStateReady:Z

    if-eqz v0, :cond_4b

    .line 376
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    if-eqz v0, :cond_4e

    .line 377
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 378
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 379
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_4e

    .line 381
    :cond_4b
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->recoverOperatedImmediately()V

    .line 384
    :cond_4e
    :goto_4e
    return-void
.end method

.method private handlePkgChanged(Ljava/lang/String;)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;

    .line 402
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v0, :cond_1b

    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handlePkgChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_1b
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    monitor-enter v0

    .line 404
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_6b

    .line 405
    iput v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mPkgStatus:I

    .line 406
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 407
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 410
    :cond_38
    const-string/jumbo v1, "persist.radio.duallte.enable"

    const-string v5, "0"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "curDuallteState":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 412
    iput-boolean v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->isOperated:Z

    .line 413
    const-string/jumbo v2, "persist.radio.duallte.operated"

    const-string v5, "1"

    invoke-direct {p0, v2, v5}, Lcom/android/server/am/OnePlusDuallteManager;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string/jumbo v2, "persist.radio.duallte.enable"

    const-string v5, "0"

    invoke-direct {p0, v2, v5}, Lcom/android/server/am/OnePlusDuallteManager;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v3, v4, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 416
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 418
    .end local v1    # "curDuallteState":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_6a
    goto :goto_c8

    .line 419
    :cond_6b
    iget v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mPkgStatus:I

    packed-switch v1, :pswitch_data_ce

    goto :goto_c8

    .line 439
    :pswitch_71
    iput v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->mPkgStatus:I

    .line 440
    goto :goto_c8

    .line 421
    :pswitch_74
    iput v3, p0, Lcom/android/server/am/OnePlusDuallteManager;->mPkgStatus:I

    .line 422
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->isOperated:Z

    if-eqz v1, :cond_c8

    .line 423
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->isOperated:Z

    .line 424
    const-string/jumbo v1, "persist.radio.duallte.enable"

    const-string v5, "0"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 425
    .restart local v1    # "curDuallteState":Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 426
    const-string/jumbo v5, "persist.radio.duallte.enable"

    const-string v6, "1"

    invoke-direct {p0, v5, v6}, Lcom/android/server/am/OnePlusDuallteManager;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v5, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_a2

    .line 428
    iget-object v5, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 430
    :cond_a2
    iget-object v5, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v5, v3, v4, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 431
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    sget-wide v4, Lcom/android/server/am/OnePlusDuallteManager;->operateDelayTime:J

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 432
    .end local v2    # "msg":Landroid/os/Message;
    goto :goto_c4

    :cond_b4
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c4

    .line 433
    const-string/jumbo v2, "persist.radio.duallte.operated"

    const-string v3, "0"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusDuallteManager;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .end local v1    # "curDuallteState":Ljava/lang/String;
    :cond_c4
    :goto_c4
    goto :goto_c8

    .line 443
    :pswitch_c5
    iput v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->mPkgStatus:I

    .line 444
    nop

    .line 450
    :cond_c8
    :goto_c8
    monitor-exit v0

    .line 451
    return-void

    .line 450
    :catchall_ca
    move-exception v1

    monitor-exit v0
    :try_end_cc
    .catchall {:try_start_1e .. :try_end_cc} :catchall_ca

    throw v1

    nop

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_c5
        :pswitch_74
        :pswitch_71
    .end packed-switch
.end method

.method private init()V
    .registers 1

    .line 138
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->initSpecialGameList()V

    .line 139
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusDuallteManager;->initOnlineConfig()V

    .line 140
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->initSysPropt()V

    .line 141
    return-void
.end method

.method private initSpecialGameList()V
    .registers 4

    .line 192
    sget-object v0, Lcom/android/server/am/OnePlusDuallteManager;->mGamePkgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.cf"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.dwrg"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.sgame"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.pubgm"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.pubgmhd"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.speedmobile"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.supercell.clashroyale"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.tencent.tmgp.supercell.clashofclans"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.netease.dwrg"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.netease.dwrg.baidu"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.netease.dwrg.aligames"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.netease.dwrg.nearme.gamecenter"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.netease.hyxd"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.netease.hyxd.baidu"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.netease.hyxd.aligames"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.netease.hyxd.nearme.gamecenter"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.supercell.clashroyale.uc"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.supercell.clashofclans.uc"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.supercell.clashroyale.baidu"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.supercell.clashofclans.qihoo"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.supercell.clashofclans.baidu"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.supercell.clashroyale.kunlun"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.supercell.clashofclans.kunlun"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.supercell.clashroyale.nearme.gamecenter"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.supercell.clashofclans.nearme.gamecenter"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string v2, "com.blizzard.wtcg.hearthstone"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    monitor-exit v0

    .line 220
    return-void

    .line 219
    :catchall_bb
    move-exception v1

    monitor-exit v0
    :try_end_bd
    .catchall {:try_start_3 .. :try_end_bd} :catchall_bb

    throw v1
.end method

.method private initSysPropt()V
    .registers 7

    .line 144
    const-string/jumbo v0, "persist.radio.duallte.operated"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "lastOperated":Ljava/lang/String;
    const-string/jumbo v1, "persist.radio.duallte.enable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "curDuallteState":Ljava/lang/String;
    const-string v2, "OnePlusDuallteManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initSysPropt() lastOperated:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " |curDuallteState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 148
    const-string/jumbo v2, "persist.radio.duallte.operated"

    const-string v3, "0"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusDuallteManager;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 150
    const-string/jumbo v2, "persist.radio.duallte.enable"

    const-string v3, "1"

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/OnePlusDuallteManager;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v5, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 152
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 155
    .end local v2    # "msg":Landroid/os/Message;
    :cond_66
    return-void
.end method

.method private isStateReady()Z
    .registers 2

    .line 326
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mMobile4gStateReady:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isSupportDualLTEProject(Landroid/content/Context;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private recoverOperatedImmediately()V
    .registers 5

    .line 345
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v0, :cond_1d

    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recoverOperatedImmediately isOperated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->isOperated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_1d
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->isOperated:Z

    if-eqz v0, :cond_48

    .line 348
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 349
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 352
    :cond_2f
    const-string/jumbo v0, "persist.radio.duallte.enable"

    const-string v2, "1"

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/OnePlusDuallteManager;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 354
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 356
    .end local v0    # "msg":Landroid/os/Message;
    :cond_48
    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .registers 10
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 566
    if-nez p1, :cond_a

    .line 567
    const-string v0, "OnePlusDuallteManager"

    const-string v1, "[OnlineConfig] resolveConfigFromJSON jsonArray is null, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return-void

    .line 572
    :cond_a
    const/4 v0, 0x0

    move v1, v0

    .line 572
    .local v1, "index":I
    :goto_c
    :try_start_c
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 573
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 574
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 575
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 576
    .local v3, "jArray":Lorg/json/JSONArray;
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    .line 572
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 580
    .end local v1    # "index":I
    :cond_35
    move v1, v0

    .line 580
    .restart local v1    # "index":I
    :goto_36
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_60

    .line 581
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 582
    .restart local v2    # "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "delaytime"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 583
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 584
    .restart local v3    # "jArray":Lorg/json/JSONArray;
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    sput-wide v4, Lcom/android/server/am/OnePlusDuallteManager;->operateDelayTime:J

    .line 580
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "jArray":Lorg/json/JSONArray;
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 588
    .end local v1    # "index":I
    :cond_60
    move v1, v0

    .line 588
    .restart local v1    # "index":I
    :goto_61
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_ad

    .line 589
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 590
    .restart local v2    # "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mSpecialGameList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 591
    iget-object v3, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    monitor-enter v3
    :try_end_7e
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_7e} :catch_150
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_7e} :catch_fa
    .catchall {:try_start_c .. :try_end_7e} :catchall_f7

    .line 592
    :try_start_7e
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 593
    .local v4, "jArray":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 594
    move v5, v0

    .line 594
    .local v5, "i":I
    :goto_8b
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_a5

    .line 595
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 596
    .local v6, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a2

    .line 597
    iget-object v7, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    .end local v6    # "value":Ljava/lang/String;
    :cond_a2
    add-int/lit8 v5, v5, 0x1

    goto :goto_8b

    .line 600
    .end local v4    # "jArray":Lorg/json/JSONArray;
    .end local v5    # "i":I
    :cond_a5
    monitor-exit v3

    goto :goto_aa

    :catchall_a7
    move-exception v0

    monitor-exit v3
    :try_end_a9
    .catchall {:try_start_7e .. :try_end_a9} :catchall_a7

    :try_start_a9
    throw v0
    :try_end_aa
    .catch Lorg/json/JSONException; {:try_start_a9 .. :try_end_aa} :catch_150
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_aa} :catch_fa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_f7

    .line 588
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_aa
    :goto_aa
    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    .line 611
    .end local v1    # "index":I
    :cond_ad
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON ENABLE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON operateDelayTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusDuallteManager;->operateDelayTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_e4
    const-string v2, "[OnlineConfig] resolveConfigFromJSON mSpecialGameList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    goto/16 :goto_1a7

    .line 610
    :catchall_f7
    move-exception v0

    goto/16 :goto_1a8

    .line 606
    :catch_fa
    move-exception v0

    .line 607
    .local v0, "e":Ljava/lang/Exception;
    :try_start_fb
    const-string v1, "OnePlusDuallteManager"

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

    .line 608
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_118
    .catchall {:try_start_fb .. :try_end_118} :catchall_f7

    .line 611
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON ENABLE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON operateDelayTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusDuallteManager;->operateDelayTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_e4

    .line 603
    :catch_150
    move-exception v0

    .line 604
    .local v0, "e":Lorg/json/JSONException;
    :try_start_151
    const-string v1, "OnePlusDuallteManager"

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

    .line 605
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_16e
    .catchall {:try_start_151 .. :try_end_16e} :catchall_f7

    .line 611
    .end local v0    # "e":Lorg/json/JSONException;
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON ENABLE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON operateDelayTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusDuallteManager;->operateDelayTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_e4

    .line 616
    :goto_1a7
    return-void

    .line 610
    :goto_1a8
    nop

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON ENABLE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnePlusDuallteManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON operateDelayTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/am/OnePlusDuallteManager;->operateDelayTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnePlusDuallteManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON mSpecialGameList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnePlusDuallteManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method

.method private setDuallte(Z)Z
    .registers 8
    .param p1, "isRecover"    # Z

    .line 454
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v0, :cond_1b

    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDuallte isRecover:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_1b
    const/4 v0, 0x0

    :try_start_1c
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->method:Ljava/lang/reflect/Method;

    if-nez v1, :cond_26

    .line 462
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->method:Ljava/lang/reflect/Method;

    .line 465
    :cond_26
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->IExtTelephony:Ljava/lang/Object;

    if-nez v1, :cond_30

    .line 466
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->getIExtTelephony()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->IExtTelephony:Ljava/lang/Object;

    .line 469
    :cond_30
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->method:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->IExtTelephony:Ljava/lang/Object;

    if-nez v1, :cond_39

    goto :goto_67

    .line 474
    :cond_39
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->method:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 475
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->inEsportMode:Z

    if-nez v1, :cond_59

    .line 476
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->method:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/server/am/OnePlusDuallteManager;->IExtTelephony:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "oemDualLteSwitch"

    aput-object v5, v4, v0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_59} :catch_70

    .line 482
    :cond_59
    nop

    .line 484
    if-eqz p1, :cond_66

    .line 485
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->isOperated:Z

    .line 486
    const-string/jumbo v0, "persist.radio.duallte.operated"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusDuallteManager;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_66
    return v2

    .line 470
    :cond_67
    :goto_67
    :try_start_67
    const-string v1, "OnePlusDuallteManager"

    const-string/jumbo v2, "setDuallte method or IExtTelephony is null, return"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6f} :catch_70

    .line 471
    return v0

    .line 478
    :catch_70
    move-exception v1

    .line 479
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OnePlusDuallteManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 481
    return v0
.end method

.method private setDuallteTest()V
    .registers 14

    .line 523
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "OnePlusDuallteManager"

    const-string/jumbo v1, "setDuallteTest"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_c
    :try_start_c
    const-string/jumbo v0, "org.codeaurora.internal.IExtTelephony"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 527
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 529
    .local v1, "methods":[Ljava/lang/reflect/Method;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_1a
    if-ge v4, v2, :cond_40

    aget-object v5, v1, v4

    .line 530
    .local v5, "method":Ljava/lang/reflect/Method;
    const-string v6, "OnePlusDuallteManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMethods:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    .end local v5    # "method":Ljava/lang/reflect/Method;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 532
    :cond_40
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 534
    .local v2, "methods2":[Ljava/lang/reflect/Method;
    array-length v4, v2

    move v5, v3

    :goto_46
    if-ge v5, v4, :cond_6c

    aget-object v6, v2, v5

    .line 535
    .local v6, "method":Ljava/lang/reflect/Method;
    const-string v7, "OnePlusDuallteManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDeclaredMethods:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    .end local v6    # "method":Ljava/lang/reflect/Method;
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    .line 538
    :cond_6c
    const-string v4, "extphone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 539
    .local v4, "remoteService":Ljava/lang/Object;
    const-string/jumbo v5, "org.codeaurora.internal.IExtTelephony$Stub"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 540
    .local v5, "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "asInterface"

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/os/IBinder;

    aput-object v9, v8, v3

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 541
    .local v6, "asInterface":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v4, v9, v3

    invoke-virtual {v6, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 543
    .local v8, "IExtTelephony":Ljava/lang/Object;
    const-string v9, "generalSetter"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    aput-object v12, v11, v3

    const-class v12, Landroid/os/Bundle;

    aput-object v12, v11, v7

    invoke-virtual {v0, v9, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 544
    .local v9, "method2":Ljava/lang/reflect/Method;
    invoke-virtual {v9, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 545
    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "oemDualLteSwitch"

    aput-object v11, v10, v3

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    aput-object v3, v10, v7

    invoke-virtual {v9, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_b4} :catch_b5

    .line 549
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "methods":[Ljava/lang/reflect/Method;
    .end local v2    # "methods2":[Ljava/lang/reflect/Method;
    .end local v4    # "remoteService":Ljava/lang/Object;
    .end local v5    # "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "asInterface":Ljava/lang/reflect/Method;
    .end local v8    # "IExtTelephony":Ljava/lang/Object;
    .end local v9    # "method2":Ljava/lang/reflect/Method;
    goto :goto_d0

    .line 546
    :catch_b5
    move-exception v0

    .line 547
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OnePlusDuallteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDuallteTest() exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 550
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_d0
    return-void
.end method

.method private setProptValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 330
    const-string v0, ""

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "curValue":Ljava/lang/String;
    const-string v1, "OnePlusDuallteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set system property key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |curValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 333
    return-void

    .line 337
    :cond_34
    :try_start_34
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_38

    .line 341
    goto :goto_43

    .line 338
    :catch_38
    move-exception v1

    .line 339
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OnePlusDuallteManager"

    const-string v3, "failed to set system property"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 342
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_43
    return-void
.end method


# virtual methods
.method public frontPkgChangedEvent(Ljava/lang/String;)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 305
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    if-nez v0, :cond_5

    return-void

    .line 306
    :cond_5
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v0, :cond_29

    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frontPkgChangedEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |mCurFrontPkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_29
    iput-object p1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    .line 308
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->screenOn:Z

    if-nez v0, :cond_39

    .line 311
    if-eqz p1, :cond_34

    .line 312
    iput-object p1, p0, Lcom/android/server/am/OnePlusDuallteManager;->offScreenPkgName:Ljava/lang/String;

    goto :goto_38

    .line 314
    :cond_34
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->offScreenPkgName:Ljava/lang/String;

    .line 315
    :goto_38
    return-void

    .line 318
    :cond_39
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->isStateReady()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 319
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 320
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 323
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4c
    return-void
.end method

.method public initOnlineConfig()V
    .registers 6

    .line 553
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/OnePlusDuallteManager$DuallteConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusDuallteManager$DuallteConfigUpdater;-><init>(Lcom/android/server/am/OnePlusDuallteManager;)V

    const-string v4, "Duallte"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 554
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 555
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 556
    return-void
.end method

.method public screenStateChangedEvent(Z)V
    .registers 5
    .param p1, "done"    # Z

    .line 291
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    if-nez v0, :cond_5

    return-void

    .line 292
    :cond_5
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v0, :cond_34

    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screenStateChangedEvent done:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |offScreenPkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->offScreenPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |mCurFrontPkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_34
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusDuallteManager;->screenOn:Z

    .line 294
    if-eqz p1, :cond_4c

    .line 295
    const-string v0, ""

    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->offScreenPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 296
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->offScreenPkgName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusDuallteManager;->frontPkgChangedEvent(Ljava/lang/String;)V

    .line 297
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->offScreenPkgName:Ljava/lang/String;

    goto :goto_50

    .line 300
    :cond_4c
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->offScreenPkgName:Ljava/lang/String;

    .line 302
    :cond_50
    :goto_50
    return-void
.end method

.method public declared-synchronized updateEsportModeStatus(Z)V
    .registers 5
    .param p1, "enable"    # Z

    monitor-enter p0

    .line 158
    :try_start_1
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v0, :cond_30

    const-string v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEsportModeStatus  | ENABLE:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |inEsportMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->inEsportMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_30
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->inEsportMode:Z
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_49

    if-ne v0, p1, :cond_36

    monitor-exit p0

    return-void

    .line 160
    :cond_36
    :try_start_36
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusDuallteManager;->inEsportMode:Z

    .line 161
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->inEsportMode:Z

    if-nez v0, :cond_47

    .line 162
    invoke-static {}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->getInstance()Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->getFrontPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusDuallteManager;->frontPkgChangedEvent(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_36 .. :try_end_47} :catchall_49

    .line 164
    :cond_47
    monitor-exit p0

    return-void

    .line 157
    .end local p1    # "enable":Z
    :catchall_49
    move-exception p1

    monitor-exit p0

    .line 157
    .end local p0    # "this":Lcom/android/server/am/OnePlusDuallteManager;
    throw p1
.end method
