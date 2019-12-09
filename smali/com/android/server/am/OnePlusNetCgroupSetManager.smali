.class public Lcom/android/server/am/OnePlusNetCgroupSetManager;
.super Ljava/lang/Object;
.source "OnePlusNetCgroupSetManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeStatusContentObserver;,
        Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;,
        Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static DEBUG_OEMLOG:Z = false

.field private static final GAME_MODE_NETWORK_ACC:Ljava/lang/String; = "game_mode_network_acceleration"

.field private static final MSG_GET_LAUNCHERS:I = 0x6

.field private static final MSG_SET_NETCGROUP_BG:I = 0x0

.field private static final MSG_SET_NETCGROUP_BG_UIDS:I = 0x3

.field private static final MSG_SET_NETCGROUP_CLEAR:I = 0x2

.field private static final MSG_SET_NETCGROUP_FG:I = 0x1

.field private static final MSG_SET_NETCGROUP_TOUCH_WIN:I = 0x4

.field private static final MSG_SET_NETCGROUP_WITHOUT_CODE:I = 0x5

.field public static final TAG:Ljava/lang/String; = "OnePlusNetCgroupSetManager"

.field private static final URI_GAME_NETWORK_ACC:Landroid/net/Uri;

.field private static final URI_GAME_STATUS:Landroid/net/Uri;

.field private static final VALUE_BG_FLAG:I = 0x1

.field private static final VALUE_DF_FLAG:I = 0x0

.field private static final VALUE_FG_FLAG:I = 0x2

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static final VALUE_TOUCH_WIN_CHANGE_FLAG:I = 0x3

.field private static final VALUE_TOUCH_WIN_SWITCHOFF_FLAG:I = 0x1

.field private static final VALUE_TOUCH_WIN_SWITCHON_FLAG:I = 0x2

.field public static final VERSION:I = 0x7848b7f1

.field public static mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private static mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

.field public static pm:Landroid/content/pm/PackageManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentFrontUid:I

.field mFrontActivityUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mFrontWindowTouchUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGameModeNetWorkAccObserver:Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeNetWorkAccContentObserver;

.field private mGameModeStatus:Lcom/android/server/am/OnePlusNetCgroupSetManager$GameModeStatusContentObserver;

.field private mGameStatus:Z

.field mLastFgUid:I

.field mLastFrontWindowTouchUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mLastSetFrontUids:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mLaunchers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mModeStatus:Z

.field private mNetCgroupSetHandler:Landroid/os/Handler;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field final mRulesLock:Ljava/lang/Object;

.field final mTouchWinLock:Ljava/lang/Object;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field final mUidPidState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWifiBoost:I

.field resolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    .line 55
    sput-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    .line 70
    const-string v0, "game_mode_network_acceleration"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->URI_GAME_NETWORK_ACC:Landroid/net/Uri;

    .line 71
    const-string v0, "game_mode_status"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->URI_GAME_STATUS:Landroid/net/Uri;

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 101
    sput-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->pm:Landroid/content/pm/PackageManager;

    .line 103
    sput-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 10
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    .line 80
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mWifiBoost:I

    .line 81
    iput v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    .line 82
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mGameStatus:Z

    .line 83
    iput-boolean v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mModeStatus:Z

    .line 84
    iput v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFgUid:I

    .line 85
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mRulesLock:Ljava/lang/Object;

    .line 86
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mTouchWinLock:Ljava/lang/Object;

    .line 88
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    .line 90
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidPidState:Landroid/util/SparseArray;

    .line 92
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    .line 93
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    .line 95
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    .line 96
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLaunchers:Ljava/util/HashSet;

    .line 99
    iput-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->resolver:Landroid/content/ContentResolver;

    .line 167
    new-instance v3, Lcom/android/server/am/OnePlusNetCgroupSetManager$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager$1;-><init>(Lcom/android/server/am/OnePlusNetCgroupSetManager;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 193
    new-instance v3, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager$2;-><init>(Lcom/android/server/am/OnePlusNetCgroupSetManager;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 261
    new-instance v3, Lcom/android/server/am/OnePlusNetCgroupSetManager$3;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager$3;-><init>(Lcom/android/server/am/OnePlusNetCgroupSetManager;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidObserver:Landroid/app/IUidObserver;

    .line 113
    const-string v3, "OnePlusNetCgroupSetManager"

    const-string v4, "OnePlusNetCgroupSetManager VERSION = v2018031601"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string/jumbo v3, "persist.sys.netgroupset.debug"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    .line 115
    const-string/jumbo v2, "persist.sys.assert.panic"

    sget-boolean v3, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    .line 117
    sput-object p1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 118
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mContext:Landroid/content/Context;

    .line 119
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->resolver:Landroid/content/ContentResolver;

    .line 121
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->pm:Landroid/content/pm/PackageManager;

    .line 123
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "NetCgroupSetThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 124
    .local v2, "mNetCgroupSetThread":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 125
    new-instance v3, Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/am/OnePlusNetCgroupSetManager$netCgroupSetHandler;-><init>(Lcom/android/server/am/OnePlusNetCgroupSetManager;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    .line 135
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string/jumbo v4, "package"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 140
    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 144
    sget-object v4, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 145
    sget-object v4, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6, v1, v0}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OnePlusNetCgroupSetManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .line 52
    invoke-direct {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->getLaunchers()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .line 52
    iget v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusNetCgroupSetManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .line 52
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mGameStatus:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/am/OnePlusNetCgroupSetManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mGameStatus:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/am/OnePlusNetCgroupSetManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;
    .param p1, "x1"    # I

    .line 52
    iput p1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/am/OnePlusNetCgroupSetManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .line 52
    invoke-direct {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->getGameModeStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusNetCgroupSetManager;)Lcom/android/server/am/ActivityRecord;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .line 52
    invoke-direct {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->getCurrentFrontUid()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusNetCgroupSetManager;ZI)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->toSetNetCgroup(ZI)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusNetCgroupSetManager;III)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(III)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusNetCgroupSetManager;Ljava/util/HashSet;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;
    .param p1, "x1"    # Ljava/util/HashSet;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUids(Ljava/util/HashSet;II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/OnePlusNetCgroupSetManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;
    .param p1, "x1"    # I

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUidsTouchWin(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusNetCgroupSetManager;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .line 52
    invoke-direct {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->getGameModeNetWorkAcc()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/am/OnePlusNetCgroupSetManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .line 52
    iget v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mWifiBoost:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/am/OnePlusNetCgroupSetManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusNetCgroupSetManager;
    .param p1, "x1"    # I

    .line 52
    iput p1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mWifiBoost:I

    return p1
.end method

.method private add3rdAppProcessState(II)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 291
    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_22

    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] add3rdAppProcessState uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_22
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 293
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 295
    .local v1, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v1, :cond_40

    .line 296
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 297
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 299
    :cond_40
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 300
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->isSetNetCgroup()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 303
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 305
    .local v2, "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_5a
    :goto_5a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_76

    .line 306
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 307
    .local v3, "mUid1":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_5a

    .line 308
    const/4 v5, 0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v5, v4, v6}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    goto :goto_5a

    .line 312
    .end local v3    # "mUid1":Ljava/lang/Integer;
    :cond_76
    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_9f

    .line 313
    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 315
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_84
    :goto_84
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 316
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 317
    .local v5, "mUid":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p1, :cond_84

    .line 318
    const/4 v6, 0x5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v6, v4, v7}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    goto :goto_84

    .line 323
    .end local v1    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v5    # "mUid":Ljava/lang/Integer;
    :cond_9f
    monitor-exit v0

    goto :goto_a4

    :catchall_a1
    move-exception v1

    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_2b .. :try_end_a3} :catchall_a1

    throw v1

    .line 325
    :cond_a4
    :goto_a4
    return-void
.end method

.method static final addPidToCgroupTasksWithJudge(Lcom/android/server/am/ProcessRecord;I)V
    .registers 4
    .param p0, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p1, "childPid"    # I

    .line 328
    if-eqz p0, :cond_1b

    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 329
    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_1b

    .line 331
    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    if-eqz v0, :cond_1b

    .line 332
    if-lez p1, :cond_1b

    .line 333
    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {v0, v1, p1}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->add3rdAppProcessState(II)V

    .line 337
    :cond_1b
    return-void
.end method

.method private checkToSetCgroup(II)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "flag"    # I

    .line 491
    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_36

    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] checkToSetCgroup uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |mFrontActivityUids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " |mFrontWindowTouchUids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_36
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p2, v0, :cond_53

    .line 493
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 494
    return v1

    .line 498
    :cond_53
    const/4 v0, 0x1

    if-ne p2, v0, :cond_6f

    .line 499
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 500
    :cond_6e
    return v1

    .line 504
    :cond_6f
    return v0
.end method

.method private getCurrentFrontUid()Lcom/android/server/am/ActivityRecord;
    .registers 6

    .line 177
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 179
    .local v1, "a":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_46

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_46

    .line 180
    sget-boolean v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v2, :cond_45

    const-string v2, "OnePlusNetCgroupSetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[netCgroupSet] pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |processName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_45} :catch_48

    .line 183
    :cond_45
    return-object v1

    .line 189
    .end local v1    # "a":Lcom/android/server/am/ActivityRecord;
    :cond_46
    nop

    .line 190
    return-object v0

    .line 185
    :catch_48
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v2, :cond_54

    const-string v2, "OnePlusNetCgroupSetManager"

    const-string v3, "[netCgroupSet] getCurrentFrontUid error, return -1"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_54
    return-object v0
.end method

.method private getGameModeNetWorkAcc()I
    .registers 5

    .line 652
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->resolver:Landroid/content/ContentResolver;

    const-string v1, "game_mode_network_acceleration"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getGameModeStatus()Z
    .registers 5

    .line 656
    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->resolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_status"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OnePlusNetCgroupSetManager;
    .registers 2
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 106
    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    if-nez v0, :cond_b

    .line 107
    new-instance v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    .line 109
    :cond_b
    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    return-object v0
.end method

.method private getLaunchers()V
    .registers 8

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    sget-object v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->pm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 153
    .local v1, "lst":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLaunchers:Ljava/util/HashSet;

    monitor-enter v2

    .line 154
    :try_start_16
    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLaunchers:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 155
    if-eqz v1, :cond_3f

    .line 156
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 157
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 158
    .local v5, "pkgName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLaunchers:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 159
    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLaunchers:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_3e
    goto :goto_21

    .line 163
    :cond_3f
    sget-boolean v3, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v3, :cond_5b

    const-string v3, "OnePlusNetCgroupSetManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[netCgroupSet] mLaunchers: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLaunchers:Ljava/util/HashSet;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_5b
    monitor-exit v2

    .line 165
    return-void

    .line 164
    :catchall_5d
    move-exception v3

    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_16 .. :try_end_5f} :catchall_5d

    throw v3
.end method

.method private handleSetNetCgroup(II)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "flag"    # I

    .line 390
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(III)V

    .line 391
    return-void
.end method

.method private handleSetNetCgroup(III)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "flag"    # I
    .param p3, "code"    # I

    .line 394
    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    if-eqz v0, :cond_3a

    :cond_8
    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] handleSetNetCgroup UserHandle.isApp(uid):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_3a
    :try_start_3a
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_168

    .line 397
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_72

    .line 398
    if-ne p2, v1, :cond_72

    const/4 v0, 0x3

    if-ne p3, v0, :cond_72

    .line 399
    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_71

    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] handleSetNetCgroup uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is showing touchwindow, dont set VALUE_BG_FLAG, return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_71
    return-void

    .line 404
    :cond_72
    const/4 v0, -0x1

    if-ne p2, v1, :cond_a0

    const/4 v2, 0x4

    if-ne p3, v2, :cond_a0

    .line 405
    iget v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    if-eq v2, v0, :cond_a0

    iget v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    if-ne p1, v2, :cond_a0

    .line 406
    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_9f

    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] handleSetNetCgroup uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is front activity, dont set VALUE_BG_FLAG, return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_9f
    return-void

    .line 411
    :cond_a0
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mTouchWinLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_a3} :catch_169

    .line 412
    :try_start_a3
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->checkToSetCgroup(II)Z

    move-result v3

    if-nez v3, :cond_ab

    monitor-exit v2

    return-void

    .line 413
    :cond_ab
    monitor-exit v2
    :try_end_ac
    .catchall {:try_start_a3 .. :try_end_ac} :catchall_165

    .line 415
    const/4 v2, 0x0

    .line 416
    .local v2, "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_ad
    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_b0} :catch_169

    .line 417
    :try_start_b0
    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object v2, v4

    .line 419
    const/4 v4, 0x2

    if-eqz v2, :cond_120

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ltz v5, :cond_120

    .line 420
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_cb
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_113

    .line 421
    sget-boolean v6, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-nez v6, :cond_d9

    sget-boolean v6, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    if-eqz v6, :cond_103

    :cond_d9
    const-string v6, "OnePlusNetCgroupSetManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[netCgroupSet] handleSetNetCgroup uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " |pid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " |flag:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_103
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6, p2}, Landroid/os/Process;->setProcessNetGroup(II)V

    .line 420
    add-int/lit8 v5, v5, 0x1

    goto :goto_cb

    .line 425
    .end local v5    # "i":I
    :cond_113
    if-ne p2, v4, :cond_11a

    if-ne p3, v1, :cond_11a

    .line 426
    iput p1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFgUid:I

    goto :goto_120

    .line 427
    :cond_11a
    if-ne p2, v1, :cond_120

    if-ne p3, v4, :cond_120

    .line 428
    iput v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFgUid:I

    .line 431
    :cond_120
    :goto_120
    monitor-exit v3
    :try_end_121
    .catchall {:try_start_b0 .. :try_end_121} :catchall_162

    .line 433
    :try_start_121
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mTouchWinLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_124
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_124} :catch_169

    .line 434
    if-ne p2, v4, :cond_13e

    :try_start_126
    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13e

    .line 435
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_155

    .line 442
    :catchall_13c
    move-exception v1

    goto :goto_160

    .line 436
    :cond_13e
    if-ne p2, v1, :cond_155

    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_155

    .line 437
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 440
    :cond_155
    :goto_155
    const/4 v1, 0x5

    if-eq p3, v1, :cond_15b

    invoke-direct {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->toSetFrontUids()V

    .line 441
    :cond_15b
    invoke-direct {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->isFrontActivityUidsEmpty()V

    .line 442
    monitor-exit v0

    goto :goto_168

    :goto_160
    monitor-exit v0
    :try_end_161
    .catchall {:try_start_126 .. :try_end_161} :catchall_13c

    :try_start_161
    throw v1
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_162} :catch_169

    .line 431
    :catchall_162
    move-exception v0

    :try_start_163
    monitor-exit v3
    :try_end_164
    .catchall {:try_start_163 .. :try_end_164} :catchall_162

    :try_start_164
    throw v0
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_164 .. :try_end_165} :catch_169

    .line 413
    .end local v2    # "pidState":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_165
    move-exception v0

    :try_start_166
    monitor-exit v2
    :try_end_167
    .catchall {:try_start_166 .. :try_end_167} :catchall_165

    :try_start_167
    throw v0
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_168} :catch_169

    .line 446
    :cond_168
    :goto_168
    goto :goto_180

    .line 444
    :catch_169
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OnePlusNetCgroupSetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[netCgroupSet] handleSetNetCgroup fail e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_180
    return-void
.end method

.method private handleSetNetCgroupUids(Ljava/util/HashSet;II)V
    .registers 9
    .param p2, "flag"    # I
    .param p3, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .line 508
    .local p1, "temp_uids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 510
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 511
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 512
    .local v1, "uid":Ljava/lang/Integer;
    sget-boolean v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v2, :cond_3a

    const-string v2, "OnePlusNetCgroupSetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[netCgroupSet] handleSetNetCgroupUids uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " |flag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_3a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, p2, p3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(III)V

    goto :goto_4

    .line 515
    .end local v1    # "uid":Ljava/lang/Integer;
    :cond_42
    return-void
.end method

.method private handleSetNetCgroupUidsTouchWin(I)V
    .registers 8
    .param p1, "flag"    # I

    .line 518
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mTouchWinLock:Ljava/lang/Object;

    monitor-enter v0

    .line 519
    :try_start_3
    sget-boolean v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v1, :cond_31

    const-string v1, "OnePlusNetCgroupSetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[netCgroupSet] handleSetNetCgroupUidsTouchWin mLastFrontWindowTouchUids:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " |mFrontWindowTouchUids:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " |flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_31
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_8e

    goto :goto_89

    .line 522
    :pswitch_38
    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_46

    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    const/4 v5, 0x4

    invoke-direct {p0, v4, v2, v5}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUids(Ljava/util/HashSet;II)V

    .line 523
    :cond_46
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_89

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUids(Ljava/util/HashSet;II)V

    goto :goto_89

    .line 526
    :pswitch_54
    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_61

    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUids(Ljava/util/HashSet;II)V

    .line 527
    :cond_61
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_89

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-direct {p0, v2, v1, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUids(Ljava/util/HashSet;II)V

    goto :goto_89

    .line 530
    :pswitch_6f
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_7c

    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUids(Ljava/util/HashSet;II)V

    .line 531
    :cond_7c
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_89

    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroupUids(Ljava/util/HashSet;II)V

    .line 536
    :cond_89
    :goto_89
    monitor-exit v0

    .line 537
    return-void

    .line 536
    :catchall_8b
    move-exception v1

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_3 .. :try_end_8d} :catchall_8b

    throw v1

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_6f
        :pswitch_54
        :pswitch_38
    .end packed-switch
.end method

.method private isFrontActivityUidsEmpty()V
    .registers 4

    .line 450
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_3b

    .line 451
    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_24

    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] FrontActivityUids is Empty, mCurrentFrontUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_24
    iget v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3b

    .line 453
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    iget v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 454
    iget v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(III)V

    .line 457
    :cond_3b
    return-void
.end method

.method private sendMessageSetNetCgroup(III)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "flag"    # I
    .param p3, "uid"    # I

    .line 566
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {v0, p1, p3, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 567
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 568
    return-void
.end method

.method private toSetFrontUids()V
    .registers 9

    .line 460
    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_30

    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] toSetFrontUids mLastSetFrontUids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " |mFrontActivityUids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " |mFrontWindowTouchUids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_30
    iget-object v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 463
    .local v0, "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_36
    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x5

    if-eqz v1, :cond_54

    .line 464
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 465
    .local v1, "uid1":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 466
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(III)V

    goto :goto_36

    .line 470
    .end local v1    # "uid1":Ljava/lang/Integer;
    :cond_54
    iget-object v1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 472
    .local v1, "iterator2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_5a
    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_76

    .line 473
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 474
    .local v4, "uid2":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    .line 475
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5, v2, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(III)V

    goto :goto_5a

    .line 479
    .end local v4    # "uid2":Ljava/lang/Integer;
    :cond_76
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastSetFrontUids:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 480
    .local v2, "mCloneHashSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 482
    .local v4, "iterator3":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_82
    :goto_82
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 483
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 484
    .local v5, "uid3":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_82

    iget-object v6, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_82

    .line 485
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->handleSetNetCgroup(III)V

    goto :goto_82

    .line 488
    .end local v5    # "uid3":Ljava/lang/Integer;
    :cond_a7
    return-void
.end method

.method private toSetNetCgroup(ZI)V
    .registers 8
    .param p1, "foregroundActivities"    # Z
    .param p2, "uid"    # I

    .line 546
    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_2c

    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] toSetNetCgroup uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |foregroundActivities:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |mFrontActivityUids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->isSetNetCgroup()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 548
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_3a

    .line 549
    invoke-direct {p0, v1, v0, p2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    goto :goto_61

    .line 551
    :cond_3a
    iget v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_47

    iget v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mCurrentFrontUid:I

    if-eq v2, p2, :cond_47

    .line 552
    const/4 v2, 0x0

    invoke-direct {p0, v2, v1, p2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    .line 555
    :cond_47
    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 557
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    .line 558
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 559
    .local v3, "mUid":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v1, v0, v4}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    goto :goto_4d

    .line 563
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "mUid":Ljava/lang/Integer;
    :cond_61
    :goto_61
    return-void
.end method

.method public static updateTouchWindowUidChange(Ljava/util/HashSet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 340
    .local p0, "fontWindowTouchUids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    if-eqz v0, :cond_60

    .line 341
    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_2a

    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] updateTouchWindowUidChange change ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " |mFrontWindowTouchUids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_2a
    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v0, v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mTouchWinLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_2f
    sget-object v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    sget-object v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v2, v2, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    iput-object v2, v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFrontWindowTouchUids:Ljava/util/HashSet;

    .line 344
    sget-object v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 345
    sget-object v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    iget-object v1, v1, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontWindowTouchUids:Ljava/util/HashSet;

    invoke-virtual {v1, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 346
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_2f .. :try_end_4c} :catchall_5d

    .line 348
    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->isSetNetCgroup()Z

    move-result v0

    if-eqz v0, :cond_60

    sget-object v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mOnePlusNetCgroupSetManager:Lcom/android/server/am/OnePlusNetCgroupSetManager;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    goto :goto_60

    .line 346
    :catchall_5d
    move-exception v1

    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v1

    .line 350
    :cond_60
    :goto_60
    return-void
.end method


# virtual methods
.method isSetNetCgroup()Z
    .registers 4

    .line 540
    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG_OEMLOG:Z

    if-eqz v0, :cond_20

    :cond_8
    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] isSetNetCgroup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_20
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mModeStatus:Z

    return v0
.end method

.method public opStatusChanged(Z)V
    .registers 13
    .param p1, "on"    # Z

    .line 571
    sget-boolean v0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->DEBUG:Z

    if-eqz v0, :cond_38

    const-string v0, "OnePlusNetCgroupSetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[netCgroupSet] opStatusChanged mFrontActivityUids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " |mLastFgUid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFgUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |on:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |OldmModeStatus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_38
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mModeStatus:Z

    .line 573
    const/4 v0, 0x4

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_a8

    .line 575
    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    monitor-enter v4

    .line 576
    :try_start_43
    iget-object v5, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mFrontActivityUids:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    .line 577
    .local v5, "mFrontActivityUids_t":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_a5

    .line 578
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 580
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_50
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a1

    .line 581
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 582
    .local v6, "mUid":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v3, v1, v7}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    .line 584
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 585
    .local v7, "temp_uids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move v8, v2

    .local v8, "i":I
    :goto_69
    iget-object v9, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_87

    .line 586
    iget-object v9, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mUidPidState:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 587
    .local v9, "key":I
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v10, v9, :cond_84

    .line 588
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 585
    .end local v9    # "key":I
    :cond_84
    add-int/lit8 v8, v8, 0x1

    goto :goto_69

    .line 592
    .end local v8    # "i":I
    :cond_87
    iget-object v8, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_95

    .line 593
    iget-object v8, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 595
    :cond_95
    iget-object v8, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    invoke-static {v8, v9, v2, v3, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 596
    .local v8, "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    invoke-virtual {v9, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 597
    .end local v7    # "temp_uids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v8    # "msg":Landroid/os/Message;
    goto :goto_50

    .line 599
    .end local v6    # "mUid":Ljava/lang/Integer;
    :cond_a1
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    .line 600
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v5    # "mFrontActivityUids_t":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_c2

    .line 577
    :catchall_a5
    move-exception v0

    :try_start_a6
    monitor-exit v4
    :try_end_a7
    .catchall {:try_start_a6 .. :try_end_a7} :catchall_a5

    throw v0

    .line 601
    :cond_a8
    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_b5

    .line 602
    iget-object v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mNetCgroupSetHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 605
    :cond_b5
    iget v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFgUid:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_bf

    .line 606
    iget v4, p0, Lcom/android/server/am/OnePlusNetCgroupSetManager;->mLastFgUid:I

    invoke-direct {p0, v1, v3, v4}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    .line 609
    :cond_bf
    invoke-direct {p0, v0, v3, v2}, Lcom/android/server/am/OnePlusNetCgroupSetManager;->sendMessageSetNetCgroup(III)V

    .line 611
    :goto_c2
    return-void
.end method
