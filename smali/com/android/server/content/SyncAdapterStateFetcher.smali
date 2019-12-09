.class Lcom/android/server/content/SyncAdapterStateFetcher;
.super Ljava/lang/Object;
.source "SyncAdapterStateFetcher.java"


# instance fields
.field private final mBucketCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncAdapterStateFetcher;->mBucketCache:Ljava/util/HashMap;

    .line 33
    return-void
.end method


# virtual methods
.method public getStandbyBucket(ILjava/lang/String;)I
    .locals 4

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/android/server/content/SyncAdapterStateFetcher;->mBucketCache:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 41
    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 44
    :cond_0
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 45
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 46
    if-nez v1, :cond_1

    .line 47
    const/4 p1, -0x1

    return p1

    .line 50
    :cond_1
    nop

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 50
    invoke-virtual {v1, p2, p1, v2, v3}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result p1

    .line 52
    iget-object p2, p0, Lcom/android/server/content/SyncAdapterStateFetcher;->mBucketCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return p1
.end method

.method public isAppActive(I)Z
    .locals 1

    .line 60
    const-class v0, Lcom/android/server/AppStateTracker;

    .line 61
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppStateTracker;

    .line 62
    if-nez v0, :cond_0

    .line 63
    const/4 p1, 0x0

    return p1

    .line 66
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/AppStateTracker;->isUidActive(I)Z

    move-result p1

    return p1
.end method
