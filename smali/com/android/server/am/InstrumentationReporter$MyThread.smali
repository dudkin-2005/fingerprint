.class final Lcom/android/server/am/InstrumentationReporter$MyThread;
.super Ljava/lang/Thread;
.source "InstrumentationReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/InstrumentationReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/InstrumentationReporter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/InstrumentationReporter;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    .line 41
    const-string p1, "InstrumentationReporter"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 48
    nop

    .line 51
    :goto_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    iget-object v2, v2, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 52
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    iget-object v3, v3, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    .line 53
    iget-object v4, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    .line 54
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_5

    .line 69
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    nop

    .line 73
    move v1, v0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 74
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/InstrumentationReporter$Report;

    .line 76
    :try_start_1
    iget v4, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mType:I

    if-nez v4, :cond_1

    .line 80
    iget-object v4, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v5, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    iget v6, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mResultCode:I

    iget-object v7, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    invoke-interface {v4, v5, v6, v7}, Landroid/app/IInstrumentationWatcher;->instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V

    goto :goto_3

    .line 86
    :cond_1
    iget-object v4, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v5, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    iget v6, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mResultCode:I

    iget-object v7, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    invoke-interface {v4, v5, v6, v7}, Landroid/app/IInstrumentationWatcher;->instrumentationFinished(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    :goto_3
    goto :goto_4

    .line 89
    :catch_0
    move-exception v4

    .line 90
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure reporting to instrumentation watcher: comp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " results="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 94
    :cond_2
    goto :goto_0

    .line 55
    :cond_3
    :goto_5
    if-nez v1, :cond_4

    .line 58
    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    iget-object v1, v1, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    goto :goto_6

    .line 59
    :catch_1
    move-exception v1

    .line 61
    :goto_6
    nop

    .line 62
    :try_start_3
    monitor-exit v2

    .line 51
    const/4 v1, 0x1

    goto :goto_1

    .line 64
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    iput-object v5, v0, Lcom/android/server/am/InstrumentationReporter;->mThread:Ljava/lang/Thread;

    .line 66
    monitor-exit v2

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
