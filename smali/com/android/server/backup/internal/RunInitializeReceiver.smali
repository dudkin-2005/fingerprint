.class public Lcom/android/server/backup/internal/RunInitializeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RunInitializeReceiver.java"


# instance fields
.field private final mBackupManagerService:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 37
    return-void
.end method

.method static synthetic lambda$onReceive$0(Landroid/os/PowerManager$WakeLock;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 40
    const-string p1, "android.app.backup.intent.INIT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 41
    iget-object p1, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 42
    :try_start_0
    iget-object p2, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/BackupManagerService;->getPendingInits()Landroid/util/ArraySet;

    move-result-object p2

    .line 44
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Running a device init; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pending"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 48
    nop

    .line 49
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->clearPendingInits()V

    .line 53
    iget-object v0, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 55
    new-instance v1, Lcom/android/server/backup/internal/-$$Lambda$RunInitializeReceiver$6NFkS59RniyJ8xe_gfe6oyt63HQ;

    invoke-direct {v1, v0}, Lcom/android/server/backup/internal/-$$Lambda$RunInitializeReceiver$6NFkS59RniyJ8xe_gfe6oyt63HQ;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 57
    new-instance v0, Lcom/android/server/backup/internal/PerformInitializeTask;

    iget-object v2, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v3, 0x0

    invoke-direct {v0, v2, p2, v3, v1}, Lcom/android/server/backup/internal/PerformInitializeTask;-><init>(Lcom/android/server/backup/BackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V

    .line 60
    iget-object p2, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 64
    :cond_1
    :goto_0
    return-void
.end method
