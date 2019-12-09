.class Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoveInstallArgs"
.end annotation


# instance fields
.field private codeFile:Ljava/io/File;

.field private resourceFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .locals 16

    .line 16298
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iput-object v2, v1, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16299
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 16301
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->traceMethod:Ljava/lang/String;

    iget v12, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->traceCookie:I

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v14, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installReason:I

    .line 16299
    const/4 v15, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v15

    invoke-direct/range {v0 .. v14}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/PackageParser$SigningDetails;I)V

    .line 16305
    return-void
.end method

.method private cleanUp(Ljava/lang/String;)Z
    .locals 12

    .line 16372
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->dataAppName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16374
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning up "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$MoveInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16375
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    .line 16376
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 16379
    :try_start_0
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v8, v1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16381
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v7, v6, Lcom/android/server/pm/PackageManagerService$MoveInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x3

    const-wide/16 v10, 0x0

    move-object v6, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_1
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16385
    goto :goto_1

    .line 16383
    :catch_0
    move-exception v5

    .line 16384
    :try_start_2
    const-string v6, "PackageManager"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16379
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 16387
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageManagerService;->removeCodePathLI(Ljava/io/File;)V

    .line 16388
    monitor-exit v2

    .line 16389
    const/4 p1, 0x1

    return p1

    .line 16388
    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method


# virtual methods
.method cleanUpResourcesLI()V
    .locals 1

    .line 16393
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    .locals 8

    .line 16310
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    monitor-enter p1

    .line 16312
    :try_start_0
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, p2, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v1, p2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->fromUuid:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v2, p2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v3, p2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->packageName:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v4, p2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->dataAppName:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget v5, p2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->appId:I

    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v6, p2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->seinfo:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget v7, p2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->targetSdkVersion:I

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/Installer;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16317
    nop

    .line 16318
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16320
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    invoke-static {p2}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->dataAppName:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->codeFile:Ljava/io/File;

    .line 16321
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->codeFile:Ljava/io/File;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->resourceFile:Ljava/io/File;

    .line 16324
    const/4 p1, 0x1

    return p1

    .line 16318
    :catchall_0
    move-exception p2

    goto :goto_0

    .line 16314
    :catch_0
    move-exception p2

    .line 16315
    :try_start_2
    const-string v0, "PackageManager"

    const-string v1, "Failed to move app"

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16316
    const/16 p2, -0x6e

    monitor-exit p1

    return p2

    .line 16318
    :goto_0
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2
.end method

.method doPostDeleteLI(Z)Z
    .locals 0

    .line 16397
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method doPostInstall(II)I
    .locals 0

    .line 16353
    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 16354
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->fromUuid:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->cleanUp(Ljava/lang/String;)Z

    goto :goto_0

    .line 16356
    :cond_0
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->cleanUp(Ljava/lang/String;)Z

    .line 16358
    :goto_0
    return p1
.end method

.method doPreInstall(I)I
    .locals 1

    .line 16328
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 16329
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->cleanUp(Ljava/lang/String;)Z

    .line 16331
    :cond_0
    return p1
.end method

.method doRename(ILandroid/content/pm/PackageParser$Package;Ljava/lang/String;)Z
    .locals 0

    .line 16335
    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    .line 16336
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->cleanUp(Ljava/lang/String;)Z

    .line 16337
    const/4 p1, 0x0

    return p1

    .line 16341
    :cond_0
    iget-object p1, p2, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Package;->setApplicationVolumeUuid(Ljava/lang/String;)V

    .line 16342
    iget-object p1, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoCodePath(Ljava/lang/String;)V

    .line 16343
    iget-object p1, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoBaseCodePath(Ljava/lang/String;)V

    .line 16344
    iget-object p1, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoSplitCodePaths([Ljava/lang/String;)V

    .line 16345
    iget-object p1, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoResourcePath(Ljava/lang/String;)V

    .line 16346
    iget-object p1, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoBaseResourcePath(Ljava/lang/String;)V

    .line 16347
    iget-object p1, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoSplitResourcePaths([Ljava/lang/String;)V

    .line 16349
    return p3
.end method

.method getCodePath()Ljava/lang/String;
    .locals 1

    .line 16363
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->codeFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getResourcePath()Ljava/lang/String;
    .locals 1

    .line 16368
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->resourceFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->resourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
