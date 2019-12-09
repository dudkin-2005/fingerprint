.class public Lcom/android/server/am/OnePlusJankManager;
.super Ljava/lang/Object;
.source "OnePlusJankManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusJankManager$MyConfigUpdater;,
        Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;,
        Lcom/android/server/am/OnePlusJankManager$JankRecordItem;,
        Lcom/android/server/am/OnePlusJankManager$JankMDMItem;,
        Lcom/android/server/am/OnePlusJankManager$JankReportItem;
    }
.end annotation


# static fields
.field private static final ACTION_MDM_JANK_DATE:Ljava/lang/String; = "oneplus.intent.action.MDM_JANK_DATE"

.field private static final ACTION_SAVE_JANK_DATE:Ljava/lang/String; = "oneplus.intent.action.SAVE_JANK_DATE"

.field private static CATCH_SYSTRACE_TIME:I = 0x0

.field private static final CONFIG_NAME:Ljava/lang/String; = "OnePlusJankManager"

.field private static INTERVAL_SYSTRACE_TIME:I = 0x0

.field private static JANKMANAGER_DEBUG:Z = false

.field private static JANKMANAGER_DISK:Z = false

.field private static JANKMANAGER_ENABLE:Z = false

.field private static JANKMANAGER_MDM:Z = false

.field private static JANKMANAGER_STATE:Z = false

.field private static JANKMANAGER_SYSTRACE:Z = false

.field private static JANKMANAGER_TEST:Z = false

.field private static JANK_LEVEL_HIGH:I = 0x0

.field private static JANK_LEVEL_LONG:I = 0x0

.field private static JANK_LEVEL_LOW:I = 0x0

.field private static JANK_LEVEL_SYSTRACE:I = 0x0

.field private static final JANK_MDMID:Ljava/lang/String; = "PDJE7FI1KD"

.field private static final JANK_MDM_RECORD_FILE:Ljava/lang/String; = "/data/system/jankmdm.log"

.field private static final JANK_RECORD_FILE:Ljava/lang/String; = "/data/system/jankevent.log"

.field private static final LAST_MDM_TIME:Ljava/lang/String; = "lastMDMTime"

.field private static final MSG_GET_ONLINECONFIG:I = 0x2

.field private static final MSG_GET_SYSTRACE_FOR_JANK:I = 0x4

.field private static final MSG_INIT_ONLINECONFIG:I = 0x1

.field private static final MSG_RESET_SYSTRACE_STATE_FOR_JANK:I = 0x6

.field private static final MSG_STOP_SYSTRACE_FOR_JANK:I = 0x5

.field private static final MSG_UPLOAD_MDM_JANK_UPLOAD:I = 0x3

.field private static final PROP_BOOT_COMPLETED:Ljava/lang/String; = "sys.boot_completed"

.field private static final PROP_JANKMANAGER_DEBUG:Ljava/lang/String; = "persist.sys.jankmanager.debug"

.field private static final PROP_JANKMANAGER_DISK:Ljava/lang/String; = "persist.sys.jankmanager.disk"

.field private static final PROP_JANKMANAGER_ENABLE:Ljava/lang/String; = "persist.sys.jankmanager.enable"

.field private static final PROP_JANKMANAGER_LEVEL_HIGH:Ljava/lang/String; = "persist.sys.jankmanager.levelhigh"

.field private static final PROP_JANKMANAGER_LEVEL_LOW:Ljava/lang/String; = "persist.sys.jankmanager.levellow"

.field private static final PROP_JANKMANAGER_LEVEL_SYSTRACE:Ljava/lang/String; = "persist.sys.jankmanager.levelsystrace"

.field private static final PROP_JANKMANAGER_LONG:Ljava/lang/String; = "persist.sys.jankmanager.long"

.field private static final PROP_JANKMANAGER_MDM:Ljava/lang/String; = "persist.sys.jankmanager.mdm"

.field private static final PROP_JANKMANAGER_OPEN:Ljava/lang/String; = "persist.sys.jankmanager.state"

.field private static final PROP_JANKMANAGER_SYSTRACE:Ljava/lang/String; = "persist.sys.jankmanager.systrace"

.field private static final PROP_JANKMANAGER_SYSTRACE_TIME:Ljava/lang/String; = "persist.sys.jankmanager.tracetime"

.field private static final PROP_JANKMANAGER_TEST:Ljava/lang/String; = "persist.sys.jankmanager.test"

.field private static final TAG:Ljava/lang/String; = "OnePlusJankManager"

.field private static mJankInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

.field private static mJankReportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

.field private static sInstance:Lcom/android/server/am/OnePlusJankManager;


# instance fields
.field private isGetingSystrace:Z

.field private isJankAlarmInited:Z

.field private isLevelSystrace:Z

.field private isMDMAlarmInited:Z

.field private mContext:Landroid/content/Context;

.field private mGeneralReceiver:Landroid/content/BroadcastReceiver;

.field private mJankMonitorHandler:Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

.field private mJankMonitorThread:Landroid/os/HandlerThread;

.field private mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mOemExSvc:Lcom/oem/os/IOemExService;

.field private mWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 101
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_STATE:Z

    .line 102
    sput-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_ENABLE:Z

    .line 103
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    .line 104
    sput-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_MDM:Z

    .line 105
    sput-boolean v1, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DISK:Z

    .line 106
    sput-boolean v1, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_SYSTRACE:Z

    .line 107
    sput-boolean v1, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_TEST:Z

    .line 116
    const/4 v0, 0x6

    sput v0, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_LOW:I

    .line 117
    const/16 v0, 0xf

    sput v0, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_HIGH:I

    .line 118
    const/16 v0, 0x1e

    sput v0, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_LONG:I

    .line 119
    sput v0, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_SYSTRACE:I

    .line 125
    const/4 v1, 0x5

    sput v1, Lcom/android/server/am/OnePlusJankManager;->CATCH_SYSTRACE_TIME:I

    .line 126
    sput v0, Lcom/android/server/am/OnePlusJankManager;->INTERVAL_SYSTRACE_TIME:I

    .line 131
    new-instance v0, Lcom/android/server/am/OnePlusJankManager;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusJankManager;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusJankManager;->sInstance:Lcom/android/server/am/OnePlusJankManager;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    .line 165
    new-instance v0, Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusJankManager$JankReportItem;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusJankManager;->mJankReportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    .line 166
    new-instance v0, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;-><init>(Lcom/android/server/am/OnePlusJankManager$1;)V

    sput-object v0, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorThread:Landroid/os/HandlerThread;

    .line 133
    iput-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorHandler:Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

    .line 134
    iput-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mContext:Landroid/content/Context;

    .line 135
    iput-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusJankManager;->isJankAlarmInited:Z

    .line 140
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusJankManager;->isMDMAlarmInited:Z

    .line 142
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusJankManager;->isLevelSystrace:Z

    .line 143
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusJankManager;->isGetingSystrace:Z

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mWhiteList:Ljava/util/ArrayList;

    .line 274
    new-instance v0, Lcom/android/server/am/OnePlusJankManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusJankManager$1;-><init>(Lcom/android/server/am/OnePlusJankManager;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    .line 169
    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_2e

    .line 170
    const-string v0, "OnePlusJankManager"

    const-string v1, "OnePlusJankManager create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_2e
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "jankmanager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorThread:Landroid/os/HandlerThread;

    .line 172
    iget-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 173
    new-instance v0, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorThread:Landroid/os/HandlerThread;

    .line 174
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;-><init>(Lcom/android/server/am/OnePlusJankManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorHandler:Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

    .line 175
    return-void
.end method

.method private GetlogFile()V
    .registers 1

    .line 955
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusJankManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusJankManager;

    .line 87
    invoke-direct {p0}, Lcom/android/server/am/OnePlusJankManager;->updateOnlineConfig()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusJankManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusJankManager;

    .line 87
    invoke-direct {p0}, Lcom/android/server/am/OnePlusJankManager;->uploadMDM()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/OnePlusJankManager;Lorg/json/JSONArray;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusJankManager;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusJankManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .registers 1

    .line 87
    sget-object v0, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusJankManager;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/am/OnePlusJankManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusJankManager;->reportJankInternal(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusJankManager;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5
    .param p0, "x0"    # Lcom/android/server/am/OnePlusJankManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusJankManager;->getTraceAndDateForJank(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusJankManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusJankManager;

    .line 87
    invoke-direct {p0}, Lcom/android/server/am/OnePlusJankManager;->stopTraceForJank()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/am/OnePlusJankManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusJankManager;
    .param p1, "x1"    # Z

    .line 87
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusJankManager;->isGetingSystrace:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusJankManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusJankManager;

    .line 87
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusJankManager;->isJankAlarmInited:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/am/OnePlusJankManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusJankManager;
    .param p1, "x1"    # Z

    .line 87
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusJankManager;->isJankAlarmInited:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/am/OnePlusJankManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusJankManager;

    .line 87
    invoke-direct {p0}, Lcom/android/server/am/OnePlusJankManager;->saveJankFromHashMapToDisk()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/OnePlusJankManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusJankManager;

    .line 87
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusJankManager;->isMDMAlarmInited:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/am/OnePlusJankManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusJankManager;
    .param p1, "x1"    # Z

    .line 87
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusJankManager;->isMDMAlarmInited:Z

    return p1
.end method

.method private static deleteFile(Ljava/lang/String;)V
    .registers 3
    .param p0, "fileName"    # Ljava/lang/String;

    .line 478
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 479
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    .line 480
    return-void

    .line 482
    :cond_c
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 483
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 486
    :cond_15
    return-void
.end method

.method private static formatHashKey(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "viewName"    # Ljava/lang/String;
    .param p2, "jankType"    # I
    .param p3, "jankLevel"    # I

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-jkType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static formatHashKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "viewName"    # Ljava/lang/String;
    .param p2, "jankType"    # Ljava/lang/String;
    .param p3, "jankLevel"    # Ljava/lang/String;

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-view:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-jkType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getCurrentTimeStringDate()Ljava/lang/String;
    .registers 3

    .line 555
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 556
    .local v0, "currentTime":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 557
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, "dateString":Ljava/lang/String;
    return-object v2
.end method

.method private static getHashKeyFromStr(Ljava/lang/String;)Lcom/android/server/am/OnePlusJankManager$JankMDMItem;
    .registers 9
    .param p0, "str"    # Ljava/lang/String;

    .line 676
    sget-object v0, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    iget-object v0, v0, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    if-nez v0, :cond_c

    .line 677
    sget-object v0, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    sget-object v1, Lcom/android/server/am/OnePlusJankManager;->mJankReportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    iput-object v1, v0, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    .line 679
    :cond_c
    const/4 v0, 0x0

    .line 680
    .local v0, "temp":[Ljava/lang/String;
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 681
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 684
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-eq v2, v3, :cond_20

    .line 685
    return-object v4

    .line 687
    :cond_20
    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "temp":[Ljava/lang/String;
    :goto_23
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v0, v5, :cond_47

    .line 688
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 689
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 690
    .local v5, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_46

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-eq v7, v6, :cond_43

    goto :goto_46

    .line 687
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 691
    :cond_46
    :goto_46
    return-object v4

    .line 695
    .end local v0    # "i":I
    .end local v5    # "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_47
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 696
    .end local v3    # "temp":[Ljava/lang/String;
    .local v0, "temp":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 697
    .local v2, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    iget-object v3, v3, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->packageName:Ljava/lang/String;

    .line 699
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 700
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 701
    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    iget-object v3, v3, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->viewName:Ljava/lang/String;

    .line 703
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 704
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 705
    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    iget-object v3, v3, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->jankType:Ljava/lang/String;

    .line 707
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 708
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 709
    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    iget-object v3, v3, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->jankLevel:Ljava/lang/String;

    .line 711
    const/4 v3, 0x4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 712
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 713
    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->times:Ljava/lang/String;

    .line 715
    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    return-object v3
.end method

.method private static getHashKeyFromStr(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/am/OnePlusJankManager$JankMDMItem;
    .registers 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 719
    sget-object v0, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    iget-object v0, v0, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    if-nez v0, :cond_c

    .line 720
    sget-object v0, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    sget-object v1, Lcom/android/server/am/OnePlusJankManager;->mJankReportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    iput-object v1, v0, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    .line 722
    :cond_c
    const/4 v0, 0x0

    .line 723
    .local v0, "temp":[Ljava/lang/String;
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 724
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 727
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq v2, v3, :cond_20

    .line 728
    return-object v4

    .line 730
    :cond_20
    const/4 v2, 0x0

    move-object v3, v0

    move v0, v2

    .local v0, "i":I
    .local v3, "temp":[Ljava/lang/String;
    :goto_23
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v0, v5, :cond_47

    .line 731
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v7, ":"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 732
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 733
    .local v5, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_46

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-eq v7, v6, :cond_43

    goto :goto_46

    .line 730
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 734
    :cond_46
    :goto_46
    return-object v4

    .line 738
    .end local v0    # "i":I
    .end local v5    # "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_47
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 739
    .end local v3    # "temp":[Ljava/lang/String;
    .local v0, "temp":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 740
    .local v2, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    iget-object v3, v3, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->packageName:Ljava/lang/String;

    .line 742
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 743
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 744
    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    iget-object v3, v3, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->viewName:Ljava/lang/String;

    .line 746
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 747
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 748
    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    iget-object v3, v3, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v3, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->jankType:Ljava/lang/String;

    .line 750
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 751
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 752
    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    iget-object v3, v3, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->jankLevel:Ljava/lang/String;

    .line 754
    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    iput-object p1, v3, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->times:Ljava/lang/String;

    .line 756
    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankMDMItem:Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    return-object v3
.end method

.method public static getInstance()Lcom/android/server/am/OnePlusJankManager;
    .registers 1

    .line 179
    sget-object v0, Lcom/android/server/am/OnePlusJankManager;->sInstance:Lcom/android/server/am/OnePlusJankManager;

    return-object v0
.end method

.method private static getStrFromHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 761
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    const-string v1, "-times:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getTraceAndDateForJank(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "viewName"    # Ljava/lang/String;
    .param p3, "jankType"    # I
    .param p4, "jankLevel"    # I

    .line 375
    invoke-direct {p0}, Lcom/android/server/am/OnePlusJankManager;->isTracesEnabled()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 376
    sget-object v0, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/am/OnePlusJankManager;->formatHashKey(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 378
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 379
    .local v0, "jankInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "/data/system/jankmdm.log"

    invoke-static {v1}, Lcom/android/server/am/OnePlusJankManager;->readJankFromFileToHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 380
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/am/OnePlusJankManager;->formatHashKey(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 382
    invoke-direct {p0}, Lcom/android/server/am/OnePlusJankManager;->startTracing()V

    .line 383
    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorHandler:Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

    iget-object v2, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorHandler:Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

    const/4 v3, 0x5

    .line 384
    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    sget v3, Lcom/android/server/am/OnePlusJankManager;->CATCH_SYSTRACE_TIME:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    .line 383
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 389
    .end local v0    # "jankInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3b
    return-void
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1047
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1049
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/OnePlusJankManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x400000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_12} :catch_1b
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 1054
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1049
    return v2

    .line 1054
    :catchall_16
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1051
    :catch_1b
    move-exception v2

    .line 1052
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, -0x1

    .line 1054
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1052
    return v3
.end method

.method private isBootCompleted()Z
    .registers 3

    .line 397
    const-string/jumbo v0, "sys.boot_completed"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isMDMEnabled()Z
    .registers 2

    .line 393
    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_MDM:Z

    return v0
.end method

.method private isTestMode()Z
    .registers 2

    .line 999
    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_TEST:Z

    return v0
.end method

.method private isTracesEnabled()Z
    .registers 2

    .line 995
    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_SYSTRACE:Z

    return v0
.end method

.method private static persistToDisk(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p0, "record"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;

    .line 575
    const/4 v0, 0x0

    if-eqz p0, :cond_a4

    if-nez p1, :cond_7

    goto/16 :goto_a4

    .line 578
    :cond_7
    move-object v1, p1

    .line 579
    .local v1, "logName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 580
    .local v2, "logFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 581
    .local v3, "dir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 582
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 584
    :cond_1a
    const/4 v4, 0x0

    .line 587
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/32 v7, 0x200000

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    if-gez v5, :cond_2e

    .line 588
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v4, v5

    goto :goto_5d

    .line 590
    :cond_2e
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-static {}, Lcom/android/server/am/OnePlusJankManager;->getCurrentTimeStringDate()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 592
    .local v5, "oldFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_57

    .line 593
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 594
    invoke-virtual {v2, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 596
    :cond_57
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_5c} :catch_9e

    move-object v4, v7

    .line 604
    .end local v5    # "oldFile":Ljava/io/File;
    :goto_5d
    nop

    .line 607
    :try_start_5e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\r\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_76} :catch_83
    .catchall {:try_start_5e .. :try_end_76} :catchall_81

    .line 613
    nop

    .line 615
    :try_start_77
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_7b

    .line 619
    goto :goto_7f

    .line 616
    :catch_7b
    move-exception v0

    .line 618
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 620
    .end local v0    # "e":Ljava/io/IOException;
    :goto_7f
    const/4 v0, 0x0

    .line 623
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v0, "fos":Ljava/io/FileOutputStream;
    return v6

    .line 613
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_81
    move-exception v0

    goto :goto_93

    .line 608
    :catch_83
    move-exception v5

    .line 610
    .local v5, "e":Ljava/io/IOException;
    :try_start_84
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_87
    .catchall {:try_start_84 .. :try_end_87} :catchall_81

    .line 611
    nop

    .line 613
    nop

    .line 615
    :try_start_89
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    .line 619
    goto :goto_91

    .line 616
    :catch_8d
    move-exception v6

    .line 618
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 620
    .end local v6    # "e":Ljava/io/IOException;
    :goto_91
    const/4 v4, 0x0

    .line 611
    return v0

    .line 613
    .end local v5    # "e":Ljava/io/IOException;
    :goto_93
    nop

    .line 615
    :try_start_94
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_98

    .line 619
    goto :goto_9c

    .line 616
    :catch_98
    move-exception v5

    .line 618
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 620
    .end local v5    # "e":Ljava/io/IOException;
    :goto_9c
    const/4 v4, 0x0

    throw v0

    .line 599
    :catch_9e
    move-exception v5

    .line 601
    .local v5, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 602
    const/4 v4, 0x0

    .line 603
    return v0

    .line 576
    .end local v1    # "logName":Ljava/lang/String;
    .end local v2    # "logFile":Ljava/io/File;
    .end local v3    # "dir":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :cond_a4
    :goto_a4
    return v0
.end method

.method private persistToDisk(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "viewName"    # Ljava/lang/String;
    .param p3, "jankType"    # I
    .param p4, "jankLevel"    # I

    .line 563
    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DISK:Z

    if-nez v0, :cond_6

    .line 564
    const/4 v0, 0x0

    return v0

    .line 566
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 567
    .local v0, "nowTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-view:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-jkType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-level:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-static {}, Lcom/android/server/am/OnePlusJankManager;->getCurrentTimeStringDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/data/system/jankevent.log"

    .line 567
    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusJankManager;->persistToDisk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private static readJankFromFileToArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .param p0, "strFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1014
    move-object v0, p0

    .line 1015
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1016
    .local v1, "newList":Ljava/util/ArrayList;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1017
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1018
    const-string v3, "OnePlusJankManager"

    const-string/jumbo v4, "readJankFromFileToHashMap The File doesn\'t not exist."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 1021
    :cond_1a
    :try_start_1a
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1022
    .local v3, "instream":Ljava/io/InputStream;
    nop

    .line 1023
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 1025
    .local v4, "inputreader":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1027
    .local v5, "buffreader":Ljava/io/BufferedReader;
    :goto_2a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .line 1027
    .local v7, "line":Ljava/lang/String;
    if-eqz v6, :cond_35

    .line 1028
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 1030
    :cond_35
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_38} :catch_44
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_38} :catch_39

    .line 1030
    .end local v3    # "instream":Ljava/io/InputStream;
    .end local v4    # "inputreader":Ljava/io/InputStreamReader;
    .end local v5    # "buffreader":Ljava/io/BufferedReader;
    .end local v7    # "line":Ljava/lang/String;
    goto :goto_4c

    .line 1034
    :catch_39
    move-exception v3

    .line 1035
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "OnePlusJankManager"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_4d

    .line 1032
    :catch_44
    move-exception v3

    .line 1033
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v4, "OnePlusJankManager"

    const-string v5, "The File doesn\'t not exist."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_4c
    nop

    .line 1038
    :goto_4d
    return-object v1
.end method

.method private static readJankFromFileToHashMap(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 13
    .param p0, "strFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 628
    move-object v0, p0

    .line 629
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 631
    .local v1, "jankInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 632
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 633
    const-string v3, "OnePlusJankManager"

    const-string/jumbo v4, "readJankFromFileToHashMap The File doesn\'t not exist."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 636
    :cond_1a
    :try_start_1a
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 637
    .local v3, "instream":Ljava/io/InputStream;
    nop

    .line 638
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 640
    .local v4, "inputreader":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 642
    .local v5, "buffreader":Ljava/io/BufferedReader;
    :goto_2a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .line 642
    .local v7, "line":Ljava/lang/String;
    if-eqz v6, :cond_51

    .line 643
    invoke-static {v7}, Lcom/android/server/am/OnePlusJankManager;->getHashKeyFromStr(Ljava/lang/String;)Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    move-result-object v6

    .line 644
    .local v6, "tmp":Lcom/android/server/am/OnePlusJankManager$JankMDMItem;
    if-eqz v6, :cond_50

    .line 645
    iget-object v8, v6, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    iget-object v8, v8, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->packageName:Ljava/lang/String;

    iget-object v9, v6, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    iget-object v9, v9, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->viewName:Ljava/lang/String;

    iget-object v10, v6, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    iget-object v10, v10, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->jankType:Ljava/lang/String;

    iget-object v11, v6, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    iget-object v11, v11, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->jankLevel:Ljava/lang/String;

    .line 646
    invoke-static {v8, v9, v10, v11}, Lcom/android/server/am/OnePlusJankManager;->formatHashKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v6, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->times:Ljava/lang/String;

    .line 645
    invoke-virtual {v1, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    .end local v6    # "tmp":Lcom/android/server/am/OnePlusJankManager$JankMDMItem;
    :cond_50
    goto :goto_2a

    .line 653
    :cond_51
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_54} :catch_60
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_54} :catch_55

    .line 653
    .end local v3    # "instream":Ljava/io/InputStream;
    .end local v4    # "inputreader":Ljava/io/InputStreamReader;
    .end local v5    # "buffreader":Ljava/io/BufferedReader;
    .end local v7    # "line":Ljava/lang/String;
    goto :goto_68

    .line 657
    :catch_55
    move-exception v3

    .line 658
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "OnePlusJankManager"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_69

    .line 655
    :catch_60
    move-exception v3

    .line 656
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v4, "OnePlusJankManager"

    const-string v5, "The File doesn\'t not exist."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_68
    nop

    .line 661
    :goto_69
    return-object v1
.end method

.method private reportJankInternal(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "viewName"    # Ljava/lang/String;
    .param p3, "jankType"    # I
    .param p4, "jankLevel"    # I

    .line 344
    iget-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 345
    iget-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 346
    return-void

    .line 348
    :cond_11
    const-string v0, "Splash"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 349
    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_25

    .line 350
    const-string v0, "OnePlusJankManager"

    const-string/jumbo v1, "is Splash activity, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_25
    return-void

    .line 354
    :cond_26
    invoke-static {}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->getInstance()Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->getFrontPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 355
    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_40

    .line 356
    const-string v0, "OnePlusJankManager"

    const-string/jumbo v1, "not forground app, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_40
    return-void

    .line 360
    :cond_41
    const/4 v0, 0x2

    if-eq p3, v0, :cond_47

    const/4 v1, 0x3

    if-eq p4, v1, :cond_49

    :cond_47
    if-ne p3, v0, :cond_4c

    .line 361
    :cond_49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusJankManager;->isLevelSystrace:Z

    .line 363
    :cond_4c
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusJankManager;->isGetingSystrace:Z

    if-nez v0, :cond_5a

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusJankManager;->isLevelSystrace:Z

    if-eqz v0, :cond_5a

    .line 364
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusJankManager;->getTraceAndDateForJank(Ljava/lang/String;Ljava/lang/String;II)V

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusJankManager;->isLevelSystrace:Z

    .line 367
    :cond_5a
    invoke-direct {p0}, Lcom/android/server/am/OnePlusJankManager;->isMDMEnabled()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 368
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusJankManager;->saveJankInfoToMap(Ljava/lang/String;Ljava/lang/String;II)V

    .line 370
    :cond_63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusJankManager;->persistToDisk(Ljava/lang/String;Ljava/lang/String;II)Z

    .line 371
    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .registers 13
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 822
    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_1b

    .line 823
    const-string v0, "OnePlusJankManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resolvePerfConfigFromJSON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_1b
    if-nez p1, :cond_1e

    .line 825
    return-void

    .line 828
    :cond_1e
    const/4 v0, 0x0

    move v1, v0

    .line 828
    .local v1, "index":I
    :goto_20
    :try_start_20
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_297

    .line 829
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 830
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "WhiteListPkgMap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 831
    iget-object v3, p0, Lcom/android/server/am/OnePlusJankManager;->mWhiteList:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_3c} :catch_2bf
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_3c} :catch_2a3

    .line 832
    :try_start_3c
    iget-object v4, p0, Lcom/android/server/am/OnePlusJankManager;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 833
    sget-boolean v4, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v4, :cond_4c

    const-string v4, "OnePlusJankManager"

    const-string v5, "[OnlineConfig] clear mWhiteList"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :cond_4c
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_3c .. :try_end_4d} :catchall_94

    .line 835
    :try_start_4d
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 836
    .local v3, "iopInfoJsonArray":Lorg/json/JSONArray;
    move v4, v0

    .line 836
    .local v4, "i":I
    :goto_55
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_92

    .line 837
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 838
    .local v5, "iopInfoJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 839
    .local v6, "pkgName":Ljava/lang/String;
    if-eqz v6, :cond_8f

    .line 840
    iget-object v7, p0, Lcom/android/server/am/OnePlusJankManager;->mWhiteList:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_4d .. :try_end_6b} :catch_2bf
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_6b} :catch_2a3

    .line 841
    :try_start_6b
    iget-object v8, p0, Lcom/android/server/am/OnePlusJankManager;->mWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    sget-boolean v8, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v8, :cond_8a

    const-string v8, "OnePlusJankManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[OnlineConfig] add mWhiteList pkg: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_8a
    monitor-exit v7

    goto :goto_8f

    :catchall_8c
    move-exception v0

    monitor-exit v7
    :try_end_8e
    .catchall {:try_start_6b .. :try_end_8e} :catchall_8c

    :try_start_8e
    throw v0
    :try_end_8f
    .catch Lorg/json/JSONException; {:try_start_8e .. :try_end_8f} :catch_2bf
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_8f} :catch_2a3

    .line 836
    .end local v5    # "iopInfoJsonObject":Lorg/json/JSONObject;
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_8f
    :goto_8f
    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    .line 846
    .end local v3    # "iopInfoJsonArray":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_92
    goto/16 :goto_293

    .line 834
    :catchall_94
    move-exception v0

    :try_start_95
    monitor-exit v3
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    :try_start_96
    throw v0

    .line 846
    :cond_97
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "state"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 847
    const-string/jumbo v3, "value"

    .line 848
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 847
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_STATE:Z

    .line 849
    const-string/jumbo v3, "persist.sys.jankmanager.state"

    sget-boolean v4, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_STATE:Z

    .line 850
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 849
    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_293

    .line 851
    :cond_c2
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ec

    .line 852
    const-string/jumbo v3, "value"

    .line 853
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 852
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_ENABLE:Z

    .line 854
    const-string/jumbo v3, "persist.sys.jankmanager.enable"

    sget-boolean v4, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_ENABLE:Z

    .line 855
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 854
    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_293

    .line 856
    :cond_ec
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "debug"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_116

    .line 857
    const-string/jumbo v3, "value"

    .line 858
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 857
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    .line 859
    const-string/jumbo v3, "persist.sys.jankmanager.debug"

    sget-boolean v4, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    .line 860
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 859
    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_293

    .line 861
    :cond_116
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mdm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    .line 862
    const-string/jumbo v3, "value"

    .line 863
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 862
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_MDM:Z

    .line 864
    const-string/jumbo v3, "persist.sys.jankmanager.mdm"

    sget-boolean v4, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_MDM:Z

    .line 865
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 864
    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_293

    .line 866
    :cond_141
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "disk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16b

    .line 867
    const-string/jumbo v3, "value"

    .line 868
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 867
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DISK:Z

    .line 869
    const-string/jumbo v3, "persist.sys.jankmanager.disk"

    sget-boolean v4, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DISK:Z

    .line 870
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 869
    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_293

    .line 871
    :cond_16b
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "systrace"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_196

    .line 872
    const-string/jumbo v3, "value"

    .line 873
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 872
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_SYSTRACE:Z

    .line 874
    const-string/jumbo v3, "persist.sys.jankmanager.systrace"

    sget-boolean v4, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_SYSTRACE:Z

    .line 875
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 874
    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_293

    .line 876
    :cond_196
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c1

    .line 877
    const-string/jumbo v3, "value"

    .line 878
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 877
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_TEST:Z

    .line 879
    const-string/jumbo v3, "persist.sys.jankmanager.test"

    sget-boolean v4, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_TEST:Z

    .line 880
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 879
    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_293

    .line 881
    :cond_1c1
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "low_level"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1ec

    .line 882
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_LOW:I

    .line 883
    const-string/jumbo v3, "persist.sys.jankmanager.levellow"

    sget v4, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_LOW:I

    .line 884
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 883
    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_293

    .line 885
    :cond_1ec
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "high_level"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_216

    .line 886
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_HIGH:I

    .line 887
    const-string/jumbo v3, "persist.sys.jankmanager.levelhigh"

    sget v4, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_HIGH:I

    .line 888
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 887
    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_293

    .line 889
    :cond_216
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "long_jank"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_240

    .line 890
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_LONG:I

    .line 891
    const-string/jumbo v3, "persist.sys.jankmanager.long"

    sget v4, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_LONG:I

    .line 892
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 891
    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_293

    .line 893
    :cond_240
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "trace_value"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26a

    .line 894
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_SYSTRACE:I

    .line 895
    const-string/jumbo v3, "persist.sys.jankmanager.levelsystrace"

    sget v4, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_SYSTRACE:I

    .line 896
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 895
    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_293

    .line 897
    :cond_26a
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "trace_time"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_293

    .line 898
    const-string/jumbo v3, "value"

    .line 899
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 898
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/am/OnePlusJankManager;->CATCH_SYSTRACE_TIME:I

    .line 900
    const-string/jumbo v3, "persist.sys.jankmanager.tracetime"

    sget v4, Lcom/android/server/am/OnePlusJankManager;->CATCH_SYSTRACE_TIME:I

    .line 901
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 900
    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusJankManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_293
    :goto_293
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_20

    .line 904
    .end local v1    # "index":I
    :cond_297
    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_2da

    .line 905
    const-string v0, "OnePlusJankManager"

    const-string v1, "[OnlineConfig] jankmanager updated complete"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a2
    .catch Lorg/json/JSONException; {:try_start_96 .. :try_end_2a2} :catch_2bf
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_2a2} :catch_2a3

    goto :goto_2da

    .line 910
    :catch_2a3
    move-exception v0

    .line 911
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OnePlusJankManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] jankmanager Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 911
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_2db

    .line 906
    :catch_2bf
    move-exception v0

    .line 907
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "OnePlusJankManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] jankmanager JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 907
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2da
    :goto_2da
    nop

    .line 914
    :goto_2db
    return-void
.end method

.method private saveJankFromHashMapToDisk()V
    .registers 6

    .line 526
    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_b

    .line 527
    const-string v0, "OnePlusJankManager"

    const-string v1, "SaveJankHashMapToDisk"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_b
    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_MDM:Z

    if-eqz v0, :cond_8a

    .line 530
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 531
    .local v0, "jankInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "/data/system/jankmdm.log"

    invoke-static {v1}, Lcom/android/server/am/OnePlusJankManager;->readJankFromFileToHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 533
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7e

    .line 534
    sget-object v1, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 535
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 536
    nop

    .line 537
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 536
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 539
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 538
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 536
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 540
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_77

    .line 542
    :cond_68
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_77
    goto :goto_2a

    .line 545
    :cond_78
    const-string v1, "/data/system/jankmdm.log"

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusJankManager;->writeJankFromHashMapToFile(Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_85

    .line 547
    :cond_7e
    sget-object v1, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    const-string v2, "/data/system/jankmdm.log"

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusJankManager;->writeJankFromHashMapToFile(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 550
    :goto_85
    sget-object v1, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 552
    .end local v0    # "jankInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8a
    return-void
.end method

.method private saveJankInfoToMap(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "viewName"    # Ljava/lang/String;
    .param p3, "jankType"    # I
    .param p4, "jankLevel"    # I

    .line 491
    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_c

    .line 492
    const-string v0, "OnePlusJankManager"

    const-string/jumbo v1, "saveJankInfoToMap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_c
    sget-object v0, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 494
    :try_start_f
    sget-object v1, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/am/OnePlusJankManager;->formatHashKey(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3c

    .line 495
    sget-object v1, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/am/OnePlusJankManager;->formatHashKey(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 496
    .local v1, "times":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 497
    sget-object v2, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/am/OnePlusJankManager;->formatHashKey(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    .end local v1    # "times":Ljava/lang/String;
    goto :goto_49

    .line 499
    :cond_3c
    sget-object v1, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/am/OnePlusJankManager;->formatHashKey(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    :goto_49
    monitor-exit v0

    .line 502
    return-void

    .line 501
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_f .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method private scheduleRecommendationUpdate(Landroid/content/Context;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;

    move-object/from16 v0, p0

    .line 302
    move-object/from16 v1, p1

    const-string v2, "alarm"

    .line 303
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 305
    .local v2, "alarmManager":Landroid/app/AlarmManager;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "oneplus.intent.action.SAVE_JANK_DATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v3

    .line 306
    .local v10, "recommendationIntent":Landroid/content/Intent;
    const/4 v11, 0x0

    invoke-static {v1, v11, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 309
    .local v12, "alarmIntent":Landroid/app/PendingIntent;
    nop

    .line 310
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusJankManager;->isTestMode()Z

    move-result v3

    const-wide/32 v13, 0x36ee80

    if-eqz v3, :cond_29

    const-wide/32 v3, 0xdbba0

    .line 309
    move-wide v7, v3

    goto :goto_2b

    .line 311
    :cond_29
    nop

    .line 309
    move-wide v7, v13

    :goto_2b
    const/4 v4, 0x3

    const-wide/16 v5, 0x3e8

    move-object v3, v2

    move-object v9, v12

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 312
    const/4 v15, 0x1

    iput-boolean v15, v0, Lcom/android/server/am/OnePlusJankManager;->isJankAlarmInited:Z

    .line 314
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "oneplus.intent.action.MDM_JANK_DATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v9, v3

    .line 315
    .local v9, "recommendationMDMIntent":Landroid/content/Intent;
    invoke-static {v1, v11, v9, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 318
    .local v11, "alarmMDMIntent":Landroid/app/PendingIntent;
    const/4 v4, 0x2

    .line 319
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusJankManager;->isTestMode()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 318
    move-wide v7, v13

    goto :goto_4f

    .line 320
    :cond_4c
    const-wide/32 v7, 0x5265c00

    .line 318
    :goto_4f
    move-object v3, v2

    move-object v13, v9

    move-object v9, v11

    .line 318
    .end local v9    # "recommendationMDMIntent":Landroid/content/Intent;
    .local v13, "recommendationMDMIntent":Landroid/content/Intent;
    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 321
    iput-boolean v15, v0, Lcom/android/server/am/OnePlusJankManager;->isMDMAlarmInited:Z

    .line 322
    return-void
.end method

.method private setPropValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 917
    const-string v0, ""

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 918
    .local v0, "curValue":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v1, :cond_31

    .line 919
    const-string v1, "OnePlusJankManager"

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

    .line 921
    :cond_31
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 922
    return-void

    .line 926
    :cond_38
    :try_start_38
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c

    .line 930
    goto :goto_47

    .line 927
    :catch_3c
    move-exception v1

    .line 928
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OnePlusJankManager"

    const-string v3, "failed to set system property"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 931
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_47
    return-void
.end method

.method private startBugReport()V
    .registers 5

    .line 936
    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_c

    .line 937
    const-string v0, "OnePlusJankManager"

    const-string/jumbo v1, "startBugReport"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_c
    invoke-direct {p0}, Lcom/android/server/am/OnePlusJankManager;->GetlogFile()V

    .line 941
    :try_start_f
    iget-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mOemExSvc:Lcom/oem/os/IOemExService;

    if-nez v0, :cond_1f

    .line 942
    const-string v0, "OEMExService"

    .line 943
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 942
    invoke-static {v0}, Lcom/oem/os/IOemExService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oem/os/IOemExService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mOemExSvc:Lcom/oem/os/IOemExService;

    .line 945
    :cond_1f
    iget-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mOemExSvc:Lcom/oem/os/IOemExService;

    const-string/jumbo v1, "jankmanager_outlier"

    invoke-interface {v0, v1}, Lcom/oem/os/IOemExService;->dumpJankBugreport(Ljava/lang/String;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_27} :catch_28

    .line 948
    goto :goto_3f

    .line 946
    :catch_28
    move-exception v0

    .line 947
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OnePlusJankManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpLightBugreport failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3f
    return-void
.end method

.method private startTracing()V
    .registers 3

    .line 967
    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_c

    .line 968
    const-string v0, "OnePlusJankManager"

    const-string/jumbo v1, "startTracing start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_11

    .line 970
    return-void

    .line 971
    :cond_11
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 972
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.traceur.JANK_START_TRACING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 973
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 974
    const-string v1, "com.android.traceur"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 975
    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 976
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusJankManager;->isGetingSystrace:Z

    .line 977
    return-void
.end method

.method private stopTraceForJank()V
    .registers 3

    .line 959
    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_c

    .line 960
    const-string v0, "OnePlusJankManager"

    const-string/jumbo v1, "stopTraceForJank"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_c
    invoke-direct {p0}, Lcom/android/server/am/OnePlusJankManager;->stopTracing()V

    .line 963
    invoke-direct {p0}, Lcom/android/server/am/OnePlusJankManager;->startBugReport()V

    .line 964
    return-void
.end method

.method private stopTracing()V
    .registers 6

    .line 980
    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_c

    .line 981
    const-string v0, "OnePlusJankManager"

    const-string/jumbo v1, "stopTracing start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_11

    .line 983
    return-void

    .line 984
    :cond_11
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 985
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.traceur.JANK_STOP_TRACING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 986
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 987
    const-string v1, "com.android.traceur"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 988
    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 989
    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorHandler:Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

    iget-object v2, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorHandler:Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

    const/4 v3, 0x6

    .line 990
    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    sget v3, Lcom/android/server/am/OnePlusJankManager;->INTERVAL_SYSTRACE_TIME:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    .line 989
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 992
    return-void
.end method

.method private toMDM(Lcom/android/server/am/OnePlusJankManager$JankMDMItem;)Ljava/lang/String;
    .registers 4
    .param p1, "tmp"    # Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{\"pkg\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    iget-object v1, v1, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const-string v1, "\",\"view\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    iget-object v1, v1, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->viewName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    const-string v1, "\",\"jkType\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    iget-object v1, v1, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->jankType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const-string v1, "\",\"level\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->reportItem:Lcom/android/server/am/OnePlusJankManager$JankReportItem;

    iget-object v1, v1, Lcom/android/server/am/OnePlusJankManager$JankReportItem;->jankLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const-string v1, "\",\"times\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/OnePlusJankManager$JankMDMItem;->times:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateOnlineConfig()V
    .registers 4

    .line 769
    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_c

    .line 770
    const-string v0, "OnePlusJankManager"

    const-string/jumbo v1, "updateOnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_c
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mContext:Landroid/content/Context;

    const-string v2, "OnePlusJankManager"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 772
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusJankManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    .line 773
    return-void
.end method

.method private uploadMDM()V
    .registers 8

    .line 403
    sget-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    if-eqz v0, :cond_c

    .line 404
    const-string v0, "OnePlusJankManager"

    const-string/jumbo v1, "uploadMDM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 407
    .local v0, "jankInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "/data/system/jankmdm.log"

    invoke-static {v1}, Lcom/android/server/am/OnePlusJankManager;->readJankFromFileToHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_84

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_84

    .line 420
    :cond_20
    sget-object v1, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    if-eqz v1, :cond_94

    sget-object v1, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_94

    .line 421
    sget-object v1, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 422
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 423
    nop

    .line 424
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 423
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 426
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 425
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 423
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, "value":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_83

    .line 429
    :cond_74
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_83
    goto :goto_36

    .line 411
    :cond_84
    :goto_84
    sget-object v1, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    if-eqz v1, :cond_10d

    sget-object v1, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_92

    goto/16 :goto_10d

    .line 416
    :cond_92
    sget-object v0, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    .line 437
    :cond_94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10c

    .line 439
    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    const/4 v2, 0x0

    .line 441
    .local v2, "index":I
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_ad
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 443
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v2, v2, 0x1

    .line 444
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/am/OnePlusJankManager;->getHashKeyFromStr(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/am/OnePlusJankManager$JankMDMItem;

    move-result-object v5

    .line 446
    .local v5, "tmp":Lcom/android/server/am/OnePlusJankManager$JankMDMItem;
    if-eqz v5, :cond_d4

    .line 447
    invoke-direct {p0, v5}, Lcom/android/server/am/OnePlusJankManager;->toMDM(Lcom/android/server/am/OnePlusJankManager$JankMDMItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_d4
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v6

    if-ge v2, v6, :cond_df

    .line 450
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "tmp":Lcom/android/server/am/OnePlusJankManager$JankMDMItem;
    :cond_df
    goto :goto_ad

    .line 452
    :cond_e0
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .end local v2    # "index":I
    nop

    .line 456
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 457
    const-string v2, "data"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    new-instance v2, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v3, p0, Lcom/android/server/am/OnePlusJankManager;->mContext:Landroid/content/Context;

    const-string v4, "PDJE7FI1KD"

    invoke-direct {v2, v3, v4}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 460
    .local v2, "tracker":Lnet/oneplus/odm/insight/tracker/OSTracker;
    const-string/jumbo v3, "jank_data_new"

    invoke-virtual {v2, v3, v0}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 461
    sget-object v3, Lcom/android/server/am/OnePlusJankManager;->mJankInfoMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 462
    const-string v3, "/data/system/jankmdm.log"

    invoke-static {v3}, Lcom/android/server/am/OnePlusJankManager;->deleteFile(Ljava/lang/String;)V

    .line 463
    return-void

    .line 454
    .end local v2    # "tracker":Lnet/oneplus/odm/insight/tracker/OSTracker;
    :cond_10c
    return-void

    .line 413
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_10d
    :goto_10d
    return-void
.end method

.method private static writeJankFromHashMapToFile(Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 6
    .param p1, "strFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 666
    .local p0, "jankInfoMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 667
    return-void

    .line 668
    :cond_7
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 669
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusJankManager;->getStrFromHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/server/am/OnePlusJankManager;->persistToDisk(Ljava/lang/String;Ljava/lang/String;)Z

    .line 671
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_f

    .line 673
    :cond_2f
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1003
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@The JnakManager status is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_STATE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1005
    const-string v0, "Jank event list : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1006
    const-string v0, "/data/system/jankevent.log"

    invoke-static {v0}, Lcom/android/server/am/OnePlusJankManager;->readJankFromFileToArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1007
    .local v0, "newList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_45

    .line 1008
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1007
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 1010
    .end local v1    # "i":I
    :cond_45
    return-void
.end method

.method public getUidForTraceur()I
    .registers 2

    .line 1043
    const-string v0, "com.android.traceur"

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusJankManager;->getUidForPackage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public initOnlineConfig(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 184
    const-string/jumbo v0, "persist.sys.jankmanager.state"

    sget-boolean v1, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_STATE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_STATE:Z

    .line 186
    const-string/jumbo v0, "persist.sys.jankmanager.enable"

    sget-boolean v1, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_ENABLE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_ENABLE:Z

    .line 188
    const-string/jumbo v0, "persist.sys.jankmanager.debug"

    sget-boolean v1, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DEBUG:Z

    .line 190
    const-string/jumbo v0, "persist.sys.jankmanager.mdm"

    sget-boolean v1, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_MDM:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_MDM:Z

    .line 192
    const-string/jumbo v0, "persist.sys.jankmanager.disk"

    sget-boolean v1, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DISK:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_DISK:Z

    .line 194
    const-string/jumbo v0, "persist.sys.jankmanager.systrace"

    sget-boolean v1, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_SYSTRACE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_SYSTRACE:Z

    .line 196
    const-string/jumbo v0, "persist.sys.jankmanager.test"

    sget-boolean v1, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_TEST:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusJankManager;->JANKMANAGER_TEST:Z

    .line 199
    const-string/jumbo v0, "persist.sys.jankmanager.levellow"

    sget v1, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_LOW:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_LOW:I

    .line 201
    const-string/jumbo v0, "persist.sys.jankmanager.levelhigh"

    sget v1, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_HIGH:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_HIGH:I

    .line 203
    const-string/jumbo v0, "persist.sys.jankmanager.long"

    sget v1, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_LONG:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_LONG:I

    .line 205
    const-string/jumbo v0, "persist.sys.jankmanager.levelsystrace"

    sget v1, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_SYSTRACE:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusJankManager;->JANK_LEVEL_SYSTRACE:I

    .line 208
    const-string/jumbo v0, "persist.sys.jankmanager.tracetime"

    sget v1, Lcom/android/server/am/OnePlusJankManager;->CATCH_SYSTRACE_TIME:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusJankManager;->CATCH_SYSTRACE_TIME:I

    .line 211
    iput-object p1, p0, Lcom/android/server/am/OnePlusJankManager;->mContext:Landroid/content/Context;

    .line 212
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorHandler:Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

    new-instance v3, Lcom/android/server/am/OnePlusJankManager$MyConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusJankManager$MyConfigUpdater;-><init>(Lcom/android/server/am/OnePlusJankManager;)V

    const-string v4, "OnePlusJankManager"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 214
    iget-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 215
    iget-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorHandler:Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorHandler:Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

    .line 216
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 215
    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 218
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 219
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "oneplus.intent.action.SAVE_JANK_DATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    const-string/jumbo v1, "oneplus.intent.action.MDM_JANK_DATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusJankManager;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 223
    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusJankManager;->scheduleRecommendationUpdate(Landroid/content/Context;)V

    .line 225
    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mWhiteList:Ljava/util/ArrayList;

    const-string v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mWhiteList:Ljava/util/ArrayList;

    const-string v2, "fm.xiami.main"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v1, p0, Lcom/android/server/am/OnePlusJankManager;->mWhiteList:Ljava/util/ArrayList;

    const-string v2, "com.tencent.qt.qtl"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method public reportJank(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "viewName"    # Ljava/lang/String;
    .param p3, "jankType"    # I
    .param p4, "jankLevel"    # I

    .line 326
    invoke-direct {p0}, Lcom/android/server/am/OnePlusJankManager;->isBootCompleted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 327
    return-void

    .line 328
    :cond_7
    if-eqz p1, :cond_39

    if-nez p2, :cond_c

    goto :goto_39

    .line 330
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorHandler:Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

    const/4 v1, 0x3

    .line 331
    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 332
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 333
    .local v1, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "packageName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string/jumbo v2, "viewName"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string/jumbo v2, "jankType"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 336
    const-string/jumbo v2, "jankLevel"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 337
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 338
    iget-object v2, p0, Lcom/android/server/am/OnePlusJankManager;->mJankMonitorHandler:Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/OnePlusJankManager$JankMonitorHandler;->sendMessage(Landroid/os/Message;)Z

    .line 339
    return-void

    .line 329
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "b":Landroid/os/Bundle;
    :cond_39
    :goto_39
    return-void
.end method
