.class public Lcom/android/server/backup/internal/ProvisionedObserver;
.super Landroid/database/ContentObserver;
.source "ProvisionedObserver.java"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Handler;)V
    .locals 0

    .line 35
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 36
    iput-object p1, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 37
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 40
    iget-object p1, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->isProvisioned()Z

    move-result p1

    .line 41
    iget-object v0, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->deviceIsProvisioned()Z

    move-result v0

    .line 43
    iget-object v1, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/server/backup/BackupManagerService;->setProvisioned(Z)V

    .line 49
    iget-object v0, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->isProvisioned()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 51
    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 56
    iget-object p1, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 57
    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getConstants()Lcom/android/server/backup/BackupManagerConstants;

    move-result-object v1

    .line 56
    invoke-static {p1, v1}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V

    .line 58
    iget-object p1, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob(J)V

    .line 60
    :cond_2
    monitor-exit v0

    .line 61
    return-void

    .line 60
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
