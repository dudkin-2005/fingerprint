.class Lcom/android/server/am/ActivityMetricsLogger;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;,
        Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;,
        Lcom/android/server/am/ActivityMetricsLogger$H;
    }
.end annotation


# static fields
.field private static final INVALID_DELAY:I = -0x1

.field private static final INVALID_START_TIME:J = -0x1L

.field private static final INVALID_TRANSITION_TYPE:I = -0x1

.field private static final MSG_CHECK_VISIBILITY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

.field private static final WINDOW_STATE_ASSISTANT:I = 0x3

.field private static final WINDOW_STATE_FREEFORM:I = 0x2

.field private static final WINDOW_STATE_INVALID:I = -0x1

.field private static final WINDOW_STATE_SIDE_BY_SIDE:I = 0x1

.field private static final WINDOW_STATE_STANDARD:I


# instance fields
.field private mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTransitionDelayMs:I

.field private mCurrentTransitionDeviceUptime:I

.field private mCurrentTransitionStartTime:J

.field private mDrawingTraceActive:Z

.field private final mHandler:Lcom/android/server/am/ActivityMetricsLogger$H;

.field private mLastLogTimeSecs:J

.field private mLastTransitionStartTime:J

.field private final mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLoggedTransitionStarting:Z

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mStringBuilder:Ljava/lang/StringBuilder;

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mWindowState:I

.field private final mWindowingModeTransitionInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 137
    const-string/jumbo v0, "window_time_0"

    const-string/jumbo v1, "window_time_1"

    const-string/jumbo v2, "window_time_2"

    const-string/jumbo v3, "window_time_3"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 4

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 144
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 146
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    .line 147
    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastTransitionStartTime:J

    .line 153
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 155
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 251
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastLogTimeSecs:J

    .line 252
    iput-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    .line 253
    iput-object p2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    .line 254
    new-instance p1, Lcom/android/server/am/ActivityMetricsLogger$H;

    invoke-direct {p1, p0, p3}, Lcom/android/server/am/ActivityMetricsLogger$H;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mHandler:Lcom/android/server/am/ActivityMetricsLogger$H;

    .line 255
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityMetricsLogger;->checkVisibility(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ProcessRecord;
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->findProcessForActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    return-object p0
.end method

.method private allWindowsDrawn()Z
    .locals 3

    .line 548
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 549
    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 550
    const/4 v0, 0x0

    return v0

    .line 548
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 553
    :cond_1
    return v1
.end method

.method private calculateCurrentDelay()I
    .locals 4

    .line 575
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private calculateDelay(J)I
    .locals 2

    .line 580
    iget-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method private checkVisibility(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 3

    .line 511
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 513
    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 514
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v2

    .line 513
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 518
    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->hasVisibleNonFinishingActivity(Lcom/android/server/am/TaskRecord;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 521
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityMetricsLogger;->logAppTransitionCancel(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 522
    iget-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 523
    iget-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 524
    const/4 p1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityMetricsLogger;->reset(ZLcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 526
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityMetricsLogger;->stopFullyDrawnTraceIfNeeded()V

    .line 528
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 529
    return-void

    .line 528
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private convertAppStartTransitionType(I)I
    .locals 1

    .line 705
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 706
    const/4 p1, 0x3

    return p1

    .line 708
    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 709
    const/4 p1, 0x1

    return p1

    .line 711
    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    .line 712
    const/4 p1, 0x2

    return p1

    .line 714
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private findProcessForActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ProcessRecord;
    .locals 2

    .line 895
    if-eqz p1, :cond_0

    .line 896
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    goto :goto_0

    .line 898
    :cond_0
    const/4 p1, 0x0

    .line 895
    :goto_0
    return-object p1
.end method

.method private getArtManagerInternal()Landroid/content/pm/dex/ArtManagerInternal;
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    if-nez v0, :cond_0

    .line 906
    const-class v0, Landroid/content/pm/dex/ArtManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/dex/ArtManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mArtManagerInternal:Landroid/content/pm/dex/ArtManagerInternal;

    return-object v0
.end method

.method private getTransitionType(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I
    .locals 1

    .line 856
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$900(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 857
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    if-nez v0, :cond_0

    .line 858
    const/16 p1, 0x8

    return p1

    .line 859
    :cond_0
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 860
    const/16 p1, 0x9

    return p1

    .line 862
    :cond_1
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1000(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result p1

    if-nez p1, :cond_2

    .line 863
    const/4 p1, 0x7

    return p1

    .line 865
    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private hasStartedActivity(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 3

    .line 333
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    .line 334
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 335
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 336
    if-ne p2, v2, :cond_0

    .line 337
    goto :goto_1

    .line 339
    :cond_0
    iget-boolean v2, v2, Lcom/android/server/am/ActivityRecord;->stopped:Z

    if-nez v2, :cond_1

    .line 340
    return v1

    .line 334
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 343
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private hasVisibleNonFinishingActivity(Lcom/android/server/am/TaskRecord;)Z
    .locals 4

    .line 501
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 502
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 503
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v3, :cond_0

    iget-boolean v2, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    .line 504
    return v1

    .line 501
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 507
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isAnyTransitionActive()Z
    .locals 4

    .line 557
    iget-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 558
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 557
    :goto_0
    return v0
.end method

.method private isLoggableResultCode(I)Z
    .locals 1

    .line 417
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static synthetic lambda$logAppTransitionMultiEvents$0(Lcom/android/server/am/ActivityMetricsLogger;IILcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 0

    .line 616
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActivityMetricsLogger;->logAppTransition(IILcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    return-void
.end method

.method public static synthetic lambda$logAppTransitionMultiEvents$1(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 0

    .line 618
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->logAppDisplayed(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    return-void
.end method

.method public static synthetic lambda$logAppTransitionReportedDrawn$2(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 0

    .line 748
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->logAppFullyDrawn(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    return-void
.end method

.method private logAppDisplayed(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 5

    .line 687
    iget v0, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 688
    return-void

    .line 691
    :cond_0
    const/16 v0, 0x7539

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->userId:I

    .line 692
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget v4, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->activityRecordIdHashCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x2

    iget-object v4, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    aput-object v4, v1, v2

    const/4 v2, 0x3

    iget v4, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 693
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 691
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 695
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 697
    const-string v1, "Displayed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    iget-object v1, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    iget p1, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    int-to-long v1, p1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 701
    const-string p1, "ActivityManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return-void
.end method

.method private logAppFullyDrawn(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 3

    .line 753
    iget v0, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 754
    return-void

    .line 757
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 758
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 759
    const-string v1, "Fully drawn "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    iget-object v1, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    iget p1, p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsFullyDrawnDelayMs:I

    int-to-long v1, p1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 763
    const-string p1, "ActivityManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    return-void
.end method

.method private logAppStartMemoryStateCapture(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 16

    .line 869
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2200(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 871
    return-void

    .line 874
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2200(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 875
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 876
    invoke-static {v3, v0}, Lcom/android/server/am/MemoryStatUtil;->readMemoryStatFromFilesystem(II)Lcom/android/server/am/MemoryStatUtil$MemoryStat;

    move-result-object v0

    .line 877
    if-nez v0, :cond_1

    .line 879
    return-void

    .line 882
    :cond_1
    const/16 v2, 0x37

    .line 885
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2300(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p1

    iget-object v5, v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    iget-wide v6, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgfault:J

    iget-wide v8, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->pgmajfault:J

    iget-wide v10, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->rssInBytes:J

    iget-wide v12, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->cacheInBytes:J

    iget-wide v14, v0, Lcom/android/server/am/MemoryStatUtil$MemoryStat;->swapInBytes:J

    .line 882
    invoke-static/range {v2 .. v15}, Landroid/util/StatsLog;->write(IILjava/lang/String;Ljava/lang/String;JJJJJ)I

    .line 892
    return-void
.end method

.method private logAppTransition(IILcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V
    .locals 21

    move-object/from16 v0, p0

    .line 627
    move-object/from16 v1, p3

    new-instance v2, Landroid/metrics/LogMaker;

    const/16 v3, 0x2f9

    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 628
    iget-object v3, v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 629
    iget v3, v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 630
    iget-object v3, v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    const/16 v4, 0x367

    invoke-virtual {v2, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 631
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v10

    .line 632
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1500(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 633
    const/16 v3, 0x388

    .line 634
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1500(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v4

    .line 633
    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 636
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1600(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v3

    .line 637
    if-eqz v3, :cond_1

    .line 638
    const/16 v4, 0x387

    invoke-virtual {v2, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 640
    :cond_1
    const/16 v4, 0x389

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 641
    const/16 v4, 0x145

    .line 642
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 641
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 643
    const/16 v4, 0x13f

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 644
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1700(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 645
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1800(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 646
    const/16 v4, 0x141

    .line 647
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1800(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 646
    invoke-virtual {v2, v4, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 649
    :cond_2
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1900(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v4

    if-eq v4, v5, :cond_3

    .line 650
    const/16 v4, 0x3b1

    .line 651
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1900(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 650
    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 653
    :cond_3
    const/16 v4, 0x142

    iget v5, v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 654
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityMetricsLogger;->getArtManagerInternal()Landroid/content/pm/dex/ArtManagerInternal;

    move-result-object v4

    .line 656
    if-eqz v4, :cond_5

    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2000(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    goto :goto_0

    .line 658
    :cond_4
    nop

    .line 659
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 660
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$2000(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v6

    .line 658
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/dex/ArtManagerInternal;->getPackageOptimizationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v4

    goto :goto_1

    .line 657
    :cond_5
    :goto_0
    invoke-static {}, Landroid/content/pm/dex/PackageOptimizationInfo;->createWithNoInfo()Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object v4

    .line 661
    :goto_1
    const/16 v5, 0x529

    .line 662
    invoke-virtual {v4}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 661
    invoke-virtual {v2, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 663
    const/16 v5, 0x528

    .line 664
    invoke-virtual {v4}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 663
    invoke-virtual {v2, v5, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 665
    iget-object v5, v0, Lcom/android/server/am/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v5, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 666
    const/16 v2, 0x30

    .line 668
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->packageName:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->type:I

    .line 670
    invoke-direct {v0, v7}, Lcom/android/server/am/ActivityMetricsLogger;->convertAppStartTransitionType(I)I

    move-result v7

    iget-object v8, v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 672
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1500(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)Ljava/lang/String;

    move-result-object v9

    move/from16 v11, p1

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    .line 675
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1700(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v13

    .line 677
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1800(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v15

    .line 678
    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->access$1900(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)I

    move-result v16

    iget v14, v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 681
    invoke-virtual {v4}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationReason()I

    move-result v19

    .line 682
    invoke-virtual {v4}, Landroid/content/pm/dex/PackageOptimizationInfo;->getCompilationFilter()I

    move-result v20

    .line 666
    move v4, v2

    move v2, v14

    move/from16 v14, p2

    move/from16 v17, v2

    move-object/from16 v18, v3

    invoke-static/range {v4 .. v20}, Landroid/util/StatsLog;->write(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZJIIIIILjava/lang/String;II)I

    .line 683
    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityMetricsLogger;->logAppStartMemoryStateCapture(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    .line 684
    return-void
.end method

.method private logAppTransitionCancel(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .locals 4

    .line 584
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    .line 585
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 586
    return-void

    .line 588
    :cond_0
    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x478

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 589
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 590
    invoke-virtual {v1, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 591
    const/16 v2, 0x367

    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 592
    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 593
    const/16 v1, 0x31

    .line 595
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 596
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 597
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityMetricsLogger;->convertAppStartTransitionType(I)I

    move-result v0

    .line 598
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 593
    invoke-static {v1, v2, v3, v0, p1}, Landroid/util/StatsLog;->write(IILjava/lang/String;ILjava/lang/String;)I

    .line 599
    return-void
.end method

.method private logAppTransitionMultiEvents()V
    .locals 8

    .line 603
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 604
    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 605
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v2

    .line 606
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 607
    return-void

    .line 612
    :cond_0
    new-instance v2, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/am/ActivityMetricsLogger$1;)V

    .line 614
    iget v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDeviceUptime:I

    .line 615
    iget v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    .line 616
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$EXtnEt47a9lJOX0u5R1TXhfh0XE;

    invoke-direct {v7, p0, v4, v5, v2}, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$EXtnEt47a9lJOX0u5R1TXhfh0XE;-><init>(Lcom/android/server/am/ActivityMetricsLogger;IILcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 618
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$EC9JWHkuhz-8G6tyBRq_BEve0P4;

    invoke-direct {v5, p0, v2}, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$EC9JWHkuhz-8G6tyBRq_BEve0P4;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 620
    invoke-static {v1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object v3, v1, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    .line 603
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 622
    :cond_1
    return-void
.end method

.method private notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;ZZ)V
    .locals 7

    .line 366
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 367
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v1

    goto :goto_0

    .line 368
    :cond_0
    nop

    .line 369
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 370
    iget-wide v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 372
    return-void

    .line 375
    :cond_1
    const/4 v3, 0x1

    if-eqz p2, :cond_2

    iget-boolean v4, p2, Lcom/android/server/am/ActivityRecord;->drawn:Z

    if-eqz v4, :cond_2

    .line 377
    invoke-direct {p0, v3, v2}, Lcom/android/server/am/ActivityMetricsLogger;->reset(ZLcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 378
    return-void

    .line 381
    :cond_2
    if-eqz p2, :cond_3

    if-eqz v2, :cond_3

    .line 384
    invoke-static {v2, p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$102(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 385
    return-void

    .line 388
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 389
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_4

    if-nez v2, :cond_4

    .line 390
    move v0, v3

    goto :goto_1

    .line 389
    :cond_4
    nop

    .line 390
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->isLoggableResultCode(I)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p2, :cond_5

    if-eqz p4, :cond_5

    if-nez v1, :cond_6

    :cond_5
    if-nez v0, :cond_6

    .line 393
    invoke-direct {p0, v3, v2}, Lcom/android/server/am/ActivityMetricsLogger;->reset(ZLcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 394
    return-void

    .line 395
    :cond_6
    if-eqz v0, :cond_7

    .line 397
    return-void

    .line 402
    :cond_7
    new-instance p4, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    const/4 v0, 0x0

    invoke-direct {p4, p0, v0}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$1;)V

    .line 403
    invoke-static {p4, p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$102(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 404
    invoke-static {p4, p3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$902(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 405
    invoke-static {p4, p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1002(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 406
    iget-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 407
    iget-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p1, v1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 408
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p1, p1

    iput p1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDeviceUptime:I

    .line 409
    invoke-direct {p0, p4}, Lcom/android/server/am/ActivityMetricsLogger;->startTraces(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 410
    return-void
.end method

.method private reset(ZLcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .locals 0

    .line 563
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 564
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->logAppTransitionMultiEvents()V

    .line 566
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityMetricsLogger;->stopLaunchTrace(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 567
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    .line 568
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    .line 569
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    .line 570
    iget-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 571
    return-void
.end method

.method private startTraces(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .locals 4

    .line 920
    if-nez p1, :cond_0

    .line 921
    return-void

    .line 923
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityMetricsLogger;->stopFullyDrawnTraceIfNeeded()V

    .line 924
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityMetricsLogger;->getTransitionType(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)I

    move-result v0

    .line 925
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$2400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 927
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launching: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 928
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 927
    const/4 v1, 0x0

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 929
    const-string v0, "drawing"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 930
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mDrawingTraceActive:Z

    .line 931
    invoke-static {p1, v0}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$2402(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 933
    :cond_3
    return-void
.end method

.method private stopLaunchTrace(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V
    .locals 4

    .line 936
    if-nez p1, :cond_0

    .line 937
    return-void

    .line 939
    :cond_0
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$2400(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 940
    const-wide/16 v0, 0x40

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 941
    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 940
    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 942
    invoke-static {p1, v3}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$2402(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 944
    :cond_1
    return-void
.end method


# virtual methods
.method logActivityStart(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;ILjava/lang/String;IZIIZILjava/lang/String;IZLjava/lang/String;Z)V
    .locals 12

    move-object v0, p2

    move-object v1, p3

    .line 775
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 776
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 777
    new-instance v6, Landroid/metrics/LogMaker;

    const/16 v7, 0x5e9

    invoke-direct {v6, v7}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 778
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->setTimestamp(J)Landroid/metrics/LogMaker;

    .line 779
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0x5ea

    invoke-virtual {v6, v8, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 780
    const/16 v7, 0x5eb

    move-object/from16 v8, p5

    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 781
    nop

    .line 782
    invoke-static/range {p6 .. p6}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 781
    const/16 v8, 0x5ec

    invoke-virtual {v6, v8, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 783
    nop

    .line 784
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 783
    const/16 v8, 0x5ed

    invoke-virtual {v6, v8, v7}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 785
    const/16 v7, 0x5ee

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 786
    const/16 v7, 0x5ef

    .line 787
    invoke-static/range {p9 .. p9}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 786
    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 788
    const/16 v7, 0x5f0

    .line 789
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 788
    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 790
    const/16 v7, 0x5f1

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 791
    const/16 v7, 0x5f2

    move-object/from16 v8, p12

    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 792
    const/16 v7, 0x5f3

    .line 793
    invoke-static/range {p13 .. p13}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 792
    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 794
    const/16 v7, 0x5f4

    .line 795
    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 794
    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 796
    const/16 v7, 0x5f5

    move-object/from16 v8, p15

    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 797
    const/16 v7, 0x5f6

    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 798
    const/16 v7, 0x5f7

    invoke-static/range {p16 .. p16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 799
    const/16 v7, 0x5f8

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 800
    const-wide/16 v7, 0x0

    if-eqz v0, :cond_2

    .line 801
    const/16 v9, 0x5f9

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 802
    const/16 v9, 0x5fa

    iget v10, v0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    .line 803
    invoke-static {v10}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 802
    invoke-virtual {v6, v9, v10}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 804
    const/16 v9, 0x5fb

    .line 805
    iget-boolean v10, v0, Lcom/android/server/am/ProcessRecord;->hasClientActivities:Z

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 804
    invoke-virtual {v6, v9, v10}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 806
    const/16 v9, 0x5fc

    .line 807
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->hasForegroundServices()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 806
    invoke-virtual {v6, v9, v10}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 808
    const/16 v9, 0x5fd

    .line 809
    iget-boolean v10, v0, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 808
    invoke-virtual {v6, v9, v10}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 810
    const/16 v9, 0x5fe

    iget-boolean v10, v0, Lcom/android/server/am/ProcessRecord;->hasTopUi:Z

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 811
    const/16 v9, 0x5ff

    .line 812
    iget-boolean v10, v0, Lcom/android/server/am/ProcessRecord;->hasOverlayUi:Z

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 811
    invoke-virtual {v6, v9, v10}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 813
    const/16 v9, 0x600

    .line 814
    iget-boolean v10, v0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 813
    invoke-virtual {v6, v9, v10}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 815
    iget-wide v9, v0, Lcom/android/server/am/ProcessRecord;->interactionEventTime:J

    cmp-long v9, v9, v7

    if-eqz v9, :cond_0

    .line 816
    const/16 v9, 0x601

    iget-wide v10, v0, Lcom/android/server/am/ProcessRecord;->interactionEventTime:J

    sub-long v10, v2, v10

    .line 817
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 816
    invoke-virtual {v6, v9, v10}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 819
    :cond_0
    iget-wide v9, v0, Lcom/android/server/am/ProcessRecord;->fgInteractionTime:J

    cmp-long v9, v9, v7

    if-eqz v9, :cond_1

    .line 820
    const/16 v9, 0x602

    iget-wide v10, v0, Lcom/android/server/am/ProcessRecord;->fgInteractionTime:J

    sub-long/2addr v2, v10

    .line 821
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 820
    invoke-virtual {v6, v9, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 823
    :cond_1
    iget-wide v2, v0, Lcom/android/server/am/ProcessRecord;->whenUnimportant:J

    cmp-long v2, v2, v7

    if-eqz v2, :cond_2

    .line 824
    const/16 v2, 0x603

    iget-wide v9, v0, Lcom/android/server/am/ProcessRecord;->whenUnimportant:J

    sub-long v9, v4, v9

    .line 825
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 824
    invoke-virtual {v6, v2, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 828
    :cond_2
    const/16 v0, 0x604

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 829
    const/16 v0, 0x605

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 830
    const/16 v0, 0x606

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 831
    const/16 v0, 0x607

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 832
    const/16 v0, 0x608

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 833
    const/16 v0, 0x609

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 834
    const/16 v0, 0x60a

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 835
    const/16 v0, 0x60b

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 836
    iget-wide v2, v1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    cmp-long v0, v2, v7

    if-eqz v0, :cond_3

    .line 837
    const/16 v0, 0x60c

    iget-wide v2, v1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    sub-long v2, v4, v2

    .line 838
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 837
    invoke-virtual {v6, v0, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 840
    :cond_3
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_4

    .line 841
    const/16 v0, 0x60d

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 842
    const/16 v0, 0x60e

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 845
    :cond_4
    const/16 v0, 0x60f

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->visible:Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 846
    const/16 v0, 0x610

    .line 847
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->visibleIgnoringKeyguard:Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 846
    invoke-virtual {v6, v0, v2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 848
    iget-wide v2, v1, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    cmp-long v0, v2, v7

    if-eqz v0, :cond_5

    .line 849
    const/16 v0, 0x611

    iget-wide v1, v1, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    sub-long/2addr v4, v1

    .line 850
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 849
    invoke-virtual {v6, v0, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 852
    :cond_5
    move-object v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v0, v6}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 853
    return-void
.end method

.method logAppTransitionReportedDrawn(Lcom/android/server/am/ActivityRecord;Z)Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v3, p1

    .line 719
    iget-object v1, v6, Lcom/android/server/am/ActivityMetricsLogger;->mLastWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 720
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v2

    .line 719
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 721
    if-nez v2, :cond_0

    .line 722
    const/4 v0, 0x0

    return-object v0

    .line 724
    :cond_0
    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v4, 0x442

    invoke-direct {v1, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 725
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    .line 726
    const/16 v4, 0x367

    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 727
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v7, v6, Lcom/android/server/am/ActivityMetricsLogger;->mLastTransitionStartTime:J

    sub-long/2addr v4, v7

    .line 728
    const/16 v7, 0x443

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 729
    if-eqz p2, :cond_1

    .line 730
    const/16 v7, 0xd

    goto :goto_0

    .line 731
    :cond_1
    const/16 v7, 0xc

    .line 729
    :goto_0
    invoke-virtual {v1, v7}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 732
    const/16 v7, 0x144

    .line 733
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$900(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 732
    invoke-virtual {v1, v7, v8}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 734
    iget-object v7, v6, Lcom/android/server/am/ActivityMetricsLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {v7, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 735
    const/16 v9, 0x32

    .line 737
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 738
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    iget-object v11, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 739
    if-eqz p2, :cond_2

    .line 740
    const/4 v0, 0x1

    .line 742
    :goto_1
    move v12, v0

    goto :goto_2

    .line 741
    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    .line 742
    :goto_2
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 743
    invoke-static {v2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$900(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v14

    .line 735
    move-wide v15, v4

    invoke-static/range {v9 .. v16}, Landroid/util/StatsLog;->write(IILjava/lang/String;ILjava/lang/String;ZJ)I

    .line 745
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityMetricsLogger;->stopFullyDrawnTraceIfNeeded()V

    .line 746
    new-instance v7, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    long-to-int v4, v4

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityMetricsLogger$1;)V

    .line 748
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$hV69RM6bGwI03lqB25i1eiypVyE;

    invoke-direct {v1, v6, v7}, Lcom/android/server/am/-$$Lambda$ActivityMetricsLogger$hV69RM6bGwI03lqB25i1eiypVyE;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 749
    return-object v7
.end method

.method logWindowState()V
    .locals 7

    .line 258
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 259
    iget v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 263
    iget-object v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/server/am/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    aget-object v4, v4, v5

    iget-wide v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastLogTimeSecs:J

    sub-long v5, v0, v5

    long-to-int v5, v5

    invoke-static {v2, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 266
    :cond_0
    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastLogTimeSecs:J

    .line 268
    iput v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 269
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isActivityTypeAssistant()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 272
    return-void

    .line 275
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    .line 276
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 277
    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->findStackBehind(Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getWindowingMode()I

    move-result v1

    .line 280
    :cond_2
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    packed-switch v1, :pswitch_data_0

    .line 292
    if-nez v1, :cond_3

    goto :goto_0

    .line 293
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown windowing mode for stack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " windowingMode="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 289
    :pswitch_0
    iput v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 290
    goto :goto_0

    .line 286
    :pswitch_1
    iput v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 287
    goto :goto_0

    .line 282
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    .line 283
    nop

    .line 297
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V
    .locals 4

    .line 319
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityMetricsLogger;->findProcessForActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 320
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 326
    move v3, v2

    goto :goto_0

    .line 320
    :cond_0
    nop

    .line 326
    move v3, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 327
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/ActivityMetricsLogger;->hasStartedActivity(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    .line 329
    :cond_2
    :goto_1
    move v1, v2

    :goto_2
    invoke-direct {p0, p1, p2, v3, v1}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;ZZ)V

    .line 330
    return-void
.end method

.method notifyActivityLaunching()V
    .locals 2

    .line 304
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    .line 307
    iget-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastTransitionStartTime:J

    .line 309
    :cond_0
    return-void
.end method

.method notifyBindApplication(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    .line 537
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 538
    iget-object v1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 541
    invoke-static {v1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-ne v2, v3, :cond_0

    .line 542
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->calculateCurrentDelay()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$402(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 537
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 545
    :cond_1
    return-void
.end method

.method notifyStartingWindowDrawn(IJ)V
    .locals 1

    .line 444
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 445
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1300(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1302(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 449
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ActivityMetricsLogger;->calculateDelay(J)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$302(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 450
    return-void

    .line 446
    :cond_1
    :goto_0
    return-void
.end method

.method notifyTransitionStarting(Landroid/util/SparseIntArray;J)V
    .locals 1

    .line 459
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->isAnyTransitionActive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    if-eqz v0, :cond_0

    goto :goto_2

    .line 463
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ActivityMetricsLogger;->calculateDelay(J)I

    move-result p2

    iput p2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionDelayMs:I

    .line 464
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    .line 465
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p3

    sub-int/2addr p3, p2

    :goto_0
    if-ltz p3, :cond_2

    .line 466
    invoke-virtual {p1, p3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p2

    .line 467
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 469
    if-nez p2, :cond_1

    .line 470
    goto :goto_1

    .line 472
    :cond_1
    invoke-virtual {p1, p3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$202(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 465
    :goto_1
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 474
    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->allWindowsDrawn()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 475
    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityMetricsLogger;->reset(ZLcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 477
    :cond_3
    return-void

    .line 460
    :cond_4
    :goto_2
    return-void
.end method

.method notifyVisibilityChanged(Lcom/android/server/am/ActivityRecord;)V
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    .line 486
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v1

    .line 485
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 487
    if-nez v0, :cond_0

    .line 488
    return-void

    .line 490
    :cond_0
    invoke-static {v0}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 491
    return-void

    .line 493
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    .line 494
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 495
    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 496
    iput-object p1, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 497
    iget-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mHandler:Lcom/android/server/am/ActivityMetricsLogger$H;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityMetricsLogger$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 498
    return-void
.end method

.method notifyWindowsDrawn(IJ)Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowingModeTransitionInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;

    .line 427
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1100(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ActivityMetricsLogger;->calculateDelay(J)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$502(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;I)I

    .line 431
    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;->access$1102(Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Z)Z

    .line 432
    new-instance p2, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;

    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfoSnapshot;-><init>(Lcom/android/server/am/ActivityMetricsLogger;Lcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;Lcom/android/server/am/ActivityMetricsLogger$1;)V

    .line 434
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->allWindowsDrawn()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    if-eqz p3, :cond_1

    .line 435
    const/4 p3, 0x0

    invoke-direct {p0, p3, p1}, Lcom/android/server/am/ActivityMetricsLogger;->reset(ZLcom/android/server/am/ActivityMetricsLogger$WindowingModeTransitionInfo;)V

    .line 437
    :cond_1
    return-object p2

    .line 428
    :cond_2
    :goto_0
    return-object v0
.end method

.method stopFullyDrawnTraceIfNeeded()V
    .locals 4

    .line 947
    iget-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mDrawingTraceActive:Z

    if-eqz v0, :cond_0

    .line 948
    const-wide/16 v0, 0x40

    const-string v2, "drawing"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 949
    iput-boolean v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mDrawingTraceActive:Z

    .line 951
    :cond_0
    return-void
.end method
