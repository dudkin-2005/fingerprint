.class public Lcom/android/server/backup/internal/RunBackupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RunBackupReceiver.java"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 40
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 43
    const-string p1, "android.app.backup.intent.RUN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 44
    iget-object p1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 45
    :try_start_0
    iget-object p2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/BackupManagerService;->getPendingInits()Landroid/util/ArraySet;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p2, :cond_0

    .line 52
    :try_start_1
    iget-object p2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/BackupManagerService;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 53
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getRunInitIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 52
    invoke-virtual {p2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 54
    iget-object p2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/BackupManagerService;->getRunInitIntent()Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 55
    :catch_0
    move-exception p2

    .line 56
    :try_start_2
    const-string p2, "BackupManagerService"

    const-string v0, "Run init intent cancelled"

    invoke-static {p2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    goto :goto_1

    .line 62
    :cond_0
    iget-object p2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/BackupManagerService;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/BackupManagerService;->isProvisioned()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 63
    iget-object p2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/BackupManagerService;->isBackupRunning()Z

    move-result p2

    if-nez p2, :cond_1

    .line 65
    const-string p2, "BackupManagerService"

    const-string v0, "Running a backup pass"

    invoke-static {p2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/server/backup/BackupManagerService;->setBackupRunning(Z)V

    .line 71
    iget-object p2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 73
    iget-object p2, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 75
    iget-object v0, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    const-string p2, "BackupManagerService"

    const-string v0, "Backup time but one already running"

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 80
    :cond_2
    const-string p2, "BackupManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Backup pass but e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/backup/internal/RunBackupReceiver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 81
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->isProvisioned()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_1
    monitor-exit p1

    goto :goto_2

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    .line 86
    :cond_3
    :goto_2
    return-void
.end method
