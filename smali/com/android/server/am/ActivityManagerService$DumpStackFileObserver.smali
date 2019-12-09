.class public Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;
.super Landroid/os/FileObserver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DumpStackFileObserver"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TRACE_DUMP_TIMEOUT_MS:I = 0x2710


# instance fields
.field private mClosed:Z

.field private final mTracesPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 6455
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 6456
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mTracesPath:Ljava/lang/String;

    .line 6457
    return-void
.end method


# virtual methods
.method public dumpWithTimeout(IJ)J
    .locals 7

    .line 6466
    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/os/Process;->sendSignal(II)V

    .line 6467
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 6469
    const-wide/16 v2, 0x2710

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 6470
    monitor-enter p0

    .line 6472
    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6475
    goto :goto_0

    .line 6476
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6473
    :catch_0
    move-exception v2

    .line 6474
    :try_start_1
    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6476
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6480
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 6481
    cmp-long v4, v2, p2

    if-ltz v4, :cond_0

    .line 6482
    return-wide v2

    .line 6485
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mClosed:Z

    if-nez v4, :cond_1

    .line 6486
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Didn\'t see close of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mTracesPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ". Attempting native stack collection."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6489
    const-wide/16 v4, 0x7d0

    sub-long/2addr p2, v2

    invoke-static {v4, v5, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 6492
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mTracesPath:Ljava/lang/String;

    const-wide/16 v3, 0x3e8

    div-long/2addr p2, v3

    long-to-int p2, p2

    invoke-static {p1, v2, p2}, Landroid/os/Debug;->dumpNativeBacktraceToFileTimeout(ILjava/lang/String;I)Z

    .line 6496
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    .line 6497
    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mClosed:Z

    .line 6499
    sub-long/2addr p1, v0

    return-wide p1

    .line 6476
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized onEvent(ILjava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 6461
    const/4 p1, 0x1

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerService$DumpStackFileObserver;->mClosed:Z

    .line 6462
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6463
    monitor-exit p0

    return-void

    .line 6460
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
