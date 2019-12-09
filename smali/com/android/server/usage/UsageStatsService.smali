.class public Lcom/android/server/usage/UsageStatsService;
.super Lcom/android/server/SystemService;
.source "UsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UsageStatsService$LocalService;,
        Lcom/android/server/usage/UsageStatsService$BinderService;,
        Lcom/android/server/usage/UsageStatsService$H;,
        Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;
    }
.end annotation


# static fields
.field static final COMPRESS_TIME:Z = false

.field static final DEBUG:Z

.field private static final ENABLE_KERNEL_UPDATES:Z = true

.field public static final ENABLE_TIME_CHANGE_CORRECTION:Z

.field private static final FLUSH_INTERVAL:J = 0x124f80L

.field private static final KERNEL_COUNTER_FILE:Ljava/io/File;

.field static final MSG_FLUSH_TO_DISK:I = 0x1

.field static final MSG_REMOVE_USER:I = 0x2

.field static final MSG_REPORT_EVENT:I = 0x0

.field static final MSG_UID_STATE_CHANGED:I = 0x3

.field static final TAG:Ljava/lang/String; = "UsageStatsService"

.field private static final TEN_SECONDS:J = 0x2710L

.field private static final TIME_CHANGE_THRESHOLD_MILLIS:J = 0x7d0L

.field private static final TWENTY_MINUTES:J = 0x124f80L


# instance fields
.field mAppOps:Landroid/app/AppOpsManager;

.field mAppStandby:Lcom/android/server/usage/AppStandbyController;

.field mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

.field mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

.field mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field mRealTimeSnapshot:J

.field private mStandbyChangeListener:Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

.field mSystemTimeSnapshot:J

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private final mUidToKernelCounter:Landroid/util/SparseIntArray;

.field private mUsageStatsDir:Ljava/io/File;

.field mUserManager:Landroid/os/UserManager;

.field private final mUserState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/UserUsageStatsService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 94
    const-string/jumbo v0, "persist.debug.time_correction"

    .line 95
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    .line 104
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/usage/UsageStatsService;->DEBUG:Z

    .line 115
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/uid_procstat/set"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    .line 134
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    .line 135
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;

    .line 146
    new-instance v0, Lcom/android/server/usage/UsageStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsService$1;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mStandbyChangeListener:Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    .line 270
    new-instance v0, Lcom/android/server/usage/UsageStatsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/usage/UsageStatsService$2;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUidObserver:Landroid/app/IUidObserver;

    .line 168
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/usage/UsageStatsService;)Landroid/util/SparseIntArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usage/UsageStatsService;

    .line 90
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUidToKernelCounter:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$400()Ljava/io/File;
    .registers 1

    .line 90
    sget-object v0, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/usage/UsageStatsService;)Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usage/UsageStatsService;

    .line 90
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/usage/UsageStatsService;II)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/usage/UsageStatsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService;->shouldObfuscateInstantAppsForCaller(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/usage/UsageStatsService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usage/UsageStatsService;

    .line 90
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/usage/UsageStatsService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/usage/UsageStatsService;

    .line 90
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/server/usage/UsageStatsService;IJ)Lcom/android/server/usage/UserUsageStatsService;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/usage/UsageStatsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v0

    return-object v0
.end method

.method private checkAndGetTimeLocked()J
    .registers 13

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 371
    .local v0, "actualSystemTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 372
    .local v2, "actualRealtime":J
    iget-wide v4, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v4, v6

    .line 373
    .local v4, "expectedSystemTime":J
    sub-long v6, v0, v4

    .line 374
    .local v6, "diffSystemTime":J
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0x7d0

    cmp-long v8, v8, v10

    if-lez v8, :cond_59

    sget-boolean v8, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    if-eqz v8, :cond_59

    .line 377
    const-string v8, "UsageStatsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Time changed in UsageStats by "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v10, 0x3e8

    div-long v10, v6, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " seconds"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 379
    .local v8, "userCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_45
    if-ge v9, v8, :cond_55

    .line 380
    iget-object v10, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/usage/UserUsageStatsService;

    .line 381
    .local v10, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v10, v4, v5, v0, v1}, Lcom/android/server/usage/UserUsageStatsService;->onTimeChanged(JJ)V

    .line 379
    .end local v10    # "service":Lcom/android/server/usage/UserUsageStatsService;
    add-int/lit8 v9, v9, 0x1

    goto :goto_45

    .line 383
    .end local v9    # "i":I
    :cond_55
    iput-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    .line 384
    iput-wide v0, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    .line 386
    .end local v8    # "userCount":I
    :cond_59
    return-wide v0
.end method

.method private cleanUpRemovedUsersLocked()V
    .registers 10

    .line 315
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 316
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v0, :cond_59

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_59

    .line 320
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 321
    .local v1, "toDelete":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "fileNames":[Ljava/lang/String;
    if-nez v2, :cond_1d

    .line 324
    return-void

    .line 327
    :cond_1d
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 329
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 330
    .local v3, "userCount":I
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_2a
    if-ge v5, v3, :cond_3e

    .line 331
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 332
    .local v6, "userInfo":Landroid/content/pm/UserInfo;
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 330
    .end local v6    # "userInfo":Landroid/content/pm/UserInfo;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 335
    .end local v5    # "i":I
    :cond_3e
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 336
    .local v5, "deleteCount":I
    nop

    .local v4, "i":I
    :goto_43
    if-ge v4, v5, :cond_58

    .line 337
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    .line 336
    add-int/lit8 v4, v4, 0x1

    goto :goto_43

    .line 339
    .end local v4    # "i":I
    :cond_58
    return-void

    .line 317
    .end local v1    # "toDelete":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v2    # "fileNames":[Ljava/lang/String;
    .end local v3    # "userCount":I
    .end local v5    # "deleteCount":I
    :cond_59
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "There can\'t be no users"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V
    .registers 6
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;

    .line 394
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 395
    return-void
.end method

.method private static deleteRecursively(Ljava/io/File;)V
    .registers 5
    .param p0, "f"    # Ljava/io/File;

    .line 342
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 343
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_12

    .line 344
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    .line 345
    .local v3, "subFile":Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/usage/UsageStatsService;->deleteRecursively(Ljava/io/File;)V

    .line 344
    .end local v3    # "subFile":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 349
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 350
    const-string v1, "UsageStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_2e
    return-void
.end method

.method private flushToDiskLocked()V
    .registers 6

    .line 567
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 568
    .local v0, "userCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_22

    .line 569
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/UserUsageStatsService;

    .line 570
    .local v2, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v2}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 571
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/usage/AppStandbyController;->flushToDisk(I)V

    .line 568
    .end local v2    # "service":Lcom/android/server/usage/UserUsageStatsService;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 573
    .end local v1    # "i":I
    :cond_22
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v1}, Lcom/android/server/usage/AppStandbyController;->flushDurationsToDisk()V

    .line 575
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 576
    return-void
.end method

.method private getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v0, :cond_e

    .line 248
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    .line 250
    :cond_e
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDpmInternal:Landroid/app/admin/DevicePolicyManagerInternal;

    return-object v0
.end method

.method private getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "currentTimeMillis"    # J

    .line 356
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UserUsageStatsService;

    .line 357
    .local v0, "service":Lcom/android/server/usage/UserUsageStatsService;
    if-nez v0, :cond_27

    .line 358
    new-instance v1, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    .line 359
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1, v3, p0}, Lcom/android/server/usage/UserUsageStatsService;-><init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V

    move-object v0, v1

    .line 360
    invoke-virtual {v0, p2, p3}, Lcom/android/server/usage/UserUsageStatsService;->init(J)V

    .line 361
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 363
    :cond_27
    return-object v0
.end method

.method public static synthetic lambda$onStart$0(Lcom/android/server/usage/UsageStatsService;IIJJLandroid/app/PendingIntent;)V
    .registers 13
    .param p1, "observerId"    # I
    .param p2, "userId"    # I
    .param p3, "timeLimit"    # J
    .param p5, "timeElapsed"    # J
    .param p7, "callbackIntent"    # Landroid/app/PendingIntent;

    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.app.usage.extra.OBSERVER_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    const-string v1, "android.app.usage.extra.TIME_LIMIT"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 185
    const-string v1, "android.app.usage.extra.TIME_USED"

    invoke-virtual {v0, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 187
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p7, v1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_14 .. :try_end_1c} :catch_1d

    .line 191
    goto :goto_34

    .line 188
    :catch_1d
    move-exception v1

    .line 189
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v2, "UsageStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t deliver callback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_34
    return-void
.end method

.method private shouldObfuscateInstantAppsForCaller(II)Z
    .registers 4
    .param p1, "callingUid"    # I
    .param p2, "userId"    # I

    .line 311
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->canAccessInstantApps(II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static validRange(JJJ)Z
    .registers 7
    .param p0, "currentTime"    # J
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J

    .line 563
    cmp-long v0, p2, p0

    if-gtz v0, :cond_a

    cmp-long v0, p2, p4

    if-gez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method dump([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 13
    .param p1, "args"    # [Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 582
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 583
    :try_start_3
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v1, p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 585
    .local v1, "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    const/4 v2, 0x0

    .line 586
    .local v2, "checkin":Z
    const/4 v3, 0x0

    .line 587
    .local v3, "compact":Z
    const/4 v4, 0x0

    .line 589
    .local v4, "pkg":Ljava/lang/String;
    const/4 v5, 0x0

    if-eqz p1, :cond_5f

    .line 590
    move v6, v3

    move v3, v2

    move v2, v5

    .line 590
    .local v2, "i":I
    .local v3, "checkin":Z
    .local v6, "compact":Z
    :goto_13
    array-length v7, p1

    if-ge v2, v7, :cond_61

    .line 591
    aget-object v7, p1, v2

    .line 592
    .local v7, "arg":Ljava/lang/String;
    const-string v8, "--checkin"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 593
    const/4 v3, 0x1

    goto :goto_5c

    .line 595
    :cond_22
    const-string v8, "-c"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 596
    const/4 v6, 0x1

    goto :goto_5c

    .line 597
    :cond_2c
    const-string v8, "flush"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3e

    .line 598
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    .line 599
    const-string v5, "Flushed stats to disk"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    monitor-exit v0

    return-void

    .line 601
    :cond_3e
    const-string/jumbo v8, "is-app-standby-enabled"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_50

    .line 602
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    iget-boolean v5, v5, Lcom/android/server/usage/AppStandbyController;->mAppIdleEnabled:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 603
    monitor-exit v0

    return-void

    .line 604
    :cond_50
    if-eqz v7, :cond_5c

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5c

    .line 606
    move-object v4, v7

    .line 607
    goto :goto_61

    .line 590
    .end local v7    # "arg":Ljava/lang/String;
    :cond_5c
    :goto_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 612
    .end local v6    # "compact":Z
    .local v2, "checkin":Z
    .local v3, "compact":Z
    :cond_5f
    move v6, v3

    move v3, v2

    .line 612
    .end local v2    # "checkin":Z
    .local v3, "checkin":Z
    .restart local v6    # "compact":Z
    :cond_61
    :goto_61
    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 613
    .local v2, "userCount":I
    nop

    .line 613
    .local v5, "i":I
    :goto_68
    if-ge v5, v2, :cond_a7

    .line 614
    iget-object v7, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 615
    .local v7, "userId":I
    const-string/jumbo v8, "user"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 616
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 617
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 618
    if-eqz v3, :cond_8e

    .line 619
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v8, v1}, Lcom/android/server/usage/UserUsageStatsService;->checkin(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_9c

    .line 621
    :cond_8e
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/usage/UserUsageStatsService;

    invoke-virtual {v8, v1, v4, v6}, Lcom/android/server/usage/UserUsageStatsService;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Z)V

    .line 622
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 624
    :goto_9c
    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v8, v1, v7, v4}, Lcom/android/server/usage/AppStandbyController;->dumpUser(Lcom/android/internal/util/IndentingPrintWriter;ILjava/lang/String;)V

    .line 625
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 613
    .end local v7    # "userId":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_68

    .line 628
    .end local v5    # "i":I
    :cond_a7
    if-nez v4, :cond_b1

    .line 629
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 630
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/usage/AppStandbyController;->dumpState([Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 633
    :cond_b1
    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v5, p2}, Lcom/android/server/usage/AppTimeLimitController;->dump(Ljava/io/PrintWriter;)V

    .line 634
    .end local v1    # "idpw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v2    # "userCount":I
    .end local v3    # "checkin":Z
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v6    # "compact":Z
    monitor-exit v0

    .line 635
    return-void

    .line 634
    :catchall_b8
    move-exception v1

    monitor-exit v0
    :try_end_ba
    .catchall {:try_start_3 .. :try_end_ba} :catchall_b8

    throw v1
.end method

.method flushToDisk()V
    .registers 3

    .line 443
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 444
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    .line 445
    monitor-exit v0

    .line 446
    return-void

    .line 445
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public onBootPhase(I)V
    .registers 7
    .param p1, "phase"    # I

    .line 223
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_4c

    .line 224
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController;->onBootPhase(I)V

    .line 226
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->getDpmInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    .line 228
    const-string v0, "deviceidle"

    .line 229
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 228
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 231
    sget-object v0, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 233
    :try_start_20
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v2, 0x3

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2c} :catch_2d

    .line 239
    goto :goto_4c

    .line 237
    :catch_2d
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 241
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_34
    const-string v0, "UsageStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing procfs interface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/usage/UsageStatsService;->KERNEL_COUNTER_FILE:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_4c
    :goto_4c
    return-void
.end method

.method public onNewUpdate(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 307
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppStandbyController;->initializeDefaultsForSystemApps(I)V

    .line 308
    return-void
.end method

.method public onStart()V
    .registers 10

    .line 172
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 173
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mUserManager:Landroid/os/UserManager;

    .line 174
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 175
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 176
    new-instance v0, Lcom/android/server/usage/UsageStatsService$H;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/usage/UsageStatsService$H;-><init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    .line 178
    new-instance v0, Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/usage/AppStandbyController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    .line 180
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController;

    new-instance v1, Lcom/android/server/usage/-$$Lambda$UsageStatsService$VoLNrRDaTqGpWDfCW6NTYC92LRY;

    invoke-direct {v1, p0}, Lcom/android/server/usage/-$$Lambda$UsageStatsService$VoLNrRDaTqGpWDfCW6NTYC92LRY;-><init>(Lcom/android/server/usage/UsageStatsService;)V

    iget-object v2, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    .line 192
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/usage/AppTimeLimitController;-><init>(Lcom/android/server/usage/AppTimeLimitController$OnLimitReachedListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    .line 194
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mStandbyChangeListener:Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/server/usage/AppStandbyController;->addListener(Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;)V

    .line 195
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    .local v0, "systemDataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "usagestats"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    .line 197
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 198
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e0

    .line 203
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 204
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_STARTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsService;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;

    const/4 v2, 0x0

    invoke-direct {v4, p0, v2}, Lcom/android/server/usage/UsageStatsService$UserActionsReceiver;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    move-object v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 208
    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 209
    :try_start_b1
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->cleanUpRemovedUsersLocked()V

    .line 210
    monitor-exit v3
    :try_end_b5
    .catchall {:try_start_b1 .. :try_end_b5} :catchall_dd

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/usage/UsageStatsService;->mRealTimeSnapshot:J

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    .line 215
    const-class v3, Landroid/app/usage/UsageStatsManagerInternal;

    new-instance v4, Lcom/android/server/usage/UsageStatsService$LocalService;

    invoke-direct {v4, p0, v2}, Lcom/android/server/usage/UsageStatsService$LocalService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/usage/UsageStatsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 216
    const-string/jumbo v3, "usagestats"

    new-instance v4, Lcom/android/server/usage/UsageStatsService$BinderService;

    invoke-direct {v4, p0, v2}, Lcom/android/server/usage/UsageStatsService$BinderService;-><init>(Lcom/android/server/usage/UsageStatsService;Lcom/android/server/usage/UsageStatsService$1;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/usage/UsageStatsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 218
    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/server/usage/UsageStatsService;->mSystemTimeSnapshot:J

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    .line 219
    return-void

    .line 210
    :catchall_dd
    move-exception v2

    :try_start_de
    monitor-exit v3
    :try_end_df
    .catchall {:try_start_de .. :try_end_df} :catchall_dd

    throw v2

    .line 199
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_e0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Usage stats directory does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/usage/UsageStatsService;->mUsageStatsDir:Ljava/io/File;

    .line 200
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onStatsReloaded()V
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->postOneTimeCheckIdleStates()V

    .line 303
    return-void
.end method

.method public onStatsUpdated()V
    .registers 5

    .line 297
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0x124f80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 298
    return-void
.end method

.method onUserRemoved(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 452
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_3
    const-string v1, "UsageStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and all data."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mUserState:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 455
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppStandbyController;->onUserRemoved(I)V

    .line 456
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/AppTimeLimitController;->onUserRemoved(I)V

    .line 457
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->cleanUpRemovedUsersLocked()V

    .line 458
    monitor-exit v0

    .line 459
    return-void

    .line 458
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v1
.end method

.method queryConfigurationStats(IIJJ)Ljava/util/List;
    .registers 16
    .param p1, "userId"    # I
    .param p2, "bucketType"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v1

    .line 501
    .local v1, "timeNow":J
    move-wide v3, v1

    move-wide v5, p3

    move-wide v7, p5

    invoke-static/range {v3 .. v8}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z

    move-result v3

    if-nez v3, :cond_13

    .line 502
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 505
    :cond_13
    nop

    .line 506
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v3

    .line 507
    .local v3, "service":Lcom/android/server/usage/UserUsageStatsService;
    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryConfigurationStats(IJJ)Ljava/util/List;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 508
    .end local v1    # "timeNow":J
    .end local v3    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method queryEventStats(IIJJ)Ljava/util/List;
    .registers 16
    .param p1, "userId"    # I
    .param p2, "bucketType"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 517
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v1

    .line 518
    .local v1, "timeNow":J
    move-wide v3, v1

    move-wide v5, p3

    move-wide v7, p5

    invoke-static/range {v3 .. v8}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z

    move-result v3

    if-nez v3, :cond_13

    .line 519
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 522
    :cond_13
    nop

    .line 523
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v3

    .line 524
    .local v3, "service":Lcom/android/server/usage/UserUsageStatsService;
    move v4, p2

    move-wide v5, p3

    move-wide v7, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryEventStats(IJJ)Ljava/util/List;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 525
    .end local v1    # "timeNow":J
    .end local v3    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method queryEvents(IJJZ)Landroid/app/usage/UsageEvents;
    .registers 16
    .param p1, "userId"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "shouldObfuscateInstantApps"    # Z

    .line 533
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 534
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v1

    .line 535
    .local v1, "timeNow":J
    move-wide v3, v1

    move-wide v5, p2

    move-wide v7, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z

    move-result v3

    if-nez v3, :cond_13

    .line 536
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 539
    :cond_13
    nop

    .line 540
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v3

    .line 541
    .local v3, "service":Lcom/android/server/usage/UserUsageStatsService;
    move-wide v4, p2

    move-wide v6, p4

    move v8, p6

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryEvents(JJZ)Landroid/app/usage/UsageEvents;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 542
    .end local v1    # "timeNow":J
    .end local v3    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method queryEventsForPackage(IJJLjava/lang/String;)Landroid/app/usage/UsageEvents;
    .registers 16
    .param p1, "userId"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p6, "packageName"    # Ljava/lang/String;

    .line 550
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 551
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v1

    .line 552
    .local v1, "timeNow":J
    move-wide v3, v1

    move-wide v5, p2

    move-wide v7, p4

    invoke-static/range {v3 .. v8}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z

    move-result v3

    if-nez v3, :cond_13

    .line 553
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 556
    :cond_13
    nop

    .line 557
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v3

    .line 558
    .local v3, "service":Lcom/android/server/usage/UserUsageStatsService;
    move-wide v4, p2

    move-wide v6, p4

    move-object v8, p6

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryEventsForPackage(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 559
    .end local v1    # "timeNow":J
    .end local v3    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method queryUsageStats(IIJJZ)Ljava/util/List;
    .registers 21
    .param p1, "userId"    # I
    .param p2, "bucketType"    # I
    .param p3, "beginTime"    # J
    .param p5, "endTime"    # J
    .param p7, "obfuscateInstantApps"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJJZ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    move-object v1, p0

    move v2, p1

    .line 466
    iget-object v3, v1, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 467
    :try_start_5
    invoke-direct {v1}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v4

    .line 468
    .local v4, "timeNow":J
    move-wide v6, v4

    move-wide/from16 v8, p3

    move-wide/from16 v10, p5

    invoke-static/range {v6 .. v11}, Lcom/android/server/usage/UsageStatsService;->validRange(JJJ)Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_17

    .line 469
    monitor-exit v3

    return-object v6

    .line 472
    :cond_17
    nop

    .line 473
    invoke-direct {v1, v2, v4, v5}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v7

    .line 474
    .local v7, "service":Lcom/android/server/usage/UserUsageStatsService;
    move v8, p2

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/usage/UserUsageStatsService;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v0

    .line 475
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-nez v0, :cond_29

    .line 476
    monitor-exit v3

    return-object v6

    .line 481
    :cond_29
    if-eqz p7, :cond_4d

    .line 482
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .local v8, "i":I
    :goto_31
    if-ltz v8, :cond_4d

    .line 483
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/usage/UsageStats;

    .line 484
    .local v9, "stats":Landroid/app/usage/UsageStats;
    iget-object v10, v1, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v11, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v2, v11}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4a

    .line 485
    invoke-virtual {v9}, Landroid/app/usage/UsageStats;->getObfuscatedForInstantApp()Landroid/app/usage/UsageStats;

    move-result-object v10

    invoke-interface {v0, v8, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 482
    .end local v9    # "stats":Landroid/app/usage/UsageStats;
    :cond_4a
    add-int/lit8 v8, v8, -0x1

    goto :goto_31

    .line 490
    .end local v8    # "i":I
    :cond_4d
    monitor-exit v3

    return-object v0

    .line 491
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    .end local v4    # "timeNow":J
    .end local v7    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :catchall_4f
    move-exception v0

    monitor-exit v3
    :try_end_51
    .catchall {:try_start_5 .. :try_end_51} :catchall_4f

    throw v0
.end method

.method registerAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    .registers 16
    .param p1, "callingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "packages"    # [Ljava/lang/String;
    .param p4, "timeLimitMs"    # J
    .param p6, "callbackIntent"    # Landroid/app/PendingIntent;
    .param p7, "userId"    # I

    .line 1197
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppTimeLimitController;->addObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V

    .line 1199
    return-void
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;I)V
    .registers 12
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .param p2, "userId"    # I

    .line 411
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v1

    .line 413
    .local v1, "timeNow":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 414
    .local v3, "elapsedRealtime":J
    invoke-direct {p0, p1}, Lcom/android/server/usage/UsageStatsService;->convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V

    .line 416
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_26

    iget-object v5, p0, Lcom/android/server/usage/UsageStatsService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 417
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Landroid/content/pm/PackageManagerInternal;->isPackageEphemeral(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 418
    iget v5, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    .line 421
    :cond_26
    nop

    .line 422
    invoke-direct {p0, p2, v1, v2}, Lcom/android/server/usage/UsageStatsService;->getUserDataAndInitializeIfNeededLocked(IJ)Lcom/android/server/usage/UserUsageStatsService;

    move-result-object v5

    .line 423
    .local v5, "service":Lcom/android/server/usage/UserUsageStatsService;
    invoke-virtual {v5, p1}, Lcom/android/server/usage/UserUsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 425
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppStandby:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v6, p1, v3, v4, p2}, Lcom/android/server/usage/AppStandbyController;->reportEvent(Landroid/app/usage/UsageEvents$Event;JI)V

    .line 426
    iget v6, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    packed-switch v6, :pswitch_data_5a

    .end local v1    # "timeNow":J
    .end local v3    # "elapsedRealtime":J
    .end local v5    # "service":Lcom/android/server/usage/UserUsageStatsService;
    goto :goto_55

    .line 432
    .restart local v1    # "timeNow":J
    .restart local v3    # "elapsedRealtime":J
    .restart local v5    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :pswitch_39
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, p2}, Lcom/android/server/usage/AppTimeLimitController;->moveToBackground(Ljava/lang/String;Ljava/lang/String;I)V

    .end local v1    # "timeNow":J
    .end local v3    # "elapsedRealtime":J
    .end local v5    # "service":Lcom/android/server/usage/UserUsageStatsService;
    goto :goto_55

    .line 428
    .restart local v1    # "timeNow":J
    .restart local v3    # "elapsedRealtime":J
    .restart local v5    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :pswitch_47
    iget-object v6, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, p2}, Lcom/android/server/usage/AppTimeLimitController;->moveToForeground(Ljava/lang/String;Ljava/lang/String;I)V

    .line 430
    nop

    .line 436
    .end local v1    # "timeNow":J
    .end local v3    # "elapsedRealtime":J
    .end local v5    # "service":Lcom/android/server/usage/UserUsageStatsService;
    :goto_55
    monitor-exit v0

    .line 437
    return-void

    .line 436
    :catchall_57
    move-exception v1

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw v1

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_47
        :pswitch_39
    .end packed-switch
.end method

.method shutdown()V
    .registers 4

    .line 401
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/UsageStatsService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 403
    invoke-direct {p0}, Lcom/android/server/usage/UsageStatsService;->flushToDiskLocked()V

    .line 404
    monitor-exit v0

    .line 405
    return-void

    .line 404
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method unregisterAppUsageObserver(III)V
    .registers 5
    .param p1, "callingUid"    # I
    .param p2, "observerId"    # I
    .param p3, "userId"    # I

    .line 1202
    iget-object v0, p0, Lcom/android/server/usage/UsageStatsService;->mAppTimeLimit:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->removeObserver(III)V

    .line 1203
    return-void
.end method
