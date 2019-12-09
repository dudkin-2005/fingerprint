.class public Lcom/android/server/AppStateTracker;
.super Ljava/lang/Object;
.source "AppStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppStateTracker$MyHandler;,
        Lcom/android/server/AppStateTracker$StandbyTracker;,
        Lcom/android/server/AppStateTracker$MyReceiver;,
        Lcom/android/server/AppStateTracker$AppOpsWatcher;,
        Lcom/android/server/AppStateTracker$UidObserver;,
        Lcom/android/server/AppStateTracker$Listener;,
        Lcom/android/server/AppStateTracker$FeatureFlagsObserver;,
        Lcom/android/server/AppStateTracker$Stats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AppStateTracker"

.field static final TARGET_OP:I = 0x46
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field final mActiveUids:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field mBatterySaverEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mExemptedPackages:Landroid/util/SparseSetArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mFlagsObserver:Lcom/android/server/AppStateTracker$FeatureFlagsObserver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mForceAllAppStandbyForSmallBattery:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mForceAllAppsStandby:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mForcedAppStandbyEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final mForegroundUids:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/AppStateTracker$MyHandler;

.field mIActivityManager:Landroid/app/IActivityManager;

.field mIsPluggedIn:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final mListeners:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/AppStateTracker$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mPowerWhitelistedAllAppIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mPowerWhitelistedUserAppIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field final mRunAnyRestrictedPackages:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mStandbyTracker:Lcom/android/server/AppStateTracker$StandbyTracker;

.field mStarted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mStatLogger:Lcom/android/internal/util/StatLogger;

.field private mTempWhitelistedAppIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 12

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    .line 103
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 107
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    .line 111
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 117
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    .line 123
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedUserAppIds:[I

    .line 126
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mTempWhitelistedAppIds:[I

    .line 132
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    .line 135
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mListeners:Landroid/util/ArraySet;

    .line 183
    new-instance v0, Lcom/android/internal/util/StatLogger;

    const-string v1, "UID_FG_STATE_CHANGED"

    const-string v2, "UID_ACTIVE_STATE_CHANGED"

    const-string v3, "RUN_ANY_CHANGED"

    const-string v4, "ALL_UNWHITELISTED"

    const-string v5, "ALL_WHITELIST_CHANGED"

    const-string v6, "TEMP_WHITELIST_CHANGED"

    const-string v7, "EXEMPT_CHANGED"

    const-string v8, "FORCE_ALL_CHANGED"

    const-string v9, "FORCE_APP_STANDBY_FEATURE_FLAG_CHANGED"

    const-string v10, "IS_UID_ACTIVE_CACHED"

    const-string v11, "IS_UID_ACTIVE_RAW"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 405
    iput-object p1, p0, Lcom/android/server/AppStateTracker;->mContext:Landroid/content/Context;

    .line 406
    new-instance p1, Lcom/android/server/AppStateTracker$MyHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/AppStateTracker$MyHandler;-><init>(Lcom/android/server/AppStateTracker;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;

    .line 407
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/AppStateTracker;)Landroid/content/Context;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/server/AppStateTracker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/AppStateTracker;)Ljava/lang/Object;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1800(Landroid/util/SparseBooleanArray;IZ)Z
    .locals 0

    .line 77
    invoke-static {p0, p1, p2}, Lcom/android/server/AppStateTracker;->removeUidFromArray(Landroid/util/SparseBooleanArray;IZ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Landroid/util/SparseBooleanArray;I)Z
    .locals 0

    .line 77
    invoke-static {p0, p1}, Lcom/android/server/AppStateTracker;->addUidToArray(Landroid/util/SparseBooleanArray;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/AppStateTracker;)Lcom/android/server/AppStateTracker$MyHandler;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/AppStateTracker;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/server/AppStateTracker;->updateForceAllAppStandbyState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/AppStateTracker;)Landroid/util/SparseSetArray;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/AppStateTracker;)Lcom/android/internal/util/StatLogger;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/AppStateTracker;)[Lcom/android/server/AppStateTracker$Listener;
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/android/server/AppStateTracker;->cloneListeners()[Lcom/android/server/AppStateTracker$Listener;

    move-result-object p0

    return-object p0
.end method

.method private static addUidToArray(Landroid/util/SparseBooleanArray;I)Z
    .locals 2

    .line 609
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 610
    return v1

    .line 612
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    return v1

    .line 615
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 616
    return v0
.end method

.method private cleanUpArrayForUser(Landroid/util/SparseBooleanArray;I)V
    .locals 2

    .line 978
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 979
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 980
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 982
    if-ne v1, p2, :cond_0

    .line 983
    invoke-virtual {p1, v0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    .line 978
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 986
    :cond_1
    return-void
.end method

.method private cloneListeners()[Lcom/android/server/AppStateTracker$Listener;
    .locals 3

    .line 720
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 721
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mListeners:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/server/AppStateTracker$Listener;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/AppStateTracker$Listener;

    monitor-exit v0

    return-object v1

    .line 722
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpUids(Ljava/io/PrintWriter;Landroid/util/SparseBooleanArray;)V
    .locals 3

    .line 1294
    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1296
    const-string v0, ""

    .line 1297
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1298
    invoke-virtual {p2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1299
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1300
    invoke-virtual {p2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1301
    const-string v0, " "

    .line 1297
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1304
    :cond_1
    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1305
    return-void
.end method

.method private findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 567
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 568
    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 571
    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 572
    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 574
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 575
    return v1

    .line 571
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 578
    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method static isAnyAppIdUnwhitelisted([I[I)Z
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1022
    nop

    .line 1023
    nop

    .line 1028
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p0

    const/4 v4, 0x1

    if-lt v1, v3, :cond_0

    .line 1029
    move v3, v4

    goto :goto_1

    .line 1028
    :cond_0
    nop

    .line 1029
    move v3, v0

    :goto_1
    array-length v5, p1

    if-lt v2, v5, :cond_1

    .line 1030
    move v5, v4

    goto :goto_2

    .line 1029
    :cond_1
    nop

    .line 1030
    move v5, v0

    :goto_2
    if-nez v3, :cond_5

    if-eqz v5, :cond_2

    .line 1031
    goto :goto_3

    .line 1033
    :cond_2
    aget v3, p0, v1

    .line 1034
    aget v5, p1, v2

    .line 1036
    if-ne v3, v5, :cond_3

    .line 1037
    add-int/lit8 v1, v1, 0x1

    .line 1038
    add-int/lit8 v2, v2, 0x1

    .line 1039
    goto :goto_0

    .line 1041
    :cond_3
    if-ge v3, v5, :cond_4

    .line 1043
    return v4

    .line 1045
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 1046
    goto :goto_0

    .line 1047
    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    .line 1048
    return v0

    .line 1050
    :cond_6
    return v5
.end method

.method private isRestricted(ILjava/lang/String;ZZ)Z
    .locals 4

    .line 1097
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTracker;->isUidActive(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1098
    return v1

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 1103
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    invoke-static {v3, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1104
    monitor-exit v0

    return v1

    .line 1106
    :cond_1
    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/server/AppStateTracker;->mTempWhitelistedAppIds:[I

    .line 1107
    invoke-static {p3, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1108
    monitor-exit v0

    return v1

    .line 1110
    :cond_2
    iget-boolean p3, p0, Lcom/android/server/AppStateTracker;->mForcedAppStandbyEnabled:Z

    if-eqz p3, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTracker;->isRunAnyRestrictedLocked(ILjava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1111
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 1113
    :cond_3
    if-eqz p4, :cond_4

    .line 1114
    monitor-exit v0

    return v1

    .line 1116
    :cond_4
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 1117
    iget-object p3, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1118
    monitor-exit v0

    return v1

    .line 1120
    :cond_5
    iget-boolean p1, p0, Lcom/android/server/AppStateTracker;->mForceAllAppsStandby:Z

    monitor-exit v0

    return p1

    .line 1121
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static synthetic lambda$onSystemServicesReady$0(Lcom/android/server/AppStateTracker;Landroid/os/PowerSaveState;)V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 459
    :try_start_0
    iget-boolean p1, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean p1, p0, Lcom/android/server/AppStateTracker;->mBatterySaverEnabled:Z

    .line 460
    invoke-direct {p0}, Lcom/android/server/AppStateTracker;->updateForceAllAppStandbyState()V

    .line 461
    monitor-exit v0

    .line 462
    return-void

    .line 461
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private refreshForcedAppStandbyUidPackagesLocked()V
    .locals 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 518
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x46

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    .line 521
    if-nez v0, :cond_0

    .line 522
    return-void

    .line 524
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 525
    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_4

    .line 526
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 527
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v6

    .line 529
    move v7, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 530
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    .line 531
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v9

    if-eq v9, v2, :cond_1

    .line 532
    goto :goto_2

    .line 534
    :cond_1
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v8

    if-eqz v8, :cond_2

    .line 535
    iget-object v8, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    .line 536
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 535
    invoke-static {v9, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 525
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 540
    :cond_4
    return-void
.end method

.method private static removeUidFromArray(Landroid/util/SparseBooleanArray;IZ)Z
    .locals 2

    .line 620
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 621
    return v1

    .line 623
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 624
    return v1

    .line 626
    :cond_1
    if-eqz p2, :cond_2

    .line 627
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_0

    .line 629
    :cond_2
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 631
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private toggleForceAllAppsStandbyLocked(Z)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 557
    iget-boolean v0, p0, Lcom/android/server/AppStateTracker;->mForceAllAppsStandby:Z

    if-ne p1, v0, :cond_0

    .line 558
    return-void

    .line 560
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/AppStateTracker;->mForceAllAppsStandby:Z

    .line 562
    iget-object p1, p0, Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;

    invoke-virtual {p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyForceAllAppsStandbyChanged()V

    .line 563
    return-void
.end method

.method private updateForceAllAppStandbyState()V
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 544
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppStateTracker;->mForceAllAppStandbyForSmallBattery:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->isSmallBatteryDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 545
    iget-boolean v1, p0, Lcom/android/server/AppStateTracker;->mIsPluggedIn:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/AppStateTracker;->toggleForceAllAppsStandbyLocked(Z)V

    goto :goto_0

    .line 547
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/AppStateTracker;->mBatterySaverEnabled:Z

    invoke-direct {p0, v1}, Lcom/android/server/AppStateTracker;->toggleForceAllAppsStandbyLocked(Z)V

    .line 549
    :goto_0
    monitor-exit v0

    .line 550
    return-void

    .line 549
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addListener(Lcom/android/server/AppStateTracker$Listener;)V
    .locals 2

    .line 1059
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1060
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1061
    monitor-exit v0

    .line 1062
    return-void

    .line 1061
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public areAlarmsRestricted(ILjava/lang/String;Z)Z
    .locals 1

    .line 1069
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/AppStateTracker;->isRestricted(ILjava/lang/String;ZZ)Z

    move-result p1

    return p1
.end method

.method public areForegroundServicesRestricted(ILjava/lang/String;)Z
    .locals 1

    .line 1087
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1088
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTracker;->isRunAnyRestrictedLocked(ILjava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 1089
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public areJobsRestricted(ILjava/lang/String;Z)Z
    .locals 1

    .line 1078
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/AppStateTracker;->isRestricted(ILjava/lang/String;ZZ)Z

    move-result p1

    return p1
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5

    .line 1232
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1233
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forced App Standby Feature enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/AppStateTracker;->mForcedAppStandbyEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1235
    const-string v1, "Force all apps standby: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1236
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->isForceAllAppsStandbyEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1238
    const-string v1, "Small Battery Device: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1239
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->isSmallBatteryDevice()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1241
    const-string v1, "Force all apps standby for small battery device: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1242
    iget-boolean v1, p0, Lcom/android/server/AppStateTracker;->mForceAllAppStandbyForSmallBattery:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1244
    const-string v1, "Plugged In: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1245
    iget-boolean v1, p0, Lcom/android/server/AppStateTracker;->mIsPluggedIn:Z

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 1247
    const-string v1, "Active uids: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1248
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, p1, v1}, Lcom/android/server/AppStateTracker;->dumpUids(Ljava/io/PrintWriter;Landroid/util/SparseBooleanArray;)V

    .line 1250
    const-string v1, "Foreground uids: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1251
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, p1, v1}, Lcom/android/server/AppStateTracker;->dumpUids(Ljava/io/PrintWriter;Landroid/util/SparseBooleanArray;)V

    .line 1253
    const-string v1, "Except-idle + user whitelist appids: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1254
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1256
    const-string v1, "User whitelist appids: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1257
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedUserAppIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1259
    const-string v1, "Temp whitelist appids: "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1260
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mTempWhitelistedAppIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1262
    const-string v1, "Exempted packages:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1264
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v3}, Landroid/util/SparseSetArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1265
    const-string v3, "User "

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1266
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 1267
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1269
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1270
    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseSetArray;->sizeAt(I)I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1271
    iget-object v4, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseSetArray;->valueAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1272
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1270
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1274
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1264
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1276
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1277
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1279
    const-string v1, "Restricted packages:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1281
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1282
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1283
    const-string v3, " "

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1284
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1286
    goto :goto_2

    .line 1287
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1289
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/StatLogger;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1290
    monitor-exit v0

    .line 1291
    return-void

    .line 1290
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1228
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->setIndent(Ljava/lang/String;)Lcom/android/internal/util/IndentingPrintWriter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTracker;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1229
    return-void
.end method

.method public dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 11

    .line 1308
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1309
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1311
    const-wide v1, 0x10800000001L

    iget-boolean v3, p0, Lcom/android/server/AppStateTracker;->mForceAllAppsStandby:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1312
    const-wide v1, 0x10800000006L

    .line 1313
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->isSmallBatteryDevice()Z

    move-result v3

    .line 1312
    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1314
    const-wide v1, 0x10800000007L

    iget-boolean v3, p0, Lcom/android/server/AppStateTracker;->mForceAllAppStandbyForSmallBattery:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1316
    const-wide v1, 0x10800000008L

    iget-boolean v3, p0, Lcom/android/server/AppStateTracker;->mIsPluggedIn:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1318
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1319
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1320
    const-wide v3, 0x20500000002L

    iget-object v5, p0, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    .line 1321
    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 1320
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1318
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1325
    :cond_1
    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1326
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1327
    const-wide v3, 0x2050000000bL

    iget-object v5, p0, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    .line 1328
    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 1327
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1325
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1332
    :cond_3
    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    array-length v3, v2

    move v4, v1

    :goto_2
    if-ge v4, v3, :cond_4

    aget v5, v2, v4

    .line 1333
    const-wide v6, 0x20500000003L

    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1332
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1336
    :cond_4
    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedUserAppIds:[I

    array-length v3, v2

    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_5

    aget v5, v2, v4

    .line 1337
    const-wide v6, 0x2050000000cL

    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1336
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1340
    :cond_5
    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mTempWhitelistedAppIds:[I

    array-length v3, v2

    move v4, v1

    :goto_4
    if-ge v4, v3, :cond_6

    aget v5, v2, v4

    .line 1341
    const-wide v6, 0x20500000004L

    invoke-virtual {p1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1340
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1344
    :cond_6
    move v2, v1

    :goto_5
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v3}, Landroid/util/SparseSetArray;->size()I

    move-result v3

    const-wide v4, 0x10900000002L

    const-wide v6, 0x10500000001L

    if-ge v2, v3, :cond_8

    .line 1345
    move v3, v1

    :goto_6
    iget-object v8, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseSetArray;->sizeAt(I)I

    move-result v8

    if-ge v3, v8, :cond_7

    .line 1346
    const-wide v8, 0x20b0000000aL

    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 1349
    iget-object v10, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v10, v2}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result v10

    invoke-virtual {p1, v6, v7, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1350
    iget-object v10, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v10, v2, v3}, Landroid/util/SparseSetArray;->valueAt(II)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1352
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1345
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1344
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1356
    :cond_8
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1357
    const-wide v8, 0x20b00000005L

    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 1359
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1360
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1362
    invoke-virtual {p1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1363
    goto :goto_7

    .line 1365
    :cond_9
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const-wide v2, 0x10b00000009L

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/util/StatLogger;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1367
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1368
    monitor-exit v0

    .line 1369
    return-void

    .line 1368
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method handleUserRemoved(I)V
    .locals 3

    .line 961
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 962
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 963
    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 964
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 965
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 967
    if-ne v2, p1, :cond_0

    .line 968
    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 962
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 971
    :cond_1
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v1, p1}, Lcom/android/server/AppStateTracker;->cleanUpArrayForUser(Landroid/util/SparseBooleanArray;I)V

    .line 972
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v1, p1}, Lcom/android/server/AppStateTracker;->cleanUpArrayForUser(Landroid/util/SparseBooleanArray;I)V

    .line 973
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mExemptedPackages:Landroid/util/SparseSetArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 974
    monitor-exit v0

    .line 975
    return-void

    .line 974
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method injectActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 489
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method injectAppOpsManager()Landroid/app/AppOpsManager;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    return-object v0
.end method

.method injectGetGlobalSettingInt(Ljava/lang/String;I)I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 509
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method injectIActivityManager()Landroid/app/IActivityManager;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 484
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method injectIAppOpsService()Lcom/android/internal/app/IAppOpsService;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 478
    const-string v0, "appops"

    .line 479
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 478
    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    return-object v0
.end method

.method injectPowerManagerInternal()Landroid/os/PowerManagerInternal;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 494
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method injectUsageStatsManagerInternal()Landroid/app/usage/UsageStatsManagerInternal;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 499
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    return-object v0
.end method

.method isForceAllAppsStandbyEnabled()Z
    .locals 2

    .line 1178
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1179
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppStateTracker;->mForceAllAppsStandby:Z

    monitor-exit v0

    return v1

    .line 1180
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isRunAnyInBackgroundAppOpsAllowed(ILjava/lang/String;)Z
    .locals 1

    .line 1189
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1190
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AppStateTracker;->isRunAnyRestrictedLocked(ILjava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    monitor-exit v0

    return p1

    .line 1191
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method isRunAnyRestrictedLocked(ILjava/lang/String;)Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 586
    invoke-direct {p0, p1, p2}, Lcom/android/server/AppStateTracker;->findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method isSmallBatteryDevice()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 504
    invoke-static {}, Landroid/app/ActivityManager;->isSmallBatteryDevice()Z

    move-result v0

    return v0
.end method

.method public isUidActive(I)Z
    .locals 2

    .line 1132
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    const/4 p1, 0x1

    return p1

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1136
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mActiveUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 1137
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isUidActiveSynced(I)Z
    .locals 4

    .line 1146
    invoke-virtual {p0, p1}, Lcom/android/server/AppStateTracker;->isUidActive(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1147
    const/4 p1, 0x1

    return p1

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    .line 1151
    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, p1}, Landroid/app/ActivityManagerInternal;->isUidActive(I)Z

    move-result p1

    .line 1152
    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 1154
    return p1
.end method

.method public isUidInForeground(I)Z
    .locals 2

    .line 1165
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1166
    const/4 p1, 0x1

    return p1

    .line 1168
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1169
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mForegroundUids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 1170
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isUidPowerSaveUserWhitelisted(I)Z
    .locals 2

    .line 1210
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1211
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedUserAppIds:[I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 1212
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isUidPowerSaveWhitelisted(I)Z
    .locals 2

    .line 1200
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1201
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 1202
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isUidTempPowerSaveWhitelisted(I)Z
    .locals 2

    .line 1221
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1222
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mTempWhitelistedAppIds:[I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 1223
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onSystemServicesReady()V
    .locals 6

    .line 413
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 414
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/AppStateTracker;->mStarted:Z

    if-eqz v1, :cond_0

    .line 415
    monitor-exit v0

    return-void

    .line 417
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/AppStateTracker;->mStarted:Z

    .line 419
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->injectIActivityManager()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager;

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mIActivityManager:Landroid/app/IActivityManager;

    .line 420
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->injectActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 421
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->injectAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 422
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->injectIAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppOpsService;

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 423
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->injectPowerManagerInternal()Landroid/os/PowerManagerInternal;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 424
    nop

    .line 425
    invoke-virtual {p0}, Lcom/android/server/AppStateTracker;->injectUsageStatsManagerInternal()Landroid/app/usage/UsageStatsManagerInternal;

    move-result-object v1

    .line 424
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 427
    new-instance v1, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;-><init>(Lcom/android/server/AppStateTracker;)V

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mFlagsObserver:Lcom/android/server/AppStateTracker$FeatureFlagsObserver;

    .line 428
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mFlagsObserver:Lcom/android/server/AppStateTracker$FeatureFlagsObserver;

    invoke-virtual {v1}, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->register()V

    .line 429
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mFlagsObserver:Lcom/android/server/AppStateTracker$FeatureFlagsObserver;

    invoke-virtual {v1}, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->isForcedAppStandbyEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/AppStateTracker;->mForcedAppStandbyEnabled:Z

    .line 430
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mFlagsObserver:Lcom/android/server/AppStateTracker$FeatureFlagsObserver;

    .line 431
    invoke-virtual {v1}, Lcom/android/server/AppStateTracker$FeatureFlagsObserver;->isForcedAppStandbyForSmallBatteryEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/AppStateTracker;->mForceAllAppStandbyForSmallBattery:Z

    .line 432
    new-instance v1, Lcom/android/server/AppStateTracker$StandbyTracker;

    invoke-direct {v1, p0}, Lcom/android/server/AppStateTracker$StandbyTracker;-><init>(Lcom/android/server/AppStateTracker;)V

    iput-object v1, p0, Lcom/android/server/AppStateTracker;->mStandbyTracker:Lcom/android/server/AppStateTracker$StandbyTracker;

    .line 433
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mStandbyTracker:Lcom/android/server/AppStateTracker$StandbyTracker;

    invoke-virtual {v1, v2}, Landroid/app/usage/UsageStatsManagerInternal;->addAppIdleStateChangeListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mIActivityManager:Landroid/app/IActivityManager;

    new-instance v3, Lcom/android/server/AppStateTracker$UidObserver;

    invoke-direct {v3, p0, v1}, Lcom/android/server/AppStateTracker$UidObserver;-><init>(Lcom/android/server/AppStateTracker;Lcom/android/server/AppStateTracker$1;)V

    const/16 v4, 0xf

    const/4 v5, -0x1

    invoke-interface {v2, v3, v4, v5, v1}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 442
    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v3, 0x46

    new-instance v4, Lcom/android/server/AppStateTracker$AppOpsWatcher;

    invoke-direct {v4, p0, v1}, Lcom/android/server/AppStateTracker$AppOpsWatcher;-><init>(Lcom/android/server/AppStateTracker;Lcom/android/server/AppStateTracker$1;)V

    invoke-interface {v2, v3, v1, v4}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    goto :goto_0

    .line 444
    :catch_0
    move-exception v2

    .line 448
    :goto_0
    :try_start_2
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 449
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    iget-object v3, p0, Lcom/android/server/AppStateTracker;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/AppStateTracker$MyReceiver;

    invoke-direct {v4, p0, v1}, Lcom/android/server/AppStateTracker$MyReceiver;-><init>(Lcom/android/server/AppStateTracker;Lcom/android/server/AppStateTracker$1;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 453
    invoke-direct {p0}, Lcom/android/server/AppStateTracker;->refreshForcedAppStandbyUidPackagesLocked()V

    .line 455
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v2, Lcom/android/server/-$$Lambda$AppStateTracker$zzioY8jvEm-1GnJ13CUiQGauPEE;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$AppStateTracker$zzioY8jvEm-1GnJ13CUiQGauPEE;-><init>(Lcom/android/server/AppStateTracker;)V

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(ILjava/util/function/Consumer;)V

    .line 464
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v1, v3}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v1

    iget-boolean v1, v1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/AppStateTracker;->mBatterySaverEnabled:Z

    .line 467
    invoke-direct {p0}, Lcom/android/server/AppStateTracker;->updateForceAllAppStandbyState()V

    .line 468
    monitor-exit v0

    .line 469
    return-void

    .line 468
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setPowerSaveWhitelistAppIds([I[I[I)V
    .locals 3

    .line 995
    iget-object v0, p0, Lcom/android/server/AppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 996
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    .line 997
    iget-object v2, p0, Lcom/android/server/AppStateTracker;->mTempWhitelistedAppIds:[I

    .line 999
    iput-object p1, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    .line 1000
    iput-object p3, p0, Lcom/android/server/AppStateTracker;->mTempWhitelistedAppIds:[I

    .line 1001
    iput-object p2, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedUserAppIds:[I

    .line 1003
    iget-object p1, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    invoke-static {v1, p1}, Lcom/android/server/AppStateTracker;->isAnyAppIdUnwhitelisted([I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1004
    iget-object p1, p0, Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;

    invoke-virtual {p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyAllUnwhitelisted()V

    goto :goto_0

    .line 1005
    :cond_0
    iget-object p1, p0, Lcom/android/server/AppStateTracker;->mPowerWhitelistedAllAppIds:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1006
    iget-object p1, p0, Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;

    invoke-virtual {p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyAllWhitelistChanged()V

    .line 1009
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/AppStateTracker;->mTempWhitelistedAppIds:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1010
    iget-object p1, p0, Lcom/android/server/AppStateTracker;->mHandler:Lcom/android/server/AppStateTracker$MyHandler;

    invoke-virtual {p1}, Lcom/android/server/AppStateTracker$MyHandler;->notifyTempWhitelistChanged()V

    .line 1013
    :cond_2
    monitor-exit v0

    .line 1014
    return-void

    .line 1013
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method updateForcedAppStandbyUidPackageLocked(ILjava/lang/String;Z)Z
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 595
    invoke-direct {p0, p1, p2}, Lcom/android/server/AppStateTracker;->findForcedAppStandbyUidPackageIndexLocked(ILjava/lang/String;)I

    move-result v0

    .line 596
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    .line 597
    move v3, v2

    goto :goto_0

    .line 596
    :cond_0
    nop

    .line 597
    move v3, v1

    :goto_0
    if-ne v3, p3, :cond_1

    .line 598
    return v1

    .line 600
    :cond_1
    if-eqz p3, :cond_2

    .line 601
    iget-object p3, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 603
    :cond_2
    iget-object p1, p0, Lcom/android/server/AppStateTracker;->mRunAnyRestrictedPackages:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 605
    :goto_1
    return v2
.end method
