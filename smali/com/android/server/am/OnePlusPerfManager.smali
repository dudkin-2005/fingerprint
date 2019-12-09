.class public Lcom/android/server/am/OnePlusPerfManager;
.super Ljava/lang/Object;
.source "OnePlusPerfManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusPerfManager$MyConfigUpdater;,
        Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;,
        Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;,
        Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;,
        Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;,
        Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;,
        Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    }
.end annotation


# static fields
.field private static final CONFIG_NAME:Ljava/lang/String; = "OPPerf"

.field public static DEBUG:Z = false

.field private static final DEFAULT_LEVEL:Ljava/lang/String; = "0"

.field private static final DEFAULT_MODE:I = 0x0

.field private static final DEFAULT_NONE:Ljava/lang/String; = ""

.field private static DEFAULT_TIMEOUT:I = 0x0

.field public static ENABLE:Z = false

.field private static final ENABLE_FLAG_MODE_PERFHINT:I = 0x40

.field private static final ENABLE_FLAG_MODE_PERFLOCK:I = 0x80

.field private static final ENABLE_FLAG_MODE_SCHEDTUNE:I = 0x20

.field private static final ENABLE_FLAG_MODE_STARTSPEED:I = 0x10

.field public static ENABLE_MODE_PERFHINT:Z = false

.field public static ENABLE_MODE_PERFLOCK:Z = false

.field public static ENABLE_MODE_SCHEDTUNE:Z = false

.field public static ENABLE_MODE_STARTSPEED:Z = false

.field private static final GamingCoreSwitchPath:Ljava/lang/String; = "/sys/module/opchain/parameters/boost_tl"

.field private static INSTANCE:Lcom/android/server/am/OnePlusPerfManager; = null

.field private static final LEVEL_REMOVE:Ljava/lang/String; = "-1"

.field private static final MSG_GET_ONLINECONFIG:I = 0x3

.field private static final MSG_STARTSPEED_SCHEDTUNE:I = 0x1

.field private static final MSG_STARTSPEED_SCHEDTUNE_TIMEOUT:I = 0x2

.field private static final OPPERF_FILE:Ljava/lang/String; = "/system/etc/opperf.xml"

.field private static final PARAM_PATTERN:Ljava/lang/String; = ","

.field private static final PERF_MODE_PERFHINT:I = 0x6

.field private static final PERF_MODE_PERFLOCK:I = 0x7

.field private static final PERF_MODE_SCHEDTUNE:I = 0x5

.field private static final PERF_MODE_STARTSPEED:I = 0x4

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.opperf.debug"

.field private static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.opperf.enable"

.field public static final TAG:Ljava/lang/String; = "OPPerf"

.field private static final XML_ATTR_GAMINGCORE:Ljava/lang/String; = "gamingcore"

.field private static final XML_ATTR_LEVEL:Ljava/lang/String; = "level"

.field private static final XML_ATTR_MODE:Ljava/lang/String; = "mode"

.field private static final XML_ATTR_NAME:Ljava/lang/String; = "name"

.field private static final XML_ATTR_PERFLOCK:Ljava/lang/String; = "perflock"

.field private static final XML_ATTR_PERF_PARAM:Ljava/lang/String; = "param"

.field private static final XML_ATTR_SCHEDTUNE_DEFAULT:Ljava/lang/String; = "default"

.field private static final XML_ATTR_SCHEDTUNE_PATH:Ljava/lang/String; = "path"

.field private static final XML_ATTR_SWITCH:Ljava/lang/String; = "switch"

.field private static final XML_ATTR_TIMEOUT:Ljava/lang/String; = "timeout"

.field private static final XML_ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final XML_TAG_COMPANYLIST:Ljava/lang/String; = "gamingcorecompanylist"

.field private static final XML_TAG_GAMELIST:Ljava/lang/String; = "gamingcoregamelist"

.field private static final XML_TAG_NAMESPACE:Ljava/lang/String; = ""

.field private static final XML_TAG_PERF:Ljava/lang/String; = "perf"

.field private static final XML_TAG_PERFHINT:Ljava/lang/String; = "perfhint"

.field private static final XML_TAG_PERFLOCK:Ljava/lang/String; = "perflock"

.field private static final XML_TAG_PKG:Ljava/lang/String; = "pkg"

.field private static final XML_TAG_SCHEDTUNE:Ljava/lang/String; = "schedtune"

.field private static final XML_TAG_SCHEDTUNE_ITEM:Ljava/lang/String; = "item"

.field private static final XML_TAG_SPKG:Ljava/lang/String; = "spkg"


# instance fields
.field private final currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

.field private mContext:Landroid/content/Context;

.field private mCurrentSpeedLevel:Ljava/lang/String;

.field private mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mPerfBoost:Landroid/util/BoostFramework;

.field private mPerfBoostForStartSpeed:Landroid/util/BoostFramework;

.field mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

.field private mPerfLockLevelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;",
            ">;"
        }
    .end annotation
.end field

.field mPerfManagerThread:Landroid/os/HandlerThread;

.field private mPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPerfManager$PerfInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSchedtuneParamMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;",
            ">;"
        }
    .end annotation
.end field

.field private offScreenPkgName:Ljava/lang/String;

.field private screenOn:Z

.field private suffixListCompany:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private suffixListGame:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    .line 74
    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_PERFLOCK:Z

    .line 75
    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_PERFHINT:Z

    .line 76
    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_SCHEDTUNE:Z

    .line 77
    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_STARTSPEED:Z

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusPerfManager;->INSTANCE:Lcom/android/server/am/OnePlusPerfManager;

    .line 130
    const/16 v0, 0x4e20

    sput v0, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I

    return-void
.end method

.method private constructor <init>()V
    .registers 8

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfBoost:Landroid/util/BoostFramework;

    .line 83
    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfBoostForStartSpeed:Landroid/util/BoostFramework;

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    .line 122
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    .line 125
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    .line 132
    new-instance v1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    const-string v2, ""

    const-string v3, "0"

    sget v4, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v3, v4}, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.netease."

    const-string v3, "com.pwrd."

    const-string v4, "com.bilibili."

    const-string v6, "com.miHoYo."

    filled-new-array {v2, v3, v4, v6}, [Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->suffixListCompany:Ljava/util/List;

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.happyelements.AndroidAnimal"

    const-string v3, "com.zlongame.mhmnz"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->suffixListGame:Ljava/util/List;

    .line 209
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    .line 210
    iput-boolean v5, p0, Lcom/android/server/am/OnePlusPerfManager;->screenOn:Z

    .line 684
    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfManagerThread:Landroid/os/HandlerThread;

    .line 685
    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    .line 711
    const-string v1, "-1"

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    .line 771
    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mContext:Landroid/content/Context;

    .line 149
    const-string/jumbo v0, "persist.sys.opperf.enable"

    sget-boolean v1, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    .line 151
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfBoost:Landroid/util/BoostFramework;

    .line 153
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PerfThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfManagerThread:Landroid/os/HandlerThread;

    .line 154
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfManagerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 155
    new-instance v0, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfManagerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;-><init>(Lcom/android/server/am/OnePlusPerfManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    .line 157
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfBoostForStartSpeed:Landroid/util/BoostFramework;

    .line 158
    const-string/jumbo v0, "persist.sys.opperf.debug"

    sget-boolean v1, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    .line 159
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->readXml()I

    .line 160
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .line 69
    sget v0, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusPerfManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPerfManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPerfManager;->startSpeedSchedtune(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusPerfManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPerfManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPerfManager;->finishSpeedSchedtune(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusPerfManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPerfManager;

    .line 69
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->forceUpdateOnlineConfigImmediately()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusPerfManager;Lorg/json/JSONArray;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPerfManager;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPerfManager;->resolvePerfConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private deciedEnableModes(Ljava/lang/String;)V
    .registers 7
    .param p1, "switchStr"    # Ljava/lang/String;

    .line 475
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 476
    .local v0, "modes":I
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    monitor-enter v1

    .line 477
    and-int/lit16 v2, v0, 0x80

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_f

    move v2, v4

    goto :goto_10

    :cond_f
    move v2, v3

    :goto_10
    :try_start_10
    sput-boolean v2, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_PERFLOCK:Z

    .line 478
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_18

    move v2, v4

    goto :goto_19

    :cond_18
    move v2, v3

    :goto_19
    sput-boolean v2, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_PERFHINT:Z

    .line 479
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_21

    move v2, v4

    goto :goto_22

    :cond_21
    move v2, v3

    :goto_22
    sput-boolean v2, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_SCHEDTUNE:Z

    .line 480
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_2a

    move v3, v4

    nop

    :cond_2a
    sput-boolean v3, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_STARTSPEED:Z

    .line 481
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_45

    .line 482
    const-string v1, "OPPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "newest switch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void

    .line 481
    :catchall_45
    move-exception v2

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v2
.end method

.method private deciedGamingCoreEnable(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ATTENTION!!!\tdeciedGCEnable: => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 800
    const-string v0, "/sys/module/opchain/parameters/boost_tl"

    if-eqz p1, :cond_1b

    const-string v1, "1"

    goto :goto_1d

    :cond_1b
    const-string v1, "0"

    :goto_1d
    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusPerfManager;->echo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 801
    const-string v0, "OPPerf"

    const-string v1, "deciedGCEnable failed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_2a
    return-void
.end method

.method private echo(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 805
    const/4 v0, 0x0

    .line 806
    .local v0, "fos":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 807
    .local v1, "f":Ljava/io/File;
    const/4 v2, 0x1

    .line 809
    .local v2, "ret":Z
    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    .line 810
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_54

    .line 811
    const-string v3, "OPPerf"

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

    .line 812
    const/4 v3, 0x0

    .line 823
    if-eqz v0, :cond_52

    .line 824
    :try_start_28
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_2d

    .line 825
    const/4 v0, 0x0

    goto :goto_52

    .line 827
    :catch_2d
    move-exception v4

    .line 828
    .local v4, "ex":Ljava/io/IOException;
    const-string v5, "OPPerf"

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

    .line 829
    const/4 v2, 0x0

    .end local v4    # "ex":Ljava/io/IOException;
    goto :goto_53

    .line 830
    :cond_52
    :goto_52
    nop

    .line 812
    :goto_53
    return v3

    .line 814
    :cond_54
    :try_start_54
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 815
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 816
    .local v3, "statebuffer":[B
    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 817
    sget-boolean v4, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v4, :cond_83

    const-string v4, "OPPerf"

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

    .line 823
    .end local v3    # "statebuffer":[B
    :cond_83
    nop

    .line 824
    :try_start_84
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_89

    .line 825
    :goto_87
    const/4 v0, 0x0

    goto :goto_ae

    .line 827
    :catch_89
    move-exception v3

    .line 828
    .local v3, "ex":Ljava/io/IOException;
    const-string v4, "OPPerf"

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

    .line 829
    const/4 v2, 0x0

    .line 831
    .end local v3    # "ex":Ljava/io/IOException;
    goto :goto_e4

    .line 830
    :cond_ae
    :goto_ae
    goto :goto_e4

    .line 822
    :catchall_af
    move-exception v3

    goto :goto_e5

    .line 818
    :catch_b1
    move-exception v3

    .line 819
    .restart local v3    # "ex":Ljava/io/IOException;
    :try_start_b2
    const-string v4, "OPPerf"

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

    .line 820
    const/4 v2, 0x0

    .line 823
    .end local v3    # "ex":Ljava/io/IOException;
    if-eqz v0, :cond_ae

    .line 824
    :try_start_d7
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d7 .. :try_end_da} :catch_db

    goto :goto_87

    .line 827
    :catch_db
    move-exception v3

    .line 828
    .restart local v3    # "ex":Ljava/io/IOException;
    const-string v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_91

    .line 832
    .end local v3    # "ex":Ljava/io/IOException;
    :goto_e4
    return v2

    .line 822
    :goto_e5
    nop

    .line 823
    if-eqz v0, :cond_112

    .line 824
    :try_start_e8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_eb} :catch_ed

    .line 825
    const/4 v0, 0x0

    goto :goto_112

    .line 827
    :catch_ed
    move-exception v4

    .line 828
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

    const-string v6, "OPPerf"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const/4 v2, 0x0

    .end local v4    # "ex":Ljava/io/IOException;
    nop

    .line 830
    :cond_112
    :goto_112
    throw v3
.end method

.method private filterSuffix(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 189
    move-object v0, p1

    .line 190
    .local v0, "ret":Ljava/lang/String;
    if-eqz p1, :cond_4f

    .line 191
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->suffixListGame:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 192
    .local v2, "regex":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 193
    return-object v2

    .line 195
    .end local v2    # "regex":Ljava/lang/String;
    :cond_1c
    goto :goto_9

    .line 196
    :cond_1d
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->suffixListCompany:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 197
    .restart local v2    # "regex":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 200
    .end local v2    # "regex":Ljava/lang/String;
    :cond_4e
    goto :goto_23

    .line 202
    :cond_4f
    return-object v0
.end method

.method private finishSpeedSchedtune(Ljava/lang/String;)V
    .registers 6
    .param p1, "level"    # Ljava/lang/String;

    .line 751
    const/4 v0, 0x0

    .line 752
    .local v0, "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 753
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;

    move-object v0, v2

    .line 754
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_64

    .line 755
    if-eqz v0, :cond_4d

    .line 756
    invoke-virtual {v0, p1}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->resetPerfFiles(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 757
    const-string v1, "OPPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishSpeedSchedtune # level:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " reset failed!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 759
    :cond_32
    const-string v1, "-1"

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    .line 760
    const-string v1, "OPPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishSpeedSchedtune # level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    .line 763
    :cond_4d
    const-string v1, "OPPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishSpeedSchedtune # stp = null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :goto_63
    return-void

    .line 754
    :catchall_64
    move-exception v2

    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v2
.end method

.method private forceUpdateOnlineConfigImmediately()V
    .registers 4

    .line 792
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "forceUpdateOnlineConfigImmediately"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 793
    :cond_9
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mContext:Landroid/content/Context;

    const-string v2, "OPPerf"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 794
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusPerfManager;->resolvePerfConfigFromJSON(Lorg/json/JSONArray;)V

    .line 795
    return-void
.end method

.method public static final getInstance()Lcom/android/server/am/OnePlusPerfManager;
    .registers 1

    .line 142
    sget-object v0, Lcom/android/server/am/OnePlusPerfManager;->INSTANCE:Lcom/android/server/am/OnePlusPerfManager;

    if-nez v0, :cond_b

    .line 143
    new-instance v0, Lcom/android/server/am/OnePlusPerfManager;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusPerfManager;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusPerfManager;->INSTANCE:Lcom/android/server/am/OnePlusPerfManager;

    .line 145
    :cond_b
    sget-object v0, Lcom/android/server/am/OnePlusPerfManager;->INSTANCE:Lcom/android/server/am/OnePlusPerfManager;

    return-object v0
.end method

.method private mayPerfRelease()Z
    .registers 7

    .line 318
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    monitor-enter v0

    .line 319
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget-object v1, v1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mPkgName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b9

    .line 320
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget v1, v1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-ne v1, v2, :cond_5a

    .line 321
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfBoost:Landroid/util/BoostFramework;

    invoke-virtual {v1}, Landroid/util/BoostFramework;->perfLockRelease()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_40

    .line 322
    const-string v1, "OPPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mayPerfRelease # : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->resetValue()V

    .line 324
    monitor-exit v0

    return v3

    .line 327
    :cond_40
    const-string v1, "OPPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mayPerfRelease # release failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b9

    .line 329
    :cond_5a
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget v1, v1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_b9

    .line 331
    const/4 v1, 0x0

    .line 332
    .local v1, "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_bc

    .line 333
    :try_start_65
    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget-object v5, v5, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;

    move-object v1, v4

    .line 334
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_65 .. :try_end_73} :catchall_b6

    .line 335
    if-eqz v1, :cond_9c

    .line 336
    :try_start_75
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget-object v2, v2, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->resetPerfFiles(Ljava/lang/String;)Z

    .line 337
    const-string v2, "OPPerf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mayPerfRelease # reset SCHEDTUNE # : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->resetValue()V

    .line 339
    monitor-exit v0

    return v3

    .line 341
    :cond_9c
    const-string v2, "OPPerf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mayPerfRelease # reset SCHEDTUNE # stp = null : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catchall {:try_start_75 .. :try_end_b5} :catchall_bc

    .end local v1    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    goto :goto_b9

    .line 334
    .restart local v1    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :catchall_b6
    move-exception v3

    :try_start_b7
    monitor-exit v2
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_b6

    :try_start_b8
    throw v3

    .line 345
    .end local v1    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :cond_b9
    :goto_b9
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 346
    :catchall_bc
    move-exception v1

    monitor-exit v0
    :try_end_be
    .catchall {:try_start_b8 .. :try_end_be} :catchall_bc

    throw v1
.end method

.method public static myLog(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .line 486
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "OPPerf"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_9
    return-void
.end method

.method public static numberStringToInt(Ljava/lang/String;)I
    .registers 2
    .param p0, "numStr"    # Ljava/lang/String;

    .line 588
    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "0X"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1a

    .line 592
    :cond_11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 589
    :cond_1a
    :goto_1a
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 590
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private perfAcquire(Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;I)Z
    .registers 10
    .param p1, "spi"    # Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    .param p2, "duration"    # I

    .line 257
    iget v0, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    .line 258
    .local v0, "mode":I
    const/4 v1, 0x0

    .line 259
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    monitor-enter v2

    .line 260
    :try_start_6
    sget-boolean v3, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_PERFLOCK:Z

    if-eqz v3, :cond_a9

    const/4 v3, 0x7

    if-ne v0, v3, :cond_a9

    .line 261
    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget v3, v3, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    if-ne v3, v0, :cond_39

    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget-object v3, v3, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 262
    const/4 v1, 0x1

    .line 263
    const-string v3, "OPPerf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "perfAcquire # perflock change #: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_147

    .line 265
    :cond_39
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->mayPerfRelease()Z

    .line 266
    const/4 v3, 0x0

    .line 267
    .local v3, "pll":Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_40
    .catchall {:try_start_6 .. :try_end_40} :catchall_150

    .line 268
    :try_start_40
    iget-object v5, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;

    move-object v3, v5

    .line 269
    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_40 .. :try_end_4c} :catchall_a6

    .line 270
    if-eqz v3, :cond_8d

    .line 271
    :try_start_4e
    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfBoost:Landroid/util/BoostFramework;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->getParam()[I

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_75

    .line 272
    const/4 v1, 0x1

    .line 273
    const-string v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "perfAcquire # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    .line 275
    :cond_75
    const-string v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "perfAcquire # acquire failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a4

    .line 278
    :cond_8d
    const-string v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "perfAcquire failed # pll = null : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catchall {:try_start_4e .. :try_end_a4} :catchall_150

    .line 280
    .end local v3    # "pll":Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
    :goto_a4
    goto/16 :goto_147

    .line 269
    .restart local v3    # "pll":Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
    :catchall_a6
    move-exception v5

    :try_start_a7
    monitor-exit v4
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    :try_start_a8
    throw v5

    .line 281
    .end local v3    # "pll":Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
    :cond_a9
    sget-boolean v3, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_SCHEDTUNE:Z

    if-eqz v3, :cond_144

    const/4 v3, 0x5

    if-ne v0, v3, :cond_144

    .line 282
    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget v3, v3, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    if-ne v3, v0, :cond_db

    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget-object v3, v3, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_db

    .line 283
    const/4 v1, 0x1

    .line 284
    const-string v3, "OPPerf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "perfAcquire # SCHEDTUNE change # : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_147

    .line 286
    :cond_db
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->mayPerfRelease()Z

    .line 288
    const/4 v3, 0x0

    .line 289
    .local v3, "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_e2
    .catchall {:try_start_a8 .. :try_end_e2} :catchall_150

    .line 290
    :try_start_e2
    iget-object v5, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    iget-object v6, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;

    move-object v3, v5

    .line 291
    monitor-exit v4
    :try_end_ee
    .catchall {:try_start_e2 .. :try_end_ee} :catchall_141

    .line 292
    if-eqz v3, :cond_129

    .line 293
    :try_start_f0
    iget-object v4, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->writePerfFiles(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_111

    .line 294
    const-string v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "perfAcquire # set SCHEDTUNE #: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v1, 0x1

    goto :goto_140

    .line 297
    :cond_111
    const-string v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "perfAcquire # write schedtune failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_140

    .line 300
    :cond_129
    const-string v4, "OPPerf"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "perfAcquire # write schedtune failed # stp = null : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_140
    .catchall {:try_start_f0 .. :try_end_140} :catchall_150

    .line 302
    .end local v3    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :goto_140
    goto :goto_147

    .line 291
    .restart local v3    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :catchall_141
    move-exception v5

    :try_start_142
    monitor-exit v4
    :try_end_143
    .catchall {:try_start_142 .. :try_end_143} :catchall_141

    :try_start_143
    throw v5

    .line 305
    .end local v3    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :cond_144
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->mayPerfRelease()Z

    .line 307
    :goto_147
    if-eqz v1, :cond_14e

    .line 308
    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v3, p1}, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->setValue(Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;)V

    .line 309
    :cond_14e
    monitor-exit v2

    .line 310
    return v1

    .line 309
    :catchall_150
    move-exception v3

    monitor-exit v2
    :try_end_152
    .catchall {:try_start_143 .. :try_end_152} :catchall_150

    throw v3
.end method

.method private readXml()I
    .registers 31

    .line 359
    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "# readXml"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 360
    :cond_b
    const/4 v2, 0x0

    .line 361
    .local v2, "ret":I
    new-instance v0, Ljava/io/File;

    const-string v3, "/system/etc/opperf.xml"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 362
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_25

    .line 363
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_23

    const-string v0, "# readXml # file not exists"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 364
    :cond_23
    const/4 v0, -0x1

    return v0

    .line 366
    :cond_25
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 367
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v5, 0x0

    .line 368
    .local v5, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v0, 0x0

    move-object v6, v0

    .line 370
    .local v6, "doc":Lorg/w3c/dom/Document;
    :try_start_2c
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_30} :catch_364

    move-object v5, v0

    .line 371
    :try_start_31
    invoke-virtual {v5, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_35} :catch_35c

    move-object v6, v0

    .line 373
    :try_start_36
    const-string/jumbo v0, "perf"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 374
    .local v0, "nl":Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    .line 375
    .local v8, "nnm":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v9, "version"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 376
    .local v9, "versionStr":Ljava/lang/String;
    const-string/jumbo v10, "switch"

    invoke-interface {v8, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    .line 377
    .local v10, "switchStr":Ljava/lang/String;
    const-string/jumbo v11, "timeout"

    invoke-interface {v8, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_63} :catch_352

    .line 378
    .local v11, "timeoutNode":Lorg/w3c/dom/Node;
    if-eqz v11, :cond_79

    .line 379
    :try_start_65
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    .line 380
    .local v12, "dftimeoutStr":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    sput v13, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6f} :catch_70

    .line 380
    .end local v12    # "dftimeoutStr":Ljava/lang/String;
    goto :goto_79

    .line 465
    .end local v0    # "nl":Lorg/w3c/dom/NodeList;
    .end local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v9    # "versionStr":Ljava/lang/String;
    .end local v10    # "switchStr":Ljava/lang/String;
    .end local v11    # "timeoutNode":Lorg/w3c/dom/Node;
    :catch_70
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    .line 465
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v17, "f":Ljava/io/File;
    .local v19, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v25, "builder":Ljavax/xml/parsers/DocumentBuilder;
    :goto_75
    move-object/from16 v25, v5

    goto/16 :goto_36b

    .line 382
    .end local v17    # "f":Ljava/io/File;
    .end local v19    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v0    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v9    # "versionStr":Ljava/lang/String;
    .restart local v10    # "switchStr":Ljava/lang/String;
    .restart local v11    # "timeoutNode":Lorg/w3c/dom/Node;
    :cond_79
    :goto_79
    :try_start_79
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "version "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " #switch "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " #timeout "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v13, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 383
    invoke-direct {v1, v10}, Lcom/android/server/am/OnePlusPerfManager;->deciedEnableModes(Ljava/lang/String;)V

    .line 385
    const-string/jumbo v12, "pkg"

    invoke-interface {v6, v12}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_aa} :catch_352

    .line 386
    .end local v0    # "nl":Lorg/w3c/dom/NodeList;
    .local v12, "nl":Lorg/w3c/dom/NodeList;
    if-nez v12, :cond_b9

    .line 387
    :try_start_ac
    const-string v0, "OPPerf"

    const-string v13, "# readXml # error # nl = null"

    invoke-static {v0, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b3} :catch_70

    .line 408
    move-object/from16 v17, v3

    move-object/from16 v19, v4

    goto/16 :goto_143

    .line 389
    :cond_b9
    move v0, v7

    .line 389
    .local v0, "i":I
    :goto_ba
    move v13, v0

    .line 389
    .end local v0    # "i":I
    .local v13, "i":I
    :try_start_bb
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_bf} :catch_352

    if-ge v13, v0, :cond_13f

    .line 390
    :try_start_c1
    invoke-interface {v12, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    move-object v8, v0

    .line 391
    const-string/jumbo v0, "name"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 392
    .local v14, "pkgName":Ljava/lang/String;
    const-string/jumbo v0, "perflock"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    .line 393
    .local v15, "perfLockTimeStr":Ljava/lang/String;
    const-string v0, "0"

    .line 394
    .local v0, "level":Ljava/lang/String;
    const-string/jumbo v7, "level"

    invoke-interface {v8, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_eb} :catch_364

    .line 395
    .local v7, "n":Lorg/w3c/dom/Node;
    if-eqz v7, :cond_f3

    .line 396
    :try_start_ed
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16
    :try_end_f1
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f1} :catch_70

    move-object/from16 v0, v16

    .line 398
    .end local v0    # "level":Ljava/lang/String;
    .local v3, "level":Ljava/lang/String;
    .restart local v17    # "f":Ljava/io/File;
    :cond_f3
    move-object/from16 v17, v3

    move-object v3, v0

    :try_start_f6
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v18, v0

    .line 399
    .local v18, "perfLockTime":I
    new-instance v0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_fe} :catch_138

    move-object/from16 v19, v4

    move/from16 v4, v18

    :try_start_102
    invoke-direct {v0, v14, v4, v3}, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 399
    .end local v18    # "perfLockTime":I
    .local v4, "perfLockTime":I
    .restart local v19    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    move-object/from16 v20, v0

    .line 400
    .local v20, "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v3

    const-string/jumbo v3, "readXml: "

    .line 400
    .end local v3    # "level":Ljava/lang/String;
    .local v21, "level":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 400
    .end local v20    # "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    .local v3, "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 401
    move/from16 v22, v4

    iget-object v4, v1, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    .line 401
    .end local v4    # "perfLockTime":I
    .local v22, "perfLockTime":I
    monitor-enter v4
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_125} :catch_15a

    .line 402
    :try_start_125
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    monitor-exit v4

    .line 404
    add-int/lit8 v2, v2, 0x1

    .line 389
    .end local v3    # "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    .end local v7    # "n":Lorg/w3c/dom/Node;
    .end local v14    # "pkgName":Ljava/lang/String;
    .end local v15    # "perfLockTimeStr":Ljava/lang/String;
    .end local v21    # "level":Ljava/lang/String;
    .end local v22    # "perfLockTime":I
    add-int/lit8 v0, v13, 0x1

    .line 389
    .end local v13    # "i":I
    .local v0, "i":I
    move-object/from16 v3, v17

    move-object/from16 v4, v19

    const/4 v7, 0x0

    goto :goto_ba

    .line 403
    .end local v0    # "i":I
    .restart local v3    # "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    .restart local v7    # "n":Lorg/w3c/dom/Node;
    .restart local v13    # "i":I
    .restart local v14    # "pkgName":Ljava/lang/String;
    .restart local v15    # "perfLockTimeStr":Ljava/lang/String;
    .restart local v21    # "level":Ljava/lang/String;
    .restart local v22    # "perfLockTime":I
    :catchall_135
    move-exception v0

    monitor-exit v4
    :try_end_137
    .catchall {:try_start_125 .. :try_end_137} :catchall_135

    :try_start_137
    throw v0
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_138} :catch_15a

    .line 465
    .end local v3    # "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    .end local v7    # "n":Lorg/w3c/dom/Node;
    .end local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v9    # "versionStr":Ljava/lang/String;
    .end local v10    # "switchStr":Ljava/lang/String;
    .end local v11    # "timeoutNode":Lorg/w3c/dom/Node;
    .end local v12    # "nl":Lorg/w3c/dom/NodeList;
    .end local v13    # "i":I
    .end local v14    # "pkgName":Ljava/lang/String;
    .end local v15    # "perfLockTimeStr":Ljava/lang/String;
    .end local v19    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v21    # "level":Ljava/lang/String;
    .end local v22    # "perfLockTime":I
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_138
    move-exception v0

    move-object/from16 v19, v4

    move-object/from16 v25, v5

    .line 465
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v19    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    goto/16 :goto_36b

    .line 408
    .end local v17    # "f":Ljava/io/File;
    .end local v19    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v3, "f":Ljava/io/File;
    .restart local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v9    # "versionStr":Ljava/lang/String;
    .restart local v10    # "switchStr":Ljava/lang/String;
    .restart local v11    # "timeoutNode":Lorg/w3c/dom/Node;
    .restart local v12    # "nl":Lorg/w3c/dom/NodeList;
    :cond_13f
    move-object/from16 v17, v3

    move-object/from16 v19, v4

    .line 408
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v17    # "f":Ljava/io/File;
    .restart local v19    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :goto_143
    :try_start_143
    const-string/jumbo v0, "spkg"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_14a} :catch_34c

    move-object v3, v0

    .line 409
    .end local v12    # "nl":Lorg/w3c/dom/NodeList;
    .local v3, "nl":Lorg/w3c/dom/NodeList;
    if-nez v3, :cond_15d

    .line 410
    :try_start_14d
    const-string v0, "OPPerf"

    const-string v4, "# readXml # error spkg# nl = null"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_154
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_154} :catch_15a

    .line 427
    move-object/from16 v24, v3

    move-object/from16 v25, v5

    goto/16 :goto_212

    .line 465
    .end local v3    # "nl":Lorg/w3c/dom/NodeList;
    .end local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v9    # "versionStr":Ljava/lang/String;
    .end local v10    # "switchStr":Ljava/lang/String;
    .end local v11    # "timeoutNode":Lorg/w3c/dom/Node;
    :catch_15a
    move-exception v0

    goto/16 :goto_75

    .line 412
    .restart local v3    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v9    # "versionStr":Ljava/lang/String;
    .restart local v10    # "switchStr":Ljava/lang/String;
    .restart local v11    # "timeoutNode":Lorg/w3c/dom/Node;
    :cond_15d
    const/4 v0, 0x0

    .line 412
    .restart local v0    # "i":I
    :goto_15e
    move v4, v0

    .line 412
    .end local v0    # "i":I
    .local v4, "i":I
    :try_start_15f
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_15f .. :try_end_163} :catch_34c

    if-ge v4, v0, :cond_20e

    .line 413
    :try_start_165
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    move-object v8, v0

    .line 414
    const-string/jumbo v0, "name"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 415
    .local v7, "pkgName":Ljava/lang/String;
    const-string/jumbo v0, "mode"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 416
    .local v12, "modeStr":Ljava/lang/String;
    const-string/jumbo v0, "level"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 417
    .local v13, "level":Ljava/lang/String;
    const-string/jumbo v0, "timeout"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 418
    .local v14, "timeoutStr":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "spkg "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " # mode "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " # level "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " # timeout "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 419
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v15, v0

    .line 420
    .local v15, "mode":I
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v23, v0

    .line 421
    .local v23, "timeout":I
    move-object/from16 v24, v3

    iget-object v3, v1, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    .line 421
    .end local v3    # "nl":Lorg/w3c/dom/NodeList;
    .local v24, "nl":Lorg/w3c/dom/NodeList;
    monitor-enter v3
    :try_end_1db
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_1db} :catch_209

    .line 422
    :try_start_1db
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;
    :try_end_1dd
    .catchall {:try_start_1db .. :try_end_1dd} :catchall_1fe

    move-object/from16 v25, v5

    :try_start_1df
    new-instance v5, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    :try_end_1e1
    .catchall {:try_start_1df .. :try_end_1e1} :catchall_1f8

    .line 422
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    move-object/from16 v26, v8

    move/from16 v8, v23

    :try_start_1e5
    invoke-direct {v5, v7, v15, v13, v8}, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 422
    .end local v23    # "timeout":I
    .local v8, "timeout":I
    .local v26, "nnm":Lorg/w3c/dom/NamedNodeMap;
    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    monitor-exit v3

    .line 424
    add-int/lit8 v2, v2, 0x1

    .line 412
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "timeout":I
    .end local v12    # "modeStr":Ljava/lang/String;
    .end local v13    # "level":Ljava/lang/String;
    .end local v14    # "timeoutStr":Ljava/lang/String;
    .end local v15    # "mode":I
    add-int/lit8 v0, v4, 0x1

    .line 412
    .end local v4    # "i":I
    .restart local v0    # "i":I
    move-object/from16 v3, v24

    move-object/from16 v5, v25

    move-object/from16 v8, v26

    goto/16 :goto_15e

    .line 423
    .end local v0    # "i":I
    .end local v26    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v4    # "i":I
    .restart local v7    # "pkgName":Ljava/lang/String;
    .local v8, "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v12    # "modeStr":Ljava/lang/String;
    .restart local v13    # "level":Ljava/lang/String;
    .restart local v14    # "timeoutStr":Ljava/lang/String;
    .restart local v15    # "mode":I
    .restart local v23    # "timeout":I
    :catchall_1f8
    move-exception v0

    move-object/from16 v26, v8

    move/from16 v8, v23

    .line 423
    .end local v23    # "timeout":I
    .local v8, "timeout":I
    .restart local v26    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    goto :goto_205

    .line 423
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v26    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v8, "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v23    # "timeout":I
    :catchall_1fe
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v26, v8

    move/from16 v8, v23

    .line 423
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v23    # "timeout":I
    .local v8, "timeout":I
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v26    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    :goto_205
    monitor-exit v3
    :try_end_206
    .catchall {:try_start_1e5 .. :try_end_206} :catchall_207

    :try_start_206
    throw v0
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_206 .. :try_end_207} :catch_225

    :catchall_207
    move-exception v0

    goto :goto_205

    .line 465
    .end local v4    # "i":I
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "timeout":I
    .end local v9    # "versionStr":Ljava/lang/String;
    .end local v10    # "switchStr":Ljava/lang/String;
    .end local v11    # "timeoutNode":Lorg/w3c/dom/Node;
    .end local v12    # "modeStr":Ljava/lang/String;
    .end local v13    # "level":Ljava/lang/String;
    .end local v14    # "timeoutStr":Ljava/lang/String;
    .end local v15    # "mode":I
    .end local v24    # "nl":Lorg/w3c/dom/NodeList;
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v26    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_209
    move-exception v0

    move-object/from16 v25, v5

    .line 465
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    goto/16 :goto_36b

    .line 427
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v8, "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v9    # "versionStr":Ljava/lang/String;
    .restart local v10    # "switchStr":Ljava/lang/String;
    .restart local v11    # "timeoutNode":Lorg/w3c/dom/Node;
    :cond_20e
    move-object/from16 v24, v3

    move-object/from16 v25, v5

    .line 427
    .end local v3    # "nl":Lorg/w3c/dom/NodeList;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v24    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :goto_212
    :try_start_212
    const-string/jumbo v0, "perflock"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0
    :try_end_219
    .catch Ljava/lang/Exception; {:try_start_212 .. :try_end_219} :catch_348

    move-object v3, v0

    .line 428
    .end local v24    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v3    # "nl":Lorg/w3c/dom/NodeList;
    if-nez v3, :cond_228

    .line 429
    :try_start_21c
    const-string v0, "OPPerf"

    const-string/jumbo v4, "mode perflock is null!"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_224
    .catch Ljava/lang/Exception; {:try_start_21c .. :try_end_224} :catch_225

    goto :goto_282

    .line 465
    .end local v3    # "nl":Lorg/w3c/dom/NodeList;
    .end local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v9    # "versionStr":Ljava/lang/String;
    .end local v10    # "switchStr":Ljava/lang/String;
    .end local v11    # "timeoutNode":Lorg/w3c/dom/Node;
    :catch_225
    move-exception v0

    goto/16 :goto_36b

    .line 431
    .restart local v3    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v9    # "versionStr":Ljava/lang/String;
    .restart local v10    # "switchStr":Ljava/lang/String;
    .restart local v11    # "timeoutNode":Lorg/w3c/dom/Node;
    :cond_228
    const/4 v0, 0x0

    .line 431
    .restart local v0    # "i":I
    :goto_229
    move v4, v0

    .line 431
    .end local v0    # "i":I
    .restart local v4    # "i":I
    :try_start_22a
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0
    :try_end_22e
    .catch Ljava/lang/Exception; {:try_start_22a .. :try_end_22e} :catch_348

    if-ge v4, v0, :cond_282

    .line 432
    :try_start_230
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    move-object v8, v0

    .line 433
    const-string/jumbo v0, "level"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 434
    .local v5, "level":Ljava/lang/String;
    const-string/jumbo v0, "param"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 435
    .local v7, "param":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "perflockMap add : ["

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "], "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 436
    iget-object v12, v1, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    monitor-enter v12
    :try_end_271
    .catch Ljava/lang/Exception; {:try_start_230 .. :try_end_271} :catch_225

    .line 437
    :try_start_271
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    new-instance v13, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;

    invoke-direct {v13, v7}, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    monitor-exit v12

    .line 431
    .end local v5    # "level":Ljava/lang/String;
    .end local v7    # "param":Ljava/lang/String;
    add-int/lit8 v0, v4, 0x1

    .line 431
    .end local v4    # "i":I
    .restart local v0    # "i":I
    goto :goto_229

    .line 438
    .end local v0    # "i":I
    .restart local v4    # "i":I
    .restart local v5    # "level":Ljava/lang/String;
    .restart local v7    # "param":Ljava/lang/String;
    :catchall_27f
    move-exception v0

    monitor-exit v12
    :try_end_281
    .catchall {:try_start_271 .. :try_end_281} :catchall_27f

    :try_start_281
    throw v0
    :try_end_282
    .catch Ljava/lang/Exception; {:try_start_281 .. :try_end_282} :catch_225

    .line 442
    .end local v4    # "i":I
    .end local v5    # "level":Ljava/lang/String;
    .end local v7    # "param":Ljava/lang/String;
    :cond_282
    :goto_282
    :try_start_282
    const-string/jumbo v0, "schedtune"

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0
    :try_end_289
    .catch Ljava/lang/Exception; {:try_start_282 .. :try_end_289} :catch_348

    move-object v3, v0

    .line 443
    if-nez v3, :cond_298

    .line 444
    :try_start_28c
    const-string v0, "OPPerf"

    const-string/jumbo v4, "mode schedtune is null!"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_294
    .catch Ljava/lang/Exception; {:try_start_28c .. :try_end_294} :catch_225

    .line 469
    move-object/from16 v28, v6

    goto/16 :goto_347

    .line 446
    :cond_298
    const/4 v0, 0x0

    .line 446
    .restart local v0    # "i":I
    :goto_299
    move v4, v0

    .line 446
    .end local v0    # "i":I
    .restart local v4    # "i":I
    :try_start_29a
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v4, v0, :cond_345

    .line 447
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    move-object v8, v0

    .line 448
    const-string/jumbo v0, "level"

    invoke-interface {v8, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 449
    .restart local v5    # "level":Ljava/lang/String;
    new-instance v0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;-><init>()V

    move-object v7, v0

    .line 450
    .local v7, "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v12, v0

    .line 451
    .local v12, "e":Lorg/w3c/dom/Element;
    const-string/jumbo v0, "item"

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    move-object v13, v0

    .line 452
    .local v13, "nlitem":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .line 452
    .local v0, "j":I
    :goto_2cb
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-ge v0, v14, :cond_310

    .line 453
    invoke-interface {v13, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    .line 454
    .local v14, "nnmitem":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v15, "path"

    invoke-interface {v14, v15}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    .line 455
    .local v15, "path":Ljava/lang/String;
    move-object/from16 v27, v3

    const-string/jumbo v3, "param"

    .line 455
    .end local v3    # "nl":Lorg/w3c/dom/NodeList;
    .local v27, "nl":Lorg/w3c/dom/NodeList;
    invoke-interface {v14, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3
    :try_end_2f1
    .catch Ljava/lang/Exception; {:try_start_29a .. :try_end_2f1} :catch_348

    .line 456
    .local v3, "param":Ljava/lang/String;
    move-object/from16 v28, v6

    :try_start_2f3
    const-string v6, "default"

    .line 456
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .local v28, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v14, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 457
    .local v6, "defaultParam":Ljava/lang/String;
    move-object/from16 v29, v8

    new-instance v8, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;

    .line 457
    .end local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .local v29, "nnm":Lorg/w3c/dom/NamedNodeMap;
    invoke-direct {v8, v1, v15, v3, v6}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;-><init>(Lcom/android/server/am/OnePlusPerfManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->addSchedtuneParamItem(Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;)V

    .line 452
    .end local v3    # "param":Ljava/lang/String;
    .end local v6    # "defaultParam":Ljava/lang/String;
    .end local v14    # "nnmitem":Lorg/w3c/dom/NamedNodeMap;
    .end local v15    # "path":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v27

    move-object/from16 v6, v28

    move-object/from16 v8, v29

    goto :goto_2cb

    .line 459
    .end local v0    # "j":I
    .end local v27    # "nl":Lorg/w3c/dom/NodeList;
    .end local v28    # "doc":Lorg/w3c/dom/Document;
    .end local v29    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .local v3, "nl":Lorg/w3c/dom/NodeList;
    .local v6, "doc":Lorg/w3c/dom/Document;
    .restart local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    :cond_310
    move-object/from16 v27, v3

    move-object/from16 v28, v6

    move-object/from16 v29, v8

    .line 459
    .end local v3    # "nl":Lorg/w3c/dom/NodeList;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v27    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v28    # "doc":Lorg/w3c/dom/Document;
    .restart local v29    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "schedtuneMap add : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 460
    iget-object v3, v1, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_32e
    .catch Ljava/lang/Exception; {:try_start_2f3 .. :try_end_32e} :catch_341

    .line 461
    :try_start_32e
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    monitor-exit v3

    .line 446
    .end local v5    # "level":Ljava/lang/String;
    .end local v7    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    .end local v12    # "e":Lorg/w3c/dom/Element;
    .end local v13    # "nlitem":Lorg/w3c/dom/NodeList;
    add-int/lit8 v0, v4, 0x1

    .line 446
    .end local v4    # "i":I
    .local v0, "i":I
    move-object/from16 v3, v27

    move-object/from16 v6, v28

    move-object/from16 v8, v29

    goto/16 :goto_299

    .line 462
    .end local v0    # "i":I
    .restart local v4    # "i":I
    .restart local v5    # "level":Ljava/lang/String;
    .restart local v7    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    .restart local v12    # "e":Lorg/w3c/dom/Element;
    .restart local v13    # "nlitem":Lorg/w3c/dom/NodeList;
    :catchall_33e
    move-exception v0

    monitor-exit v3
    :try_end_340
    .catchall {:try_start_32e .. :try_end_340} :catchall_33e

    :try_start_340
    throw v0
    :try_end_341
    .catch Ljava/lang/Exception; {:try_start_340 .. :try_end_341} :catch_341

    .line 465
    .end local v4    # "i":I
    .end local v5    # "level":Ljava/lang/String;
    .end local v7    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    .end local v9    # "versionStr":Ljava/lang/String;
    .end local v10    # "switchStr":Ljava/lang/String;
    .end local v11    # "timeoutNode":Lorg/w3c/dom/Node;
    .end local v12    # "e":Lorg/w3c/dom/Element;
    .end local v13    # "nlitem":Lorg/w3c/dom/NodeList;
    .end local v27    # "nl":Lorg/w3c/dom/NodeList;
    .end local v29    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    :catch_341
    move-exception v0

    move-object/from16 v6, v28

    goto :goto_36b

    .line 469
    .end local v28    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    :cond_345
    move-object/from16 v28, v6

    .line 471
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v28    # "doc":Lorg/w3c/dom/Document;
    :goto_347
    return v2

    .line 465
    .end local v28    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    :catch_348
    move-exception v0

    move-object/from16 v28, v6

    .line 465
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v28    # "doc":Lorg/w3c/dom/Document;
    goto :goto_36b

    .line 465
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v28    # "doc":Lorg/w3c/dom/Document;
    .local v5, "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    :catch_34c
    move-exception v0

    move-object/from16 v25, v5

    move-object/from16 v28, v6

    .line 465
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v28    # "doc":Lorg/w3c/dom/Document;
    goto :goto_36b

    .line 465
    .end local v17    # "f":Ljava/io/File;
    .end local v19    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v28    # "doc":Lorg/w3c/dom/Document;
    .local v3, "f":Ljava/io/File;
    .local v4, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    :catch_352
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v25, v5

    move-object/from16 v28, v6

    .line 465
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v17    # "f":Ljava/io/File;
    .restart local v19    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v28    # "doc":Lorg/w3c/dom/Document;
    goto :goto_36b

    .line 465
    .end local v17    # "f":Ljava/io/File;
    .end local v19    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v28    # "doc":Lorg/w3c/dom/Document;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    :catch_35c
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v25, v5

    .line 465
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v17    # "f":Ljava/io/File;
    .restart local v19    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    goto :goto_36b

    .line 465
    .end local v17    # "f":Ljava/io/File;
    .end local v19    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_364
    move-exception v0

    move-object/from16 v17, v3

    move-object/from16 v19, v4

    move-object/from16 v25, v5

    .line 466
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "f":Ljava/io/File;
    .restart local v19    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v25    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :goto_36b
    const-string v3, "OPPerf"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# readXml # parse error ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 468
    const/4 v3, -0x3

    return v3
.end method

.method private resolvePerfConfigFromJSON(Lorg/json/JSONArray;)V
    .registers 19
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    move-object/from16 v1, p0

    .line 836
    move-object/from16 v2, p1

    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resolvePerfConfigFromJSON "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 837
    :cond_1d
    if-nez v2, :cond_20

    .line 838
    return-void

    .line 841
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusPerfManager;->mayPerfRelease()Z

    .line 842
    const-string v0, "-1"

    iget-object v3, v1, Lcom/android/server/am/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 843
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/am/OnePlusPerfManager;->finishSpeedSchedtune(Ljava/lang/String;)V

    .line 846
    :cond_32
    const/4 v3, 0x0

    .line 846
    .local v3, "index":I
    :goto_33
    :try_start_33
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3de

    .line 847
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 848
    .local v4, "json":Lorg/json/JSONObject;
    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "PkgMap"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d6

    .line 849
    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 850
    .local v5, "pkgInfoJsonArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 850
    .local v6, "i":I
    :goto_54
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_d4

    .line 851
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 852
    .local v7, "pkgInfoJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v8, "name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 853
    .local v8, "pkgName":Ljava/lang/String;
    const-string/jumbo v9, "perflock"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 854
    .local v9, "perflockStr":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 855
    .local v10, "perflock":I
    const-string/jumbo v11, "level"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 856
    .local v11, "level":Ljava/lang/String;
    if-eqz v11, :cond_7d

    const-string v12, ""

    if-ne v11, v12, :cond_80

    .line 857
    :cond_7d
    const-string v12, "0"

    move-object v11, v12

    .line 859
    :cond_80
    iget-object v12, v1, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    monitor-enter v12
    :try_end_83
    .catch Lorg/json/JSONException; {:try_start_33 .. :try_end_83} :catch_402
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_83} :catch_3e6

    .line 860
    if-eqz v8, :cond_af

    .line 861
    :try_start_85
    iget-object v13, v1, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;

    .line 862
    .local v13, "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    if-eqz v13, :cond_a2

    .line 863
    const-string v14, "-1"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9d

    .line 864
    iget-object v14, v1, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_af

    .line 866
    :cond_9d
    iput v10, v13, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPerfLock:I

    .line 867
    iput-object v11, v13, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mLevel:Ljava/lang/String;

    goto :goto_af

    .line 870
    :cond_a2
    iget-object v14, v1, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    new-instance v15, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;

    invoke-direct {v15, v8, v10, v11}, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v14, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    .end local v13    # "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    goto :goto_af

    .line 874
    :catchall_ad
    move-exception v0

    goto :goto_d2

    .line 873
    :cond_af
    :goto_af
    sget-boolean v13, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v13, :cond_ce

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "resolvePerfConfigFromJSON # "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v14, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 874
    :cond_ce
    monitor-exit v12

    .line 850
    .end local v7    # "pkgInfoJsonObject":Lorg/json/JSONObject;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "perflockStr":Ljava/lang/String;
    .end local v10    # "perflock":I
    .end local v11    # "level":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_54

    .line 874
    .restart local v7    # "pkgInfoJsonObject":Lorg/json/JSONObject;
    .restart local v8    # "pkgName":Ljava/lang/String;
    .restart local v9    # "perflockStr":Ljava/lang/String;
    .restart local v10    # "perflock":I
    .restart local v11    # "level":Ljava/lang/String;
    :goto_d2
    monitor-exit v12
    :try_end_d3
    .catchall {:try_start_85 .. :try_end_d3} :catchall_ad

    :try_start_d3
    throw v0

    .line 876
    .end local v5    # "pkgInfoJsonArray":Lorg/json/JSONArray;
    .end local v6    # "i":I
    .end local v7    # "pkgInfoJsonObject":Lorg/json/JSONObject;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "perflockStr":Ljava/lang/String;
    .end local v10    # "perflock":I
    .end local v11    # "level":Ljava/lang/String;
    :cond_d4
    goto/16 :goto_3d8

    :cond_d6
    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "switch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10b

    .line 877
    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 878
    .local v5, "switchStr":Ljava/lang/String;
    invoke-direct {v1, v5}, Lcom/android/server/am/OnePlusPerfManager;->deciedEnableModes(Ljava/lang/String;)V

    .line 879
    sget-boolean v6, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v6, :cond_109

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resolvePerfConfigFromJSON # switch = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 880
    .end local v5    # "switchStr":Ljava/lang/String;
    :cond_109
    goto/16 :goto_3d8

    :cond_10b
    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "gamingcore"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_143

    .line 881
    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 882
    .local v5, "gaming":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-direct {v1, v6}, Lcom/android/server/am/OnePlusPerfManager;->deciedGamingCoreEnable(Z)V

    .line 884
    sget-boolean v6, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v6, :cond_141

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resolvePerfConfigFromJSON # GamingCore = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 885
    .end local v5    # "gaming":Ljava/lang/String;
    :cond_141
    goto/16 :goto_3d8

    :cond_143
    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "timeout"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17b

    .line 886
    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 887
    .local v5, "timeoutStr":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I

    .line 888
    sget-boolean v6, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v6, :cond_179

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resolvePerfConfigFromJSON # timeout = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 889
    .end local v5    # "timeoutStr":Ljava/lang/String;
    :cond_179
    goto/16 :goto_3d8

    :cond_17b
    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "spkg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21c

    .line 890
    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 891
    .local v5, "spkgInfoJsonArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 891
    .restart local v6    # "i":I
    :goto_193
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_21a

    .line 892
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 893
    .local v7, "spkgInfoJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v8, "name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 894
    .restart local v8    # "pkgName":Ljava/lang/String;
    const-string/jumbo v9, "mode"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 895
    .local v9, "modeStr":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 896
    .local v10, "mode":I
    const-string/jumbo v11, "level"

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 897
    .restart local v11    # "level":Ljava/lang/String;
    const-string/jumbo v12, "timeout"

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 898
    .local v12, "timeoutStr":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 899
    .local v13, "timeout":I
    iget-object v14, v1, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    monitor-enter v14
    :try_end_1c4
    .catch Lorg/json/JSONException; {:try_start_d3 .. :try_end_1c4} :catch_402
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_1c4} :catch_3e6

    .line 900
    if-eqz v8, :cond_1f2

    .line 901
    :try_start_1c6
    iget-object v15, v1, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    .line 902
    .local v15, "spi":Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    if-eqz v15, :cond_1e5

    .line 903
    const-string v0, "-1"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1de

    .line 904
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f2

    .line 906
    :cond_1de
    iput v10, v15, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    .line 907
    iput-object v11, v15, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    .line 908
    iput v13, v15, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mTimeout:I

    goto :goto_1f2

    .line 911
    :cond_1e5
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    new-instance v2, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-direct {v2, v8, v10, v11, v13}, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-virtual {v0, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    .end local v15    # "spi":Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    goto :goto_1f2

    .line 915
    :catchall_1f0
    move-exception v0

    goto :goto_218

    .line 914
    :cond_1f2
    :goto_1f2
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_211

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resolvePerfConfigFromJSON # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 915
    :cond_211
    monitor-exit v14

    .line 891
    .end local v7    # "spkgInfoJsonObject":Lorg/json/JSONObject;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "modeStr":Ljava/lang/String;
    .end local v10    # "mode":I
    .end local v11    # "level":Ljava/lang/String;
    .end local v12    # "timeoutStr":Ljava/lang/String;
    .end local v13    # "timeout":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p1

    goto/16 :goto_193

    .line 915
    .restart local v7    # "spkgInfoJsonObject":Lorg/json/JSONObject;
    .restart local v8    # "pkgName":Ljava/lang/String;
    .restart local v9    # "modeStr":Ljava/lang/String;
    .restart local v10    # "mode":I
    .restart local v11    # "level":Ljava/lang/String;
    .restart local v12    # "timeoutStr":Ljava/lang/String;
    .restart local v13    # "timeout":I
    :goto_218
    monitor-exit v14
    :try_end_219
    .catchall {:try_start_1c6 .. :try_end_219} :catchall_1f0

    :try_start_219
    throw v0

    .line 917
    .end local v5    # "spkgInfoJsonArray":Lorg/json/JSONArray;
    .end local v6    # "i":I
    .end local v7    # "spkgInfoJsonObject":Lorg/json/JSONObject;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "modeStr":Ljava/lang/String;
    .end local v10    # "mode":I
    .end local v11    # "level":Ljava/lang/String;
    .end local v12    # "timeoutStr":Ljava/lang/String;
    .end local v13    # "timeout":I
    :cond_21a
    goto/16 :goto_3d8

    :cond_21c
    const-string/jumbo v0, "name"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "perflock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_287

    .line 918
    const-string/jumbo v0, "value"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v2, v0

    .line 919
    .local v2, "perflockJsonArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .line 919
    .local v0, "i":I
    :goto_235
    move v5, v0

    .line 919
    .end local v0    # "i":I
    .local v5, "i":I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_285

    .line 920
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    move-object v6, v0

    .line 921
    .local v6, "perflockJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v0, "level"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 922
    .local v7, "level":Ljava/lang/String;
    const-string/jumbo v0, "param"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 923
    .local v8, "param":Ljava/lang/String;
    new-instance v0, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;

    invoke-direct {v0, v8}, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;-><init>(Ljava/lang/String;)V

    move-object v9, v0

    .line 924
    .local v9, "pll":Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
    iget-object v10, v1, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    monitor-enter v10
    :try_end_25a
    .catch Lorg/json/JSONException; {:try_start_219 .. :try_end_25a} :catch_402
    .catch Ljava/lang/Exception; {:try_start_219 .. :try_end_25a} :catch_3e6

    .line 925
    :try_start_25a
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    invoke-virtual {v0, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_27e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "resolvePerfConfigFromJSON #  "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    invoke-virtual {v11, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 927
    :cond_27e
    monitor-exit v10

    .line 919
    .end local v6    # "perflockJsonObject":Lorg/json/JSONObject;
    .end local v7    # "level":Ljava/lang/String;
    .end local v8    # "param":Ljava/lang/String;
    .end local v9    # "pll":Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
    add-int/lit8 v0, v5, 0x1

    .line 919
    .end local v5    # "i":I
    .restart local v0    # "i":I
    goto :goto_235

    .line 927
    .end local v0    # "i":I
    .restart local v5    # "i":I
    .restart local v6    # "perflockJsonObject":Lorg/json/JSONObject;
    .restart local v7    # "level":Ljava/lang/String;
    .restart local v8    # "param":Ljava/lang/String;
    .restart local v9    # "pll":Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
    :catchall_282
    move-exception v0

    monitor-exit v10
    :try_end_284
    .catchall {:try_start_25a .. :try_end_284} :catchall_282

    :try_start_284
    throw v0

    .line 929
    .end local v2    # "perflockJsonArray":Lorg/json/JSONArray;
    .end local v5    # "i":I
    .end local v6    # "perflockJsonObject":Lorg/json/JSONObject;
    .end local v7    # "level":Ljava/lang/String;
    .end local v8    # "param":Ljava/lang/String;
    .end local v9    # "pll":Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
    :cond_285
    goto/16 :goto_3d8

    :cond_287
    const-string/jumbo v0, "name"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "schedtune"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_343

    .line 930
    const-string/jumbo v0, "value"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v2, v0

    .line 931
    .local v2, "schedtuneJsonArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .line 931
    .restart local v0    # "i":I
    :goto_2a0
    move v5, v0

    .line 931
    .end local v0    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_341

    .line 932
    new-instance v0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;-><init>()V

    move-object v6, v0

    .line 934
    .local v6, "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    move-object v7, v0

    .line 935
    .local v7, "schedtuneJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v0, "level"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 936
    .local v8, "level":Ljava/lang/String;
    const-string/jumbo v0, "item"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v9, v0

    .line 938
    .local v9, "schedtuneJsonArrayForItem":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .line 938
    .local v0, "j":I
    :goto_2c3
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v0, v10, :cond_314

    .line 939
    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 940
    .local v10, "jsitem":Lorg/json/JSONObject;
    const-string/jumbo v11, "path"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 941
    .local v11, "path":Ljava/lang/String;
    const-string/jumbo v12, "param"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 942
    .local v12, "param":Ljava/lang/String;
    const-string v13, "default"

    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 943
    .local v13, "defaultParam":Ljava/lang/String;
    new-instance v14, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;

    invoke-direct {v14, v1, v11, v12, v13}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;-><init>(Lcom/android/server/am/OnePlusPerfManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    .local v14, "item":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;
    invoke-virtual {v6, v14}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->addSchedtuneParamItem(Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;)V

    .line 945
    sget-boolean v15, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v15, :cond_30d

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    const-string/jumbo v2, "resolvePerfConfigFromJSON # schedtune, level = "

    .line 945
    .end local v2    # "schedtuneJsonArray":Lorg/json/JSONArray;
    .local v16, "schedtuneJsonArray":Lorg/json/JSONArray;
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "# "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .end local v10    # "jsitem":Lorg/json/JSONObject;
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "param":Ljava/lang/String;
    .end local v13    # "defaultParam":Ljava/lang/String;
    .end local v14    # "item":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;
    goto :goto_30f

    .line 938
    .end local v16    # "schedtuneJsonArray":Lorg/json/JSONArray;
    .restart local v2    # "schedtuneJsonArray":Lorg/json/JSONArray;
    :cond_30d
    move-object/from16 v16, v2

    .line 938
    .end local v2    # "schedtuneJsonArray":Lorg/json/JSONArray;
    .restart local v16    # "schedtuneJsonArray":Lorg/json/JSONArray;
    :goto_30f
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v16

    goto :goto_2c3

    .line 947
    .end local v0    # "j":I
    .end local v16    # "schedtuneJsonArray":Lorg/json/JSONArray;
    .restart local v2    # "schedtuneJsonArray":Lorg/json/JSONArray;
    :cond_314
    move-object/from16 v16, v2

    .line 947
    .end local v2    # "schedtuneJsonArray":Lorg/json/JSONArray;
    .restart local v16    # "schedtuneJsonArray":Lorg/json/JSONArray;
    iget-object v2, v1, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_319
    .catch Lorg/json/JSONException; {:try_start_284 .. :try_end_319} :catch_402
    .catch Ljava/lang/Exception; {:try_start_284 .. :try_end_319} :catch_3e6

    .line 948
    :try_start_319
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_337

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "resolvePerfConfigFromJSON # schedtune, add level "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 950
    :cond_337
    monitor-exit v2

    .line 931
    .end local v6    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    .end local v7    # "schedtuneJsonObject":Lorg/json/JSONObject;
    .end local v8    # "level":Ljava/lang/String;
    .end local v9    # "schedtuneJsonArrayForItem":Lorg/json/JSONArray;
    add-int/lit8 v0, v5, 0x1

    .line 931
    .end local v5    # "i":I
    .local v0, "i":I
    move-object/from16 v2, v16

    goto/16 :goto_2a0

    .line 950
    .end local v0    # "i":I
    .restart local v5    # "i":I
    .restart local v6    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    .restart local v7    # "schedtuneJsonObject":Lorg/json/JSONObject;
    .restart local v8    # "level":Ljava/lang/String;
    .restart local v9    # "schedtuneJsonArrayForItem":Lorg/json/JSONArray;
    :catchall_33e
    move-exception v0

    monitor-exit v2
    :try_end_340
    .catchall {:try_start_319 .. :try_end_340} :catchall_33e

    :try_start_340
    throw v0

    .line 952
    .end local v5    # "i":I
    .end local v6    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    .end local v7    # "schedtuneJsonObject":Lorg/json/JSONObject;
    .end local v8    # "level":Ljava/lang/String;
    .end local v9    # "schedtuneJsonArrayForItem":Lorg/json/JSONArray;
    .end local v16    # "schedtuneJsonArray":Lorg/json/JSONArray;
    :cond_341
    goto/16 :goto_3d8

    :cond_343
    const-string/jumbo v0, "name"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "gamingcorecompanylist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38e

    .line 953
    iget-object v2, v1, Lcom/android/server/am/OnePlusPerfManager;->suffixListCompany:Ljava/util/List;

    monitor-enter v2
    :try_end_355
    .catch Lorg/json/JSONException; {:try_start_340 .. :try_end_355} :catch_402
    .catch Ljava/lang/Exception; {:try_start_340 .. :try_end_355} :catch_3e6

    .line 954
    :try_start_355
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->suffixListCompany:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 955
    monitor-exit v2
    :try_end_35b
    .catchall {:try_start_355 .. :try_end_35b} :catchall_38b

    .line 956
    :try_start_35b
    const-string/jumbo v0, "value"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v2, v0

    .line 957
    .local v2, "iopInfoJsonArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .line 957
    .restart local v0    # "i":I
    :goto_364
    move v5, v0

    .line 957
    .end local v0    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_38a

    .line 958
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    move-object v6, v0

    .line 959
    .local v6, "iopInfoJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v0, "name"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 960
    .local v7, "companyName":Ljava/lang/String;
    if-eqz v7, :cond_387

    .line 961
    iget-object v8, v1, Lcom/android/server/am/OnePlusPerfManager;->suffixListCompany:Ljava/util/List;

    monitor-enter v8
    :try_end_37d
    .catch Lorg/json/JSONException; {:try_start_35b .. :try_end_37d} :catch_402
    .catch Ljava/lang/Exception; {:try_start_35b .. :try_end_37d} :catch_3e6

    .line 962
    :try_start_37d
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->suffixListCompany:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 963
    monitor-exit v8

    goto :goto_387

    :catchall_384
    move-exception v0

    monitor-exit v8
    :try_end_386
    .catchall {:try_start_37d .. :try_end_386} :catchall_384

    :try_start_386
    throw v0
    :try_end_387
    .catch Lorg/json/JSONException; {:try_start_386 .. :try_end_387} :catch_402
    .catch Ljava/lang/Exception; {:try_start_386 .. :try_end_387} :catch_3e6

    .line 957
    .end local v6    # "iopInfoJsonObject":Lorg/json/JSONObject;
    .end local v7    # "companyName":Ljava/lang/String;
    :cond_387
    :goto_387
    add-int/lit8 v0, v5, 0x1

    .line 957
    .end local v5    # "i":I
    .restart local v0    # "i":I
    goto :goto_364

    .line 966
    .end local v0    # "i":I
    .end local v2    # "iopInfoJsonArray":Lorg/json/JSONArray;
    :cond_38a
    goto :goto_3d8

    .line 955
    :catchall_38b
    move-exception v0

    :try_start_38c
    monitor-exit v2
    :try_end_38d
    .catchall {:try_start_38c .. :try_end_38d} :catchall_38b

    :try_start_38d
    throw v0

    .line 966
    :cond_38e
    const-string/jumbo v0, "name"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "gamingcoregamelist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d8

    .line 967
    iget-object v2, v1, Lcom/android/server/am/OnePlusPerfManager;->suffixListGame:Ljava/util/List;

    monitor-enter v2
    :try_end_3a0
    .catch Lorg/json/JSONException; {:try_start_38d .. :try_end_3a0} :catch_402
    .catch Ljava/lang/Exception; {:try_start_38d .. :try_end_3a0} :catch_3e6

    .line 968
    :try_start_3a0
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->suffixListGame:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 969
    monitor-exit v2
    :try_end_3a6
    .catchall {:try_start_3a0 .. :try_end_3a6} :catchall_3d5

    .line 970
    :try_start_3a6
    const-string/jumbo v0, "value"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object v2, v0

    .line 971
    .restart local v2    # "iopInfoJsonArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .line 971
    .restart local v0    # "i":I
    :goto_3af
    move v5, v0

    .line 971
    .end local v0    # "i":I
    .restart local v5    # "i":I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_3d8

    .line 972
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    move-object v6, v0

    .line 973
    .restart local v6    # "iopInfoJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v0, "name"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 974
    .local v7, "gameName":Ljava/lang/String;
    if-eqz v7, :cond_3d2

    .line 975
    iget-object v8, v1, Lcom/android/server/am/OnePlusPerfManager;->suffixListGame:Ljava/util/List;

    monitor-enter v8
    :try_end_3c8
    .catch Lorg/json/JSONException; {:try_start_3a6 .. :try_end_3c8} :catch_402
    .catch Ljava/lang/Exception; {:try_start_3a6 .. :try_end_3c8} :catch_3e6

    .line 976
    :try_start_3c8
    iget-object v0, v1, Lcom/android/server/am/OnePlusPerfManager;->suffixListGame:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 977
    monitor-exit v8

    goto :goto_3d2

    :catchall_3cf
    move-exception v0

    monitor-exit v8
    :try_end_3d1
    .catchall {:try_start_3c8 .. :try_end_3d1} :catchall_3cf

    :try_start_3d1
    throw v0
    :try_end_3d2
    .catch Lorg/json/JSONException; {:try_start_3d1 .. :try_end_3d2} :catch_402
    .catch Ljava/lang/Exception; {:try_start_3d1 .. :try_end_3d2} :catch_3e6

    .line 971
    .end local v6    # "iopInfoJsonObject":Lorg/json/JSONObject;
    .end local v7    # "gameName":Ljava/lang/String;
    :cond_3d2
    :goto_3d2
    add-int/lit8 v0, v5, 0x1

    .line 971
    .end local v5    # "i":I
    .restart local v0    # "i":I
    goto :goto_3af

    .line 969
    .end local v0    # "i":I
    .end local v2    # "iopInfoJsonArray":Lorg/json/JSONArray;
    :catchall_3d5
    move-exception v0

    :try_start_3d6
    monitor-exit v2
    :try_end_3d7
    .catchall {:try_start_3d6 .. :try_end_3d7} :catchall_3d5

    :try_start_3d7
    throw v0

    .line 846
    .end local v4    # "json":Lorg/json/JSONObject;
    :cond_3d8
    :goto_3d8
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p1

    goto/16 :goto_33

    .line 982
    .end local v3    # "index":I
    :cond_3de
    const-string v0, "OPPerf"

    const-string v2, "[OnlineConfig] OPPerf updated complete"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e5
    .catch Lorg/json/JSONException; {:try_start_3d7 .. :try_end_3e5} :catch_402
    .catch Ljava/lang/Exception; {:try_start_3d7 .. :try_end_3e5} :catch_3e6

    goto :goto_41d

    .line 985
    :catch_3e6
    move-exception v0

    .line 986
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OPPerf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] OPPerf Exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_41e

    .line 983
    :catch_402
    move-exception v0

    .line 984
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "OPPerf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] OPPerf JSONException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_41d
    nop

    .line 988
    :goto_41e
    return-void
.end method

.method private runAppMayWithPerf(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .line 232
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 233
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPerfManager;->screenOn:Z

    if-nez v0, :cond_14

    .line 236
    if-eqz p1, :cond_f

    .line 237
    iput-object p1, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    goto :goto_13

    .line 239
    :cond_f
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    .line 240
    :goto_13
    return v1

    .line 242
    :cond_14
    const/4 v0, 0x0

    .line 243
    .local v0, "spi":Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 244
    :try_start_18
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    move-object v0, v2

    .line 245
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_18 .. :try_end_22} :catchall_53

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "spi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " # packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 247
    if-nez v0, :cond_4e

    .line 249
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->mayPerfRelease()Z

    move-result v1

    return v1

    .line 251
    :cond_4e
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/OnePlusPerfManager;->perfAcquire(Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;I)Z

    move-result v1

    return v1

    .line 245
    :catchall_53
    move-exception v2

    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v2
.end method

.method private startSpeedSchedtune(Ljava/lang/String;)V
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 713
    const/4 v0, 0x0

    .line 714
    .local v0, "spi":Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    const-string v1, "0"

    .line 715
    .local v1, "level":Ljava/lang/String;
    sget v2, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I

    .line 716
    .local v2, "timeout":I
    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 717
    :try_start_8
    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    move-object v0, v4

    .line 718
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_d1

    .line 719
    if-eqz v0, :cond_1d

    iget v3, v0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1d

    .line 720
    iget-object v1, v0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    .line 721
    iget v2, v0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mTimeout:I

    .line 723
    .end local v1    # "level":Ljava/lang/String;
    .end local v2    # "timeout":I
    .local v4, "level":Ljava/lang/String;
    .local v5, "timeout":I
    :cond_1d
    move-object v4, v1

    move v5, v2

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_5b

    .line 724
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->removeMessages(I)V

    .line 725
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 726
    .local v1, "msg":Landroid/os/Message;
    iput-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 727
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    int-to-long v6, v5

    invoke-virtual {v2, v1, v6, v7}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 728
    const-string v2, "OPPerf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startSpeedSchedtune # level:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " # change TIMEOUT:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return-void

    .line 731
    .end local v1    # "msg":Landroid/os/Message;
    :cond_5b
    const/4 v1, 0x0

    .line 732
    .local v1, "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    iget-object v6, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 733
    :try_start_5f
    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;

    move-object v1, v3

    .line 734
    monitor-exit v6
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_ce

    .line 735
    if-eqz v1, :cond_b6

    .line 736
    invoke-virtual {v1, v4}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->writePerfFiles(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 737
    iput-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    .line 738
    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    invoke-static {v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 739
    .local v2, "msg":Landroid/os/Message;
    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 740
    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    int-to-long v6, v5

    invoke-virtual {v3, v2, v6, v7}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 741
    const-string v3, "OPPerf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startSpeedSchedtune # level = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    .end local v2    # "msg":Landroid/os/Message;
    goto :goto_cd

    .line 743
    :cond_99
    const-string v2, "OPPerf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startSpeedSchedtune # level:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " write failed!!!"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd

    .line 746
    :cond_b6
    const-string v2, "OPPerf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startSpeedSchedtune # stp = null : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :goto_cd
    return-void

    .line 734
    :catchall_ce
    move-exception v2

    :try_start_cf
    monitor-exit v6
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    throw v2

    .line 718
    .end local v4    # "level":Ljava/lang/String;
    .end local v5    # "timeout":I
    .local v1, "level":Ljava/lang/String;
    .local v2, "timeout":I
    :catchall_d1
    move-exception v4

    :try_start_d2
    monitor-exit v3
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    throw v4
.end method


# virtual methods
.method public acuqirePerfForStartSpeed(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 675
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 676
    :cond_6
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_STARTSPEED:Z

    if-nez v0, :cond_b

    return v1

    .line 677
    :cond_b
    if-nez p1, :cond_e

    return v1

    .line 678
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 679
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 680
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 681
    return v1
.end method

.method public autoAcquireOrRelease(Z)Z
    .registers 5
    .param p1, "done"    # Z

    .line 212
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 213
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoAcquireOrRelease("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 214
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusPerfManager;->screenOn:Z

    .line 215
    if-eqz p1, :cond_4b

    .line 216
    const-string v0, ""

    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 217
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/OnePlusPerfManager;->runAppMayWithPerf(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 218
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    .line 219
    const/4 v0, 0x1

    return v0

    .line 222
    :cond_4a
    return v1

    .line 224
    :cond_4b
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    monitor-enter v0

    .line 225
    :try_start_4e
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget-object v1, v1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mPkgName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    .line 226
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_5a

    .line 227
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->mayPerfRelease()Z

    move-result v0

    return v0

    .line 226
    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method public getPkgPerfLock(Ljava/lang/String;)I
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 163
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 164
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 165
    :try_start_9
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPerfManager;->filterSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;

    .line 166
    .local v2, "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    if-eqz v2, :cond_1b

    .line 169
    iget v1, v2, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPerfLock:I

    monitor-exit v0

    return v1

    .line 171
    :cond_1b
    monitor-exit v0

    return v1

    .line 173
    .end local v2    # "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public initOnlineConfig(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 781
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "initOnlineConfig"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 783
    :cond_a
    iput-object p1, p0, Lcom/android/server/am/OnePlusPerfManager;->mContext:Landroid/content/Context;

    .line 784
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    new-instance v3, Lcom/android/server/am/OnePlusPerfManager$MyConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusPerfManager$MyConfigUpdater;-><init>(Lcom/android/server/am/OnePlusPerfManager;)V

    const-string v4, "OPPerf"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 785
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 786
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->sendMessage(Landroid/os/Message;)Z

    .line 788
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPerfManager;->screenOn:Z

    .line 789
    return-void
.end method

.method public runAppMayWithPerf(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/OnePlusPerfManager;->runAppMayWithPerf(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
