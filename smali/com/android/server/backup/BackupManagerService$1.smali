.class Lcom/android/server/backup/BackupManagerService$1;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
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

    .line 1031
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1034
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/BackupManagerService;->access$000(Lcom/android/server/backup/BackupManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1036
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1037
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1038
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1047
    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->access$100(Lcom/android/server/backup/BackupManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1048
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1050
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 1051
    iget-object v5, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->access$100(Lcom/android/server/backup/BackupManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;

    .line 1052
    iget-object v6, v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1053
    iget-wide v5, v5, Lcom/android/server/backup/fullbackup/FullBackupEntry;->lastBackup:J

    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 1050
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1055
    :cond_0
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 1057
    new-instance v2, Landroid/util/AtomicFile;

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$1;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v3}, Lcom/android/server/backup/BackupManagerService;->access$200(Lcom/android/server/backup/BackupManagerService;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1058
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 1059
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1060
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1063
    goto :goto_1

    .line 1064
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1061
    :catch_0
    move-exception v1

    .line 1062
    :try_start_1
    const-string v2, "BackupManagerService"

    const-string v3, "Unable to write backup schedule!"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1064
    :goto_1
    monitor-exit v0

    .line 1065
    return-void

    .line 1064
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
