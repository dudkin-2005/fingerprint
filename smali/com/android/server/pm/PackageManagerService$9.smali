.class Lcom/android/server/pm/PackageManagerService$9;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field final synthetic val$currentStatus:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageManagerService$InstallArgs;)V
    .locals 0

    .line 15147
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$9;->val$currentStatus:I

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$9;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 15149
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15151
    new-instance v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;-><init>()V

    .line 15152
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$9;->val$currentStatus:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->setReturnCode(I)V

    .line 15153
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    .line 15154
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 15155
    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 15156
    iget v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 15157
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$9;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPreInstall(I)I

    .line 15158
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1

    .line 15159
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$9;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-static {v3, v4, v0}, Lcom/android/server/pm/PackageManagerService;->access$3300(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 15160
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15161
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$9;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v3, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostInstall(II)I

    goto :goto_0

    .line 15160
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 15167
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 15169
    move v1, v2

    goto :goto_1

    .line 15167
    :cond_1
    nop

    .line 15169
    move v1, v3

    :goto_1
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-nez v4, :cond_2

    .line 15170
    move v4, v3

    goto :goto_2

    .line 15169
    :cond_2
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 15170
    :goto_2
    if-nez v1, :cond_3

    const v1, 0x8000

    and-int/2addr v1, v4

    if-eqz v1, :cond_3

    .line 15177
    move v1, v2

    goto :goto_3

    .line 15170
    :cond_3
    nop

    .line 15177
    move v1, v3

    :goto_3
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v4, v4, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    if-gez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput v2, v4, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 15178
    :cond_4
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v5, v4, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lcom/android/server/pm/PackageManagerService;->mNextInstallToken:I

    .line 15180
    new-instance v4, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$9;->val$args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-direct {v4, v6, v0}, Lcom/android/server/pm/PackageManagerService$PostInstallData;-><init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)V

    .line 15181
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15184
    iget v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const-wide/32 v6, 0x40000

    if-ne v4, v2, :cond_7

    if-eqz v1, :cond_7

    .line 15189
    const-string v2, "backup"

    .line 15190
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 15189
    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    .line 15191
    if-eqz v2, :cond_6

    .line 15194
    const-string/jumbo v4, "restore"

    invoke-static {v6, v7, v4, v5}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 15197
    :try_start_2
    invoke-interface {v2, v3}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 15198
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v0, v5}, Landroid/app/backup/IBackupManager;->restoreAtInstall(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 15200
    :cond_5
    nop

    .line 15207
    move v1, v3

    :goto_4
    goto :goto_6

    .line 15204
    :catch_0
    move-exception v0

    .line 15205
    const-string v1, "PackageManager"

    const-string v2, "Exception trying to enqueue restore"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15206
    nop

    .line 15207
    goto :goto_5

    .line 15202
    :catch_1
    move-exception v0

    goto :goto_4

    .line 15209
    :cond_6
    const-string v0, "PackageManager"

    const-string v1, "Backup Manager not found!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15210
    nop

    .line 15214
    :goto_5
    move v1, v3

    :cond_7
    :goto_6
    if-nez v1, :cond_8

    .line 15219
    const-string/jumbo v0, "postInstall"

    invoke-static {v6, v7, v0, v5}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 15221
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v5, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 15222
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$9;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 15224
    :cond_8
    return-void
.end method
