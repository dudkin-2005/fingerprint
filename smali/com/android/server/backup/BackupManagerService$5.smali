.class Lcom/android/server/backup/BackupManagerService$5;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/backup/BackupManagerService;->endFullBackup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 0

    .line 2199
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$5;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2202
    nop

    .line 2203
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$5;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$000(Lcom/android/server/backup/BackupManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2204
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$5;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v1}, Lcom/android/server/backup/BackupManagerService;->access$1300(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2205
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$5;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v1}, Lcom/android/server/backup/BackupManagerService;->access$1300(Lcom/android/server/backup/BackupManagerService;)Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    move-result-object v1

    goto :goto_0

    .line 2207
    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2208
    if-eqz v1, :cond_1

    .line 2210
    const-string v0, "BackupManagerService"

    const-string v2, "Telling running backup to stop"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->handleCancel(Z)V

    .line 2214
    :cond_1
    return-void

    .line 2207
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
