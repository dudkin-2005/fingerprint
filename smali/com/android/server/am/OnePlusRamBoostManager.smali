.class public Lcom/android/server/am/OnePlusRamBoostManager;
.super Ljava/lang/Object;
.source "OnePlusRamBoostManager.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusRamBoostManager$MyConfigUpdater;,
        Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;,
        Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;,
        Lcom/android/server/am/OnePlusRamBoostManager$SwitchContentObserver;
    }
.end annotation


# static fields
.field private static final CONFIG_NAME:Ljava/lang/String; = "RamBoost"

.field private static final DAY_IN_MS:J = 0x5265c00L

.field private static DEBUG:Z = false

.field private static final DEFAULT_END_HOTCOUTN:Ljava/lang/String; = "0"

.field private static ENABLE:Z = false

.field public static IN_USING:Z = false

.field private static IOPPRELOAD:Z = false

.field private static final IOP_TIMEOUT:J = 0x2710L

.field private static final MAX_HIGH_USE_HOTCOUNT:I = 0x384

.field private static final MSG_DISABLE_RAMBOOST:I = 0x6

.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final MSG_INIT_ONLINECONFIG:I = 0x2

.field private static final MSG_IOP_PREDICT:I = 0xb

.field private static final MSG_IOP_PRELOAD:I = 0xa

.field private static final MSG_IOP_RECORD:I = 0x9

.field private static final MSG_IOP_START:I = 0x8

.field private static final MSG_READ_XML:I = 0x7

.field private static final MSG_RESUME_HOTCOUNT:I = 0x4

.field private static final MSG_SWITCH_CHANGED:I = 0xc

.field private static final MSG_UPDATE_HIGHUSAGE_PKG:I = 0x5

.field private static final MSG_WRITE_HOTCOUNT:I = 0x3

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.ramboost.debug"

.field private static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.ramboost.enable"

.field private static final PROP_IOPPRELOAD:Ljava/lang/String; = "persist.sys.ramboost.ioppreload"

.field private static final PROP_ONLINE_HOTCOUNT:Ljava/lang/String; = "persist.sys.ramboost.olhotcount"

.field private static final PROP_ONLINE_IOP:Ljava/lang/String; = "persist.sys.ramboost.oliop"

.field private static final PROP_RESIDE_SWITCH:Ljava/lang/String; = "/proc/sys/vm/page_cache_reside_switch"

.field private static final RAMBOOST_FILE:Ljava/lang/String; = "/system/etc/ramboost.xml"

.field private static final SOCKET_NAME:Ljava/lang/String; = "ramboost"

.field public static final TAG:Ljava/lang/String; = "OnePlusSmartBoostManager"

.field private static final XML_ATTR_HOTCOUNT:Ljava/lang/String; = "hotcount"

.field private static final XML_ATTR_IOPPRELOAD:Ljava/lang/String; = "ioppreload"

.field private static final XML_ATTR_NAME:Ljava/lang/String; = "name"

.field private static final XML_ATTR_SWITCH:Ljava/lang/String; = "switch"

.field private static final XML_ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final XML_TAG_IOP:Ljava/lang/String; = "iop"

.field private static final XML_TAG_PKG:Ljava/lang/String; = "pkg"

.field private static final XML_TAG_RAMBOOST:Ljava/lang/String; = "ramboost"

.field private static mInstance:Lcom/android/server/am/OnePlusRamBoostManager;

.field private static mUserSwitch:Z


# instance fields
.field private URI_RAMBOOST_SWITCH:Landroid/net/Uri;

.field private mAppPageCacheInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackHighUsageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackIopList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHighUsagePkgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIopPkgList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mPageCachePkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

.field private mRamBoostThread:Landroid/os/HandlerThread;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSwitchContentObserver:Lcom/android/server/am/OnePlusRamBoostManager$SwitchContentObserver;

.field private suffixList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private usageMgr:Lcom/android/server/am/RestartProcessManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x67

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->IN_USING:Z

    .line 84
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->IN_USING:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->ENABLE:Z

    .line 85
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->IN_USING:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->IOPPRELOAD:Z

    .line 86
    sput-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    .line 87
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->IN_USING:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->mUserSwitch:Z

    .line 104
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusRamBoostManager;->mInstance:Lcom/android/server/am/OnePlusRamBoostManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostThread:Landroid/os/HandlerThread;

    .line 106
    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    .line 108
    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 109
    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mContext:Landroid/content/Context;

    .line 115
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mBlackHighUsageList:Ljava/util/ArrayList;

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mBlackIopList:Ljava/util/ArrayList;

    .line 122
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    .line 125
    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->usageMgr:Lcom/android/server/am/RestartProcessManager;

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ".oppo.nearme.gamecenter"

    const-string v2, ".oppo"

    const-string v3, ".nearme.gamecenter"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->suffixList:Ljava/util/List;

    .line 135
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->IN_USING:Z

    if-eqz v0, :cond_8e

    .line 136
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "ramboost"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostThread:Landroid/os/HandlerThread;

    .line 137
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 138
    new-instance v0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;-><init>(Lcom/android/server/am/OnePlusRamBoostManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    .line 139
    const-string/jumbo v0, "persist.sys.ramboost.enable"

    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->ENABLE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->ENABLE:Z

    .line 140
    const-string/jumbo v0, "persist.sys.ramboost.ioppreload"

    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->IOPPRELOAD:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->IOPPRELOAD:Z

    .line 141
    const-string/jumbo v0, "persist.sys.ramboost.debug"

    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    .line 143
    :cond_8e
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 81
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusRamBoostManager;)Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusRamBoostManager;

    .line 81
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusRamBoostManager;ILjava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p0, "x0"    # Lcom/android/server/am/OnePlusRamBoostManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusRamBoostManager;->sendMsgIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/OnePlusRamBoostManager;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusRamBoostManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusRamBoostManager;->sendMsgIOPrefetchRecord(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/OnePlusRamBoostManager;Lorg/json/JSONArray;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusRamBoostManager;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusRamBoostManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusRamBoostManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusRamBoostManager;

    .line 81
    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->updateOnlineConfig()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusRamBoostManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusRamBoostManager;

    .line 81
    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->sendMsgIOPrefetchPreload()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusRamBoostManager;J)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusRamBoostManager;
    .param p1, "x1"    # J

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusRamBoostManager;->updateHighUsagePkg(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusRamBoostManager;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/am/OnePlusRamBoostManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusRamBoostManager;->writeHotCount(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/am/OnePlusRamBoostManager;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusRamBoostManager;
    .param p1, "x1"    # I

    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusRamBoostManager;->resumeHotCount(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusRamBoostManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusRamBoostManager;

    .line 81
    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->disableRamBoost()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/OnePlusRamBoostManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusRamBoostManager;

    .line 81
    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->readXML()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/am/OnePlusRamBoostManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusRamBoostManager;
    .param p1, "x1"    # Z

    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusRamBoostManager;->updateSwitch(Z)V

    return-void
.end method

.method private connectServer()Landroid/net/LocalSocket;
    .registers 5

    .line 507
    :try_start_0
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string/jumbo v1, "ramboost"

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 508
    .local v0, "l":Landroid/net/LocalSocketAddress;
    new-instance v1, Landroid/net/LocalSocket;

    invoke-direct {v1}, Landroid/net/LocalSocket;-><init>()V

    .line 509
    .local v1, "s":Landroid/net/LocalSocket;
    const-string v2, "OnePlusSmartBoostManager"

    const-string/jumbo v3, "socket connect"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {v1, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 511
    const/16 v2, 0x2710

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->setSoTimeout(I)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1f} :catch_20

    .line 512
    return-object v1

    .line 514
    .end local v0    # "l":Landroid/net/LocalSocketAddress;
    .end local v1    # "s":Landroid/net/LocalSocket;
    :catch_20
    move-exception v0

    .line 515
    .local v0, "ex":Ljava/io/IOException;
    const-string v1, "OnePlusSmartBoostManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/4 v1, 0x0

    return-object v1
.end method

.method private disableRamBoost()V
    .registers 7

    .line 492
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "OnePlusSmartBoostManager"

    const-string v1, "disableSmartBoost!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 494
    :try_start_e
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 495
    .local v2, "pid":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;

    .line 496
    .local v3, "arb":Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusRamBoostManager;->getEchoPath(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-direct {p0, v4, v5}, Lcom/android/server/am/OnePlusRamBoostManager;->echo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 497
    .end local v2    # "pid":Ljava/lang/Integer;
    .end local v3    # "arb":Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;
    goto :goto_18

    .line 498
    :cond_3a
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 499
    monitor-exit v0

    .line 500
    return-void

    .line 499
    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_e .. :try_end_43} :catchall_41

    throw v1
.end method

.method private dumpList()V
    .registers 4

    .line 202
    const-string v0, "OnePlusSmartBoostManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPageCachePkgMap size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v0, "OnePlusSmartBoostManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mHighUsagePkgList size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method

.method private echo(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 463
    .local v1, "f":Ljava/io/File;
    const/4 v2, 0x1

    .line 465
    .local v2, "ret":Z
    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 466
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_54

    .line 467
    const-string v3, "OnePlusSmartBoostManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : file not exits :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_25} :catch_b1
    .catchall {:try_start_3 .. :try_end_25} :catchall_af

    .line 468
    const/4 v3, 0x0

    .line 479
    if-eqz v0, :cond_52

    .line 480
    :try_start_28
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2d

    .line 481
    const/4 v0, 0x0

    goto :goto_52

    .line 483
    :catch_2d
    move-exception v4

    .line 484
    .local v4, "ex":Ljava/io/IOException;
    const-string v5, "OnePlusSmartBoostManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO close failed : path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",ex->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v2, 0x0

    .end local v4    # "ex":Ljava/io/IOException;
    goto :goto_53

    .line 486
    :cond_52
    :goto_52
    nop

    .line 468
    :goto_53
    return v3

    .line 470
    :cond_54
    :try_start_54
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 471
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 472
    .local v3, "statebuffer":[B
    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 473
    sget-boolean v4, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v4, :cond_83

    const-string v4, "OnePlusSmartBoostManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "echo path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_83} :catch_b1
    .catchall {:try_start_54 .. :try_end_83} :catchall_af

    .line 479
    .end local v3    # "statebuffer":[B
    :cond_83
    nop

    .line 480
    :try_start_84
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_89

    .line 481
    :goto_87
    const/4 v0, 0x0

    goto :goto_ae

    .line 483
    :catch_89
    move-exception v3

    .line 484
    .local v3, "ex":Ljava/io/IOException;
    const-string v4, "OnePlusSmartBoostManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_91
    const-string v6, "IO close failed : path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",ex->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v2, 0x0

    .line 487
    .end local v3    # "ex":Ljava/io/IOException;
    goto :goto_e4

    .line 486
    :cond_ae
    :goto_ae
    goto :goto_e4

    .line 478
    :catchall_af
    move-exception v3

    goto :goto_e5

    .line 474
    :catch_b1
    move-exception v3

    .line 475
    .restart local v3    # "ex":Ljava/io/IOException;
    :try_start_b2
    const-string v4, "OnePlusSmartBoostManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "echo failed : path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",ex->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catchall {:try_start_b2 .. :try_end_d4} :catchall_af

    .line 476
    const/4 v2, 0x0

    .line 479
    .end local v3    # "ex":Ljava/io/IOException;
    if-eqz v0, :cond_ae

    .line 480
    :try_start_d7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_db

    goto :goto_87

    .line 483
    :catch_db
    move-exception v3

    .line 484
    .restart local v3    # "ex":Ljava/io/IOException;
    const-string v4, "OnePlusSmartBoostManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_91

    .line 488
    .end local v3    # "ex":Ljava/io/IOException;
    :goto_e4
    return v2

    .line 478
    :goto_e5
    nop

    .line 479
    if-eqz v0, :cond_112

    .line 480
    :try_start_e8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_eb} :catch_ed

    .line 481
    const/4 v0, 0x0

    goto :goto_112

    .line 483
    :catch_ed
    move-exception v4

    .line 484
    .restart local v4    # "ex":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO close failed : path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",ex->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OnePlusSmartBoostManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v2, 0x0

    .end local v4    # "ex":Ljava/io/IOException;
    nop

    .line 486
    :cond_112
    :goto_112
    throw v3
.end method

.method private filterSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 264
    move-object v0, p1

    .line 265
    .local v0, "ret":Ljava/lang/String;
    if-eqz p1, :cond_24

    .line 266
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->suffixList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 267
    .local v2, "regex":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 268
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    return-object v1

    .line 269
    .end local v2    # "regex":Ljava/lang/String;
    :cond_23
    goto :goto_9

    .line 271
    :cond_24
    return-object v0
.end method

.method private getEchoPath(I)Ljava/lang/String;
    .registers 4
    .param p1, "pid"    # I

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/page_hot_count"

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 426
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getHotCountFromHighList(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 436
    const/4 v0, 0x0

    .line 437
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mBlackHighUsageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 438
    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v1, :cond_23

    const-string v1, "OnePlusSmartBoostManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHotCountFromHighList # blacklist has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_23
    const-string v1, "0"

    return-object v1

    .line 441
    :cond_26
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 442
    :try_start_29
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .line 443
    sget-boolean v2, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v2, :cond_53

    const-string v2, "OnePlusSmartBoostManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHotCountFromHighList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_53
    if-ltz v0, :cond_61

    const/16 v2, 0x384

    if-lt v0, v2, :cond_5a

    goto :goto_61

    .line 447
    :cond_5a
    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 446
    :cond_61
    :goto_61
    const-string v2, "0"

    monitor-exit v1

    return-object v2

    .line 448
    :catchall_65
    move-exception v2

    monitor-exit v1
    :try_end_67
    .catchall {:try_start_29 .. :try_end_67} :catchall_65

    throw v2
.end method

.method public static final getInstance()Lcom/android/server/am/OnePlusRamBoostManager;
    .registers 1

    .line 128
    sget-object v0, Lcom/android/server/am/OnePlusRamBoostManager;->mInstance:Lcom/android/server/am/OnePlusRamBoostManager;

    if-nez v0, :cond_b

    .line 129
    new-instance v0, Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusRamBoostManager;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusRamBoostManager;->mInstance:Lcom/android/server/am/OnePlusRamBoostManager;

    .line 131
    :cond_b
    sget-object v0, Lcom/android/server/am/OnePlusRamBoostManager;->mInstance:Lcom/android/server/am/OnePlusRamBoostManager;

    return-object v0
.end method

.method private getPreloadString()Ljava/lang/String;
    .registers 6

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 613
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 614
    :try_start_8
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_13

    const/4 v2, 0x0

    monitor-exit v1

    return-object v2

    .line 615
    :cond_13
    const-string/jumbo v2, "iop_preload "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 617
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .end local v3    # "str":Ljava/lang/String;
    goto :goto_1f

    .line 619
    :cond_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_43

    .line 620
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 621
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 619
    :catchall_43
    move-exception v2

    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v2
.end method

.method private getRamBoostSwitchStatus()Z
    .registers 4

    .line 176
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "op_smartboost_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_e

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    return v1
.end method

.method private isHighUsedPkg(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 430
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 431
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 432
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method private readXML()I
    .registers 16

    .line 805
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "OnePlusSmartBoostManager"

    const-string/jumbo v1, "readXML"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_c
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/ramboost.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 807
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_26

    .line 808
    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v1, :cond_25

    const-string v1, "OnePlusSmartBoostManager"

    const-string v3, "# readXml # file not exists"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_25
    return v2

    .line 811
    :cond_26
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 812
    .local v1, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v3, 0x0

    .line 813
    .local v3, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v4, 0x0

    .line 815
    .local v4, "doc":Lorg/w3c/dom/Document;
    :try_start_2c
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    move-object v3, v5

    .line 816
    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v5

    move-object v4, v5

    .line 817
    const-string/jumbo v5, "ramboost"

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 818
    .local v5, "nl":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    .line 819
    .local v7, "nnm":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v8, "version"

    invoke-interface {v7, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 828
    .local v8, "version":Ljava/lang/String;
    const-string/jumbo v9, "pkg"

    invoke-interface {v4, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    move-object v5, v9

    .line 829
    if-nez v5, :cond_63

    .line 830
    const-string v9, "OnePlusSmartBoostManager"

    const-string v10, "# readXml # error # pkg nl = null"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bc

    .line 832
    :cond_63
    move-object v9, v7

    move v7, v6

    .line 832
    .local v7, "i":I
    .local v9, "nnm":Lorg/w3c/dom/NamedNodeMap;
    :goto_65
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v7, v10, :cond_bb

    .line 833
    invoke-interface {v5, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    move-object v9, v10

    .line 834
    const-string/jumbo v10, "name"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    .line 835
    .local v10, "pkgName":Ljava/lang/String;
    const-string/jumbo v11, "hotcount"

    invoke-interface {v9, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    .line 836
    .local v11, "hotCount":Ljava/lang/String;
    iget-object v12, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    monitor-enter v12
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_8d} :catch_115

    .line 837
    :try_start_8d
    iget-object v13, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    invoke-virtual {v13, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    monitor-exit v12
    :try_end_93
    .catchall {:try_start_8d .. :try_end_93} :catchall_b8

    .line 839
    :try_start_93
    sget-boolean v12, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v12, :cond_b5

    const-string v12, "OnePlusSmartBoostManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "PageCachePkgMap add # "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_b5} :catch_115

    .line 832
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v11    # "hotCount":Ljava/lang/String;
    :cond_b5
    add-int/lit8 v7, v7, 0x1

    goto :goto_65

    .line 838
    .restart local v10    # "pkgName":Ljava/lang/String;
    .restart local v11    # "hotCount":Ljava/lang/String;
    :catchall_b8
    move-exception v6

    :try_start_b9
    monitor-exit v12
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    :try_start_ba
    throw v6

    .line 843
    .end local v7    # "i":I
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v11    # "hotCount":Ljava/lang/String;
    :cond_bb
    move-object v7, v9

    .line 843
    .end local v9    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .local v7, "nnm":Lorg/w3c/dom/NamedNodeMap;
    :goto_bc
    const-string/jumbo v9, "iop"

    invoke-interface {v4, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    move-object v5, v9

    .line 844
    if-nez v5, :cond_ce

    .line 845
    const-string v9, "OnePlusSmartBoostManager"

    const-string v10, "# readXml # error # iop nl = null"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    .line 847
    :cond_ce
    move-object v9, v7

    move v7, v6

    .line 847
    .local v7, "i":I
    .restart local v9    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    :goto_d0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    if-ge v7, v10, :cond_113

    .line 848
    invoke-interface {v5, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    move-object v9, v10

    .line 849
    const-string/jumbo v10, "name"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    .line 850
    .restart local v10    # "pkgName":Ljava/lang/String;
    sget-boolean v11, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v11, :cond_104

    const-string v11, "OnePlusSmartBoostManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IopPkgList add: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_104
    iget-object v11, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_107} :catch_115

    .line 852
    :try_start_107
    iget-object v12, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    monitor-exit v11

    .line 847
    .end local v10    # "pkgName":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_d0

    .line 853
    .restart local v10    # "pkgName":Ljava/lang/String;
    :catchall_110
    move-exception v6

    monitor-exit v11
    :try_end_112
    .catchall {:try_start_107 .. :try_end_112} :catchall_110

    :try_start_112
    throw v6
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_113} :catch_115

    .line 860
    .end local v5    # "nl":Lorg/w3c/dom/NodeList;
    .end local v7    # "i":I
    .end local v8    # "version":Ljava/lang/String;
    .end local v9    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v10    # "pkgName":Ljava/lang/String;
    :cond_113
    :goto_113
    nop

    .line 861
    return v6

    .line 856
    :catch_115
    move-exception v5

    .line 857
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "OnePlusSmartBoostManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "# readXml # parse error ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 859
    return v2
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .registers 14
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 675
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "OnePlusSmartBoostManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resolvePerfConfigFromJSON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_1b
    if-nez p1, :cond_1e

    .line 677
    return-void

    .line 680
    :cond_1e
    const/4 v0, 0x0

    move v1, v0

    .line 680
    .local v1, "index":I
    :goto_20
    :try_start_20
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_250

    .line 681
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 682
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PkgMap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 683
    iget-object v3, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_3c} :catch_277
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3c} :catch_25b

    .line 684
    :try_start_3c
    iget-object v4, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 685
    sget-boolean v4, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v4, :cond_4c

    const-string v4, "OnePlusSmartBoostManager"

    const-string v5, "[OnlineConfig] clear PageCacheList"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_4c
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_3c .. :try_end_4d} :catchall_a1

    .line 687
    :try_start_4d
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 688
    .local v3, "pkgInfoJsonArray":Lorg/json/JSONArray;
    move v4, v0

    .line 688
    .local v4, "i":I
    :goto_55
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_a4

    .line 689
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 690
    .local v5, "pkgInfoJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 692
    .local v6, "pkgName":Ljava/lang/String;
    const-string/jumbo v7, "hotcount"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 693
    .local v7, "hotCount":Ljava/lang/String;
    if-eqz v6, :cond_9e

    .line 694
    iget-object v8, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_72
    .catch Lorg/json/JSONException; {:try_start_4d .. :try_end_72} :catch_277
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_72} :catch_25b

    .line 695
    :try_start_72
    iget-object v9, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    sget-boolean v9, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v9, :cond_99

    const-string v9, "OnePlusSmartBoostManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[OnlineConfig] add pkg:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_99
    monitor-exit v8

    goto :goto_9e

    :catchall_9b
    move-exception v0

    monitor-exit v8
    :try_end_9d
    .catchall {:try_start_72 .. :try_end_9d} :catchall_9b

    :try_start_9d
    throw v0
    :try_end_9e
    .catch Lorg/json/JSONException; {:try_start_9d .. :try_end_9e} :catch_277
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_9e} :catch_25b

    .line 688
    .end local v5    # "pkgInfoJsonObject":Lorg/json/JSONObject;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "hotCount":Ljava/lang/String;
    :cond_9e
    :goto_9e
    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    .line 686
    .end local v3    # "pkgInfoJsonArray":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :catchall_a1
    move-exception v0

    :try_start_a2
    monitor-exit v3
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    :try_start_a3
    throw v0

    .line 701
    :cond_a4
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "iop"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_110

    .line 702
    iget-object v3, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_b7
    .catch Lorg/json/JSONException; {:try_start_a3 .. :try_end_b7} :catch_277
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_b7} :catch_25b

    .line 703
    :try_start_b7
    iget-object v4, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 704
    sget-boolean v4, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v4, :cond_c7

    const-string v4, "OnePlusSmartBoostManager"

    const-string v5, "[OnlineConfig] clear IopPkgList"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_c7
    monitor-exit v3
    :try_end_c8
    .catchall {:try_start_b7 .. :try_end_c8} :catchall_10d

    .line 706
    :try_start_c8
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 707
    .local v3, "iopInfoJsonArray":Lorg/json/JSONArray;
    move v4, v0

    .line 707
    .restart local v4    # "i":I
    :goto_d0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_110

    .line 708
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 709
    .local v5, "iopInfoJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 710
    .restart local v6    # "pkgName":Ljava/lang/String;
    if-eqz v6, :cond_10a

    .line 711
    iget-object v7, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_e6
    .catch Lorg/json/JSONException; {:try_start_c8 .. :try_end_e6} :catch_277
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_e6} :catch_25b

    .line 712
    :try_start_e6
    iget-object v8, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 713
    sget-boolean v8, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v8, :cond_105

    const-string v8, "OnePlusSmartBoostManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[OnlineConfig] add iop pkg: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_105
    monitor-exit v7

    goto :goto_10a

    :catchall_107
    move-exception v0

    monitor-exit v7
    :try_end_109
    .catchall {:try_start_e6 .. :try_end_109} :catchall_107

    :try_start_109
    throw v0
    :try_end_10a
    .catch Lorg/json/JSONException; {:try_start_109 .. :try_end_10a} :catch_277
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_10a} :catch_25b

    .line 707
    .end local v5    # "iopInfoJsonObject":Lorg/json/JSONObject;
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_10a
    :goto_10a
    add-int/lit8 v4, v4, 0x1

    goto :goto_d0

    .line 705
    .end local v3    # "iopInfoJsonArray":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :catchall_10d
    move-exception v0

    :try_start_10e
    monitor-exit v3
    :try_end_10f
    .catchall {:try_start_10e .. :try_end_10f} :catchall_10d

    :try_start_10f
    throw v0

    .line 718
    :cond_110
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "blackhigh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17b

    .line 719
    iget-object v3, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mBlackHighUsageList:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_122
    .catch Lorg/json/JSONException; {:try_start_10f .. :try_end_122} :catch_277
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_122} :catch_25b

    .line 720
    :try_start_122
    iget-object v4, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mBlackHighUsageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 721
    sget-boolean v4, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v4, :cond_132

    const-string v4, "OnePlusSmartBoostManager"

    const-string v5, "[OnlineConfig] clear mBlackHighUsageList"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_132
    monitor-exit v3
    :try_end_133
    .catchall {:try_start_122 .. :try_end_133} :catchall_178

    .line 723
    :try_start_133
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 724
    .local v3, "blackJsonArray":Lorg/json/JSONArray;
    move v4, v0

    .line 724
    .restart local v4    # "i":I
    :goto_13b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_17b

    .line 725
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 726
    .local v5, "blackJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 727
    .restart local v6    # "pkgName":Ljava/lang/String;
    if-eqz v6, :cond_175

    .line 728
    iget-object v7, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mBlackHighUsageList:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_151
    .catch Lorg/json/JSONException; {:try_start_133 .. :try_end_151} :catch_277
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_151} :catch_25b

    .line 729
    :try_start_151
    iget-object v8, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mBlackHighUsageList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    sget-boolean v8, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v8, :cond_170

    const-string v8, "OnePlusSmartBoostManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[OnlineConfig] add black high-usage pkg: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_170
    monitor-exit v7

    goto :goto_175

    :catchall_172
    move-exception v0

    monitor-exit v7
    :try_end_174
    .catchall {:try_start_151 .. :try_end_174} :catchall_172

    :try_start_174
    throw v0
    :try_end_175
    .catch Lorg/json/JSONException; {:try_start_174 .. :try_end_175} :catch_277
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_175} :catch_25b

    .line 724
    .end local v5    # "blackJsonObject":Lorg/json/JSONObject;
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_175
    :goto_175
    add-int/lit8 v4, v4, 0x1

    goto :goto_13b

    .line 722
    .end local v3    # "blackJsonArray":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :catchall_178
    move-exception v0

    :try_start_179
    monitor-exit v3
    :try_end_17a
    .catchall {:try_start_179 .. :try_end_17a} :catchall_178

    :try_start_17a
    throw v0

    .line 735
    :cond_17b
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "blackiop"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e6

    .line 736
    iget-object v3, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mBlackIopList:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_18d
    .catch Lorg/json/JSONException; {:try_start_17a .. :try_end_18d} :catch_277
    .catch Ljava/lang/Exception; {:try_start_17a .. :try_end_18d} :catch_25b

    .line 737
    :try_start_18d
    iget-object v4, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mBlackIopList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 738
    sget-boolean v4, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v4, :cond_19d

    const-string v4, "OnePlusSmartBoostManager"

    const-string v5, "[OnlineConfig] clear mBlackIopList"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_19d
    monitor-exit v3
    :try_end_19e
    .catchall {:try_start_18d .. :try_end_19e} :catchall_1e3

    .line 740
    :try_start_19e
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 741
    .restart local v3    # "blackJsonArray":Lorg/json/JSONArray;
    move v4, v0

    .line 741
    .restart local v4    # "i":I
    :goto_1a6
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1e6

    .line 742
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 743
    .restart local v5    # "blackJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 744
    .restart local v6    # "pkgName":Ljava/lang/String;
    if-eqz v6, :cond_1e0

    .line 745
    iget-object v7, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mBlackIopList:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_1bc
    .catch Lorg/json/JSONException; {:try_start_19e .. :try_end_1bc} :catch_277
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1bc} :catch_25b

    .line 746
    :try_start_1bc
    iget-object v8, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mBlackIopList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    sget-boolean v8, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v8, :cond_1db

    const-string v8, "OnePlusSmartBoostManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[OnlineConfig] add black iop pkg: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_1db
    monitor-exit v7

    goto :goto_1e0

    :catchall_1dd
    move-exception v0

    monitor-exit v7
    :try_end_1df
    .catchall {:try_start_1bc .. :try_end_1df} :catchall_1dd

    :try_start_1df
    throw v0
    :try_end_1e0
    .catch Lorg/json/JSONException; {:try_start_1df .. :try_end_1e0} :catch_277
    .catch Ljava/lang/Exception; {:try_start_1df .. :try_end_1e0} :catch_25b

    .line 741
    .end local v5    # "blackJsonObject":Lorg/json/JSONObject;
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_1e0
    :goto_1e0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a6

    .line 739
    .end local v3    # "blackJsonArray":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :catchall_1e3
    move-exception v0

    :try_start_1e4
    monitor-exit v3
    :try_end_1e5
    .catchall {:try_start_1e4 .. :try_end_1e5} :catchall_1e3

    :try_start_1e5
    throw v0

    .line 752
    :cond_1e6
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "switch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_219

    .line 753
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 754
    .local v3, "onlineEnable":Ljava/lang/String;
    const-string/jumbo v4, "persist.sys.ramboost.olhotcount"

    invoke-direct {p0, v4, v3}, Lcom/android/server/am/OnePlusRamBoostManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v4, "OnePlusSmartBoostManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] smartboost switch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    .end local v3    # "onlineEnable":Ljava/lang/String;
    :cond_219
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ioppreload"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24c

    .line 758
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 759
    .local v3, "onlineIop":Ljava/lang/String;
    const-string/jumbo v4, "persist.sys.ramboost.oliop"

    invoke-direct {p0, v4, v3}, Lcom/android/server/am/OnePlusRamBoostManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v4, "OnePlusSmartBoostManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] smartboost ioppreload: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "onlineIop":Ljava/lang/String;
    :cond_24c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_20

    .line 763
    .end local v1    # "index":I
    :cond_250
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusRamBoostManager;->updateSwitch(Z)V

    .line 764
    const-string v0, "OnePlusSmartBoostManager"

    const-string v1, "[OnlineConfig] smartboost updated complete"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25a
    .catch Lorg/json/JSONException; {:try_start_1e5 .. :try_end_25a} :catch_277
    .catch Ljava/lang/Exception; {:try_start_1e5 .. :try_end_25a} :catch_25b

    goto :goto_292

    .line 767
    :catch_25b
    move-exception v0

    .line 768
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OnePlusSmartBoostManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] smartboost Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_293

    .line 765
    :catch_277
    move-exception v0

    .line 766
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "OnePlusSmartBoostManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] smartboost JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_292
    nop

    .line 770
    :goto_293
    return-void
.end method

.method private resumeHotCount(I)Z
    .registers 6
    .param p1, "pid"    # I

    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 415
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 416
    const/4 v0, 0x1

    .line 417
    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_30

    .line 418
    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-nez v1, :cond_18

    if-eqz v0, :cond_2f

    :cond_18
    const-string v1, "OnePlusSmartBoostManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resumeHotCount: pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_2f
    return v0

    .line 417
    :catchall_30
    move-exception v2

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v2
.end method

.method private sendMsgIOPrefetchPreload()I
    .registers 9

    .line 585
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->IOPPRELOAD:Z

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 586
    :cond_6
    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->getPreloadString()Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, "cmd":Ljava/lang/String;
    if-nez v0, :cond_d

    return v1

    .line 588
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 591
    .local v2, "data":[B
    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->connectServer()Landroid/net/LocalSocket;

    move-result-object v3

    move-object v4, v3

    .line 591
    .local v4, "s":Landroid/net/LocalSocket;
    if-nez v3, :cond_19

    .line 592
    return v1

    .line 595
    :cond_19
    :try_start_19
    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 596
    .local v3, "out":Ljava/io/OutputStream;
    sget-boolean v5, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v5, :cond_38

    const-string v5, "OnePlusSmartBoostManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "iop_preload=>\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_38
    array-length v5, v2

    int-to-short v5, v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusRamBoostManager;->shortToBytes(S)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 598
    invoke-virtual {v3, v2}, Ljava/io/OutputStream;->write([B)V

    .line 600
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_47} :catch_4a

    .line 605
    .end local v3    # "out":Ljava/io/OutputStream;
    nop

    .line 606
    const/4 v1, 0x0

    return v1

    .line 602
    :catch_4a
    move-exception v3

    .line 603
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 604
    return v1
.end method

.method private sendMsgIOPrefetchRecord(Ljava/lang/String;)I
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "iop_record "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "cmd":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 566
    .local v1, "data":[B
    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->connectServer()Landroid/net/LocalSocket;

    move-result-object v2

    move-object v3, v2

    .line 566
    .local v3, "s":Landroid/net/LocalSocket;
    const/4 v4, -0x1

    if-nez v2, :cond_1f

    .line 567
    return v4

    .line 570
    :cond_1f
    :try_start_1f
    invoke-virtual {v3}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 571
    .local v2, "out":Ljava/io/OutputStream;
    const-string v5, "OnePlusSmartBoostManager"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    array-length v5, v1

    int-to-short v5, v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusRamBoostManager;->shortToBytes(S)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 573
    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 575
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_3b} :catch_3e

    .line 580
    .end local v2    # "out":Ljava/io/OutputStream;
    nop

    .line 581
    const/4 v2, 0x0

    return v2

    .line 577
    :catch_3e
    move-exception v2

    .line 578
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 579
    return v4
.end method

.method private sendMsgIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I
    .registers 15
    .param p1, "pid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/lang/String;

    .line 528
    const/4 v0, 0x0

    .line 529
    .local v0, "inIopPkgList":Z
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 530
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mIopPkgList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    .line 531
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_c8

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "iop_start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, "cmd":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 536
    .local v2, "data":[B
    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->connectServer()Landroid/net/LocalSocket;

    move-result-object v3

    move-object v4, v3

    .line 536
    .local v4, "s":Landroid/net/LocalSocket;
    const/4 v5, -0x1

    if-nez v3, :cond_43

    .line 537
    return v5

    .line 540
    :cond_43
    :try_start_43
    const-string v3, "OnePlusSmartBoostManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cmd: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v3, "OnePlusSmartBoostManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 543
    .local v3, "out":Ljava/io/OutputStream;
    array-length v6, v2

    int-to-short v6, v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusRamBoostManager;->shortToBytes(S)[B

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 544
    array-length v6, v2

    invoke-virtual {v3, v2, v8, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 545
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_a2} :catch_c3

    .line 549
    .end local v3    # "out":Ljava/io/OutputStream;
    nop

    .line 550
    if-lez p1, :cond_c2

    .line 551
    iget-object v3, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 552
    .local v3, "msg":Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 553
    .local v5, "b":Landroid/os/Bundle;
    const-string/jumbo v6, "pkgName"

    invoke-virtual {v5, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-virtual {v3, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 555
    iget-object v6, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    const-wide/16 v9, 0x2710

    invoke-virtual {v6, v3, v9, v10}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 557
    .end local v3    # "msg":Landroid/os/Message;
    .end local v5    # "b":Landroid/os/Bundle;
    :cond_c2
    return v8

    .line 546
    :catch_c3
    move-exception v3

    .line 547
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 548
    return v5

    .line 531
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "data":[B
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "s":Landroid/net/LocalSocket;
    :catchall_c8
    move-exception v2

    :try_start_c9
    monitor-exit v1
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_c8

    throw v2
.end method

.method private setPropValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 773
    const-string v0, ""

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, "curValue":Ljava/lang/String;
    const-string v1, "OnePlusSmartBoostManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setprop:"

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

    .line 775
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 776
    return-void

    .line 780
    :cond_34
    :try_start_34
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_38

    .line 784
    goto :goto_43

    .line 781
    :catch_38
    move-exception v1

    .line 782
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OnePlusSmartBoostManager"

    const-string v3, "failed to set system property"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 785
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_43
    return-void
.end method

.method private static shortToBytes(S)[B
    .registers 4
    .param p0, "n"    # S

    .line 521
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 522
    .local v0, "b":[B
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 523
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 524
    return-object v0
.end method

.method private updateHighUsagePkg(J)V
    .registers 6
    .param p1, "timeout"    # J

    .line 452
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "OnePlusSmartBoostManager"

    const-string/jumbo v1, "updateHighUsagePkg"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 455
    :try_start_f
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->usageMgr:Lcom/android/server/am/RestartProcessManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/RestartProcessManager;->getHighUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mHighUsagePkgList:Ljava/util/ArrayList;

    .line 456
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_26

    .line 457
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 458
    return-void

    .line 456
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private updateOnlineConfig()V
    .registers 4

    .line 625
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "OnePlusSmartBoostManager"

    const-string/jumbo v1, "updateOnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_c
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mContext:Landroid/content/Context;

    const-string v2, "RamBoost"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 627
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    .line 628
    return-void
.end method

.method private updateSwitch(Z)V
    .registers 5
    .param p1, "booting"    # Z

    .line 158
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->IN_USING:Z

    if-nez v0, :cond_5

    return-void

    .line 159
    :cond_5
    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->getRamBoostSwitchStatus()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->mUserSwitch:Z

    .line 160
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->mUserSwitch:Z

    if-nez v0, :cond_12

    .line 161
    invoke-direct {p0}, Lcom/android/server/am/OnePlusRamBoostManager;->disableRamBoost()V

    .line 164
    :cond_12
    const-string/jumbo v0, "persist.sys.ramboost.olhotcount"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->mUserSwitch:Z

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->ENABLE:Z

    .line 165
    const-string/jumbo v0, "persist.sys.ramboost.oliop"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget-boolean v2, Lcom/android/server/am/OnePlusRamBoostManager;->mUserSwitch:Z

    nop

    :cond_2f
    sput-boolean v2, Lcom/android/server/am/OnePlusRamBoostManager;->IOPPRELOAD:Z

    .line 167
    const-string/jumbo v0, "persist.sys.ramboost.enable"

    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->ENABLE:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string/jumbo v0, "persist.sys.ramboost.ioppreload"

    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->IOPPRELOAD:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    if-eqz p1, :cond_75

    const-string v0, "/proc/sys/vm/page_cache_reside_switch"

    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->ENABLE:Z

    if-eqz v1, :cond_54

    const-string v1, "1"

    goto :goto_56

    :cond_54
    const-string v1, "0"

    :goto_56
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->echo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 171
    const-string v0, "OnePlusSmartBoostManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reside switch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusRamBoostManager;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_75
    return-void
.end method

.method private writeHotCount(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "hotCount"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "ret":Z
    if-eqz p2, :cond_51

    .line 393
    invoke-direct {p0, p3}, Lcom/android/server/am/OnePlusRamBoostManager;->getEchoPath(I)Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "path":Ljava/lang/String;
    invoke-direct {p0, v1, p2}, Lcom/android/server/am/OnePlusRamBoostManager;->echo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 395
    const-string v2, "OnePlusSmartBoostManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeHotCount FAILED!!! # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",path= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_2c
    const/4 v0, 0x1

    .line 398
    sget-boolean v2, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v2, :cond_50

    const-string v2, "OnePlusSmartBoostManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeHotCount # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",path= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    .end local v1    # "path":Ljava/lang/String;
    :cond_50
    goto :goto_71

    .line 400
    :cond_51
    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v1, :cond_71

    const-string v1, "OnePlusSmartBoostManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeHotCount # no "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in PkgMap."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_71
    :goto_71
    if-eqz v0, :cond_8d

    const-string v1, "0"

    if-eq v1, p2, :cond_8d

    .line 404
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 405
    :try_start_7a
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;

    invoke-direct {v4, p0, p1, p2, p3}, Lcom/android/server/am/OnePlusRamBoostManager$AppPageCacheInfo;-><init>(Lcom/android/server/am/OnePlusRamBoostManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    monitor-exit v1

    goto :goto_8d

    :catchall_8a
    move-exception v2

    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_7a .. :try_end_8c} :catchall_8a

    throw v2

    .line 409
    :cond_8d
    :goto_8d
    return v0
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public initEnv(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 146
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->IN_USING:Z

    if-eqz v0, :cond_3b

    .line 147
    iput-object p1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mContext:Landroid/content/Context;

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mResolver:Landroid/content/ContentResolver;

    .line 149
    new-instance v0, Lcom/android/server/am/OnePlusRamBoostManager$SwitchContentObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/am/OnePlusRamBoostManager$SwitchContentObserver;-><init>(Lcom/android/server/am/OnePlusRamBoostManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mSwitchContentObserver:Lcom/android/server/am/OnePlusRamBoostManager$SwitchContentObserver;

    .line 150
    const-string/jumbo v0, "op_smartboost_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->URI_RAMBOOST_SWITCH:Landroid/net/Uri;

    .line 151
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->getInstance()Lcom/android/server/am/RestartProcessManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->usageMgr:Lcom/android/server/am/RestartProcessManager;

    .line 152
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->URI_RAMBOOST_SWITCH:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mSwitchContentObserver:Lcom/android/server/am/OnePlusRamBoostManager$SwitchContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 155
    :cond_3b
    return-void
.end method

.method public initOnlineConfig(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 207
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->IN_USING:Z

    if-nez v0, :cond_5

    return-void

    .line 208
    :cond_5
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v0, :cond_11

    const-string v0, "OnePlusSmartBoostManager"

    const-string/jumbo v1, "initOnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_11
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    new-instance v3, Lcom/android/server/am/OnePlusRamBoostManager$MyConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusRamBoostManager$MyConfigUpdater;-><init>(Lcom/android/server/am/OnePlusRamBoostManager;)V

    const-string v4, "RamBoost"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 210
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 211
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->sendMessage(Landroid/os/Message;)Z

    .line 212
    return-void
.end method

.method public notifyIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "pid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/lang/String;

    .line 275
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->IOPPRELOAD:Z

    if-eqz v0, :cond_52

    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->IN_USING:Z

    if-nez v0, :cond_9

    goto :goto_52

    .line 276
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mBlackIopList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 277
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-eqz v0, :cond_2c

    const-string v0, "OnePlusSmartBoostManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyIOPrefetchStart # iop black pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_2c
    return-void

    .line 280
    :cond_2d
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 281
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 282
    .local v1, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 283
    const-string/jumbo v2, "pkgName"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v2, "codePath"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 286
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 287
    return-void

    .line 275
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "b":Landroid/os/Bundle;
    :cond_52
    :goto_52
    return-void
.end method

.method public notifyRamBoost(Ljava/lang/String;IZ)V
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "start"    # Z

    .line 227
    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->ENABLE:Z

    if-eqz v0, :cond_a7

    sget-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->IN_USING:Z

    if-nez v0, :cond_a

    goto/16 :goto_a7

    .line 228
    :cond_a
    const/4 v0, 0x0

    .line 229
    .local v0, "ret":Z
    if-eqz p3, :cond_75

    .line 230
    const/4 v1, 0x0

    .line 231
    .local v1, "hotCount":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 232
    :try_start_11
    iget-object v3, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mPageCachePkgMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusRamBoostManager;->filterSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    .line 233
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_72

    .line 234
    if-nez v1, :cond_25

    .line 235
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusRamBoostManager;->getHotCountFromHighList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    :cond_25
    if-eqz v1, :cond_4c

    .line 238
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mRamBoostHandler:Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 239
    .local v2, "msg":Landroid/os/Message;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 240
    .local v3, "b":Landroid/os/Bundle;
    const-string/jumbo v4, "pkgName"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string/jumbo v4, "hotCount"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string/jumbo v4, "pid"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 244
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 245
    const/4 v0, 0x1

    .line 247
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "b":Landroid/os/Bundle;
    :cond_4c
    sget-boolean v2, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-nez v2, :cond_52

    if-eqz v0, :cond_71

    :cond_52
    const-string v2, "OnePlusSmartBoostManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeHotCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v1    # "hotCount":Ljava/lang/String;
    :cond_71
    goto :goto_a3

    .line 233
    .restart local v1    # "hotCount":Ljava/lang/String;
    :catchall_72
    move-exception v3

    :try_start_73
    monitor-exit v2
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v3

    .line 249
    .end local v1    # "hotCount":Ljava/lang/String;
    :cond_75
    iget-object v1, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 250
    :try_start_78
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager;->mAppPageCacheInfoMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_85

    .line 251
    const/4 v0, 0x1

    .line 252
    :cond_85
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_78 .. :try_end_86} :catchall_a4

    .line 253
    sget-boolean v1, Lcom/android/server/am/OnePlusRamBoostManager;->DEBUG:Z

    if-nez v1, :cond_8c

    if-eqz v0, :cond_a3

    :cond_8c
    const-string v1, "OnePlusSmartBoostManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resumeHotCount: pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_a3
    :goto_a3
    return-void

    .line 252
    :catchall_a4
    move-exception v2

    :try_start_a5
    monitor-exit v1
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    throw v2

    .line 227
    .end local v0    # "ret":Z
    :cond_a7
    :goto_a7
    return-void
.end method

.method public start(Ljava/lang/Object;)I
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 182
    const-string v0, "OnePlusSmartBoostManager"

    const-string v1, "OIMC enable smartboost!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 190
    const-string v0, "OnePlusSmartBoostManager"

    const-string v1, "OIMC disable smartboost!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->ENABLE:Z

    .line 192
    sput-boolean v0, Lcom/android/server/am/OnePlusRamBoostManager;->IOPPRELOAD:Z

    .line 193
    return v0
.end method
