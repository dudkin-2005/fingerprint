.class public Lcom/android/server/backup/utils/BackupObserverUtils;
.super Ljava/lang/Object;
.source "BackupObserverUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V
    .locals 0

    .line 70
    if-eqz p0, :cond_0

    .line 72
    :try_start_0
    invoke-interface {p0, p1}, Landroid/app/backup/IBackupObserver;->backupFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 73
    :catch_0
    move-exception p0

    .line 75
    const-string p0, "BackupManagerService"

    const-string p1, "Backup observer went away: backupFinished"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    :goto_0
    return-void
.end method

.method public static sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V
    .locals 0

    .line 54
    if-eqz p0, :cond_0

    .line 56
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/backup/IBackupObserver;->onResult(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 57
    :catch_0
    move-exception p0

    .line 59
    const-string p0, "BackupManagerService"

    const-string p1, "Backup observer went away: onResult"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    :goto_0
    return-void
.end method

.method public static sendBackupOnUpdate(Landroid/app/backup/IBackupObserver;Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    .locals 0

    .line 37
    if-eqz p0, :cond_0

    .line 39
    :try_start_0
    invoke-interface {p0, p1, p2}, Landroid/app/backup/IBackupObserver;->onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 42
    const-string p0, "BackupManagerService"

    const-string p1, "Backup observer went away: onUpdate"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    :goto_0
    return-void
.end method
