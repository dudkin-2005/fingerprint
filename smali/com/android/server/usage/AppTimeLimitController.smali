.class public Lcom/android/server/usage/AppTimeLimitController;
.super Ljava/lang/Object;
.source "AppTimeLimitController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/AppTimeLimitController$MyHandler;,
        Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;,
        Lcom/android/server/usage/AppTimeLimitController$OnLimitReachedListener;,
        Lcom/android/server/usage/AppTimeLimitController$UserData;,
        Lcom/android/server/usage/AppTimeLimitController$Lock;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_OBSERVER_PER_UID:J = 0x3e8L

.field private static final ONE_MINUTE:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "AppTimeLimitController"


# instance fields
.field private final mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

.field private mListener:Lcom/android/server/usage/AppTimeLimitController$OnLimitReachedListener;

.field private final mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

.field private final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/AppTimeLimitController$UserData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppTimeLimitController$OnLimitReachedListener;Landroid/os/Looper;)V
    .locals 2

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$Lock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$Lock;-><init>(Lcom/android/server/usage/AppTimeLimitController$1;)V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    .line 148
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;-><init>(Lcom/android/server/usage/AppTimeLimitController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    .line 149
    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController;->mListener:Lcom/android/server/usage/AppTimeLimitController$OnLimitReachedListener;

    .line 150
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->informListener(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V

    return-void
.end method

.method private addGroupToPackageMapLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;[Ljava/lang/String;Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V
    .locals 4

    .line 388
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 389
    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$700(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/ArrayMap;

    move-result-object v1

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 390
    if-nez v1, :cond_0

    .line 391
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 392
    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$700(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/ArrayMap;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    :cond_0
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 396
    :cond_1
    return-void
.end method

.method private getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    .line 173
    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;-><init>(ILcom/android/server/usage/AppTimeLimitController$1;)V

    .line 175
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 177
    :cond_0
    return-object v0
.end method

.method private static inPackageList([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 261
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private informListener(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V
    .locals 10

    .line 354
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mListener:Lcom/android/server/usage/AppTimeLimitController$OnLimitReachedListener;

    if-eqz v0, :cond_0

    .line 355
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mListener:Lcom/android/server/usage/AppTimeLimitController$OnLimitReachedListener;

    iget v2, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->observerId:I

    iget v3, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->userId:I

    iget-wide v4, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeLimit:J

    iget-wide v6, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeLimit:J

    iget-wide v8, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    sub-long/2addr v6, v8

    iget-object v8, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->callbackIntent:Landroid/app/PendingIntent;

    invoke-interface/range {v1 .. v8}, Lcom/android/server/usage/AppTimeLimitController$OnLimitReachedListener;->onLimitReached(IIJJLandroid/app/PendingIntent;)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 360
    :try_start_0
    iget v1, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v1

    .line 361
    iget v2, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->requestingUid:I

    iget p1, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->observerId:I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, p1, v3}, Lcom/android/server/usage/AppTimeLimitController;->removeObserverLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;IIZ)V

    .line 362
    monitor-exit v0

    .line 363
    return-void

    .line 362
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private maybeWatchForPackageLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Ljava/lang/String;J)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 368
    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$700(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 369
    if-nez p1, :cond_0

    return-void

    .line 371
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 372
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 373
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    .line 374
    iget-wide v3, v2, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 375
    iput-wide p3, v2, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeCurrentPackageStarted:J

    .line 376
    iput-object p2, v2, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->currentPackage:Ljava/lang/String;

    .line 381
    iget-wide v3, v2, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/usage/AppTimeLimitController;->postCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;J)V

    .line 372
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    :cond_2
    return-void
.end method

.method private postCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;J)V
    .locals 3

    .line 411
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 413
    return-void
.end method

.method private postInformListenerLocked(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 347
    return-void
.end method

.method private removeGroupFromPackageMapLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V
    .locals 3

    .line 403
    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$700(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 404
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 405
    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$700(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 406
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 408
    :cond_0
    return-void
.end method

.method private removeObserverLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;IIZ)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 267
    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$400(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    .line 268
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->requestingUid:I

    if-ne v1, p2, :cond_1

    .line 269
    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/AppTimeLimitController;->removeGroupFromPackageMapLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V

    .line 270
    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$400(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->remove(I)V

    .line 271
    iget-object p3, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {p3, v1, v0}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->removeMessages(ILjava/lang/Object;)V

    .line 272
    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$300(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseIntArray;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result p3

    .line 273
    if-gt p3, v1, :cond_0

    if-nez p4, :cond_0

    .line 274
    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$300(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseIntArray;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    .line 276
    :cond_0
    invoke-static {p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$300(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseIntArray;

    move-result-object p1

    sub-int/2addr p3, v1

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 279
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    .locals 8

    .line 195
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 199
    :try_start_0
    invoke-direct {p0, p7}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v1

    .line 200
    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/android/server/usage/AppTimeLimitController;->removeObserverLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;IIZ)V

    .line 202
    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$300(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseIntArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 203
    int-to-long v4, v3

    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getObserverPerUidLimit()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 207
    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$300(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseIntArray;

    move-result-object v4

    add-int/2addr v3, v2

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 209
    new-instance v2, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    invoke-direct {v2}, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;-><init>()V

    .line 210
    iput p2, v2, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->observerId:I

    .line 211
    iput-object p6, v2, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->callbackIntent:Landroid/app/PendingIntent;

    .line 212
    iput-object p3, v2, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->packages:[Ljava/lang/String;

    .line 213
    iput-wide p4, v2, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeLimit:J

    .line 214
    iget-wide p4, v2, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeLimit:J

    iput-wide p4, v2, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    .line 215
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide p4

    iput-wide p4, v2, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRequested:J

    .line 216
    iput p1, v2, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->requestingUid:I

    .line 217
    const-wide/16 p4, -0x1

    iput-wide p4, v2, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeCurrentPackageStarted:J

    .line 218
    iput p7, v2, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->userId:I

    .line 220
    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$400(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 222
    invoke-direct {p0, v1, p3, v2}, Lcom/android/server/usage/AppTimeLimitController;->addGroupToPackageMapLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;[Ljava/lang/String;Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V

    .line 229
    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, v2, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->packages:[Ljava/lang/String;

    .line 230
    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)Ljava/lang/String;

    move-result-object p2

    .line 229
    invoke-static {p1, p2}, Lcom/android/server/usage/AppTimeLimitController;->inPackageList([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 231
    iget-wide p1, v2, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRequested:J

    iput-wide p1, v2, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeCurrentPackageStarted:J

    .line 232
    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->currentPackage:Ljava/lang/String;

    .line 233
    iget-wide p1, v2, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-lez p1, :cond_0

    .line 234
    iget-wide p1, v2, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/usage/AppTimeLimitController;->postCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;J)V

    .line 237
    :cond_0
    monitor-exit v0

    .line 238
    return-void

    .line 204
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Too many observers added by uid "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 237
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 196
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Time limit must be >= "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method checkTimeout(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V
    .locals 6

    .line 423
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 424
    :try_start_0
    iget v1, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->userId:I

    invoke-direct {p0, v1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v1

    .line 426
    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$400(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->observerId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p1, :cond_0

    monitor-exit v0

    return-void

    .line 431
    :cond_0
    iget-wide v2, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    monitor-exit v0

    return-void

    .line 438
    :cond_1
    iget-object v2, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->packages:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/server/usage/AppTimeLimitController;->inPackageList([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 443
    iget-wide v1, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeCurrentPackageStarted:J

    cmp-long v1, v1, v4

    if-gez v1, :cond_2

    .line 444
    const-string v1, "AppTimeLimitController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startTime was not set correctly for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeCurrentPackageStarted:J

    sub-long/2addr v1, v3

    .line 447
    iget-wide v3, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    cmp-long v3, v3, v1

    if-gtz v3, :cond_3

    .line 450
    iget-wide v3, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    sub-long/2addr v3, v1

    iput-wide v3, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    .line 451
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->postInformListenerLocked(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V

    .line 453
    const-wide/16 v1, -0x1

    iput-wide v1, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeCurrentPackageStarted:J

    .line 454
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->currentPackage:Ljava/lang/String;

    goto :goto_0

    .line 457
    :cond_3
    iget-wide v3, p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    sub-long/2addr v3, v1

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/usage/AppTimeLimitController;->postCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;J)V

    .line 460
    :cond_4
    :goto_0
    monitor-exit v0

    .line 461
    return-void

    .line 460
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 10

    .line 464
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 465
    :try_start_0
    const-string v1, "\n  App Time Limits"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 467
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 468
    iget-object v4, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usage/AppTimeLimitController$UserData;

    .line 469
    const-string v5, "   User "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$800(Lcom/android/server/usage/AppTimeLimitController$UserData;)I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 470
    invoke-static {v4}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$400(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 471
    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_0

    .line 472
    invoke-static {v4}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$400(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    .line 473
    const-string v8, "    Group id="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v8, v7, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->observerId:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 474
    const-string v8, " timeLimit="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v7, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeLimit:J

    invoke-virtual {p1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 475
    const-string v8, " remaining="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v7, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    invoke-virtual {p1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 476
    const-string v8, " currentPackage="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v7, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->currentPackage:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 477
    const-string v8, " timeCurrentPkgStarted="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v7, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeCurrentPackageStarted:J

    invoke-virtual {p1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 478
    const-string v8, " packages="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v7, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->packages:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 480
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 481
    const-string v5, "    currentForegroundedPackage="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 482
    invoke-static {v4}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 467
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 484
    :cond_1
    monitor-exit v0

    .line 485
    return-void

    .line 484
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected getMinTimeLimit()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 167
    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method getObserverGroup(II)Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 256
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$400(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    monitor-exit v0

    return-object p1

    .line 257
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected getObserverPerUidLimit()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 161
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method protected getUptimeMillis()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public moveToBackground(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    .line 308
    iget-object p2, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter p2

    .line 309
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object p3

    .line 310
    invoke-static {p3}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    const-string v0, "AppTimeLimitController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Eh? Last foregrounded package = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$500(Lcom/android/server/usage/AppTimeLimitController$UserData;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " and now backgrounded = "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    monitor-exit p2

    return-void

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v0

    .line 318
    invoke-static {p3}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$700(Lcom/android/server/usage/AppTimeLimitController$UserData;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 319
    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 320
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 321
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 322
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;

    .line 324
    iget-wide v6, v5, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    goto :goto_1

    .line 326
    :cond_1
    invoke-static {p3}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$600(Lcom/android/server/usage/AppTimeLimitController$UserData;)J

    move-result-wide v6

    iget-wide v10, v5, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRequested:J

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 328
    sub-long v6, v0, v6

    .line 329
    iget-wide v10, v5, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    sub-long/2addr v10, v6

    iput-wide v10, v5, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    .line 330
    iget-wide v6, v5, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeRemaining:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_2

    .line 332
    invoke-direct {p0, v5}, Lcom/android/server/usage/AppTimeLimitController;->postInformListenerLocked(Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;)V

    .line 335
    :cond_2
    iput-object v2, v5, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->currentPackage:Ljava/lang/String;

    .line 336
    const-wide/16 v6, -0x1

    iput-wide v6, v5, Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;->timeCurrentPackageStarted:J

    .line 337
    iget-object v6, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v5}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->removeMessages(ILjava/lang/Object;)V

    .line 321
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 340
    :cond_3
    invoke-static {p3, v2}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$502(Lcom/android/server/usage/AppTimeLimitController$UserData;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    monitor-exit p2

    .line 342
    return-void

    .line 341
    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public moveToForeground(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 288
    iget-object p2, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter p2

    .line 289
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object p3

    .line 292
    invoke-static {p3, p1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$502(Lcom/android/server/usage/AppTimeLimitController$UserData;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v0

    invoke-static {p3, v0, v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$602(Lcom/android/server/usage/AppTimeLimitController$UserData;J)J

    .line 296
    invoke-static {p3}, Lcom/android/server/usage/AppTimeLimitController$UserData;->access$600(Lcom/android/server/usage/AppTimeLimitController$UserData;)J

    move-result-wide v0

    invoke-direct {p0, p3, p1, v0, v1}, Lcom/android/server/usage/AppTimeLimitController;->maybeWatchForPackageLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Ljava/lang/String;J)V

    .line 297
    monitor-exit p2

    .line 298
    return-void

    .line 297
    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onUserRemoved(I)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 185
    monitor-exit v0

    .line 186
    return-void

    .line 185
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeObserver(III)V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 248
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object p3

    .line 249
    const/4 v1, 0x0

    invoke-direct {p0, p3, p1, p2, v1}, Lcom/android/server/usage/AppTimeLimitController;->removeObserverLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;IIZ)V

    .line 250
    monitor-exit v0

    .line 251
    return-void

    .line 250
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
