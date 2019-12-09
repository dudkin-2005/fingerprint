.class public Lcom/android/server/backup/internal/ClearDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "ClearDataObserver.java"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/server/backup/internal/ClearDataObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 29
    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1

    .line 32
    iget-object p1, p0, Lcom/android/server/backup/internal/ClearDataObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->getClearDataLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 33
    :try_start_0
    iget-object p2, p0, Lcom/android/server/backup/internal/ClearDataObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/server/backup/BackupManagerService;->setClearingData(Z)V

    .line 34
    iget-object p2, p0, Lcom/android/server/backup/internal/ClearDataObserver;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {p2}, Lcom/android/server/backup/BackupManagerService;->getClearDataLock()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 35
    monitor-exit p1

    .line 36
    return-void

    .line 35
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
