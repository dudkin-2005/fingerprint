.class Lcom/android/server/content/SyncManager$SyncTimeTracker;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncTimeTracker"
.end annotation


# instance fields
.field mLastWasSyncing:Z

.field private mTimeSpentSyncing:J

.field mWhenSyncStarted:J

.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method private constructor <init>(Lcom/android/server/content/SyncManager;)V
    .registers 4

    .line 2835
    iput-object p1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2837
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    .line 2839
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/content/SyncManager;
    .param p2, "x1"    # Lcom/android/server/content/SyncManager$1;

    .line 2835
    invoke-direct {p0, p1}, Lcom/android/server/content/SyncManager$SyncTimeTracker;-><init>(Lcom/android/server/content/SyncManager;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized timeSpentSyncing()J
    .registers 7

    monitor-enter p0

    .line 2858
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    if-nez v0, :cond_9

    iget-wide v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_16

    monitor-exit p0

    return-wide v0

    .line 2860
    :cond_9
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2861
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J

    iget-wide v4, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_16

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    monitor-exit p0

    return-wide v2

    .line 2857
    .end local v0    # "now":J
    :catchall_16
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/content/SyncManager$SyncTimeTracker;
    throw v0
.end method

.method public declared-synchronized update()V
    .registers 8

    monitor-enter p0

    .line 2845
    :try_start_1
    iget-object v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v0, v0, Lcom/android/server/content/SyncManager;->mActiveSyncContexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2846
    .local v0, "isSyncInProgress":Z
    iget-boolean v1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_27

    if-ne v0, v1, :cond_11

    monitor-exit p0

    return-void

    .line 2847
    :cond_11
    :try_start_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 2848
    .local v1, "now":J
    if-eqz v0, :cond_1a

    .line 2849
    iput-wide v1, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    goto :goto_23

    .line 2851
    :cond_1a
    iget-wide v3, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J

    iget-wide v5, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    sub-long v5, v1, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J

    .line 2853
    :goto_23
    iput-boolean v0, p0, Lcom/android/server/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_27

    .line 2854
    monitor-exit p0

    return-void

    .line 2844
    .end local v0    # "isSyncInProgress":Z
    .end local v1    # "now":J
    :catchall_27
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/content/SyncManager$SyncTimeTracker;
    throw v0
.end method
