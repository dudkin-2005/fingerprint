.class abstract Lcom/android/server/autofill/RemoteFillService$PendingRequest;
.super Ljava/lang/Object;
.source "RemoteFillService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/RemoteFillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PendingRequest"
.end annotation


# instance fields
.field private mCancelled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mCompleted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field protected final mLock:Ljava/lang/Object;

.field private final mServiceHandler:Landroid/os/Handler;

.field private final mTimeoutTrigger:Ljava/lang/Runnable;

.field private final mWeakService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/autofill/RemoteFillService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/autofill/RemoteFillService;)V
    .locals 5

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mLock:Ljava/lang/Object;

    .line 438
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mWeakService:Ljava/lang/ref/WeakReference;

    .line 439
    invoke-static {p1}, Lcom/android/server/autofill/RemoteFillService;->access$900(Lcom/android/server/autofill/RemoteFillService;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mServiceHandler:Landroid/os/Handler;

    .line 440
    new-instance p1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$PendingRequest$Wzl5nwSdboq2CuUeWvFraQLBZk8;

    invoke-direct {p1, p0}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$PendingRequest$Wzl5nwSdboq2CuUeWvFraQLBZk8;-><init>(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mTimeoutTrigger:Ljava/lang/Runnable;

    .line 456
    iget-object p1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mServiceHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mTimeoutTrigger:Ljava/lang/Runnable;

    .line 457
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1388

    add-long/2addr v1, v3

    .line 456
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 458
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V
    .locals 5

    .line 441
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 442
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCancelled:Z

    if-eqz v1, :cond_0

    .line 443
    monitor-exit v0

    return-void

    .line 445
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCompleted:Z

    .line 446
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    const-string v0, "RemoteFillService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " timed out"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/RemoteFillService;

    .line 450
    if-eqz v0, :cond_1

    .line 451
    const-string v1, "RemoteFillService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " timed out after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {p0, v0}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->onTimeout(Lcom/android/server/autofill/RemoteFillService;)V

    .line 455
    :cond_1
    return-void

    .line 446
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method cancel()Z
    .locals 3

    .line 492
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 493
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCancelled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCompleted:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 496
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCancelled:Z

    .line 497
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mServiceHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mTimeoutTrigger:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 500
    return v1

    .line 494
    :cond_1
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    monitor-exit v0

    return v1

    .line 497
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected final finish()Z
    .locals 3

    .line 471
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 472
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCompleted:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCancelled:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 475
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCompleted:Z

    .line 476
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mServiceHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mTimeoutTrigger:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 478
    return v1

    .line 473
    :cond_1
    :goto_0
    const/4 v1, 0x0

    :try_start_1
    monitor-exit v0

    return v1

    .line 476
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getService()Lcom/android/server/autofill/RemoteFillService;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/RemoteFillService;

    return-object v0
.end method

.method protected isCancelledLocked()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 483
    iget-boolean v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->mCancelled:Z

    return v0
.end method

.method isFinal()Z
    .locals 1

    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method abstract onTimeout(Lcom/android/server/autofill/RemoteFillService;)V
.end method
