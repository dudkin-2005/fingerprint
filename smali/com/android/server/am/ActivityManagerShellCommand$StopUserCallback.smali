.class final Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;
.super Landroid/app/IStopUserCallback$Stub;
.source "ActivityManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StopUserCallback"
.end annotation


# instance fields
.field private mFinished:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1737
    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    .line 1738
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->mFinished:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized userStopAborted(I)V
    .registers 3
    .param p1, "userId"    # I

    monitor-enter p0

    .line 1756
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->mFinished:Z

    .line 1757
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 1758
    monitor-exit p0

    return-void

    .line 1755
    .end local p1    # "userId":I
    :catchall_9
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;
    throw p1
.end method

.method public declared-synchronized userStopped(I)V
    .registers 3
    .param p1, "userId"    # I

    monitor-enter p0

    .line 1750
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->mFinished:Z

    .line 1751
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 1752
    monitor-exit p0

    return-void

    .line 1749
    .end local p1    # "userId":I
    :catchall_9
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;
    throw p1
.end method

.method public declared-synchronized waitForFinish()V
    .registers 3

    monitor-enter p0

    .line 1742
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;->mFinished:Z

    if-nez v0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_8} :catch_e
    .catchall {:try_start_1 .. :try_end_8} :catchall_c

    goto :goto_1

    .line 1745
    :cond_9
    nop

    .line 1746
    monitor-exit p0

    return-void

    .line 1741
    :catchall_c
    move-exception v0

    goto :goto_15

    .line 1743
    :catch_e
    move-exception v0

    .line 1744
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_f
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_c

    .line 1741
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_15
    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerShellCommand$StopUserCallback;
    throw v0
.end method
