.class final Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;
.super Lcom/android/server/autofill/RemoteFillService$PendingRequest;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/RemoteFillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingFillRequest"
.end annotation


# instance fields
.field private final mCallback:Landroid/service/autofill/IFillCallback;

.field private mCancellation:Landroid/os/ICancellationSignal;

.field private final mRequest:Landroid/service/autofill/FillRequest;


# direct methods
.method public constructor <init>(Landroid/service/autofill/FillRequest;Lcom/android/server/autofill/RemoteFillService;)V
    .locals 0

    .line 524
    invoke-direct {p0, p2}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;-><init>(Lcom/android/server/autofill/RemoteFillService;)V

    .line 525
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;

    .line 527
    new-instance p2, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;

    invoke-direct {p2, p0, p1}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest$1;-><init>(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/service/autofill/FillRequest;)V

    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCallback:Landroid/service/autofill/IFillCallback;

    .line 568
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)Landroid/service/autofill/FillRequest;
    .locals 0

    .line 518
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Landroid/os/ICancellationSignal;)Landroid/os/ICancellationSignal;
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCancellation:Landroid/os/ICancellationSignal;

    return-object p1
.end method


# virtual methods
.method public cancel()Z
    .locals 3

    .line 606
    invoke-super {p0}, Lcom/android/server/autofill/RemoteFillService$PendingRequest;->cancel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 610
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCancellation:Landroid/os/ICancellationSignal;

    .line 611
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    if-eqz v1, :cond_1

    .line 614
    :try_start_1
    invoke-interface {v1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 617
    goto :goto_0

    .line 615
    :catch_0
    move-exception v0

    .line 616
    const-string v1, "RemoteFillService"

    const-string v2, "Error cancelling a fill request"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 619
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 611
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method onTimeout(Lcom/android/server/autofill/RemoteFillService;)V
    .locals 2

    .line 575
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 576
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCancellation:Landroid/os/ICancellationSignal;

    .line 577
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    if-eqz v1, :cond_0

    .line 579
    invoke-static {p1, v1}, Lcom/android/server/autofill/RemoteFillService;->access$1300(Lcom/android/server/autofill/RemoteFillService;Landroid/os/ICancellationSignal;)V

    .line 581
    :cond_0
    invoke-static {p1, p0}, Lcom/android/server/autofill/RemoteFillService;->access$1400(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;)V

    .line 582
    return-void

    .line 577
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 4

    .line 586
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 587
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->isCancelledLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 588
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "RemoteFillService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "run() called after canceled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_0
    monitor-exit v0

    return-void

    .line 591
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->getService()Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    .line 593
    if-eqz v0, :cond_2

    .line 595
    :try_start_1
    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->access$400(Lcom/android/server/autofill/RemoteFillService;)Landroid/service/autofill/IAutoFillService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mRequest:Landroid/service/autofill/FillRequest;

    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;->mCallback:Landroid/service/autofill/IFillCallback;

    invoke-interface {v1, v2, v3}, Landroid/service/autofill/IAutoFillService;->onFillRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 600
    goto :goto_0

    .line 596
    :catch_0
    move-exception v1

    .line 597
    const-string v2, "RemoteFillService"

    const-string v3, "Error calling on fill request"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/server/autofill/RemoteFillService;->access$1200(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingFillRequest;Ljava/lang/CharSequence;)V

    .line 602
    :cond_2
    :goto_0
    return-void

    .line 591
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
