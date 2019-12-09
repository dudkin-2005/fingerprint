.class Lcom/android/server/pm/PackageManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "PackageManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;,
        Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;,
        Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;,
        Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    }
.end annotation


# static fields
.field private static final ART_PROFILE_SNAPSHOT_DEBUG_LOCATION:Ljava/lang/String; = "/data/misc/profman/"

.field private static final STDIN_PATH:Ljava/lang/String; = "-"


# instance fields
.field mBrief:Z

.field mComponents:Z

.field final mInterface:Landroid/content/pm/IPackageManager;

.field private final mResourceCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field mTargetUser:I


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 1385
    if-eqz p0, :cond_b

    :try_start_2
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_e

    :catch_6
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_b
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_e
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/pm/PackageManagerService;

    .line 135
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 129
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    .line 136
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 137
    return-void
.end method

.method private static checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "abi"    # Ljava/lang/String;

    .line 2415
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 2419
    const-string v0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2420
    return-object p0

    .line 2423
    :cond_f
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 2424
    .local v0, "supportedAbis":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_21

    aget-object v3, v0, v2

    .line 2425
    .local v3, "supportedAbi":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 2426
    return-object p0

    .line 2424
    .end local v3    # "supportedAbi":Ljava/lang/String;
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 2430
    :cond_21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ABI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not supported on this device"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2416
    .end local v0    # "supportedAbis":[Ljava/lang/String;
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing ABI argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private displayPackageFilePath(Ljava/lang/String;I)I
    .registers 11
    .param p1, "pckg"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 359
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_3f

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_3f

    .line 360
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 361
    .local v2, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v3, "package:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 364
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v4, v3

    move v5, v1

    :goto_2e
    if-ge v5, v4, :cond_3e

    aget-object v6, v3, v5

    .line 365
    .local v6, "splitSourceDir":Ljava/lang/String;
    const-string/jumbo v7, "package:"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    .end local v6    # "splitSourceDir":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2e

    .line 369
    :cond_3e
    return v1

    .line 371
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_3f
    const/4 v1, 0x1

    return v1
.end method

.method private doAbandonSession(IZ)I
    .registers 7
    .param p1, "sessionId"    # I
    .param p2, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2550
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2551
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 2553
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_5
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2554
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v1, v2

    .line 2555
    invoke-virtual {v1}, Landroid/content/pm/PackageInstaller$Session;->abandon()V

    .line 2556
    if-eqz p2, :cond_1f

    .line 2557
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_24

    .line 2559
    :cond_1f
    const/4 v2, 0x0

    .line 2561
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2559
    return v2

    .line 2561
    :catchall_24
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private doCommitSession(IZ)I
    .registers 10
    .param p1, "sessionId"    # I
    .param p2, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2515
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2516
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    move-object v2, v1

    .line 2518
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_6
    new-instance v3, Landroid/content/pm/PackageInstaller$Session;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2519
    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_82

    move-object v2, v3

    .line 2524
    :try_start_16
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->getNames()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/dex/DexMetadataHelper;->validateDexPaths([Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_1d} :catch_1e
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1d} :catch_1e
    .catchall {:try_start_16 .. :try_end_1d} :catchall_82

    .line 2527
    goto :goto_3c

    .line 2525
    :catch_1e
    move-exception v3

    .line 2526
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning [Could not validate the dex paths: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2529
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3c
    new-instance v3, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    invoke-direct {v3, v1}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    move-object v1, v3

    .line 2530
    .local v1, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageInstaller$Session;->commit(Landroid/content/IntentSender;)V

    .line 2532
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v3

    .line 2533
    .local v3, "result":Landroid/content/Intent;
    const-string v4, "android.content.pm.extra.STATUS"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 2535
    .local v4, "status":I
    if-nez v4, :cond_5e

    .line 2536
    if-eqz p2, :cond_7d

    .line 2537
    const-string v5, "Success"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7d

    .line 2540
    :cond_5e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "android.content.pm.extra.STATUS_MESSAGE"

    .line 2541
    invoke-virtual {v3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2540
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7d
    .catchall {:try_start_1f .. :try_end_7d} :catchall_82

    .line 2543
    :cond_7d
    :goto_7d
    nop

    .line 2545
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2543
    return v4

    .line 2545
    .end local v1    # "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    .end local v3    # "result":Landroid/content/Intent;
    .end local v4    # "status":I
    :catchall_82
    move-exception v1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method private doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I
    .registers 6
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2440
    const-string/jumbo v0, "runInstallCreate"

    const/4 v1, 0x1

    invoke-direct {p0, p3, v1, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IZLjava/lang/String;)I

    move-result p3

    .line 2441
    const/4 v0, -0x1

    if-ne p3, v0, :cond_12

    .line 2442
    const/4 p3, 0x0

    .line 2443
    iget v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2446
    :cond_12
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v0

    .line 2447
    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v0

    .line 2448
    .local v0, "sessionId":I
    return v0
.end method

.method private doListPermissions(Ljava/util/ArrayList;ZZZII)V
    .registers 25
    .param p2, "groups"    # Z
    .param p3, "labels"    # Z
    .param p4, "summary"    # Z
    .param p5, "startProtectionLevel"    # I
    .param p6, "endProtectionLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;ZZZII)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2568
    .local p1, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2568
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 2569
    .local v4, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2570
    .local v5, "groupCount":I
    const/4 v6, 0x0

    move v7, v6

    .line 2570
    .local v7, "i":I
    :goto_e
    if-ge v7, v5, :cond_214

    .line 2571
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2572
    .local v8, "groupName":Ljava/lang/String;
    const-string v9, ""

    .line 2573
    .local v9, "prefix":Ljava/lang/String;
    if-eqz p2, :cond_fd

    .line 2574
    if-lez v7, :cond_21

    .line 2575
    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2577
    :cond_21
    if-eqz v8, :cond_dd

    .line 2578
    iget-object v10, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2579
    invoke-interface {v10, v8, v6}, Landroid/content/pm/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v10

    .line 2580
    .local v10, "pgi":Landroid/content/pm/PermissionGroupInfo;
    if-eqz p4, :cond_65

    .line 2581
    invoke-direct {v0, v10}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v11

    .line 2582
    .local v11, "res":Landroid/content/res/Resources;
    if-eqz v11, :cond_4e

    .line 2583
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v10, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    iget-object v14, v10, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-direct {v0, v10, v13, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_64

    .line 2585
    :cond_4e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v10, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2588
    .end local v11    # "res":Landroid/content/res/Resources;
    :goto_64
    goto :goto_dc

    .line 2589
    :cond_65
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_6f

    const-string v12, "+ "

    goto :goto_71

    :cond_6f
    const-string v12, ""

    :goto_71
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "group:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2590
    if-eqz p3, :cond_dc

    .line 2591
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  package:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v10, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2592
    invoke-direct {v0, v10}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v11

    .line 2593
    .restart local v11    # "res":Landroid/content/res/Resources;
    if-eqz v11, :cond_dc

    .line 2594
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  label:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    iget-object v14, v10, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2595
    invoke-direct {v0, v10, v13, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2594
    invoke-virtual {v4, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2596
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  description:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    iget-object v14, v10, Landroid/content/pm/PermissionGroupInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 2597
    invoke-direct {v0, v10, v13, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2596
    invoke-virtual {v4, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2602
    .end local v10    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    .end local v11    # "res":Landroid/content/res/Resources;
    :cond_dc
    :goto_dc
    goto :goto_fb

    .line 2603
    :cond_dd
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_e9

    if-nez p4, :cond_e9

    const-string v11, "+ "

    goto :goto_eb

    :cond_e9
    const-string v11, ""

    :goto_eb
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "ungrouped:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2605
    :goto_fb
    const-string v9, "  "

    .line 2607
    :cond_fd
    iget-object v10, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2608
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v10, v11, v6}, Landroid/content/pm/IPackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v10

    .line 2609
    .local v10, "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 2610
    .local v11, "count":I
    const/4 v12, 0x1

    .line 2611
    .local v12, "first":Z
    move v13, v12

    move v12, v6

    .line 2611
    .local v12, "p":I
    .local v13, "first":Z
    :goto_114
    if-ge v12, v11, :cond_206

    .line 2612
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/PermissionInfo;

    .line 2613
    .local v14, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz p2, :cond_126

    if-nez v8, :cond_126

    iget-object v6, v14, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v6, :cond_126

    .line 2614
    goto/16 :goto_1ff

    .line 2616
    :cond_126
    iget v6, v14, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v6, v6, 0xf

    .line 2617
    .local v6, "base":I
    move/from16 v1, p5

    if-lt v6, v1, :cond_1ff

    move/from16 v1, p6

    if-le v6, v1, :cond_134

    .line 2619
    goto/16 :goto_1ff

    .line 2621
    :cond_134
    if-eqz p4, :cond_15a

    .line 2622
    if-eqz v13, :cond_13a

    .line 2623
    const/4 v13, 0x0

    goto :goto_13f

    .line 2625
    :cond_13a
    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2627
    :goto_13f
    invoke-direct {v0, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 2628
    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_152

    .line 2629
    move-object v15, v1

    iget v1, v14, Landroid/content/pm/PermissionInfo;->labelRes:I

    .line 2629
    .end local v1    # "res":Landroid/content/res/Resources;
    .local v15, "res":Landroid/content/res/Resources;
    iget-object v2, v14, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-direct {v0, v14, v1, v2}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_158

    .line 2632
    .end local v15    # "res":Landroid/content/res/Resources;
    .restart local v1    # "res":Landroid/content/res/Resources;
    :cond_152
    move-object v15, v1

    .line 2632
    .end local v1    # "res":Landroid/content/res/Resources;
    .restart local v15    # "res":Landroid/content/res/Resources;
    iget-object v1, v14, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2634
    .end local v15    # "res":Landroid/content/res/Resources;
    :goto_158
    goto/16 :goto_1ff

    .line 2635
    :cond_15a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_167

    const-string v2, "+ "

    goto :goto_169

    :cond_167
    const-string v2, ""

    :goto_169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "permission:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2637
    if-eqz p3, :cond_1ff

    .line 2638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2639
    invoke-direct {v0, v14}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 2640
    .restart local v1    # "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_1e0

    .line 2641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v1

    const-string v1, "  label:"

    .line 2641
    .end local v1    # "res":Landroid/content/res/Resources;
    .local v16, "res":Landroid/content/res/Resources;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Landroid/content/pm/PermissionInfo;->labelRes:I

    iget-object v3, v14, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2642
    invoke-direct {v0, v14, v1, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2641
    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  description:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v14, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    iget-object v3, v14, Landroid/content/pm/PermissionInfo;->nonLocalizedDescription:Ljava/lang/CharSequence;

    .line 2645
    invoke-direct {v0, v14, v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2644
    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1e2

    .line 2648
    .end local v16    # "res":Landroid/content/res/Resources;
    .restart local v1    # "res":Landroid/content/res/Resources;
    :cond_1e0
    move-object/from16 v16, v1

    .line 2648
    .end local v1    # "res":Landroid/content/res/Resources;
    .restart local v16    # "res":Landroid/content/res/Resources;
    :goto_1e2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  protectionLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v14, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 2649
    invoke-static {v2}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2648
    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2611
    .end local v6    # "base":I
    .end local v14    # "pi":Landroid/content/pm/PermissionInfo;
    .end local v16    # "res":Landroid/content/res/Resources;
    :cond_1ff
    :goto_1ff
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    const/4 v6, 0x0

    goto/16 :goto_114

    .line 2654
    .end local v12    # "p":I
    :cond_206
    if-eqz p4, :cond_20d

    .line 2655
    const-string v1, ""

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2570
    .end local v8    # "groupName":Ljava/lang/String;
    .end local v9    # "prefix":Ljava/lang/String;
    .end local v10    # "ps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    .end local v11    # "count":I
    .end local v13    # "first":Z
    :cond_20d
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    const/4 v6, 0x0

    goto/16 :goto_e

    .line 2658
    .end local v7    # "i":I
    :cond_214
    return-void
.end method

.method private doRemoveSplit(ILjava/lang/String;Z)I
    .registers 9
    .param p1, "sessionId"    # I
    .param p2, "splitName"    # Ljava/lang/String;
    .param p3, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2495
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2496
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 2498
    .local v1, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_5
    new-instance v2, Landroid/content/pm/PackageInstaller$Session;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2499
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v1, v2

    .line 2500
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageInstaller$Session;->removeSplit(Ljava/lang/String;)V

    .line 2502
    if-eqz p3, :cond_1f

    .line 2503
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1f} :catch_26
    .catchall {:try_start_5 .. :try_end_1f} :catchall_24

    .line 2505
    :cond_1f
    const/4 v2, 0x0

    .line 2510
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2505
    return v2

    .line 2510
    :catchall_24
    move-exception v2

    goto :goto_44

    .line 2506
    :catch_26
    move-exception v2

    .line 2507
    .local v2, "e":Ljava/io/IOException;
    :try_start_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: failed to remove split; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_27 .. :try_end_3f} :catchall_24

    .line 2508
    const/4 v3, 0x1

    .line 2510
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2508
    return v3

    .line 2510
    .end local v2    # "e":Ljava/io/IOException;
    :goto_44
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method private doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I
    .registers 23
    .param p1, "sessionId"    # I
    .param p2, "inPath"    # Ljava/lang/String;
    .param p3, "sizeBytes"    # J
    .param p5, "splitName"    # Ljava/lang/String;
    .param p6, "logSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 2453
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    .line 2455
    .local v3, "pw":Ljava/io/PrintWriter;
    const-string v0, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_1f

    .line 2456
    new-instance v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    .line 2468
    .end local p3    # "sizeBytes":J
    .local v13, "fd":Landroid/os/ParcelFileDescriptor;
    .local v14, "sizeBytes":J
    :goto_1b
    move-wide/from16 v14, p3

    move-object v13, v0

    goto :goto_5a

    .line 2457
    .end local v13    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v14    # "sizeBytes":J
    .restart local p3    # "sizeBytes":J
    :cond_1f
    if-eqz v2, :cond_50

    .line 2458
    const-string/jumbo v0, "r"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 2459
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    const/4 v6, -0x1

    if-nez v0, :cond_2c

    .line 2460
    return v6

    .line 2462
    :cond_2c
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v7

    .line 2463
    .end local p3    # "sizeBytes":J
    .local v7, "sizeBytes":J
    cmp-long v9, v7, v4

    if-gez v9, :cond_4d

    .line 2464
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to get size of: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2465
    return v6

    .line 2468
    :cond_4d
    move-object v13, v0

    move-wide v14, v7

    goto :goto_5a

    .line 2468
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "sizeBytes":J
    .restart local p3    # "sizeBytes":J
    :cond_50
    new-instance v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    goto :goto_1b

    .line 2470
    .end local p3    # "sizeBytes":J
    .restart local v13    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v14    # "sizeBytes":J
    :goto_5a
    cmp-long v0, v14, v4

    const/4 v4, 0x1

    if-gtz v0, :cond_69

    .line 2471
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v5, "Error: must specify a APK size"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2472
    return v4

    .line 2475
    :cond_69
    const/4 v0, 0x0

    move-object v5, v0

    .line 2477
    .local v5, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_6b
    new-instance v0, Landroid/content/pm/PackageInstaller$Session;

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 2478
    invoke-interface {v6}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v6

    move/from16 v11, p1

    invoke-interface {v6, v11}, Landroid/content/pm/IPackageInstaller;->openSession(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/content/pm/PackageInstaller$Session;-><init>(Landroid/content/pm/IPackageInstallerSession;)V

    move-object v5, v0

    .line 2479
    const-wide/16 v9, 0x0

    move-object v7, v5

    move-object/from16 v8, p5

    move-wide v11, v14

    invoke-virtual/range {v7 .. v13}, Landroid/content/pm/PackageInstaller$Session;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V

    .line 2481
    if-eqz p6, :cond_a1

    .line 2482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Success: streamed "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " bytes"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_a1} :catch_a8
    .catchall {:try_start_6b .. :try_end_a1} :catchall_a6

    .line 2484
    :cond_a1
    const/4 v0, 0x0

    .line 2489
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2484
    return v0

    .line 2489
    :catchall_a6
    move-exception v0

    goto :goto_ca

    .line 2485
    :catch_a8
    move-exception v0

    .line 2486
    .local v0, "e":Ljava/io/IOException;
    :try_start_a9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: failed to write; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_c5
    .catchall {:try_start_a9 .. :try_end_c5} :catchall_a6

    .line 2487
    nop

    .line 2489
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2487
    return v4

    .line 2489
    .end local v0    # "e":Ljava/io/IOException;
    :goto_ca
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private static enabledSettingToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 1586
    packed-switch p0, :pswitch_data_18

    .line 1598
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 1596
    :pswitch_7
    const-string v0, "disabled-until-used"

    return-object v0

    .line 1594
    :pswitch_a
    const-string v0, "disabled-user"

    return-object v0

    .line 1592
    :pswitch_d
    const-string v0, "disabled"

    return-object v0

    .line 1590
    :pswitch_10
    const-string v0, "enabled"

    return-object v0

    .line 1588
    :pswitch_13
    const-string v0, "default"

    return-object v0

    nop

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method private getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;
    .registers 7
    .param p1, "pii"    # Landroid/content/pm/PackageItemInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2678
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    .line 2679
    .local v0, "res":Landroid/content/res/Resources;
    if-eqz v0, :cond_d

    return-object v0

    .line 2681
    :cond_d
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 2682
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Landroid/content/res/AssetManager;

    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V

    .line 2683
    .local v2, "am":Landroid/content/res/AssetManager;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 2684
    new-instance v3, Landroid/content/res/Resources;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    move-object v0, v3

    .line 2685
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mResourceCache:Ljava/util/WeakHashMap;

    iget-object v4, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2686
    return-object v0
.end method

.method private static isNumber(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 2013
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_6

    .line 2016
    nop

    .line 2017
    const/4 v0, 0x1

    return v0

    .line 2014
    :catch_6
    move-exception v0

    .line 2015
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return v1
.end method

.method private isProductApp(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1773
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, v0, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1774
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_13

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isProduct()Z

    move-result v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_14

    if-eqz v2, :cond_13

    const/4 v0, 0x1

    nop

    :cond_13
    return v0

    .line 1775
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_14
    move-exception v1

    .line 1776
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method private isVendorApp(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 1764
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, v0, v0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1765
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_13

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isVendor()Z

    move-result v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_14

    if-eqz v2, :cond_13

    const/4 v0, 0x1

    nop

    :cond_13
    return v0

    .line 1766
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_14
    move-exception v1

    .line 1767
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method public static synthetic lambda$runGetOemPermissions$0(Lcom/android/server/pm/PackageManagerShellCommand;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "granted"    # Ljava/lang/Boolean;

    .line 1834
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " granted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private linkStateToString(I)Ljava/lang/String;
    .registers 4
    .param p1, "state"    # I

    .line 1841
    packed-switch p1, :pswitch_data_26

    .line 1848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown link state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1846
    :pswitch_15
    const-string v0, "always ask"

    return-object v0

    .line 1845
    :pswitch_18
    const-string/jumbo v0, "never"

    return-object v0

    .line 1844
    :pswitch_1c
    const-string v0, "always"

    return-object v0

    .line 1843
    :pswitch_1f
    const-string v0, "ask"

    return-object v0

    .line 1842
    :pswitch_22
    const-string/jumbo v0, "undefined"

    return-object v0

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method private loadText(Landroid/content/pm/PackageItemInfo;ILjava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .param p1, "pii"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "res"    # I
    .param p3, "nonLocalized"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2662
    if-eqz p3, :cond_7

    .line 2663
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2665
    :cond_7
    if-eqz p2, :cond_15

    .line 2666
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->getResources(Landroid/content/pm/PackageItemInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 2667
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz v0, :cond_15

    .line 2669
    :try_start_f
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_13
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_f .. :try_end_13} :catch_14

    return-object v1

    .line 2670
    :catch_14
    move-exception v1

    .line 2674
    .end local v0    # "r":Landroid/content/res/Resources;
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method private makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .registers 14

    .line 2159
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 2160
    .local v0, "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    .line 2165
    .local v2, "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->updateUserId()I

    move-result v4

    iput v4, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    .line 2168
    iput-object v0, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 2170
    move v4, v1

    .line 2171
    .local v4, "replaceExisting":Z
    :cond_15
    :goto_15
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .line 2171
    .local v6, "opt":Ljava/lang/String;
    if-eqz v5, :cond_25a

    .line 2172
    const/4 v5, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v10, 0x4

    const/16 v11, 0x10

    const/4 v12, 0x2

    sparse-switch v7, :sswitch_data_25c

    goto/16 :goto_144

    :sswitch_2d
    const-string v7, "--force-sdk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    const/16 v5, 0x18

    goto/16 :goto_144

    :sswitch_39
    const-string v7, "--user"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    const/16 v5, 0x15

    goto/16 :goto_144

    :sswitch_45
    const-string v7, "--full"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    const/16 v5, 0x13

    goto/16 :goto_144

    :sswitch_51
    const-string v7, "--preload"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    const/16 v5, 0x14

    goto/16 :goto_144

    :sswitch_5d
    const-string v7, "--ephemeral"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    move v5, v11

    goto/16 :goto_144

    :sswitch_68
    const-string v7, "--originating-uri"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    const/16 v5, 0xa

    goto/16 :goto_144

    :sswitch_74
    const-string v7, "--pkg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    const/16 v5, 0xd

    goto/16 :goto_144

    :sswitch_80
    const-string v7, "--abi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    const/16 v5, 0xf

    goto/16 :goto_144

    :sswitch_8c
    const-string v7, "-t"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    move v5, v10

    goto/16 :goto_144

    :sswitch_97
    const-string v7, "-s"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    const/4 v5, 0x5

    goto/16 :goto_144

    :sswitch_a2
    const-string v7, "-r"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    move v5, v1

    goto/16 :goto_144

    :sswitch_ad
    const-string v7, "-p"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    const/16 v5, 0xc

    goto/16 :goto_144

    :sswitch_b9
    const-string v7, "-l"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    move v5, v9

    goto/16 :goto_144

    :sswitch_c4
    const-string v7, "-i"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    const/4 v5, 0x3

    goto/16 :goto_144

    :sswitch_cf
    const-string v7, "-g"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    move v5, v8

    goto/16 :goto_144

    :sswitch_da
    const-string v7, "-f"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    const/4 v5, 0x6

    goto :goto_144

    :sswitch_e4
    const-string v7, "-d"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    const/4 v5, 0x7

    goto :goto_144

    :sswitch_ee
    const-string v7, "-S"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    const/16 v5, 0xe

    goto :goto_144

    :sswitch_f9
    const-string v7, "-R"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    move v5, v12

    goto :goto_144

    :sswitch_103
    const-string v7, "--referrer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    const/16 v5, 0xb

    goto :goto_144

    :sswitch_10e
    const-string v7, "--instant"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    const/16 v5, 0x11

    goto :goto_144

    :sswitch_119
    const-string v7, "--instantapp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    const/16 v5, 0x12

    goto :goto_144

    :sswitch_124
    const-string v7, "--install-location"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    const/16 v5, 0x16

    goto :goto_144

    :sswitch_12f
    const-string v7, "--dont-kill"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    const/16 v5, 0x9

    goto :goto_144

    :sswitch_13a
    const-string v7, "--force-uuid"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_144

    const/16 v5, 0x17

    :cond_144
    :goto_144
    packed-switch v5, :pswitch_data_2c2

    .line 2262
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown option "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2259
    :pswitch_15e
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2260
    goto/16 :goto_251

    .line 2252
    :pswitch_166
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2253
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    .line 2254
    const-string/jumbo v5, "internal"

    iget-object v7, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_251

    .line 2255
    iput-object v3, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    goto/16 :goto_251

    .line 2249
    :pswitch_181
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    .line 2250
    goto/16 :goto_251

    .line 2246
    :pswitch_18d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    .line 2247
    goto/16 :goto_251

    .line 2243
    :pswitch_199
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsVirtualPreload()V

    .line 2244
    goto/16 :goto_251

    .line 2240
    :pswitch_19e
    invoke-virtual {v0, v9}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsInstantApp(Z)V

    .line 2241
    goto/16 :goto_251

    .line 2237
    :pswitch_1a3
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallAsInstantApp(Z)V

    .line 2238
    goto/16 :goto_251

    .line 2232
    :pswitch_1a8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerShellCommand;->checkAbiArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 2233
    goto/16 :goto_251

    .line 2225
    :pswitch_1b4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 2226
    .local v7, "sizeBytes":J
    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-lez v5, :cond_1c7

    .line 2229
    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V

    .line 2230
    goto/16 :goto_251

    .line 2227
    :cond_1c7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Size must be positive"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2219
    .end local v7    # "sizeBytes":J
    :pswitch_1cf
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 2220
    iget-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v5, :cond_1db

    goto/16 :goto_251

    .line 2221
    :cond_1db
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing package name"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2212
    :pswitch_1e3
    iput v12, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    .line 2213
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 2214
    iget-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v5, :cond_1f0

    goto :goto_251

    .line 2215
    :cond_1f0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing inherit package name"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2209
    :pswitch_1f8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 2210
    goto :goto_251

    .line 2206
    :pswitch_203
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 2207
    goto :goto_251

    .line 2203
    :pswitch_20e
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2204
    goto :goto_251

    .line 2200
    :pswitch_215
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2201
    goto :goto_251

    .line 2197
    :pswitch_21c
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2198
    goto :goto_251

    .line 2194
    :pswitch_223
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v5, v11

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2195
    goto :goto_251

    .line 2191
    :pswitch_229
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v5, v8

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2192
    goto :goto_251

    .line 2188
    :pswitch_22f
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v5, v10

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2189
    goto :goto_251

    .line 2182
    :pswitch_235
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 2183
    iget-object v5, v2, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    if-eqz v5, :cond_240

    goto :goto_251

    .line 2184
    :cond_240
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Missing installer package"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2179
    :pswitch_248
    const/4 v4, 0x0

    .line 2180
    goto :goto_251

    .line 2177
    :pswitch_24a
    goto :goto_251

    .line 2174
    :pswitch_24b
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v5, v1

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2175
    nop

    .line 2264
    :cond_251
    :goto_251
    if-eqz v4, :cond_15

    .line 2265
    iget v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v5, v12

    iput v5, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto/16 :goto_15

    .line 2268
    :cond_25a
    return-object v2

    nop

    :sswitch_data_25c
    .sparse-switch
        -0x7449dd03 -> :sswitch_13a
        -0x69f9e586 -> :sswitch_12f
        -0x4e451eb9 -> :sswitch_124
        -0x43c705c0 -> :sswitch_119
        -0x38b573bf -> :sswitch_10e
        -0x2a211e41 -> :sswitch_103
        0x5c5 -> :sswitch_f9
        0x5c6 -> :sswitch_ee
        0x5d7 -> :sswitch_e4
        0x5d9 -> :sswitch_da
        0x5da -> :sswitch_cf
        0x5dc -> :sswitch_c4
        0x5df -> :sswitch_b9
        0x5e3 -> :sswitch_ad
        0x5e5 -> :sswitch_a2
        0x5e6 -> :sswitch_97
        0x5e7 -> :sswitch_8c
        0x2900ec8 -> :sswitch_80
        0x290482c -> :sswitch_74
        0x8d57768 -> :sswitch_68
        0x3eb0e7fd -> :sswitch_5d
        0x3fa0d469 -> :sswitch_51
        0x4f74582f -> :sswitch_45
        0x4f7b216b -> :sswitch_39
        0x781e9cb8 -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_2c2
    .packed-switch 0x0
        :pswitch_24b
        :pswitch_24a
        :pswitch_248
        :pswitch_235
        :pswitch_22f
        :pswitch_229
        :pswitch_223
        :pswitch_21c
        :pswitch_215
        :pswitch_20e
        :pswitch_203
        :pswitch_1f8
        :pswitch_1e3
        :pswitch_1cf
        :pswitch_1b4
        :pswitch_1a8
        :pswitch_1a3
        :pswitch_1a3
        :pswitch_1a3
        :pswitch_19e
        :pswitch_199
        :pswitch_18d
        :pswitch_181
        :pswitch_166
        :pswitch_15e
    .end packed-switch
.end method

.method private parseIntentAndUser()Landroid/content/Intent;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 730
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 731
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    .line 732
    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    .line 733
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$4;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerShellCommand$4;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {p0, v0}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v0

    .line 749
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 750
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 749
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    .line 751
    return-object v0
.end method

.method private printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    .registers 9
    .param p1, "pr"    # Landroid/util/PrintWriterPrinter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p4, "brief"    # Z
    .param p5, "components"    # Z

    .line 756
    if-nez p4, :cond_4

    if-eqz p5, :cond_9c

    .line 758
    :cond_4
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_16

    .line 759
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    .local v0, "comp":Landroid/content/ComponentName;
    :goto_15
    goto :goto_3b

    .line 760
    .end local v0    # "comp":Landroid/content/ComponentName;
    :cond_16
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_28

    .line 761
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 762
    :cond_28
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_3a

    .line 763
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v2, v2, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 765
    :cond_3a
    const/4 v0, 0x0

    .line 767
    .restart local v0    # "comp":Landroid/content/ComponentName;
    :goto_3b
    if-eqz v0, :cond_9c

    .line 768
    if-nez p5, :cond_85

    .line 769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "priority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " preferredOrder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " match=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/content/pm/ResolveInfo;->match:I

    .line 771
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " specificIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p3, Landroid/content/pm/ResolveInfo;->specificIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isDefault="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 769
    invoke-virtual {p1, v1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 775
    :cond_85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/PrintWriterPrinter;->println(Ljava/lang/String;)V

    .line 776
    return-void

    .line 779
    .end local v0    # "comp":Landroid/content/ComponentName;
    :cond_9c
    invoke-virtual {p3, p1, p2}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 780
    return-void
.end method

.method private runClear()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1553
    const/4 v0, 0x0

    .line 1554
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 1555
    .local v1, "option":Ljava/lang/String;
    if-eqz v1, :cond_17

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1556
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 1559
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1560
    .local v2, "pkg":Ljava/lang/String;
    const/4 v3, 0x1

    if-nez v2, :cond_28

    .line 1561
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: no package specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1562
    return v3

    .line 1565
    :cond_28
    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;

    invoke-direct {v4}, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;-><init>()V

    .line 1566
    .local v4, "obs":Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v2, v6, v4, v0}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    .line 1567
    monitor-enter v4

    .line 1568
    :goto_36
    :try_start_36
    iget-boolean v5, v4, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->finished:Z
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_59

    if-nez v5, :cond_40

    .line 1570
    :try_start_3a
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3d} :catch_3e
    .catchall {:try_start_3a .. :try_end_3d} :catchall_59

    .line 1572
    :goto_3d
    goto :goto_36

    .line 1571
    :catch_3e
    move-exception v5

    goto :goto_3d

    .line 1574
    :cond_40
    :try_start_40
    monitor-exit v4
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_59

    .line 1576
    iget-boolean v5, v4, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->result:Z

    if-eqz v5, :cond_4f

    .line 1577
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v5, "Success"

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1578
    return v6

    .line 1580
    :cond_4f
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, "Failed"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1581
    return v3

    .line 1574
    :catchall_59
    move-exception v3

    :try_start_5a
    monitor-exit v4
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    throw v3
.end method

.method private runCompile()I
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1125
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 1126
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "dalvik.vm.usejitprofiles"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1127
    .local v2, "checkProfiles":Z
    const/4 v4, 0x0

    .line 1128
    .local v4, "forceCompilation":Z
    const/4 v5, 0x0

    .line 1129
    .local v5, "allPackages":Z
    const/4 v6, 0x0

    .line 1130
    .local v6, "clearProfileData":Z
    const/4 v7, 0x0

    .line 1131
    .local v7, "compilerFilter":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1132
    .local v8, "compilationReason":Ljava/lang/String;
    const/4 v9, 0x0

    .line 1133
    .local v9, "checkProfilesRaw":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1134
    .local v10, "secondaryDex":Z
    const/4 v11, 0x0

    .line 1137
    .local v11, "split":Ljava/lang/String;
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v12

    move-object v15, v12

    .line 1137
    .local v15, "opt":Ljava/lang/String;
    const/4 v13, -0x1

    const/4 v14, 0x1

    if-eqz v12, :cond_f6

    .line 1138
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v12

    const v3, -0x60476451

    if-eq v12, v3, :cond_9c

    const v3, -0x60346686

    if-eq v12, v3, :cond_91

    const/16 v3, 0x5d4

    if-eq v12, v3, :cond_87

    const/16 v3, 0x5d6

    if-eq v12, v3, :cond_7d

    const/16 v3, 0x5d9

    if-eq v12, v3, :cond_73

    const/16 v3, 0x5e0

    if-eq v12, v3, :cond_69

    const/16 v3, 0x5e5

    if-eq v12, v3, :cond_5f

    const v3, 0x4baaae9e    # 2.2371644E7f

    if-eq v12, v3, :cond_55

    const v3, 0x64c6429e

    if-eq v12, v3, :cond_4b

    goto :goto_a6

    :cond_4b
    const-string v3, "--check-prof"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    const/4 v3, 0x5

    goto :goto_a7

    :cond_55
    const-string v3, "--secondary-dex"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    const/4 v3, 0x7

    goto :goto_a7

    :cond_5f
    const-string v3, "-r"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    const/4 v3, 0x4

    goto :goto_a7

    :cond_69
    const-string v3, "-m"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    const/4 v3, 0x3

    goto :goto_a7

    :cond_73
    const-string v3, "-f"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    const/4 v3, 0x2

    goto :goto_a7

    :cond_7d
    const-string v3, "-c"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    move v3, v14

    goto :goto_a7

    :cond_87
    const-string v3, "-a"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    const/4 v3, 0x0

    goto :goto_a7

    :cond_91
    const-string v3, "--split"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    const/16 v3, 0x8

    goto :goto_a7

    :cond_9c
    const-string v3, "--reset"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    const/4 v3, 0x6

    goto :goto_a7

    :cond_a6
    :goto_a6
    move v3, v13

    :goto_a7
    packed-switch v3, :pswitch_data_2aa

    .line 1169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: Unknown option: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1170
    return v14

    .line 1166
    :pswitch_bf
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 1167
    .end local v11    # "split":Ljava/lang/String;
    .local v3, "split":Ljava/lang/String;
    nop

    .line 1134
    move-object v11, v3

    goto :goto_f3

    .line 1163
    .end local v3    # "split":Ljava/lang/String;
    .restart local v11    # "split":Ljava/lang/String;
    :pswitch_c6
    const/4 v3, 0x1

    .line 1164
    .end local v10    # "secondaryDex":Z
    .local v3, "secondaryDex":Z
    nop

    .line 1134
    move v10, v3

    goto :goto_f3

    .line 1158
    .end local v3    # "secondaryDex":Z
    .restart local v10    # "secondaryDex":Z
    :pswitch_ca
    const/4 v3, 0x1

    .line 1159
    .end local v4    # "forceCompilation":Z
    .local v3, "forceCompilation":Z
    const/4 v4, 0x1

    .line 1160
    .end local v6    # "clearProfileData":Z
    .local v4, "clearProfileData":Z
    const-string/jumbo v6, "install"

    .line 1161
    .end local v8    # "compilationReason":Ljava/lang/String;
    .local v6, "compilationReason":Ljava/lang/String;
    nop

    .line 1134
    move-object v8, v6

    move v6, v4

    goto :goto_ea

    .line 1155
    .end local v3    # "forceCompilation":Z
    .local v4, "forceCompilation":Z
    .local v6, "clearProfileData":Z
    .restart local v8    # "compilationReason":Ljava/lang/String;
    :pswitch_d3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 1156
    .end local v9    # "checkProfilesRaw":Ljava/lang/String;
    .local v3, "checkProfilesRaw":Ljava/lang/String;
    nop

    .line 1134
    move-object v9, v3

    goto :goto_f3

    .line 1152
    .end local v3    # "checkProfilesRaw":Ljava/lang/String;
    .restart local v9    # "checkProfilesRaw":Ljava/lang/String;
    :pswitch_da
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 1153
    .end local v8    # "compilationReason":Ljava/lang/String;
    .local v3, "compilationReason":Ljava/lang/String;
    nop

    .line 1134
    move-object v8, v3

    goto :goto_f3

    .line 1149
    .end local v3    # "compilationReason":Ljava/lang/String;
    .restart local v8    # "compilationReason":Ljava/lang/String;
    :pswitch_e1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    .line 1150
    .end local v7    # "compilerFilter":Ljava/lang/String;
    .local v3, "compilerFilter":Ljava/lang/String;
    nop

    .line 1134
    move-object v7, v3

    goto :goto_f3

    .line 1146
    .end local v3    # "compilerFilter":Ljava/lang/String;
    .restart local v7    # "compilerFilter":Ljava/lang/String;
    :pswitch_e8
    const/4 v3, 0x1

    .line 1147
    .end local v4    # "forceCompilation":Z
    .local v3, "forceCompilation":Z
    nop

    .line 1134
    .end local v3    # "forceCompilation":Z
    .restart local v4    # "forceCompilation":Z
    :goto_ea
    move v4, v3

    goto :goto_f3

    .line 1143
    :pswitch_ec
    const/4 v3, 0x1

    .line 1144
    .end local v6    # "clearProfileData":Z
    .local v3, "clearProfileData":Z
    nop

    .line 1134
    move v6, v3

    goto :goto_f3

    .line 1140
    .end local v3    # "clearProfileData":Z
    .restart local v6    # "clearProfileData":Z
    :pswitch_f0
    const/4 v3, 0x1

    .line 1141
    .end local v5    # "allPackages":Z
    .local v3, "allPackages":Z
    nop

    .line 1134
    move v5, v3

    .line 1134
    .end local v3    # "allPackages":Z
    .restart local v5    # "allPackages":Z
    :goto_f3
    const/4 v3, 0x0

    goto/16 :goto_15

    .line 1174
    :cond_f6
    if-eqz v9, :cond_113

    .line 1175
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_103

    .line 1176
    const/4 v2, 0x1

    goto :goto_113

    .line 1177
    :cond_103
    const-string v3, "false"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 1178
    const/4 v2, 0x0

    goto :goto_113

    .line 1180
    :cond_10d
    const-string v3, "Invalid value for \"--check-prof\". Expected \"true\" or \"false\"."

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1181
    return v14

    .line 1185
    :cond_113
    :goto_113
    if-eqz v7, :cond_11d

    if-eqz v8, :cond_11d

    .line 1186
    const-string v3, "Cannot use compilation filter (\"-m\") and compilation reason (\"-r\") at the same time"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1188
    return v14

    .line 1190
    :cond_11d
    if-nez v7, :cond_127

    if-nez v8, :cond_127

    .line 1191
    const-string v3, "Cannot run without any of compilation filter (\"-m\") and compilation reason (\"-r\") at the same time"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1193
    return v14

    .line 1196
    :cond_127
    if-eqz v5, :cond_131

    if-eqz v11, :cond_131

    .line 1197
    const-string v3, "-a cannot be specified together with --split"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1198
    return v14

    .line 1201
    :cond_131
    if-eqz v10, :cond_13b

    if-eqz v11, :cond_13b

    .line 1202
    const-string v3, "--secondary-dex cannot be specified together with --split"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1203
    return v14

    .line 1207
    :cond_13b
    if-eqz v7, :cond_15f

    .line 1208
    invoke-static {v7}, Ldalvik/system/DexFile;->isValidCompilerFilter(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15d

    .line 1209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error: \""

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\" is not a valid compilation filter."

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1211
    return v14

    .line 1213
    :cond_15d
    move-object v3, v7

    .line 1213
    .local v3, "targetCompilerFilter":Ljava/lang/String;
    goto :goto_193

    .line 1215
    .end local v3    # "targetCompilerFilter":Ljava/lang/String;
    :cond_15f
    const/4 v3, -0x1

    .line 1216
    .local v3, "reason":I
    const/4 v12, 0x0

    .line 1216
    .local v12, "i":I
    :goto_161
    sget-object v14, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v14, v14

    if-ge v12, v14, :cond_176

    .line 1217
    sget-object v14, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v14, v14, v12

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_172

    .line 1219
    move v3, v12

    .line 1220
    goto :goto_176

    .line 1216
    :cond_172
    add-int/lit8 v12, v12, 0x1

    const/4 v14, 0x1

    goto :goto_161

    .line 1223
    .end local v12    # "i":I
    :cond_176
    :goto_176
    if-ne v3, v13, :cond_18e

    .line 1224
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error: Unknown compilation reason: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1225
    const/4 v12, 0x1

    return v12

    .line 1227
    :cond_18e
    nop

    .line 1228
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getCompilerFilterForReason(I)Ljava/lang/String;

    move-result-object v3

    .line 1232
    .local v3, "targetCompilerFilter":Ljava/lang/String;
    :goto_193
    const/4 v12, 0x0

    .line 1233
    .local v12, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_19f

    .line 1234
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v13}, Landroid/content/pm/IPackageManager;->getAllPackages()Ljava/util/List;

    move-result-object v12

    .line 1244
    move-object v13, v12

    const/4 v14, 0x1

    goto :goto_1b2

    .line 1236
    :cond_19f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v13

    .line 1237
    .local v13, "packageName":Ljava/lang/String;
    if-nez v13, :cond_1ac

    .line 1238
    const-string v14, "Error: package name not specified"

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1239
    const/4 v14, 0x1

    return v14

    .line 1241
    :cond_1ac
    const/4 v14, 0x1

    invoke-static {v13}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 1244
    .end local v13    # "packageName":Ljava/lang/String;
    move-object v13, v12

    .line 1244
    .end local v12    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v13, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1b2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1245
    .local v12, "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 1246
    .local v16, "index":I
    move-object/from16 v20, v7

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1246
    .end local v7    # "compilerFilter":Ljava/lang/String;
    .local v20, "compilerFilter":Ljava/lang/String;
    :goto_1bf
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_247

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v21, v7

    move-object/from16 v7, v17

    check-cast v7, Ljava/lang/String;

    .line 1247
    .local v7, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_1d6

    .line 1248
    iget-object v14, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v14, v7}, Landroid/content/pm/IPackageManager;->clearApplicationProfileData(Ljava/lang/String;)V

    .line 1251
    :cond_1d6
    if-eqz v5, :cond_205

    .line 1252
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v5

    add-int/lit8 v5, v16, 0x1

    .line 1252
    .end local v16    # "index":I
    .local v5, "index":I
    .local v22, "allPackages":Z
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v23, v5

    const-string v5, "/"

    .line 1252
    .end local v5    # "index":I
    .local v23, "index":I
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1253
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    goto :goto_209

    .line 1256
    .end local v22    # "allPackages":Z
    .end local v23    # "index":I
    .local v5, "allPackages":Z
    .restart local v16    # "index":I
    :cond_205
    move/from16 v22, v5

    move/from16 v23, v16

    .line 1256
    .end local v5    # "allPackages":Z
    .end local v16    # "index":I
    .restart local v22    # "allPackages":Z
    .restart local v23    # "index":I
    :goto_209
    if-eqz v10, :cond_219

    .line 1257
    iget-object v5, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v7, v3, v4}, Landroid/content/pm/IPackageManager;->performDexOptSecondary(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 1259
    move-object v0, v12

    move-object/from16 v24, v13

    move-object/from16 v19, v15

    move v12, v5

    const/4 v5, 0x1

    goto :goto_231

    :cond_219
    iget-object v5, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/16 v17, 0x1

    move-object v14, v12

    move-object v12, v5

    .line 1259
    .end local v12    # "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v14, "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v5, v13

    move-object v13, v7

    .line 1259
    .end local v13    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v24, v5

    move-object v0, v14

    const/4 v5, 0x1

    move v14, v2

    .line 1259
    .end local v5    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v0, "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v24, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v19, v15

    move-object v15, v3

    .line 1259
    .end local v15    # "opt":Ljava/lang/String;
    .local v19, "opt":Ljava/lang/String;
    move/from16 v16, v4

    move-object/from16 v18, v11

    invoke-interface/range {v12 .. v18}, Landroid/content/pm/IPackageManager;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z

    move-result v12

    .line 1262
    .local v12, "result":Z
    :goto_231
    if-nez v12, :cond_236

    .line 1263
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1265
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v12    # "result":Z
    :cond_236
    nop

    .line 1246
    move-object v12, v0

    move v14, v5

    move-object/from16 v15, v19

    move-object/from16 v7, v21

    move/from16 v5, v22

    move/from16 v16, v23

    move-object/from16 v13, v24

    move-object/from16 v0, p0

    goto/16 :goto_1bf

    .line 1267
    .end local v0    # "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "opt":Ljava/lang/String;
    .end local v22    # "allPackages":Z
    .end local v23    # "index":I
    .end local v24    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "allPackages":Z
    .local v12, "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "opt":Ljava/lang/String;
    .restart local v16    # "index":I
    :cond_247
    move/from16 v22, v5

    move-object v0, v12

    move-object/from16 v24, v13

    move v5, v14

    move-object/from16 v19, v15

    .line 1267
    .end local v5    # "allPackages":Z
    .end local v12    # "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "opt":Ljava/lang/String;
    .restart local v0    # "failedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "opt":Ljava/lang/String;
    .restart local v22    # "allPackages":Z
    .restart local v24    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_25c

    .line 1268
    const-string v5, "Success"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1269
    const/4 v7, 0x0

    return v7

    .line 1270
    :cond_25c
    const/4 v7, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v5, :cond_283

    .line 1271
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failure: package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " could not be compiled"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1272
    return v5

    .line 1274
    :cond_283
    const-string v7, "Failure: the following packages could not be compiled: "

    invoke-virtual {v1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1275
    const/4 v7, 0x1

    .line 1276
    .local v7, "is_first":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_28d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2a6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1277
    .local v13, "packageName":Ljava/lang/String;
    if-eqz v7, :cond_29d

    .line 1278
    const/4 v7, 0x0

    goto :goto_2a2

    .line 1280
    :cond_29d
    const-string v14, ", "

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1282
    :goto_2a2
    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1283
    .end local v13    # "packageName":Ljava/lang/String;
    goto :goto_28d

    .line 1284
    :cond_2a6
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1285
    return v5

    :pswitch_data_2aa
    .packed-switch 0x0
        :pswitch_f0
        :pswitch_ec
        :pswitch_e8
        :pswitch_e1
        :pswitch_da
        :pswitch_d3
        :pswitch_ca
        :pswitch_c6
        :pswitch_bf
    .end packed-switch
.end method

.method private runDexoptJob()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1303
    .local v0, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "arg":Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 1304
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1306
    :cond_10
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x0

    goto :goto_1c

    .line 1307
    :cond_1a
    nop

    .line 1306
    move-object v3, v0

    :goto_1c
    invoke-interface {v1, v3}, Landroid/content/pm/IPackageManager;->runBackgroundDexoptJob(Ljava/util/List;)Z

    move-result v1

    .line 1308
    .local v1, "result":Z
    if-eqz v1, :cond_24

    const/4 v3, 0x0

    goto :goto_25

    :cond_24
    const/4 v3, -0x1

    :goto_25
    return v3
.end method

.method private runDump()I
    .registers 4

    .line 2357
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2358
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_11

    .line 2359
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: no package specified"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2360
    const/4 v1, 0x1

    return v1

    .line 2362
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/app/ActivityManager;->dumpPackageStateStatic(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 2363
    const/4 v1, 0x0

    return v1
.end method

.method private runDumpProfiles()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1312
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1313
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->dumpProfiles(Ljava/lang/String;)V

    .line 1314
    const/4 v1, 0x0

    return v1
.end method

.method private runGetAppLink()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1927
    const/4 v0, 0x0

    move v1, v0

    .line 1930
    .local v1, "userId":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "opt":Ljava/lang/String;
    const/4 v4, 0x1

    if-eqz v2, :cond_34

    .line 1931
    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1932
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 1934
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: unknown option: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1935
    return v4

    .line 1940
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1941
    .local v2, "pkg":Ljava/lang/String;
    if-nez v2, :cond_44

    .line 1942
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v5, "Error: no package specified."

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1943
    return v4

    .line 1946
    :cond_44
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v2, v0, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1947
    .local v5, "info":Landroid/content/pm/PackageInfo;
    if-nez v5, :cond_6a

    .line 1948
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not found."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1949
    return v4

    .line 1952
    :cond_6a
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v6, v6, 0x10

    if-nez v6, :cond_90

    .line 1954
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " does not handle web links."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1955
    return v4

    .line 1958
    :cond_90
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 1959
    invoke-interface {v6, v2, v1}, Landroid/content/pm/IPackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v6

    .line 1958
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->linkStateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1961
    return v0
.end method

.method private runGetHarmfulAppWarning()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2390
    const/4 v0, -0x2

    .line 2393
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 2393
    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_33

    .line 2394
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2395
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2397
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2398
    const/4 v1, -0x1

    return v1

    .line 2402
    :cond_33
    const-string/jumbo v1, "runGetHarmfulAppWarning"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IZLjava/lang/String;)I

    move-result v0

    .line 2404
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2405
    .local v1, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v1, v0}, Landroid/content/pm/IPackageManager;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2406
    .local v4, "warning":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_53

    .line 2407
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2408
    return v3

    .line 2410
    :cond_53
    const/4 v3, 0x1

    return v3
.end method

.method private runGetInstallLocation()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1060
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getInstallLocation()I

    move-result v0

    .line 1061
    .local v0, "loc":I
    const-string/jumbo v1, "invalid"

    .line 1062
    .local v1, "locStr":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 1063
    const-string v1, "auto"

    goto :goto_1a

    .line 1064
    :cond_e
    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    .line 1065
    const-string/jumbo v1, "internal"

    goto :goto_1a

    .line 1066
    :cond_15
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1a

    .line 1067
    const-string v1, "external"

    .line 1069
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1070
    const/4 v2, 0x0

    return v2
.end method

.method private runGetInstantAppResolver()I
    .registers 5

    .line 2320
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2322
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x1

    :try_start_5
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getInstantAppResolverComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 2323
    .local v2, "instantAppsResolver":Landroid/content/ComponentName;
    if-nez v2, :cond_e

    .line 2324
    return v1

    .line 2326
    :cond_e
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_17

    .line 2327
    const/4 v1, 0x0

    return v1

    .line 2328
    .end local v2    # "instantAppsResolver":Landroid/content/ComponentName;
    :catch_17
    move-exception v2

    .line 2329
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2330
    return v1
.end method

.method private runGetOemPermissions()I
    .registers 5

    .line 1823
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1824
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_11

    .line 1825
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: no package specified."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1826
    const/4 v1, 0x1

    return v1

    .line 1828
    :cond_11
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    .line 1829
    invoke-virtual {v1, v0}, Lcom/android/server/SystemConfig;->getOemPermissions(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 1830
    .local v1, "oemPermissions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v1, :cond_2b

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_2b

    .line 1833
    :cond_22
    new-instance v2, Lcom/android/server/pm/-$$Lambda$PackageManagerShellCommand$-OZpz58K2HXVuHDuVYKnCu6oo4c;

    invoke-direct {v2, p0}, Lcom/android/server/pm/-$$Lambda$PackageManagerShellCommand$-OZpz58K2HXVuHDuVYKnCu6oo4c;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_35

    .line 1831
    :cond_2b
    :goto_2b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string/jumbo v3, "{}"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1837
    :goto_35
    const/4 v2, 0x0

    return v2
.end method

.method private runGetPrivappDenyPermissions()I
    .registers 5

    .line 1802
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1803
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_11

    .line 1804
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: no package specified."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1805
    const/4 v1, 0x1

    return v1

    .line 1808
    :cond_11
    const/4 v1, 0x0

    .line 1809
    .local v1, "privAppPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isVendorApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1810
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getVendorPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_38

    .line 1811
    :cond_21
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isProductApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1812
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getProductPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_38

    .line 1814
    :cond_30
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getPrivAppDenyPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 1817
    :goto_38
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    if-nez v1, :cond_42

    .line 1818
    const-string/jumbo v3, "{}"

    goto :goto_46

    :cond_42
    invoke-virtual {v1}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1817
    :goto_46
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1819
    const/4 v2, 0x0

    return v2
.end method

.method private runGetPrivappPermissions()I
    .registers 5

    .line 1781
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1782
    .local v0, "pkg":Ljava/lang/String;
    if-nez v0, :cond_11

    .line 1783
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error: no package specified."

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1784
    const/4 v1, 0x1

    return v1

    .line 1787
    :cond_11
    const/4 v1, 0x0

    .line 1788
    .local v1, "privAppPermissions":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isVendorApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1789
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getVendorPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_38

    .line 1790
    :cond_21
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->isProductApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1791
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getProductPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    goto :goto_38

    .line 1793
    :cond_30
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/SystemConfig;->getPrivAppPermissions(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    .line 1796
    :goto_38
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    if-nez v1, :cond_42

    .line 1797
    const-string/jumbo v3, "{}"

    goto :goto_46

    :cond_42
    invoke-virtual {v1}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1796
    :goto_46
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1798
    const/4 v2, 0x0

    return v2
.end method

.method private runGrantRevokePermission(Z)I
    .registers 9
    .param p1, "grant"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1714
    const/4 v0, 0x0

    .line 1716
    .local v0, "userId":I
    const/4 v1, 0x0

    .line 1717
    .local v1, "opt":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    if-eqz v2, :cond_1a

    .line 1718
    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1719
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_2

    .line 1723
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1724
    .local v2, "pkg":Ljava/lang/String;
    const/4 v3, 0x1

    if-nez v2, :cond_2b

    .line 1725
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: no package specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1726
    return v3

    .line 1728
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 1729
    .local v4, "perm":Ljava/lang/String;
    if-nez v4, :cond_3b

    .line 1730
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    const-string v6, "Error: no permission specified"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1731
    return v3

    .line 1734
    :cond_3b
    if-eqz p1, :cond_43

    .line 1735
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v2, v4, v0}, Landroid/content/pm/IPackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_48

    .line 1737
    :cond_43
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v2, v4, v0}, Landroid/content/pm/IPackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1739
    :goto_48
    const/4 v3, 0x0

    return v3
.end method

.method private runHasFeature()I
    .registers 9

    .line 2335
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2336
    .local v0, "err":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2337
    .local v1, "featureName":Ljava/lang/String;
    const/4 v2, 0x1

    if-nez v1, :cond_11

    .line 2338
    const-string v3, "Error: expected FEATURE name"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2339
    return v2

    .line 2341
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 2343
    .local v3, "versionString":Ljava/lang/String;
    const/4 v4, 0x0

    if-nez v3, :cond_1a

    move v5, v4

    goto :goto_1e

    :cond_1a
    :try_start_1a
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2344
    .local v5, "version":I
    :goto_1e
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v6, v1, v5}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v6

    .line 2345
    .local v6, "hasFeature":Z
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_2b} :catch_39
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2b} :catch_30

    .line 2346
    if-eqz v6, :cond_2f

    move v2, v4

    nop

    :cond_2f
    return v2

    .line 2350
    .end local v5    # "version":I
    .end local v6    # "hasFeature":Z
    :catch_30
    move-exception v4

    .line 2351
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2352
    return v2

    .line 2347
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_39
    move-exception v4

    .line 2348
    .local v4, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: illegal version number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2349
    return v2
.end method

.method private runInstall()I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 907
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 908
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v1

    .line 909
    .local v1, "params":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v9

    .line 911
    .local v9, "inPath":Ljava/lang/String;
    invoke-direct {p0, v1, v9}, Lcom/android/server/pm/PackageManagerShellCommand;->setParamsSize(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;Ljava/lang/String;)V

    .line 912
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v10

    .line 914
    .local v10, "sessionId":I
    const/4 v11, 0x1

    move v12, v11

    .line 916
    .local v12, "abandonSession":Z
    const/4 v13, 0x0

    if-nez v9, :cond_38

    :try_start_1e
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_38

    .line 917
    const-string v2, "Error: must either specify a package size or an APK file"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_36

    .line 918
    nop

    .line 932
    if-eqz v12, :cond_35

    .line 934
    :try_start_30
    invoke-direct {p0, v10, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_34

    .line 936
    goto :goto_35

    .line 935
    :catch_34
    move-exception v2

    .line 918
    :cond_35
    :goto_35
    return v11

    .line 932
    :catchall_36
    move-exception v2

    goto :goto_6f

    .line 920
    :cond_38
    :try_start_38
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v5, v2, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-string v7, "base.apk"

    const/4 v8, 0x0

    move-object v2, p0

    move v3, v10

    move-object v4, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I

    move-result v2
    :try_end_46
    .catchall {:try_start_38 .. :try_end_46} :catchall_36

    if-eqz v2, :cond_51

    .line 922
    nop

    .line 932
    if-eqz v12, :cond_50

    .line 934
    :try_start_4b
    invoke-direct {p0, v10, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 936
    goto :goto_50

    .line 935
    :catch_4f
    move-exception v2

    .line 922
    :cond_50
    :goto_50
    return v11

    .line 924
    :cond_51
    :try_start_51
    invoke-direct {p0, v10, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    move-result v2
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_36

    if-eqz v2, :cond_60

    .line 926
    nop

    .line 932
    if-eqz v12, :cond_5f

    .line 934
    :try_start_5a
    invoke-direct {p0, v10, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_5e

    .line 936
    goto :goto_5f

    .line 935
    :catch_5e
    move-exception v2

    .line 926
    :cond_5f
    :goto_5f
    return v11

    .line 928
    :cond_60
    const/4 v12, 0x0

    .line 929
    :try_start_61
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_36

    .line 930
    nop

    .line 932
    if-eqz v12, :cond_6e

    .line 934
    :try_start_69
    invoke-direct {p0, v10, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_6d

    .line 936
    goto :goto_6e

    .line 935
    :catch_6d
    move-exception v2

    .line 930
    :cond_6e
    :goto_6e
    return v13

    .line 932
    :goto_6f
    if-eqz v12, :cond_76

    .line 934
    :try_start_71
    invoke-direct {p0, v10, v13}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_75

    .line 936
    goto :goto_76

    .line 935
    :catch_75
    move-exception v3

    .line 936
    :cond_76
    :goto_76
    throw v2
.end method

.method private runInstallAbandon()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 942
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 943
    .local v0, "sessionId":I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I

    move-result v1

    return v1
.end method

.method private runInstallCommit()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 947
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 948
    .local v0, "sessionId":I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    move-result v1

    return v1
.end method

.method private runInstallCreate()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 952
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 953
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->makeInstallParams()Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;

    move-result-object v1

    .line 954
    .local v1, "installParams":Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->installerPackageName:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v2

    .line 958
    .local v2, "sessionId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Success: created install session ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 959
    const/4 v3, 0x0

    return v3
.end method

.method private runInstallExisting()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 994
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 995
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 996
    .local v1, "userId":I
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .line 998
    .local v1, "installFlags":I
    .local v3, "userId":I
    :goto_8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "opt":Ljava/lang/String;
    const/4 v6, 0x1

    if-eqz v4, :cond_7c

    .line 999
    const/4 v4, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, -0x38b573bf

    if-eq v7, v8, :cond_48

    const v8, 0x3eb0e7fd

    if-eq v7, v8, :cond_3e

    const v8, 0x4f74582f

    if-eq v7, v8, :cond_34

    const v8, 0x4f7b216b

    if-eq v7, v8, :cond_2a

    goto :goto_51

    :cond_2a
    const-string v7, "--user"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    move v4, v2

    goto :goto_51

    :cond_34
    const-string v7, "--full"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    const/4 v4, 0x3

    goto :goto_51

    :cond_3e
    const-string v7, "--ephemeral"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    move v4, v6

    goto :goto_51

    :cond_48
    const-string v7, "--instant"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    const/4 v4, 0x2

    :cond_51
    :goto_51
    packed-switch v4, :pswitch_data_d4

    .line 1013
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1014
    return v6

    .line 1009
    :pswitch_69
    and-int/lit16 v1, v1, -0x801

    .line 1010
    or-int/lit16 v1, v1, 0x4000

    .line 1011
    goto :goto_8

    .line 1005
    :pswitch_6e
    or-int/lit16 v1, v1, 0x800

    .line 1006
    and-int/lit16 v1, v1, -0x4001

    .line 1007
    goto :goto_8

    .line 1001
    :pswitch_73
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    .line 1002
    goto :goto_8

    .line 1018
    :cond_7c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 1019
    .local v4, "packageName":Ljava/lang/String;
    if-nez v4, :cond_88

    .line 1020
    const-string v2, "Error: package name not specified"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1021
    return v6

    .line 1025
    :cond_88
    :try_start_88
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, v4, v3, v1, v2}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;III)I

    move-result v7

    .line 1027
    .local v7, "res":I
    const/4 v8, -0x3

    if-eq v7, v8, :cond_ae

    .line 1030
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " installed for user: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1031
    return v2

    .line 1028
    :cond_ae
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " doesn\'t exist"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_ca} :catch_ca
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_88 .. :try_end_ca} :catch_ca

    .line 1032
    .end local v7    # "res":I
    :catch_ca
    move-exception v2

    .line 1033
    .local v2, "e":Landroid/util/AndroidException;
    invoke-virtual {v2}, Landroid/util/AndroidException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    return v6

    nop

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_73
        :pswitch_6e
        :pswitch_6e
        :pswitch_69
    .end packed-switch
.end method

.method private runInstallRemove()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 981
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 983
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 985
    .local v1, "sessionId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 986
    .local v2, "splitName":Ljava/lang/String;
    const/4 v3, 0x1

    if-nez v2, :cond_19

    .line 987
    const-string v4, "Error: split name not specified"

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 988
    return v3

    .line 990
    :cond_19
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->doRemoveSplit(ILjava/lang/String;Z)I

    move-result v3

    return v3
.end method

.method private runInstallWrite()I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 963
    const-wide/16 v0, -0x1

    move-wide v5, v0

    .line 966
    .local v5, "sizeBytes":J
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "opt":Ljava/lang/String;
    if-eqz v0, :cond_32

    .line 967
    const-string v0, "-S"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 968
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    goto :goto_3

    .line 970
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 974
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 975
    .local v0, "sessionId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v9

    .line 976
    .local v9, "splitName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v10

    .line 977
    .local v10, "path":Ljava/lang/String;
    const/4 v8, 0x1

    move-object v2, p0

    move v3, v0

    move-object v4, v10

    move-object v7, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageManagerShellCommand;->doWriteSplit(ILjava/lang/String;JLjava/lang/String;Z)I

    move-result v2

    return v2
.end method

.method private runList()I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 390
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 391
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "type":Ljava/lang/String;
    const/4 v2, -0x1

    if-nez v1, :cond_11

    .line 393
    const-string v3, "Error: didn\'t specify type of data to list"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    return v2

    .line 396
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_d4

    goto :goto_71

    :sswitch_1a
    const-string/jumbo v3, "permissions"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    const/4 v3, 0x6

    goto :goto_72

    :sswitch_25
    const-string/jumbo v3, "libraries"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    const/4 v3, 0x2

    goto :goto_72

    :sswitch_30
    const-string/jumbo v3, "packages"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    const/4 v3, 0x4

    goto :goto_72

    :sswitch_3b
    const-string/jumbo v3, "instrumentation"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    const/4 v3, 0x1

    goto :goto_72

    :sswitch_46
    const-string/jumbo v3, "users"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    const/4 v3, 0x7

    goto :goto_72

    :sswitch_51
    const-string v3, "features"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    move v3, v4

    goto :goto_72

    :sswitch_5b
    const-string/jumbo v3, "package"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    const/4 v3, 0x3

    goto :goto_72

    :sswitch_66
    const-string/jumbo v3, "permission-groups"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    const/4 v3, 0x5

    goto :goto_72

    :cond_71
    :goto_71
    move v3, v2

    :goto_72
    packed-switch v3, :pswitch_data_f6

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: unknown list type \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    return v2

    .line 411
    :pswitch_8f
    const-string/jumbo v2, "user"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 412
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getInFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const-string/jumbo v2, "list"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v9

    .line 413
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getShellCallback()Landroid/os/ShellCallback;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->adoptResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v11

    .line 411
    invoke-interface/range {v5 .. v11}, Landroid/os/IBinder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    .line 414
    return v4

    .line 409
    :pswitch_b5
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPermissions()I

    move-result v2

    return v2

    .line 407
    :pswitch_ba
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPermissionGroups()I

    move-result v2

    return v2

    .line 405
    :pswitch_bf
    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    move-result v2

    return v2

    .line 402
    :pswitch_c4
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListLibraries()I

    move-result v2

    return v2

    .line 400
    :pswitch_c9
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListInstrumentation()I

    move-result v2

    return v2

    .line 398
    :pswitch_ce
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runListFeatures()I

    move-result v2

    return v2

    nop

    :sswitch_data_d4
    .sparse-switch
        -0x3b73d86e -> :sswitch_66
        -0x301acbba -> :sswitch_5b
        -0x11531bc3 -> :sswitch_51
        0x6a68e08 -> :sswitch_46
        0x20752f6e -> :sswitch_3b
        0x2cc154ed -> :sswitch_30
        0x3071b299 -> :sswitch_25
        0x4392f484 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_ce
        :pswitch_c9
        :pswitch_c4
        :pswitch_bf
        :pswitch_bf
        :pswitch_ba
        :pswitch_b5
        :pswitch_8f
    .end packed-switch
.end method

.method private runListFeatures()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 421
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 422
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 425
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/FeatureInfo;>;"
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommand$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageManagerShellCommand$1;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 434
    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_1f

    :cond_1e
    move v3, v2

    .line 435
    .local v3, "count":I
    :goto_1f
    move v4, v2

    .line 435
    .local v4, "p":I
    :goto_20
    if-ge v4, v3, :cond_66

    .line 436
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/FeatureInfo;

    .line 437
    .local v5, "fi":Landroid/content/pm/FeatureInfo;
    const-string v6, "feature:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 438
    iget-object v6, v5, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_48

    .line 439
    iget-object v6, v5, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 440
    iget v6, v5, Landroid/content/pm/FeatureInfo;->version:I

    if-lez v6, :cond_44

    .line 441
    const-string v6, "="

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 442
    iget v6, v5, Landroid/content/pm/FeatureInfo;->version:I

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 444
    :cond_44
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    goto :goto_63

    .line 446
    :cond_48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reqGlEsVersion=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 447
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 446
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    .end local v5    # "fi":Landroid/content/pm/FeatureInfo;
    :goto_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 450
    .end local v4    # "p":I
    :cond_66
    return v2
.end method

.method private runListInstrumentation()I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 454
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 455
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 456
    .local v1, "showSourceDir":Z
    const/4 v2, 0x0

    .line 460
    .local v2, "targetPackage":Ljava/lang/String;
    :goto_6
    const/4 v3, -0x1

    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 460
    .local v5, "opt":Ljava/lang/String;
    const/4 v6, 0x0

    if-eqz v4, :cond_47

    .line 461
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v7, 0x5d9

    if-eq v4, v7, :cond_18

    goto :goto_22

    :cond_18
    const-string v4, "-f"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    move v4, v6

    goto :goto_23

    :cond_22
    :goto_22
    move v4, v3

    :goto_23
    if-eqz v4, :cond_44

    .line 466
    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x2d

    if-eq v4, v6, :cond_2f

    .line 467
    move-object v2, v5

    goto :goto_46

    .line 469
    :cond_2f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Unknown option: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_43} :catch_a0

    .line 470
    return v3

    .line 463
    :cond_44
    const/4 v1, 0x1

    .line 464
    nop

    .line 472
    :goto_46
    goto :goto_6

    .line 478
    .end local v5    # "opt":Ljava/lang/String;
    :cond_47
    nop

    .line 480
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 481
    invoke-interface {v3, v2, v6}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 484
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$2;

    invoke-direct {v4, p0}, Lcom/android/server/pm/PackageManagerShellCommand$2;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 490
    if-eqz v3, :cond_61

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_62

    :cond_61
    move v4, v6

    .line 491
    .local v4, "count":I
    :goto_62
    move v5, v6

    .line 491
    .local v5, "p":I
    :goto_63
    if-ge v5, v4, :cond_9f

    .line 492
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/InstrumentationInfo;

    .line 493
    .local v7, "ii":Landroid/content/pm/InstrumentationInfo;
    const-string/jumbo v8, "instrumentation:"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 494
    if-eqz v1, :cond_7d

    .line 495
    iget-object v8, v7, Landroid/content/pm/InstrumentationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 496
    const-string v8, "="

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 498
    :cond_7d
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v7, Landroid/content/pm/InstrumentationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v7, Landroid/content/pm/InstrumentationInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    .local v8, "cn":Landroid/content/ComponentName;
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 500
    const-string v9, " (target="

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 501
    iget-object v9, v7, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 502
    const-string v9, ")"

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    .end local v7    # "ii":Landroid/content/pm/InstrumentationInfo;
    .end local v8    # "cn":Landroid/content/ComponentName;
    add-int/lit8 v5, v5, 0x1

    goto :goto_63

    .line 504
    .end local v5    # "p":I
    :cond_9f
    return v6

    .line 475
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    .end local v4    # "count":I
    :catch_a0
    move-exception v4

    .line 476
    .local v4, "ex":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    return v3
.end method

.method private runListLibraries()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 508
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 509
    .local v0, "pw":Ljava/io/PrintWriter;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v2

    .line 511
    .local v2, "rawList":[Ljava/lang/String;
    const/4 v3, 0x0

    move v4, v3

    .line 511
    .local v4, "i":I
    :goto_11
    array-length v5, v2

    if-ge v4, v5, :cond_1c

    .line 512
    aget-object v5, v2, v4

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 516
    .end local v4    # "i":I
    :cond_1c
    new-instance v4, Lcom/android/server/pm/PackageManagerShellCommand$3;

    invoke-direct {v4, p0}, Lcom/android/server/pm/PackageManagerShellCommand$3;-><init>(Lcom/android/server/pm/PackageManagerShellCommand;)V

    invoke-static {v1, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 525
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 526
    .local v4, "count":I
    move v5, v3

    .line 526
    .local v5, "p":I
    :goto_29
    if-ge v5, v4, :cond_3d

    .line 527
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 528
    .local v6, "lib":Ljava/lang/String;
    const-string/jumbo v7, "library:"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    .end local v6    # "lib":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 531
    .end local v5    # "p":I
    :cond_3d
    return v3
.end method

.method private runListPackages(Z)I
    .registers 27
    .param p1, "showSourceDir"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 536
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 537
    .local v0, "getFlags":I
    const/4 v3, 0x0

    .line 537
    .local v3, "listDisabled":Z
    const/4 v4, 0x0

    .line 538
    .local v4, "listEnabled":Z
    const/4 v5, 0x0

    .line 538
    .local v5, "listSystem":Z
    const/4 v6, 0x0

    .line 539
    .local v6, "listThirdParty":Z
    const/4 v7, 0x0

    .line 540
    .local v7, "listInstaller":Z
    const/4 v8, 0x0

    .line 541
    .local v8, "showUid":Z
    const/4 v9, 0x0

    .line 542
    .local v9, "showVersionCode":Z
    const/4 v10, -0x1

    .line 543
    .local v10, "uid":I
    move v12, v9

    move v13, v10

    move v9, v7

    move v10, v8

    move v7, v5

    move v8, v6

    move v5, v3

    move v6, v4

    move/from16 v4, p1

    move v3, v0

    const/4 v0, 0x0

    .line 543
    .end local p1    # "showSourceDir":Z
    .local v0, "userId":I
    .local v3, "getFlags":I
    .local v4, "showSourceDir":Z
    .local v5, "listDisabled":Z
    .local v6, "listEnabled":Z
    .local v7, "listSystem":Z
    .local v8, "listThirdParty":Z
    .local v9, "listInstaller":Z
    .local v10, "showUid":Z
    .local v12, "showVersionCode":Z
    .local v13, "uid":I
    :goto_1b
    move v14, v0

    .line 546
    .end local v0    # "userId":I
    .local v14, "userId":I
    :try_start_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_20} :catch_1f8

    move-object/from16 v16, v0

    .line 546
    .local v16, "opt":Ljava/lang/String;
    const/16 v17, 0x1

    if-eqz v0, :cond_129

    .line 547
    move-object/from16 v0, v16

    :try_start_28
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    .line 547
    .end local v16    # "opt":Ljava/lang/String;
    .local v0, "opt":Ljava/lang/String;
    const v15, -0x1d6f426b

    if-eq v11, v15, :cond_cc

    const/16 v15, 0x5a6

    if-eq v11, v15, :cond_c1

    const/16 v15, 0x5c8

    if-eq v11, v15, :cond_b7

    const/16 v15, 0x5dc

    if-eq v11, v15, :cond_ad

    const/16 v15, 0x5df

    if-eq v11, v15, :cond_a3

    const/16 v15, 0x5e6

    if-eq v11, v15, :cond_99

    const/16 v15, 0x5e8

    if-eq v11, v15, :cond_8f

    const v15, 0x2905ab0

    if-eq v11, v15, :cond_84

    const v15, 0x4f7b216b

    if-eq v11, v15, :cond_79

    packed-switch v11, :pswitch_data_218

    goto/16 :goto_d7

    :pswitch_58
    const-string v11, "-f"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d7

    const/4 v11, 0x2

    goto/16 :goto_d8

    :pswitch_63
    const-string v11, "-e"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d7

    move/from16 v11, v17

    goto/16 :goto_d8

    :pswitch_6f
    const-string v11, "-d"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d7

    const/4 v11, 0x0

    goto :goto_d8

    :cond_79
    const-string v11, "--user"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d7

    const/16 v11, 0xa

    goto :goto_d8

    :cond_84
    const-string v11, "--uid"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d7

    const/16 v11, 0xb

    goto :goto_d8

    :cond_8f
    const-string v11, "-u"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d7

    const/4 v11, 0x7

    goto :goto_d8

    :cond_99
    const-string v11, "-s"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d7

    const/4 v11, 0x5

    goto :goto_d8

    :cond_a3
    const-string v11, "-l"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d7

    const/4 v11, 0x4

    goto :goto_d8

    :cond_ad
    const-string v11, "-i"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d7

    const/4 v11, 0x3

    goto :goto_d8

    :cond_b7
    const-string v11, "-U"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d7

    const/4 v11, 0x6

    goto :goto_d8

    :cond_c1
    const-string v11, "-3"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d7

    const/16 v11, 0x8

    goto :goto_d8

    :cond_cc
    const-string v11, "--show-versioncode"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d7

    const/16 v11, 0x9

    goto :goto_d8

    :cond_d7
    :goto_d7
    const/4 v11, -0x1

    :goto_d8
    packed-switch v11, :pswitch_data_222

    .line 586
    new-instance v11, Ljava/lang/StringBuilder;

    goto :goto_10e

    .line 582
    :pswitch_de
    const/4 v10, 0x1

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 584
    .end local v13    # "uid":I
    .local v11, "uid":I
    nop

    .line 543
    move v13, v11

    goto :goto_10b

    .line 579
    .end local v11    # "uid":I
    .restart local v13    # "uid":I
    :pswitch_ea
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v11

    .line 580
    .end local v14    # "userId":I
    .local v11, "userId":I
    nop

    .line 543
    move v14, v11

    goto :goto_10b

    .line 576
    .end local v11    # "userId":I
    .restart local v14    # "userId":I
    :pswitch_f5
    const/4 v11, 0x1

    .line 577
    .end local v12    # "showVersionCode":Z
    .local v11, "showVersionCode":Z
    nop

    .line 543
    move v12, v11

    goto :goto_10b

    .line 573
    .end local v11    # "showVersionCode":Z
    .restart local v12    # "showVersionCode":Z
    :pswitch_f9
    const/4 v8, 0x1

    .line 574
    goto :goto_10b

    .line 570
    :pswitch_fb
    or-int/lit16 v3, v3, 0x2000

    .line 571
    goto :goto_10b

    .line 567
    :pswitch_fe
    const/4 v10, 0x1

    .line 568
    goto :goto_10b

    .line 564
    :pswitch_100
    const/4 v7, 0x1

    .line 565
    goto :goto_10b

    .line 562
    :pswitch_102
    goto :goto_10b

    .line 558
    :pswitch_103
    const/4 v9, 0x1

    .line 559
    goto :goto_10b

    .line 555
    :pswitch_105
    const/4 v4, 0x1

    .line 556
    goto :goto_10b

    .line 552
    :pswitch_107
    const/4 v6, 0x1

    .line 553
    goto :goto_10b

    .line 549
    :pswitch_109
    const/4 v5, 0x1

    .line 550
    nop

    .line 543
    :goto_10b
    move v0, v14

    goto/16 :goto_1b

    .line 586
    :goto_10e
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Error: Unknown option: "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_120
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_120} :catch_122

    .line 587
    const/4 v11, -0x1

    return v11

    .line 590
    .end local v0    # "opt":Ljava/lang/String;
    :catch_122
    move-exception v0

    move/from16 v18, v3

    move/from16 v22, v14

    goto/16 :goto_1fd

    .line 593
    :cond_129
    nop

    .line 595
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, "filter":Ljava/lang/String;
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 599
    invoke-interface {v11, v3, v14}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v11

    .line 600
    .local v11, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {v11}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v15

    .line 602
    .local v15, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move/from16 v18, v3

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    .line 603
    .local v3, "count":I
    .local v18, "getFlags":I
    const/16 v16, 0x0

    .line 603
    .local v16, "p":I
    :goto_140
    move/from16 v19, v16

    .line 603
    .end local v16    # "p":I
    .local v19, "p":I
    move-object/from16 v20, v11

    move/from16 v11, v19

    if-ge v11, v3, :cond_1f0

    .line 604
    .end local v19    # "p":I
    .local v11, "p":I
    .local v20, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v21, v3

    move-object/from16 v3, v16

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 605
    .local v3, "info":Landroid/content/pm/PackageInfo;
    .local v21, "count":I
    if-eqz v0, :cond_163

    move/from16 v22, v14

    iget-object v14, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 605
    .end local v14    # "userId":I
    .local v22, "userId":I
    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_165

    .line 606
    nop

    .line 603
    .end local v0    # "filter":Ljava/lang/String;
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    .local v23, "filter":Ljava/lang/String;
    :goto_15f
    move-object/from16 v23, v0

    goto/16 :goto_1e2

    .line 608
    .end local v22    # "userId":I
    .end local v23    # "filter":Ljava/lang/String;
    .restart local v0    # "filter":Ljava/lang/String;
    .restart local v3    # "info":Landroid/content/pm/PackageInfo;
    .restart local v14    # "userId":I
    :cond_163
    move/from16 v22, v14

    .line 608
    .end local v14    # "userId":I
    .restart local v22    # "userId":I
    :cond_165
    const/4 v14, -0x1

    if-eq v13, v14, :cond_16f

    iget-object v14, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v14, v13, :cond_16f

    .line 609
    goto :goto_15f

    .line 611
    :cond_16f
    iget-object v14, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_17a

    move/from16 v14, v17

    goto :goto_17b

    :cond_17a
    const/4 v14, 0x0

    .line 613
    .local v14, "isSystem":Z
    :goto_17b
    if-eqz v5, :cond_186

    move-object/from16 v23, v0

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 613
    .end local v0    # "filter":Ljava/lang/String;
    .restart local v23    # "filter":Ljava/lang/String;
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_1e2

    goto :goto_188

    .line 613
    .end local v23    # "filter":Ljava/lang/String;
    .restart local v0    # "filter":Ljava/lang/String;
    :cond_186
    move-object/from16 v23, v0

    .line 613
    .end local v0    # "filter":Ljava/lang/String;
    .restart local v23    # "filter":Ljava/lang/String;
    :goto_188
    if-eqz v6, :cond_190

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_1e2

    :cond_190
    if-eqz v7, :cond_194

    if-eqz v14, :cond_1e2

    :cond_194
    if-eqz v8, :cond_198

    if-nez v14, :cond_1e2

    .line 617
    :cond_198
    const-string/jumbo v0, "package:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 618
    if-eqz v4, :cond_1ac

    .line 619
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 620
    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 622
    :cond_1ac
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 623
    if-eqz v12, :cond_1bf

    .line 624
    const-string v0, " versionCode:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 625
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 627
    :cond_1bf
    if-eqz v9, :cond_1d1

    .line 628
    const-string v0, "  installer="

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 629
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    iget-object v1, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 631
    :cond_1d1
    if-eqz v10, :cond_1df

    .line 632
    const-string v0, " uid:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 633
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 635
    :cond_1df
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 603
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    .end local v14    # "isSystem":Z
    :cond_1e2
    :goto_1e2
    add-int/lit8 v16, v11, 0x1

    .line 603
    .end local v11    # "p":I
    .restart local v16    # "p":I
    move-object/from16 v11, v20

    move/from16 v3, v21

    move/from16 v14, v22

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    goto/16 :goto_140

    .line 638
    .end local v16    # "p":I
    .end local v21    # "count":I
    .end local v22    # "userId":I
    .end local v23    # "filter":Ljava/lang/String;
    .restart local v0    # "filter":Ljava/lang/String;
    .local v3, "count":I
    .local v14, "userId":I
    :cond_1f0
    move-object/from16 v23, v0

    move/from16 v21, v3

    move/from16 v22, v14

    .line 638
    .end local v0    # "filter":Ljava/lang/String;
    .end local v3    # "count":I
    .end local v14    # "userId":I
    .restart local v21    # "count":I
    .restart local v22    # "userId":I
    .restart local v23    # "filter":Ljava/lang/String;
    const/4 v0, 0x0

    return v0

    .line 590
    .end local v15    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v18    # "getFlags":I
    .end local v20    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    .end local v21    # "count":I
    .end local v22    # "userId":I
    .end local v23    # "filter":Ljava/lang/String;
    .local v3, "getFlags":I
    .restart local v14    # "userId":I
    :catch_1f8
    move-exception v0

    move/from16 v18, v3

    move/from16 v22, v14

    .line 591
    .end local v3    # "getFlags":I
    .end local v14    # "userId":I
    .local v0, "ex":Ljava/lang/RuntimeException;
    .restart local v18    # "getFlags":I
    .restart local v22    # "userId":I
    :goto_1fd
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 592
    const/4 v1, -0x1

    return v1

    nop

    :pswitch_data_218
    .packed-switch 0x5d7
        :pswitch_6f
        :pswitch_63
        :pswitch_58
    .end packed-switch

    :pswitch_data_222
    .packed-switch 0x0
        :pswitch_109
        :pswitch_107
        :pswitch_105
        :pswitch_103
        :pswitch_102
        :pswitch_100
        :pswitch_fe
        :pswitch_fb
        :pswitch_f9
        :pswitch_f5
        :pswitch_ea
        :pswitch_de
    .end packed-switch
.end method

.method private runListPermissionGroups()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 642
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 643
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 645
    .local v1, "pgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 646
    .local v3, "count":I
    move v4, v2

    .line 646
    .local v4, "p":I
    :goto_14
    if-ge v4, v3, :cond_2a

    .line 647
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PermissionGroupInfo;

    .line 648
    .local v5, "pgi":Landroid/content/pm/PermissionGroupInfo;
    const-string/jumbo v6, "permission group:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 649
    iget-object v6, v5, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    .end local v5    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 651
    .end local v4    # "p":I
    :cond_2a
    return v2
.end method

.method private runListPermissions()I
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 655
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 656
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 657
    .local v1, "labels":Z
    const/4 v2, 0x0

    .line 658
    .local v2, "groups":Z
    const/4 v3, 0x0

    .line 659
    .local v3, "userOnly":Z
    const/4 v4, 0x0

    .line 660
    .local v4, "summary":Z
    const/4 v5, 0x0

    move v13, v1

    move v1, v5

    .line 662
    .local v1, "dangerousOnly":Z
    .local v13, "labels":Z
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    move-object v14, v6

    .local v14, "opt":Ljava/lang/String;
    if-eqz v6, :cond_7f

    .line 663
    const/4 v6, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x5d7

    const/4 v9, 0x1

    if-eq v7, v8, :cond_50

    const/16 v8, 0x5e6

    if-eq v7, v8, :cond_46

    const/16 v8, 0x5e8

    if-eq v7, v8, :cond_3c

    packed-switch v7, :pswitch_data_118

    goto :goto_59

    :pswitch_28
    const-string v7, "-g"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    const/4 v6, 0x2

    goto :goto_59

    :pswitch_32
    const-string v7, "-f"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    move v6, v9

    goto :goto_59

    :cond_3c
    const-string v7, "-u"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    const/4 v6, 0x4

    goto :goto_59

    :cond_46
    const-string v7, "-s"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    const/4 v6, 0x3

    goto :goto_59

    :cond_50
    const-string v7, "-d"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    move v6, v5

    :cond_59
    :goto_59
    packed-switch v6, :pswitch_data_120

    .line 682
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: Unknown option: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 683
    return v9

    .line 679
    :pswitch_71
    const/4 v3, 0x1

    .line 680
    goto :goto_b

    .line 674
    :pswitch_73
    const/4 v2, 0x1

    .line 675
    const/4 v6, 0x1

    .line 676
    .end local v13    # "labels":Z
    .local v6, "labels":Z
    const/4 v4, 0x1

    .line 677
    goto :goto_7b

    .line 671
    .end local v6    # "labels":Z
    .restart local v13    # "labels":Z
    :pswitch_77
    const/4 v2, 0x1

    .line 672
    goto :goto_b

    .line 668
    :pswitch_79
    const/4 v6, 0x1

    .line 669
    .end local v13    # "labels":Z
    .restart local v6    # "labels":Z
    nop

    .line 660
    .end local v6    # "labels":Z
    .end local v14    # "opt":Ljava/lang/String;
    .restart local v13    # "labels":Z
    :goto_7b
    move v13, v6

    goto :goto_b

    .line 665
    .restart local v14    # "opt":Ljava/lang/String;
    :pswitch_7d
    const/4 v1, 0x1

    .line 666
    goto :goto_b

    .line 687
    :cond_7f
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v6

    .line 688
    .local v15, "groupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_ad

    .line 689
    move-object/from16 v12, p0

    iget-object v6, v12, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 690
    invoke-interface {v6, v5}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v6

    .line 691
    .local v6, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 692
    .local v7, "count":I
    move v8, v5

    .local v8, "i":I
    :goto_98
    if-ge v8, v7, :cond_a8

    .line 693
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PermissionGroupInfo;

    iget-object v9, v9, Landroid/content/pm/PermissionGroupInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    add-int/lit8 v8, v8, 0x1

    goto :goto_98

    .line 695
    .end local v8    # "i":I
    :cond_a8
    const/4 v8, 0x0

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    .end local v6    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    .end local v7    # "count":I
    goto :goto_b6

    .line 697
    :cond_ad
    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 698
    .local v6, "grp":Ljava/lang/String;
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    .end local v6    # "grp":Ljava/lang/String;
    :goto_b6
    if-eqz v1, :cond_e7

    .line 702
    const-string v6, "Dangerous Permissions:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 703
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    const/4 v11, 0x1

    const/16 v16, 0x1

    move-object v6, v12

    move-object v7, v15

    move v8, v2

    move v9, v13

    move v10, v4

    move/from16 v12, v16

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    .line 707
    if-eqz v3, :cond_116

    .line 708
    const-string v6, "Normal Permissions:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 710
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object v7, v15

    move v8, v2

    move v9, v13

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    goto :goto_116

    .line 714
    :cond_e7
    if-eqz v3, :cond_ff

    .line 715
    const-string v6, "Dangerous and Normal Permissions:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 716
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 717
    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v6, p0

    move-object v7, v15

    move v8, v2

    move v9, v13

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    goto :goto_116

    .line 721
    :cond_ff
    const-string v6, "All Permissions:"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 722
    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 723
    const/16 v11, -0x2710

    const/16 v12, 0x2710

    move-object/from16 v6, p0

    move-object v7, v15

    move v8, v2

    move v9, v13

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/android/server/pm/PackageManagerShellCommand;->doListPermissions(Ljava/util/ArrayList;ZZZII)V

    .line 726
    :cond_116
    :goto_116
    return v5

    nop

    :pswitch_data_118
    .packed-switch 0x5d9
        :pswitch_32
        :pswitch_28
    .end packed-switch

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_7d
        :pswitch_79
        :pswitch_77
        :pswitch_73
        :pswitch_71
    .end packed-switch
.end method

.method private runPath()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "option":Ljava/lang/String;
    if-eqz v1, :cond_17

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 378
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 381
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, "pkg":Ljava/lang/String;
    if-nez v2, :cond_28

    .line 383
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: no package specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 384
    const/4 v3, 0x1

    return v3

    .line 386
    :cond_28
    invoke-direct {p0, v2, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->displayPackageFilePath(Ljava/lang/String;I)I

    move-result v3

    return v3
.end method

.method private runQueryIntentActivities()I
    .registers 12

    .line 807
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v0
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_4} :catch_92

    .line 810
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 809
    nop

    .line 812
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v4, v3}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 813
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 814
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 815
    .local v2, "pw":Ljava/io/PrintWriter;
    if-eqz v1, :cond_82

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_24

    goto :goto_82

    .line 818
    :cond_24
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v3, :cond_62

    .line 819
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " activities found:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 820
    new-instance v6, Landroid/util/PrintWriterPrinter;

    invoke-direct {v6, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 821
    .local v6, "pr":Landroid/util/PrintWriterPrinter;
    move v3, v4

    .local v3, "i":I
    :goto_3a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_61

    .line 822
    const-string v5, "  Activity #"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    const-string v7, "    "

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v10, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 821
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 825
    .end local v3    # "i":I
    .end local v6    # "pr":Landroid/util/PrintWriterPrinter;
    :cond_61
    goto :goto_87

    .line 826
    :cond_62
    new-instance v6, Landroid/util/PrintWriterPrinter;

    invoke-direct {v6, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 827
    .restart local v6    # "pr":Landroid/util/PrintWriterPrinter;
    move v3, v4

    .restart local v3    # "i":I
    :goto_68
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_87

    .line 828
    const-string v7, ""

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v10, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 827
    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    .line 816
    .end local v3    # "i":I
    .end local v6    # "pr":Landroid/util/PrintWriterPrinter;
    :cond_82
    :goto_82
    const-string v3, "No activities found"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_87} :catch_89

    .line 834
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_87
    :goto_87
    nop

    .line 835
    return v4

    .line 832
    :catch_89
    move-exception v1

    .line 833
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed calling service"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 808
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_92
    move-exception v0

    .line 809
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runQueryIntentReceivers()I
    .registers 12

    .line 875
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v0
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_4} :catch_92

    .line 878
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 877
    nop

    .line 880
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v4, v3}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 881
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 882
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 883
    .local v2, "pw":Ljava/io/PrintWriter;
    if-eqz v1, :cond_82

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_24

    goto :goto_82

    .line 886
    :cond_24
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v3, :cond_62

    .line 887
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " receivers found:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 888
    new-instance v6, Landroid/util/PrintWriterPrinter;

    invoke-direct {v6, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 889
    .local v6, "pr":Landroid/util/PrintWriterPrinter;
    move v3, v4

    .local v3, "i":I
    :goto_3a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_61

    .line 890
    const-string v5, "  Receiver #"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 891
    const-string v7, "    "

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v10, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 889
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 893
    .end local v3    # "i":I
    .end local v6    # "pr":Landroid/util/PrintWriterPrinter;
    :cond_61
    goto :goto_87

    .line 894
    :cond_62
    new-instance v6, Landroid/util/PrintWriterPrinter;

    invoke-direct {v6, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 895
    .restart local v6    # "pr":Landroid/util/PrintWriterPrinter;
    move v3, v4

    .restart local v3    # "i":I
    :goto_68
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_87

    .line 896
    const-string v7, ""

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v10, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 895
    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    .line 884
    .end local v3    # "i":I
    .end local v6    # "pr":Landroid/util/PrintWriterPrinter;
    :cond_82
    :goto_82
    const-string v3, "No receivers found"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_87} :catch_89

    .line 902
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_87
    :goto_87
    nop

    .line 903
    return v4

    .line 900
    :catch_89
    move-exception v1

    .line 901
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed calling service"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 876
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_92
    move-exception v0

    .line 877
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runQueryIntentServices()I
    .registers 12

    .line 841
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v0
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_4} :catch_92

    .line 844
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 843
    nop

    .line 846
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v4, v3}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 847
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 848
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 849
    .local v2, "pw":Ljava/io/PrintWriter;
    if-eqz v1, :cond_82

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_24

    goto :goto_82

    .line 852
    :cond_24
    iget-boolean v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    if-nez v3, :cond_62

    .line 853
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " services found:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    new-instance v6, Landroid/util/PrintWriterPrinter;

    invoke-direct {v6, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 855
    .local v6, "pr":Landroid/util/PrintWriterPrinter;
    move v3, v4

    .local v3, "i":I
    :goto_3a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_61

    .line 856
    const-string v5, "  Service #"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 857
    const-string v7, "    "

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v10, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 855
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 859
    .end local v3    # "i":I
    .end local v6    # "pr":Landroid/util/PrintWriterPrinter;
    :cond_61
    goto :goto_87

    .line 860
    :cond_62
    new-instance v6, Landroid/util/PrintWriterPrinter;

    invoke-direct {v6, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 861
    .restart local v6    # "pr":Landroid/util/PrintWriterPrinter;
    move v3, v4

    .restart local v3    # "i":I
    :goto_68
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_87

    .line 862
    const-string v7, ""

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v10, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V

    .line 861
    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    .line 850
    .end local v3    # "i":I
    .end local v6    # "pr":Landroid/util/PrintWriterPrinter;
    :cond_82
    :goto_82
    const-string v3, "No services found"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_87} :catch_89

    .line 868
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_87
    :goto_87
    nop

    .line 869
    return v4

    .line 866
    :catch_89
    move-exception v1

    .line 867
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed calling service"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 842
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_92
    move-exception v0

    .line 843
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runRemoveSplit(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1509
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1510
    .local v0, "pw":Ljava/io/PrintWriter;
    new-instance v1, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 1511
    .local v1, "sessionParams":Landroid/content/pm/PackageInstaller$SessionParams;
    iget v3, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/2addr v2, v3

    iput v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1512
    iput-object p1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 1513
    nop

    .line 1514
    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->doCreateSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;I)I

    move-result v2

    .line 1515
    .local v2, "sessionId":I
    const/4 v3, 0x1

    move v4, v3

    .line 1517
    .local v4, "abandonSession":Z
    const/4 v5, 0x0

    :try_start_1b
    invoke-direct {p0, v2, p2, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doRemoveSplit(ILjava/lang/String;Z)I

    move-result v6
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_48

    if-eqz v6, :cond_2a

    .line 1519
    nop

    .line 1529
    if-eqz v4, :cond_29

    .line 1531
    :try_start_24
    invoke-direct {p0, v2, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_27} :catch_28

    .line 1533
    goto :goto_29

    .line 1532
    :catch_28
    move-exception v5

    .line 1519
    :cond_29
    :goto_29
    return v3

    .line 1521
    :cond_2a
    :try_start_2a
    invoke-direct {p0, v2, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doCommitSession(IZ)I

    move-result v6
    :try_end_2e
    .catchall {:try_start_2a .. :try_end_2e} :catchall_48

    if-eqz v6, :cond_39

    .line 1523
    nop

    .line 1529
    if-eqz v4, :cond_38

    .line 1531
    :try_start_33
    invoke-direct {p0, v2, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37

    .line 1533
    goto :goto_38

    .line 1532
    :catch_37
    move-exception v5

    .line 1523
    :cond_38
    :goto_38
    return v3

    .line 1525
    :cond_39
    const/4 v4, 0x0

    .line 1526
    :try_start_3a
    const-string v3, "Success"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_3a .. :try_end_3f} :catchall_48

    .line 1527
    nop

    .line 1529
    if-eqz v4, :cond_47

    .line 1531
    :try_start_42
    invoke-direct {p0, v2, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_46

    .line 1533
    goto :goto_47

    .line 1532
    :catch_46
    move-exception v3

    .line 1527
    :cond_47
    :goto_47
    return v5

    .line 1529
    :catchall_48
    move-exception v3

    if-eqz v4, :cond_50

    .line 1531
    :try_start_4b
    invoke-direct {p0, v2, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->doAbandonSession(IZ)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f

    .line 1533
    goto :goto_50

    .line 1532
    :catch_4f
    move-exception v5

    .line 1533
    :cond_50
    :goto_50
    throw v3
.end method

.method private runResetPermissions()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1743
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->resetRuntimePermissions()V

    .line 1744
    const/4 v0, 0x0

    return v0
.end method

.method private runResolveActivity()I
    .registers 12

    .line 785
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->parseIntentAndUser()Landroid/content/Intent;

    move-result-object v0
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_4} :catch_3a

    .line 788
    .local v0, "intent":Landroid/content/Intent;
    nop

    .line 787
    nop

    .line 790
    :try_start_6
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mTargetUser:I

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v4, v3}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 791
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 792
    .local v2, "pw":Ljava/io/PrintWriter;
    if-nez v1, :cond_1f

    .line 793
    const-string v3, "No activity found"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2f

    .line 795
    :cond_1f
    new-instance v6, Landroid/util/PrintWriterPrinter;

    invoke-direct {v6, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 796
    .local v6, "pr":Landroid/util/PrintWriterPrinter;
    const-string v7, ""

    iget-boolean v9, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mBrief:Z

    iget-boolean v10, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mComponents:Z

    move-object v5, p0

    move-object v8, v1

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/PackageManagerShellCommand;->printResolveInfo(Landroid/util/PrintWriterPrinter;Ljava/lang/String;Landroid/content/pm/ResolveInfo;ZZ)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_2f} :catch_31

    .line 800
    .end local v1    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v6    # "pr":Landroid/util/PrintWriterPrinter;
    :goto_2f
    nop

    .line 801
    return v4

    .line 798
    :catch_31
    move-exception v1

    .line 799
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed calling service"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 786
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_3a
    move-exception v0

    .line 787
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private runSetAppLink()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1853
    const/4 v0, 0x0

    move v1, v0

    .line 1856
    .local v1, "userId":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 1856
    .local v3, "opt":Ljava/lang/String;
    const/4 v4, 0x1

    if-eqz v2, :cond_34

    .line 1857
    const-string v2, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1858
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v1

    goto :goto_2

    .line 1860
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: unknown option: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1861
    return v4

    .line 1866
    :cond_34
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1867
    .local v2, "pkg":Ljava/lang/String;
    if-nez v2, :cond_44

    .line 1868
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v5, "Error: no package specified."

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1869
    return v4

    .line 1873
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v5

    .line 1874
    .local v5, "modeString":Ljava/lang/String;
    if-nez v5, :cond_54

    .line 1875
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v6, "Error: no app link state specified."

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1876
    return v4

    .line 1880
    :cond_54
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_130

    goto :goto_95

    :sswitch_61
    const-string v8, "always-ask"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_95

    const/4 v6, 0x3

    goto :goto_96

    :sswitch_6b
    const-string/jumbo v8, "never"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_95

    const/4 v6, 0x4

    goto :goto_96

    :sswitch_76
    const-string v8, "ask"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_95

    const/4 v6, 0x2

    goto :goto_96

    :sswitch_80
    const-string/jumbo v8, "undefined"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_95

    move v6, v0

    goto :goto_96

    :sswitch_8b
    const-string v8, "always"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_95

    move v6, v4

    goto :goto_96

    :cond_95
    :goto_95
    move v6, v7

    :goto_96
    packed-switch v6, :pswitch_data_146

    .line 1902
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: unknown app link state \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1903
    return v4

    .line 1898
    :pswitch_b7
    const/4 v6, 0x3

    .line 1899
    .local v6, "newMode":I
    goto :goto_c1

    .line 1894
    .end local v6    # "newMode":I
    :pswitch_b9
    const/4 v6, 0x4

    .line 1895
    .restart local v6    # "newMode":I
    goto :goto_c1

    .line 1890
    .end local v6    # "newMode":I
    :pswitch_bb
    const/4 v6, 0x1

    .line 1891
    .restart local v6    # "newMode":I
    goto :goto_c1

    .line 1886
    .end local v6    # "newMode":I
    :pswitch_bd
    const/4 v6, 0x2

    .line 1887
    .restart local v6    # "newMode":I
    goto :goto_c1

    .line 1882
    .end local v6    # "newMode":I
    :pswitch_bf
    const/4 v6, 0x0

    .line 1883
    .restart local v6    # "newMode":I
    nop

    .line 1903
    :goto_c1
    nop

    .line 1906
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, v2, v0, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 1907
    .local v7, "info":Landroid/content/pm/PackageInfo;
    if-nez v7, :cond_e8

    .line 1908
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " not found."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1909
    return v4

    .line 1912
    :cond_e8
    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v8, v8, 0x10

    if-nez v8, :cond_10e

    .line 1913
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " does not handle web links."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1914
    return v4

    .line 1917
    :cond_10e
    iget-object v8, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v8, v2, v6, v1}, Landroid/content/pm/IPackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    move-result v8

    if-nez v8, :cond_12f

    .line 1918
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error: unable to update app link status for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1919
    return v4

    .line 1922
    :cond_12f
    return v0

    :sswitch_data_130
    .sparse-switch
        -0x54506df1 -> :sswitch_8b
        -0x3de09eb0 -> :sswitch_80
        0x17a79 -> :sswitch_76
        0x63dca8c -> :sswitch_6b
        0x467fe1bb -> :sswitch_61
    .end sparse-switch

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_bf
        :pswitch_bd
        :pswitch_bb
        :pswitch_b9
        :pswitch_b7
    .end packed-switch
.end method

.method private runSetEnabledSetting(I)I
    .registers 13
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1602
    const/4 v0, 0x0

    .line 1603
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 1604
    .local v1, "option":Ljava/lang/String;
    if-eqz v1, :cond_17

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1605
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 1608
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v8

    .line 1609
    .local v8, "pkg":Ljava/lang/String;
    if-nez v8, :cond_28

    .line 1610
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no package or component specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1611
    const/4 v2, 0x1

    return v2

    .line 1613
    :cond_28
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    .line 1614
    .local v9, "cn":Landroid/content/ComponentName;
    const/4 v10, 0x0

    if-nez v9, :cond_79

    .line 1615
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shell:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1616
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1615
    move-object v3, v8

    move v4, p1

    move v6, v0

    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 1617
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " new state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 1619
    invoke-interface {v4, v8, v0}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v4

    .line 1618
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerShellCommand;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1617
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1620
    return v10

    .line 1622
    :cond_79
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v9, p1, v10, v0}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V

    .line 1623
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " new state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 1625
    invoke-interface {v4, v9, v0}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v4

    .line 1624
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerShellCommand;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1623
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1626
    return v10
.end method

.method private runSetHarmfulAppWarning()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2367
    const/4 v0, -0x2

    .line 2370
    .local v0, "userId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 2370
    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_33

    .line 2371
    const-string v1, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2372
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 2374
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2375
    const/4 v1, -0x1

    return v1

    .line 2379
    :cond_33
    const-string/jumbo v1, "runSetHarmfulAppWarning"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IZLjava/lang/String;)I

    move-result v0

    .line 2381
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    .line 2382
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 2384
    .local v4, "warning":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v1, v4, v0}, Landroid/content/pm/IPackageManager;->setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 2386
    return v3
.end method

.method private runSetHiddenSetting(Z)I
    .registers 8
    .param p1, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1631
    const/4 v0, 0x0

    .line 1632
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 1633
    .local v1, "option":Ljava/lang/String;
    if-eqz v1, :cond_17

    const-string v2, "--user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1634
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 1637
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1638
    .local v2, "pkg":Ljava/lang/String;
    if-nez v2, :cond_28

    .line 1639
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: no package or component specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1640
    const/4 v3, 0x1

    return v3

    .line 1642
    :cond_28
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v2, p1, v0}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    .line 1643
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " new hidden state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 1644
    invoke-interface {v5, v2, v0}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1643
    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1645
    const/4 v3, 0x0

    return v3
.end method

.method private runSetHomeActivity()I
    .registers 9

    .line 2272
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2273
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    move v2, v1

    .line 2275
    .local v2, "userId":I
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    const/4 v5, 0x1

    if-eqz v3, :cond_42

    .line 2276
    const/4 v3, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x4f7b216b

    if-eq v6, v7, :cond_19

    goto :goto_22

    :cond_19
    const-string v6, "--user"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    move v3, v1

    :cond_22
    :goto_22
    if-eqz v3, :cond_39

    .line 2281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Unknown option: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2282
    return v5

    .line 2278
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    .line 2279
    goto :goto_6

    .line 2286
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 2288
    .local v3, "component":Ljava/lang/String;
    if-eqz v3, :cond_4d

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    goto :goto_4e

    :cond_4d
    const/4 v6, 0x0

    .line 2290
    .local v6, "componentName":Landroid/content/ComponentName;
    :goto_4e
    if-nez v6, :cond_56

    .line 2291
    const-string v1, "Error: component name not specified or invalid"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2292
    return v5

    .line 2296
    :cond_56
    :try_start_56
    iget-object v7, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v7, v6, v2}, Landroid/content/pm/IPackageManager;->setHomeActivity(Landroid/content/ComponentName;I)V

    .line 2297
    const-string v7, "Success"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_60} :catch_61

    .line 2298
    return v1

    .line 2299
    :catch_61
    move-exception v1

    .line 2300
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2301
    return v5
.end method

.method private runSetInstallLocation()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1041
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1042
    .local v0, "arg":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 1043
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no install location specified."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1044
    return v1

    .line 1047
    :cond_11
    :try_start_11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_15} :catch_2b

    .line 1051
    .local v2, "loc":I
    nop

    .line 1050
    nop

    .line 1052
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v2}, Landroid/content/pm/IPackageManager;->setInstallLocation(I)Z

    move-result v3

    if-nez v3, :cond_29

    .line 1053
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: install location has to be a number."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    return v1

    .line 1056
    :cond_29
    const/4 v1, 0x0

    return v1

    .line 1048
    .end local v2    # "loc":I
    :catch_2b
    move-exception v2

    .line 1049
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: install location has to be a number."

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    return v1
.end method

.method private runSetInstaller()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2306
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2307
    .local v0, "targetPackage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 2309
    .local v1, "installerPackageName":Ljava/lang/String;
    if-eqz v0, :cond_1d

    if-nez v1, :cond_d

    goto :goto_1d

    .line 2314
    :cond_d
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v0, v1}, Landroid/content/pm/IPackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 2315
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Success"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2316
    const/4 v2, 0x0

    return v2

    .line 2310
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Must provide both target and installer package names"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2311
    const/4 v2, 0x1

    return v2
.end method

.method private runSetPermissionEnforced()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1748
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1749
    .local v0, "permission":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 1750
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no permission specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1751
    return v1

    .line 1753
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1754
    .local v2, "enforcedRaw":Ljava/lang/String;
    if-nez v2, :cond_21

    .line 1755
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: no enforcement specified"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1756
    return v1

    .line 1758
    :cond_21
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v1, v0, v3}, Landroid/content/pm/IPackageManager;->setPermissionEnforced(Ljava/lang/String;Z)V

    .line 1759
    const/4 v1, 0x0

    return v1
.end method

.method private runSnapshotProfile()I
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1318
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 1321
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v9

    .line 1322
    .local v9, "packageName":Ljava/lang/String;
    const-string v0, "android"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 1324
    .local v10, "isBootImage":Z
    const/4 v11, 0x0

    move-object v0, v11

    .line 1326
    .local v0, "codePath":Ljava/lang/String;
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    move-object v12, v3

    .line 1326
    .local v12, "opt":Ljava/lang/String;
    const/4 v13, 0x0

    const/4 v14, -0x1

    if-eqz v3, :cond_53

    .line 1327
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x28d32d9b

    if-eq v3, v4, :cond_25

    goto :goto_2e

    :cond_25
    const-string v3, "--code-path"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v13, v14

    :goto_2f
    if-eqz v13, :cond_46

    .line 1336
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown arg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 1337
    return v14

    .line 1329
    :cond_46
    if-eqz v10, :cond_4e

    .line 1330
    const-string v3, "--code-path cannot be used for the boot image."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 1331
    return v14

    .line 1333
    :cond_4e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1334
    goto :goto_12

    .line 1342
    :cond_53
    const/4 v3, 0x0

    .line 1343
    .local v3, "baseCodePath":Ljava/lang/String;
    if-nez v10, :cond_7c

    .line 1344
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v9, v13, v13}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 1346
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_73

    .line 1347
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 1348
    return v14

    .line 1350
    :cond_73
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    .line 1351
    if-nez v0, :cond_7c

    .line 1352
    move-object v0, v3

    .line 1357
    .end local v0    # "codePath":Ljava/lang/String;
    .end local v3    # "baseCodePath":Ljava/lang/String;
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .local v8, "baseCodePath":Ljava/lang/String;
    .local v15, "codePath":Ljava/lang/String;
    :cond_7c
    move-object v15, v0

    move-object v8, v3

    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;

    invoke-direct {v0, v11}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    move-object v7, v0

    .line 1359
    .local v7, "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_8e

    .line 1360
    const-string/jumbo v0, "root"

    goto :goto_90

    :cond_8e
    const-string v0, "com.android.shell"

    :goto_90
    move-object v6, v0

    .line 1361
    .local v6, "callingPackage":Ljava/lang/String;
    if-eqz v10, :cond_95

    .line 1362
    const/4 v0, 0x1

    goto :goto_96

    :cond_95
    move v0, v13

    :goto_96
    move v5, v0

    .line 1363
    .local v5, "profileType":I
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getArtManager()Landroid/content/pm/dex/IArtManager;

    move-result-object v0

    invoke-interface {v0, v5, v6}, Landroid/content/pm/dex/IArtManager;->isRuntimeProfilingEnabled(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a9

    .line 1364
    const-string v0, "Error: Runtime profiling is not enabled"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1365
    return v14

    .line 1367
    :cond_a9
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getArtManager()Landroid/content/pm/dex/IArtManager;

    move-result-object v3

    move v4, v5

    move/from16 v16, v5

    move-object v5, v9

    .line 1367
    .end local v5    # "profileType":I
    .local v16, "profileType":I
    move-object/from16 v17, v6

    move-object v6, v15

    .line 1367
    .end local v6    # "callingPackage":Ljava/lang/String;
    .local v17, "callingPackage":Ljava/lang/String;
    move-object/from16 v18, v7

    .line 1367
    .end local v7    # "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    .local v18, "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    move-object v14, v8

    move-object/from16 v8, v17

    .line 1367
    .end local v8    # "baseCodePath":Ljava/lang/String;
    .local v14, "baseCodePath":Ljava/lang/String;
    invoke-interface/range {v3 .. v8}, Landroid/content/pm/dex/IArtManager;->snapshotRuntimeProfile(ILjava/lang/String;Ljava/lang/String;Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;Ljava/lang/String;)V

    .line 1369
    move-object/from16 v3, v18

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->waitTillDone()Z

    move-result v0

    .line 1369
    .end local v18    # "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    .local v3, "callback":Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;
    if-nez v0, :cond_d0

    .line 1370
    const-string v0, "Error: callback not called"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1371
    # getter for: Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mErrCode:I
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->access$200(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;)I

    move-result v0

    return v0

    .line 1375
    :cond_d0
    :try_start_d0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    # getter for: Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->mProfileReadFd:Landroid/os/ParcelFileDescriptor;
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;->access$300(Lcom/android/server/pm/PackageManagerShellCommand$SnapshotRuntimeProfileCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d9} :catch_146
    .catch Landroid/system/ErrnoException; {:try_start_d0 .. :try_end_d9} :catch_146

    move-object v4, v0

    .line 1376
    .local v4, "inStream":Ljava/io/InputStream;
    if-nez v10, :cond_103

    :try_start_dc
    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e3

    goto :goto_103

    .line 1377
    :cond_e3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_105

    .line 1385
    :catchall_fe
    move-exception v0

    goto :goto_142

    .line 1375
    :catch_100
    move-exception v0

    move-object v11, v0

    goto :goto_141

    .line 1377
    :cond_103
    :goto_103
    const-string v0, ""

    :goto_105
    move-object v5, v0

    .line 1378
    .local v5, "outputFileSuffix":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/misc/profman/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".prof"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .line 1380
    .local v6, "outputProfilePath":Ljava/lang/String;
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_125
    .catch Ljava/lang/Throwable; {:try_start_dc .. :try_end_125} :catch_100
    .catchall {:try_start_dc .. :try_end_125} :catchall_fe

    move-object v7, v0

    .line 1381
    .local v7, "outStream":Ljava/io/OutputStream;
    :try_start_126
    invoke-static {v4, v7}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_129
    .catch Ljava/lang/Throwable; {:try_start_126 .. :try_end_129} :catch_139
    .catchall {:try_start_126 .. :try_end_129} :catchall_136

    .line 1382
    :try_start_129
    invoke-static {v11, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 1384
    .end local v7    # "outStream":Ljava/io/OutputStream;
    const/16 v0, 0x1a4

    invoke-static {v6, v0}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_131
    .catch Ljava/lang/Throwable; {:try_start_129 .. :try_end_131} :catch_100
    .catchall {:try_start_129 .. :try_end_131} :catchall_fe

    .line 1385
    .end local v5    # "outputFileSuffix":Ljava/lang/String;
    .end local v6    # "outputProfilePath":Ljava/lang/String;
    :try_start_131
    invoke-static {v11, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_134
    .catch Ljava/io/IOException; {:try_start_131 .. :try_end_134} :catch_146
    .catch Landroid/system/ErrnoException; {:try_start_131 .. :try_end_134} :catch_146

    .line 1389
    .end local v4    # "inStream":Ljava/io/InputStream;
    nop

    .line 1390
    return v13

    .line 1382
    .restart local v4    # "inStream":Ljava/io/InputStream;
    .restart local v5    # "outputFileSuffix":Ljava/lang/String;
    .restart local v6    # "outputProfilePath":Ljava/lang/String;
    .restart local v7    # "outStream":Ljava/io/OutputStream;
    :catchall_136
    move-exception v0

    move-object v8, v11

    goto :goto_13d

    .line 1380
    :catch_139
    move-exception v0

    move-object v8, v0

    :try_start_13b
    throw v8
    :try_end_13c
    .catchall {:try_start_13b .. :try_end_13c} :catchall_13c

    .line 1382
    :catchall_13c
    move-exception v0

    :goto_13d
    :try_start_13d
    invoke-static {v8, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_141
    .catch Ljava/lang/Throwable; {:try_start_13d .. :try_end_141} :catch_100
    .catchall {:try_start_13d .. :try_end_141} :catchall_fe

    .line 1375
    .end local v5    # "outputFileSuffix":Ljava/lang/String;
    .end local v6    # "outputProfilePath":Ljava/lang/String;
    .end local v7    # "outStream":Ljava/io/OutputStream;
    :goto_141
    :try_start_141
    throw v11
    :try_end_142
    .catchall {:try_start_141 .. :try_end_142} :catchall_fe

    .line 1385
    :goto_142
    :try_start_142
    invoke-static {v11, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v0
    :try_end_146
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_146} :catch_146
    .catch Landroid/system/ErrnoException; {:try_start_142 .. :try_end_146} :catch_146

    .line 1385
    .end local v4    # "inStream":Ljava/io/InputStream;
    :catch_146
    move-exception v0

    .line 1386
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when reading the profile fd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1387
    invoke-virtual {v0, v2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1388
    const/4 v4, -0x1

    return v4
.end method

.method private runSuspend(Z)I
    .registers 19
    .param p1, "suspendedState"    # Z

    move-object/from16 v1, p0

    .line 1649
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 1650
    .local v2, "pw":Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 1651
    .local v0, "userId":I
    const/4 v3, 0x0

    .line 1652
    .local v3, "dialogMessage":Ljava/lang/String;
    new-instance v7, Landroid/os/PersistableBundle;

    invoke-direct {v7}, Landroid/os/PersistableBundle;-><init>()V

    .line 1653
    .local v7, "appExtras":Landroid/os/PersistableBundle;
    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    move v12, v0

    move-object v8, v4

    .line 1655
    .end local v0    # "userId":I
    .local v8, "launcherExtras":Landroid/os/PersistableBundle;
    .local v12, "userId":I
    :goto_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 1655
    .local v13, "opt":Ljava/lang/String;
    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v0, :cond_e9

    .line 1656
    const/4 v0, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    sparse-switch v4, :sswitch_data_142

    goto :goto_76

    :sswitch_27
    const-string v4, "--user"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    goto :goto_77

    :sswitch_30
    const-string v4, "--les"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    const/4 v14, 0x6

    goto :goto_77

    :sswitch_3a
    const-string v4, "--lel"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    const/4 v14, 0x5

    goto :goto_77

    :sswitch_44
    const-string v4, "--led"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    const/4 v14, 0x7

    goto :goto_77

    :sswitch_4e
    const-string v4, "--aes"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    const/4 v14, 0x3

    goto :goto_77

    :sswitch_58
    const-string v4, "--ael"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    const/4 v14, 0x2

    goto :goto_77

    :sswitch_62
    const-string v4, "--aed"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    move v14, v5

    goto :goto_77

    :sswitch_6c
    const-string v4, "--dialogMessage"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    move v14, v15

    goto :goto_77

    :cond_76
    :goto_76
    move v14, v0

    :goto_77
    packed-switch v14, :pswitch_data_164

    .line 1689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Unknown option: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1690
    return v15

    .line 1669
    :pswitch_8f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1670
    .local v0, "key":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    .line 1671
    .local v4, "val":Ljava/lang/String;
    if-nez p1, :cond_9b

    .line 1672
    goto/16 :goto_14

    .line 1675
    :cond_9b
    const-string v6, "--a"

    invoke-virtual {v13, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a5

    move-object v6, v7

    goto :goto_a6

    :cond_a5
    move-object v6, v8

    .line 1676
    .local v6, "bundleToInsert":Landroid/os/PersistableBundle;
    :goto_a6
    invoke-virtual {v13, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v9, 0x64

    if-eq v5, v9, :cond_c7

    const/16 v9, 0x6c

    if-eq v5, v9, :cond_bb

    const/16 v9, 0x73

    if-eq v5, v9, :cond_b7

    goto :goto_d3

    .line 1684
    :cond_b7
    invoke-virtual {v6, v0, v4}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d3

    .line 1678
    :cond_bb
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v6, v0, v9, v10}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 1679
    goto :goto_d3

    .line 1681
    :cond_c7
    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v6, v0, v9, v10}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 1682
    nop

    .line 1687
    :goto_d3
    goto/16 :goto_14

    .line 1661
    .end local v0    # "key":Ljava/lang/String;
    .end local v4    # "val":Ljava/lang/String;
    .end local v6    # "bundleToInsert":Landroid/os/PersistableBundle;
    :pswitch_d5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    .line 1662
    .end local v3    # "dialogMessage":Ljava/lang/String;
    .local v0, "dialogMessage":Ljava/lang/String;
    nop

    .line 1653
    move-object v3, v0

    goto/16 :goto_14

    .line 1658
    .end local v0    # "dialogMessage":Ljava/lang/String;
    .restart local v3    # "dialogMessage":Ljava/lang/String;
    :pswitch_dd
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 1659
    .end local v12    # "userId":I
    .local v0, "userId":I
    nop

    .line 1653
    move v12, v0

    goto/16 :goto_14

    .line 1694
    .end local v0    # "userId":I
    .restart local v12    # "userId":I
    :cond_e9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v11

    .line 1695
    .local v11, "packageName":Ljava/lang/String;
    if-nez v11, :cond_f5

    .line 1696
    const-string v0, "Error: package name not specified"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1697
    return v15

    .line 1700
    :cond_f5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_100

    const-string/jumbo v0, "root"

    :goto_fe
    move-object v10, v0

    goto :goto_103

    :cond_100
    const-string v0, "com.android.shell"

    goto :goto_fe

    .line 1702
    .local v10, "callingPackage":Ljava/lang/String;
    :goto_103
    :try_start_103
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    new-array v5, v15, [Ljava/lang/String;

    aput-object v11, v5, v14
    :try_end_109
    .catch Landroid/os/RemoteException; {:try_start_103 .. :try_end_109} :catch_136
    .catch Ljava/lang/IllegalArgumentException; {:try_start_103 .. :try_end_109} :catch_136

    move/from16 v6, p1

    move-object v9, v3

    move-object v15, v11

    move v11, v12

    .line 1702
    .end local v11    # "packageName":Ljava/lang/String;
    .local v15, "packageName":Ljava/lang/String;
    :try_start_10e
    invoke-interface/range {v4 .. v11}, Landroid/content/pm/IPackageManager;->setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    .line 1704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " new suspended state: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    .line 1705
    invoke-interface {v4, v15, v12}, Landroid/content/pm/IPackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1704
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_133
    .catch Landroid/os/RemoteException; {:try_start_10e .. :try_end_133} :catch_134
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10e .. :try_end_133} :catch_134

    .line 1706
    return v14

    .line 1707
    :catch_134
    move-exception v0

    goto :goto_138

    .line 1707
    .end local v15    # "packageName":Ljava/lang/String;
    .restart local v11    # "packageName":Ljava/lang/String;
    :catch_136
    move-exception v0

    move-object v15, v11

    .line 1708
    .end local v11    # "packageName":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v15    # "packageName":Ljava/lang/String;
    :goto_138
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1709
    const/4 v4, 0x1

    return v4

    nop

    :sswitch_data_142
    .sparse-switch
        -0x25a4801 -> :sswitch_6c
        0x2900f20 -> :sswitch_62
        0x2900f28 -> :sswitch_58
        0x2900f2f -> :sswitch_4e
        0x290386b -> :sswitch_44
        0x2903873 -> :sswitch_3a
        0x290387a -> :sswitch_30
        0x4f7b216b -> :sswitch_27
    .end sparse-switch

    :pswitch_data_164
    .packed-switch 0x0
        :pswitch_dd
        :pswitch_d5
        :pswitch_8f
        :pswitch_8f
        :pswitch_8f
        :pswitch_8f
        :pswitch_8f
        :pswitch_8f
    .end packed-switch
.end method

.method private runTrimCaches()I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1965
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1966
    .local v0, "size":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 1967
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no size specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1968
    return v1

    .line 1970
    :cond_11
    const-wide/16 v2, 0x1

    .line 1971
    .local v2, "multiplier":J
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 1972
    .local v4, "len":I
    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1973
    .local v5, "c":C
    const/16 v6, 0x30

    const/4 v7, 0x0

    if-lt v5, v6, :cond_2a

    const/16 v6, 0x39

    if-le v5, v6, :cond_27

    goto :goto_2a

    .line 1988
    .end local v0    # "size":Ljava/lang/String;
    .local v2, "size":Ljava/lang/String;
    .local v8, "multiplier":J
    :cond_27
    :goto_27
    move-wide v8, v2

    move-object v2, v0

    goto :goto_6f

    .line 1974
    .end local v8    # "multiplier":J
    .restart local v0    # "size":Ljava/lang/String;
    .local v2, "multiplier":J
    :cond_2a
    :goto_2a
    const/16 v6, 0x4b

    if-eq v5, v6, :cond_66

    const/16 v6, 0x6b

    if-ne v5, v6, :cond_33

    goto :goto_66

    .line 1976
    :cond_33
    const/16 v6, 0x4d

    if-eq v5, v6, :cond_62

    const/16 v6, 0x6d

    if-ne v5, v6, :cond_3c

    goto :goto_62

    .line 1978
    :cond_3c
    const/16 v6, 0x47

    if-eq v5, v6, :cond_5e

    const/16 v6, 0x67

    if-ne v5, v6, :cond_45

    goto :goto_5e

    .line 1981
    :cond_45
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid suffix: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1982
    return v1

    .line 1979
    :cond_5e
    :goto_5e
    const-wide/32 v2, 0x40000000

    goto :goto_68

    .line 1977
    :cond_62
    :goto_62
    const-wide/32 v2, 0x100000

    goto :goto_68

    .line 1975
    :cond_66
    :goto_66
    const-wide/16 v2, 0x400

    .line 1984
    :goto_68
    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 1988
    .end local v0    # "size":Ljava/lang/String;
    .local v2, "size":Ljava/lang/String;
    .restart local v8    # "multiplier":J
    :goto_6f
    :try_start_6f
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10
    :try_end_73
    .catch Ljava/lang/NumberFormatException; {:try_start_6f .. :try_end_73} :catch_a8

    mul-long/2addr v10, v8

    .line 1992
    .local v10, "sizeVal":J
    nop

    .line 1991
    nop

    .line 1993
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1994
    .local v0, "volumeUuid":Ljava/lang/String;
    const-string/jumbo v1, "internal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 1995
    const/4 v0, 0x0

    .line 1997
    .end local v0    # "volumeUuid":Ljava/lang/String;
    .local v3, "volumeUuid":Ljava/lang/String;
    :cond_84
    move-object v3, v0

    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;-><init>()V

    move-object v6, v0

    .line 1998
    .local v6, "obs":Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;
    move-object/from16 v1, p0

    iget-object v12, v1, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/16 v16, 0x2

    move-object v13, v3

    move-wide v14, v10

    move-object/from16 v17, v6

    invoke-interface/range {v12 .. v17}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V

    .line 2000
    monitor-enter v6

    .line 2001
    :goto_99
    :try_start_99
    iget-boolean v0, v6, Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;->finished:Z
    :try_end_9b
    .catchall {:try_start_99 .. :try_end_9b} :catchall_a5

    if-nez v0, :cond_a3

    .line 2003
    :try_start_9d
    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_a0
    .catch Ljava/lang/InterruptedException; {:try_start_9d .. :try_end_a0} :catch_a1
    .catchall {:try_start_9d .. :try_end_a0} :catchall_a5

    .line 2005
    :goto_a0
    goto :goto_99

    .line 2004
    :catch_a1
    move-exception v0

    goto :goto_a0

    .line 2007
    :cond_a3
    :try_start_a3
    monitor-exit v6

    .line 2008
    return v7

    .line 2007
    :catchall_a5
    move-exception v0

    monitor-exit v6
    :try_end_a7
    .catchall {:try_start_a3 .. :try_end_a7} :catchall_a5

    throw v0

    .line 1989
    .end local v3    # "volumeUuid":Ljava/lang/String;
    .end local v6    # "obs":Lcom/android/server/pm/PackageManagerShellCommand$ClearDataObserver;
    .end local v10    # "sizeVal":J
    :catch_a8
    move-exception v0

    move-object v3, v0

    .line 1990
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: expected number at: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1991
    return v1
.end method

.method private runUninstall()I
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1434
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    .line 1435
    .local v1, "pw":Ljava/io/PrintWriter;
    const/4 v2, 0x0

    .line 1436
    .local v2, "flags":I
    const/4 v3, -0x1

    .line 1437
    .local v3, "userId":I
    const-wide/16 v4, -0x1

    .line 1440
    .local v4, "versionCode":J
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .line 1440
    .local v7, "opt":Ljava/lang/String;
    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v6, :cond_71

    .line 1441
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v11, 0x5de

    if-eq v6, v11, :cond_3b

    const v9, 0x4f7b216b

    if-eq v6, v9, :cond_31

    const v9, 0x704d4945

    if-eq v6, v9, :cond_27

    goto :goto_44

    :cond_27
    const-string v6, "--versionCode"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    const/4 v8, 0x2

    goto :goto_44

    :cond_31
    const-string v6, "--user"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    move v8, v10

    goto :goto_44

    :cond_3b
    const-string v6, "-k"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    move v8, v9

    :cond_44
    :goto_44
    packed-switch v8, :pswitch_data_116

    .line 1452
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error: Unknown option: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1453
    return v10

    .line 1449
    :pswitch_5c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1450
    goto :goto_a

    .line 1446
    :pswitch_65
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v3

    .line 1447
    goto :goto_a

    .line 1443
    :pswitch_6e
    or-int/lit8 v2, v2, 0x1

    .line 1444
    goto :goto_a

    .line 1457
    :cond_71
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    .line 1458
    .local v6, "packageName":Ljava/lang/String;
    if-nez v6, :cond_7d

    .line 1459
    const-string v8, "Error: package name not specified"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    return v10

    .line 1464
    :cond_7d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v11

    .line 1465
    .local v11, "splitName":Ljava/lang/String;
    if-eqz v11, :cond_88

    .line 1466
    invoke-direct {v0, v6, v11}, Lcom/android/server/pm/PackageManagerShellCommand;->runRemoveSplit(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    return v8

    .line 1469
    :cond_88
    const-string/jumbo v12, "runUninstall"

    invoke-direct {v0, v3, v10, v12}, Lcom/android/server/pm/PackageManagerShellCommand;->translateUserId(IZLjava/lang/String;)I

    move-result v3

    .line 1470
    if-ne v3, v8, :cond_95

    .line 1471
    const/4 v3, 0x0

    .line 1472
    or-int/lit8 v2, v2, 0x2

    goto :goto_c7

    .line 1474
    :cond_95
    iget-object v8, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/high16 v12, 0x4000000

    invoke-interface {v8, v6, v12, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 1476
    .local v8, "info":Landroid/content/pm/PackageInfo;
    if-nez v8, :cond_b9

    .line 1477
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failure [not installed for "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "]"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1478
    return v10

    .line 1480
    :cond_b9
    iget-object v12, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v12, v10

    if-eqz v12, :cond_c2

    move v12, v10

    goto :goto_c3

    :cond_c2
    move v12, v9

    .line 1485
    .local v12, "isSystem":Z
    :goto_c3
    if-eqz v12, :cond_c7

    .line 1486
    or-int/lit8 v2, v2, 0x4

    .line 1490
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .end local v12    # "isSystem":Z
    :cond_c7
    :goto_c7
    new-instance v8, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v12, 0x0

    invoke-direct {v8, v12}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    .line 1491
    .local v8, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    iget-object v12, v0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v12}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v12

    new-instance v13, Landroid/content/pm/VersionedPackage;

    invoke-direct {v13, v6, v4, v5}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V

    const/4 v14, 0x0

    .line 1493
    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v16

    .line 1491
    move v15, v2

    move/from16 v17, v3

    invoke-interface/range {v12 .. v17}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    .line 1495
    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v12

    .line 1496
    .local v12, "result":Landroid/content/Intent;
    const-string v13, "android.content.pm.extra.STATUS"

    invoke-virtual {v12, v13, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 1498
    .local v13, "status":I
    if-nez v13, :cond_f5

    .line 1499
    const-string v10, "Success"

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1500
    return v9

    .line 1502
    :cond_f5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failure ["

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "android.content.pm.extra.STATUS_MESSAGE"

    .line 1503
    invoke-virtual {v12, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "]"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1502
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1504
    return v10

    nop

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_65
        :pswitch_5c
    .end packed-switch
.end method

.method private runreconcileSecondaryDexFiles()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1290
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1291
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->reconcileSecondaryDexFiles(Ljava/lang/String;)V

    .line 1292
    const/4 v1, 0x0

    return v1
.end method

.method private setParamsSize(Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;Ljava/lang/String;)V
    .registers 15
    .param p1, "params"    # Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
    .param p2, "inPath"    # Ljava/lang/String;

    .line 329
    iget-object v0, p1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b0

    const-string v0, "-"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b0

    .line 330
    const-string/jumbo v0, "r"

    invoke-virtual {p0, p2, v0}, Lcom/android/server/pm/PackageManagerShellCommand;->openFileForSystem(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 331
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_81

    .line 336
    :try_start_1b
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p2, v2}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v5

    .line 337
    .local v5, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    new-instance v1, Landroid/content/pm/PackageParser$PackageLite;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 339
    .local v1, "pkgLite":Landroid/content/pm/PackageParser$PackageLite;
    iget-object v2, p1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, p1, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 340
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 339
    invoke-static {v1, v3, v4}, Lcom/android/internal/content/PackageHelper;->calculateInstalledSize(Landroid/content/pm/PackageParser$PackageLite;Ljava/lang/String;Ljava/io/FileDescriptor;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageInstaller$SessionParams;->setSize(J)V
    :try_end_42
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1b .. :try_end_42} :catch_4a
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_42} :catch_4a
    .catchall {:try_start_1b .. :try_end_42} :catchall_48

    .line 347
    .end local v1    # "pkgLite":Landroid/content/pm/PackageParser$PackageLite;
    .end local v5    # "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    :try_start_42
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    .line 349
    goto :goto_b0

    .line 348
    :catch_46
    move-exception v1

    .line 350
    goto :goto_b0

    .line 346
    :catchall_48
    move-exception v1

    goto :goto_7a

    .line 341
    :catch_4a
    move-exception v1

    .line 342
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Failed to parse APK file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: Failed to parse APK file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_7a
    .catchall {:try_start_4b .. :try_end_7a} :catchall_48

    .line 346
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_7a
    nop

    .line 347
    :try_start_7b
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    .line 349
    goto :goto_80

    .line 348
    :catch_7f
    move-exception v2

    .line 349
    :goto_80
    throw v1

    .line 332
    :cond_81
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Can\'t open file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Can\'t open file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_b0
    :goto_b0
    return-void
.end method

.method private translateUserId(IZLjava/lang/String;)I
    .registers 11
    .param p1, "userId"    # I
    .param p2, "allowAll"    # Z
    .param p3, "logContext"    # Ljava/lang/String;

    .line 2434
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v6, "pm command"

    const/4 v4, 0x1

    move v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private uninstallSystemUpdates()I
    .registers 16

    .line 288
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 289
    .local v0, "pw":Ljava/io/PrintWriter;
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 291
    .local v1, "failedUninstalls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    :try_start_a
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    const/high16 v4, 0x100000

    .line 292
    invoke-interface {v3, v4, v2}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 294
    .local v3, "packages":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v5

    .line 295
    .local v5, "installer":Landroid/content/pm/IPackageInstaller;
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    .line 296
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_20
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v12, 0x1

    if-eqz v6, :cond_7b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    move-object v13, v6

    .line 297
    .local v13, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v13}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v6

    if-eqz v6, :cond_7a

    .line 298
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Uninstalling updates to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    new-instance v6, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;-><init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V

    move-object v14, v6

    .line 300
    .local v14, "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    new-instance v6, Landroid/content/pm/VersionedPackage;

    iget-object v7, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v8, v13, Landroid/content/pm/ApplicationInfo;->versionCode:I

    invoke-direct {v6, v7, v8}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 302
    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v9

    const/4 v10, 0x0

    .line 300
    invoke-interface/range {v5 .. v10}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V

    .line 304
    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;->getResult()Landroid/content/Intent;

    move-result-object v6

    .line 305
    .local v6, "result":Landroid/content/Intent;
    const-string v7, "android.content.pm.extra.STATUS"

    invoke-virtual {v6, v7, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 307
    .local v7, "status":I
    if-eqz v7, :cond_7a

    .line 308
    iget-object v8, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_7a} :catch_a8

    .line 311
    .end local v6    # "result":Landroid/content/Intent;
    .end local v7    # "status":I
    .end local v13    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v14    # "receiver":Lcom/android/server/pm/PackageManagerShellCommand$LocalIntentReceiver;
    :cond_7a
    goto :goto_20

    .line 317
    .end local v3    # "packages":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v5    # "installer":Landroid/content/pm/IPackageInstaller;
    :cond_7b
    nop

    .line 318
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a2

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure [Couldn\'t uninstall packages: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    .line 320
    invoke-static {v4, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 319
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    return v2

    .line 324
    :cond_a2
    const-string v2, "Success"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    return v12

    .line 312
    :catch_a8
    move-exception v3

    .line 313
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 313
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 316
    return v2
.end method

.method private updateUserId()I
    .registers 4

    .line 2143
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x1c

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2145
    :try_start_e
    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v0

    .line 2147
    .local v0, "mUm":Landroid/os/IUserManager;
    const/16 v1, 0x3e7

    invoke-interface {v0, v1}, Landroid/os/IUserManager;->isUserRunning(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2148
    const-string v1, "PackageManagerShellCommand"

    const-string v2, "Update UserId to (-2)"

    invoke-static {v1, v2}, Landroid/os/OnePlusParallelAppUtils;->pLogv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_28} :catch_2b

    .line 2149
    const/4 v1, -0x2

    return v1

    .line 2152
    .end local v0    # "mUm":Landroid/os/IUserManager;
    :cond_2a
    goto :goto_2c

    .line 2151
    :catch_2b
    move-exception v0

    .line 2154
    :cond_2c
    :goto_2c
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 10
    .param p1, "cmd"    # Ljava/lang/String;

    .line 141
    if-nez p1, :cond_7

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 145
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 147
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x1

    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v2, :sswitch_data_45a

    goto/16 :goto_2e6

    :sswitch_1a
    const-string/jumbo v2, "install"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/4 v2, 0x7

    goto/16 :goto_2e7

    :sswitch_26
    const-string/jumbo v2, "reconcile-secondary-dex-files"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x14

    goto/16 :goto_2e7

    :sswitch_33
    const-string/jumbo v2, "set-install-location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0xf

    goto/16 :goto_2e7

    :sswitch_40
    const-string v2, "disable-until-used"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x1e

    goto/16 :goto_2e7

    :sswitch_4c
    const-string v2, "disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x1c

    goto/16 :goto_2e7

    :sswitch_58
    const-string/jumbo v2, "install-write"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0xd

    goto/16 :goto_2e7

    :sswitch_65
    const-string/jumbo v2, "set-home-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x33

    goto/16 :goto_2e7

    :sswitch_72
    const-string/jumbo v2, "trim-caches"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x2d

    goto/16 :goto_2e7

    :sswitch_7f
    const-string v2, "force-dex-opt"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x15

    goto/16 :goto_2e7

    :sswitch_8b
    const-string/jumbo v2, "query-activities"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    move v2, v5

    goto/16 :goto_2e7

    :sswitch_97
    const-string v2, "compile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x13

    goto/16 :goto_2e7

    :sswitch_a3
    const-string/jumbo v2, "set-app-link"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x2b

    goto/16 :goto_2e7

    :sswitch_b0
    const-string/jumbo v2, "set-user-restriction"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x30

    goto/16 :goto_2e7

    :sswitch_bd
    const-string/jumbo v2, "uninstall-system-updates"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x39

    goto/16 :goto_2e7

    :sswitch_ca
    const-string/jumbo v2, "install-destroy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x9

    goto/16 :goto_2e7

    :sswitch_d7
    const-string/jumbo v2, "snapshot-profile"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x18

    goto/16 :goto_2e7

    :sswitch_e4
    const-string/jumbo v2, "reset-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x26

    goto/16 :goto_2e7

    :sswitch_f1
    const-string/jumbo v2, "install-remove"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0xc

    goto/16 :goto_2e7

    :sswitch_fe
    const-string v2, "get-harmful-app-warning"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x38

    goto/16 :goto_2e7

    :sswitch_10a
    const-string/jumbo v2, "install-existing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0xe

    goto/16 :goto_2e7

    :sswitch_117
    const-string/jumbo v2, "grant"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x24

    goto/16 :goto_2e7

    :sswitch_124
    const-string v2, "clear"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x1a

    goto/16 :goto_2e7

    :sswitch_130
    const-string v2, "get-max-users"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x31

    goto/16 :goto_2e7

    :sswitch_13c
    const-string/jumbo v2, "move-package"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x11

    goto/16 :goto_2e7

    :sswitch_149
    const-string/jumbo v2, "path"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    move v2, v7

    goto/16 :goto_2e7

    :sswitch_155
    const-string/jumbo v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    move v2, v4

    goto/16 :goto_2e7

    :sswitch_161
    const-string/jumbo v2, "hide"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x20

    goto/16 :goto_2e7

    :sswitch_16e
    const-string v2, "dump"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    move v2, v6

    goto/16 :goto_2e7

    :sswitch_179
    const-string/jumbo v2, "move-primary-storage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x12

    goto/16 :goto_2e7

    :sswitch_186
    const-string v2, "default-state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x1f

    goto/16 :goto_2e7

    :sswitch_192
    const-string/jumbo v2, "install-create"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0xb

    goto/16 :goto_2e7

    :sswitch_19f
    const-string/jumbo v2, "install-commit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0xa

    goto/16 :goto_2e7

    :sswitch_1ac
    const-string/jumbo v2, "unsuspend"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x23

    goto/16 :goto_2e7

    :sswitch_1b9
    const-string/jumbo v2, "set-permission-enforced"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x27

    goto/16 :goto_2e7

    :sswitch_1c6
    const-string/jumbo v2, "remove-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x2f

    goto/16 :goto_2e7

    :sswitch_1d3
    const-string/jumbo v2, "query-receivers"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/4 v2, 0x6

    goto/16 :goto_2e7

    :sswitch_1df
    const-string v2, "bg-dexopt-job"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x16

    goto/16 :goto_2e7

    :sswitch_1eb
    const-string/jumbo v2, "query-services"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/4 v2, 0x5

    goto/16 :goto_2e7

    :sswitch_1f7
    const-string v2, "create-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x2e

    goto/16 :goto_2e7

    :sswitch_203
    const-string v2, "get-app-link"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x2c

    goto/16 :goto_2e7

    :sswitch_20f
    const-string/jumbo v2, "uninstall"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x19

    goto/16 :goto_2e7

    :sswitch_21c
    const-string/jumbo v2, "unhide"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x21

    goto/16 :goto_2e7

    :sswitch_229
    const-string v2, "dump-profiles"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x17

    goto/16 :goto_2e7

    :sswitch_235
    const-string/jumbo v2, "revoke"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x25

    goto/16 :goto_2e7

    :sswitch_242
    const-string v2, "disable-user"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x1d

    goto/16 :goto_2e7

    :sswitch_24e
    const-string v2, "get-privapp-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x28

    goto/16 :goto_2e7

    :sswitch_25a
    const-string v2, "get-oem-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x2a

    goto/16 :goto_2e7

    :sswitch_266
    const-string v2, "get-privapp-deny-permissions"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x29

    goto/16 :goto_2e7

    :sswitch_272
    const-string/jumbo v2, "resolve-activity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    move v2, v3

    goto/16 :goto_2e7

    :sswitch_27e
    const-string v2, "get-instantapp-resolver"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x35

    goto :goto_2e7

    :sswitch_289
    const-string v2, "enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x1b

    goto :goto_2e7

    :sswitch_294
    const-string/jumbo v2, "has-feature"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x36

    goto :goto_2e7

    :sswitch_2a0
    const-string/jumbo v2, "set-installer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x34

    goto :goto_2e7

    :sswitch_2ac
    const-string v2, "get-max-running-users"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x32

    goto :goto_2e7

    :sswitch_2b7
    const-string/jumbo v2, "suspend"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x22

    goto :goto_2e7

    :sswitch_2c3
    const-string v2, "get-install-location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x10

    goto :goto_2e7

    :sswitch_2ce
    const-string/jumbo v2, "install-abandon"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x8

    goto :goto_2e7

    :sswitch_2da
    const-string/jumbo v2, "set-harmful-app-warning"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e6

    const/16 v2, 0x37

    goto :goto_2e7

    :cond_2e6
    :goto_2e6
    move v2, v1

    :goto_2e7
    packed-switch v2, :pswitch_data_544

    .line 266
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_40d

    .line 264
    :pswitch_2f0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->uninstallSystemUpdates()I

    move-result v2

    return v2

    .line 262
    :pswitch_2f5
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetHarmfulAppWarning()I

    move-result v2

    return v2

    .line 260
    :pswitch_2fa
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHarmfulAppWarning()I

    move-result v2

    return v2

    .line 258
    :pswitch_2ff
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runHasFeature()I

    move-result v2

    return v2

    .line 256
    :pswitch_304
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetInstantAppResolver()I

    move-result v2

    return v2

    .line 254
    :pswitch_309
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetInstaller()I

    move-result v2

    return v2

    .line 252
    :pswitch_30e
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHomeActivity()I

    move-result v2

    return v2

    .line 250
    :pswitch_313
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetMaxRunningUsers()I

    move-result v2

    return v2

    .line 248
    :pswitch_318
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetMaxUsers()I

    move-result v2

    return v2

    .line 246
    :pswitch_31d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetUserRestriction()I

    move-result v2

    return v2

    .line 244
    :pswitch_322
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runRemoveUser()I

    move-result v2

    return v2

    .line 242
    :pswitch_327
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runCreateUser()I

    move-result v2

    return v2

    .line 240
    :pswitch_32c
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runTrimCaches()I

    move-result v2

    return v2

    .line 238
    :pswitch_331
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetAppLink()I

    move-result v2

    return v2

    .line 236
    :pswitch_336
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetAppLink()I

    move-result v2

    return v2

    .line 234
    :pswitch_33b
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetOemPermissions()I

    move-result v2

    return v2

    .line 232
    :pswitch_340
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetPrivappDenyPermissions()I

    move-result v2

    return v2

    .line 230
    :pswitch_345
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetPrivappPermissions()I

    move-result v2

    return v2

    .line 228
    :pswitch_34a
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetPermissionEnforced()I

    move-result v2

    return v2

    .line 226
    :pswitch_34f
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runResetPermissions()I

    move-result v2

    return v2

    .line 224
    :pswitch_354
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runGrantRevokePermission(Z)I

    move-result v2

    return v2

    .line 222
    :pswitch_359
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runGrantRevokePermission(Z)I

    move-result v2

    return v2

    .line 220
    :pswitch_35e
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(Z)I

    move-result v2

    return v2

    .line 218
    :pswitch_363
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSuspend(Z)I

    move-result v2

    return v2

    .line 216
    :pswitch_368
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHiddenSetting(Z)I

    move-result v2

    return v2

    .line 214
    :pswitch_36d
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetHiddenSetting(Z)I

    move-result v2

    return v2

    .line 212
    :pswitch_372
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v2

    return v2

    .line 209
    :pswitch_377
    invoke-direct {p0, v5}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v2

    return v2

    .line 206
    :pswitch_37c
    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v2

    return v2

    .line 204
    :pswitch_381
    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v2

    return v2

    .line 202
    :pswitch_386
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetEnabledSetting(I)I

    move-result v2

    return v2

    .line 200
    :pswitch_38b
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runClear()I

    move-result v2

    return v2

    .line 198
    :pswitch_390
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runUninstall()I

    move-result v2

    return v2

    .line 196
    :pswitch_395
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSnapshotProfile()I

    move-result v2

    return v2

    .line 194
    :pswitch_39a
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDumpProfiles()I

    move-result v2

    return v2

    .line 192
    :pswitch_39f
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDexoptJob()I

    move-result v2

    return v2

    .line 190
    :pswitch_3a4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runForceDexOpt()I

    move-result v2

    return v2

    .line 188
    :pswitch_3a9
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runreconcileSecondaryDexFiles()I

    move-result v2

    return v2

    .line 186
    :pswitch_3ae
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runCompile()I

    move-result v2

    return v2

    .line 184
    :pswitch_3b3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runMovePrimaryStorage()I

    move-result v2

    return v2

    .line 182
    :pswitch_3b8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runMovePackage()I

    move-result v2

    return v2

    .line 180
    :pswitch_3bd
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runGetInstallLocation()I

    move-result v2

    return v2

    .line 178
    :pswitch_3c2
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runSetInstallLocation()I

    move-result v2

    return v2

    .line 176
    :pswitch_3c7
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallExisting()I

    move-result v2

    return v2

    .line 174
    :pswitch_3cc
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallWrite()I

    move-result v2

    return v2

    .line 172
    :pswitch_3d1
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallRemove()I

    move-result v2

    return v2

    .line 170
    :pswitch_3d6
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallCreate()I

    move-result v2

    return v2

    .line 168
    :pswitch_3db
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallCommit()I

    move-result v2

    return v2

    .line 166
    :pswitch_3e0
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstallAbandon()I

    move-result v2

    return v2

    .line 163
    :pswitch_3e5
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runInstall()I

    move-result v2

    return v2

    .line 161
    :pswitch_3ea
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentReceivers()I

    move-result v2

    return v2

    .line 159
    :pswitch_3ef
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentServices()I

    move-result v2

    return v2

    .line 157
    :pswitch_3f4
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runQueryIntentActivities()I

    move-result v2

    return v2

    .line 155
    :pswitch_3f9
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runResolveActivity()I

    move-result v2

    return v2

    .line 153
    :pswitch_3fe
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runList()I

    move-result v2

    return v2

    .line 151
    :pswitch_403
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runDump()I

    move-result v2

    return v2

    .line 149
    :pswitch_408
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->runPath()I

    move-result v2

    return v2

    .line 266
    :goto_40d
    nop

    .line 267
    .local v2, "nextArg":Ljava/lang/String;
    if-nez v2, :cond_42a

    .line 268
    const-string v3, "-l"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_41d

    .line 269
    invoke-direct {p0, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    move-result v3

    return v3

    .line 270
    :cond_41d
    const-string v3, "-lf"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43d

    .line 271
    invoke-direct {p0, v6}, Lcom/android/server/pm/PackageManagerShellCommand;->runListPackages(Z)I

    move-result v3

    return v3

    .line 273
    :cond_42a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_43d

    .line 274
    const-string v3, "-p"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_43d

    .line 275
    invoke-direct {p0, v2, v7}, Lcom/android/server/pm/PackageManagerShellCommand;->displayPackageFilePath(Ljava/lang/String;I)I

    move-result v3

    return v3

    .line 278
    :cond_43d
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v3
    :try_end_441
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_441} :catch_442

    return v3

    .line 281
    .end local v2    # "nextArg":Ljava/lang/String;
    :catch_442
    move-exception v2

    .line 282
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1

    nop

    nop

    :sswitch_data_45a
    .sparse-switch
        -0x7d5639bf -> :sswitch_2da
        -0x7540f3bd -> :sswitch_2ce
        -0x737996c2 -> :sswitch_2c3
        -0x6e635fc4 -> :sswitch_2b7
        -0x6e1196e6 -> :sswitch_2ac
        -0x67c8bc23 -> :sswitch_2a0
        -0x504e493d -> :sswitch_294
        -0x4d6ada7d -> :sswitch_289
        -0x4b90d264 -> :sswitch_27e
        -0x495fa230 -> :sswitch_272
        -0x41b47fcb -> :sswitch_266
        -0x410d7369 -> :sswitch_25a
        -0x3fd1a8ae -> :sswitch_24e
        -0x3d838470 -> :sswitch_242
        -0x37b0f17a -> :sswitch_235
        -0x36d5185d -> :sswitch_229
        -0x321a08a5 -> :sswitch_21c
        -0x2549d71e -> :sswitch_20f
        -0x2525a743 -> :sswitch_203
        -0x202b5604 -> :sswitch_1f7
        -0x1b57243d -> :sswitch_1eb
        -0x1a825bcc -> :sswitch_1df
        -0x1a490a61 -> :sswitch_1d3
        -0x143f388c -> :sswitch_1c6
        -0xd1dc6eb -> :sswitch_1b9
        -0x85b5c7d -> :sswitch_1ac
        -0x7e40657 -> :sswitch_19f
        -0x7bd8e92 -> :sswitch_192
        -0x6dac5fb -> :sswitch_186
        -0x533744c -> :sswitch_179
        0x2f39f4 -> :sswitch_16e
        0x30dd42 -> :sswitch_161
        0x32b09e -> :sswitch_155
        0x346425 -> :sswitch_149
        0x120f24a -> :sswitch_13c
        0x5296aa8 -> :sswitch_130
        0x5a5b64d -> :sswitch_124
        0x5e0c11c -> :sswitch_117
        0x664b17d -> :sswitch_10a
        0x8569735 -> :sswitch_fe
        0x1127c8f6 -> :sswitch_f1
        0x156ea506 -> :sswitch_e4
        0x1bde3ea0 -> :sswitch_d7
        0x2f90ddc8 -> :sswitch_ca
        0x3142fb77 -> :sswitch_bd
        0x372512d5 -> :sswitch_b0
        0x372e1931 -> :sswitch_a3
        0x38a75a33 -> :sswitch_97
        0x3ec9c212 -> :sswitch_8b
        0x4308171b -> :sswitch_7f
        0x4634ad3c -> :sswitch_72
        0x55326612 -> :sswitch_65
        0x5bb0b12d -> :sswitch_58
        0x639e22e8 -> :sswitch_4c
        0x653560d1 -> :sswitch_40
        0x681c75b2 -> :sswitch_33
        0x6a555f29 -> :sswitch_26
        0x74ae259b -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_544
    .packed-switch 0x0
        :pswitch_408
        :pswitch_403
        :pswitch_3fe
        :pswitch_3f9
        :pswitch_3f4
        :pswitch_3ef
        :pswitch_3ea
        :pswitch_3e5
        :pswitch_3e0
        :pswitch_3e0
        :pswitch_3db
        :pswitch_3d6
        :pswitch_3d1
        :pswitch_3cc
        :pswitch_3c7
        :pswitch_3c2
        :pswitch_3bd
        :pswitch_3b8
        :pswitch_3b3
        :pswitch_3ae
        :pswitch_3a9
        :pswitch_3a4
        :pswitch_39f
        :pswitch_39a
        :pswitch_395
        :pswitch_390
        :pswitch_38b
        :pswitch_386
        :pswitch_381
        :pswitch_37c
        :pswitch_377
        :pswitch_372
        :pswitch_36d
        :pswitch_368
        :pswitch_363
        :pswitch_35e
        :pswitch_359
        :pswitch_354
        :pswitch_34f
        :pswitch_34a
        :pswitch_345
        :pswitch_340
        :pswitch_33b
        :pswitch_336
        :pswitch_331
        :pswitch_32c
        :pswitch_327
        :pswitch_322
        :pswitch_31d
        :pswitch_318
        :pswitch_313
        :pswitch_30e
        :pswitch_309
        :pswitch_304
        :pswitch_2ff
        :pswitch_2fa
        :pswitch_2f5
        :pswitch_2f0
    .end packed-switch
.end method

.method public onHelp()V
    .registers 5

    .line 2691
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2692
    .local v0, "pw":Ljava/io/PrintWriter;
    const-string v1, "Package manager (package) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2693
    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2694
    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2695
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2696
    const-string v1, "  path [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2697
    const-string v1, "    Print the path to the .apk of the given PACKAGE."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2698
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2699
    const-string v1, "  dump PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2700
    const-string v1, "    Print various system state associated with the given PACKAGE."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2701
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2702
    const-string v1, "  list features"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2703
    const-string v1, "    Prints all features of the system."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2704
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2705
    const-string v1, "  has-feature FEATURE_NAME [version]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2706
    const-string v1, "    Prints true and returns exit status 0 when system has a FEATURE_NAME,"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2707
    const-string v1, "    otherwise prints false and returns exit status 1"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2708
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2709
    const-string v1, "  list instrumentation [-f] [TARGET-PACKAGE]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2710
    const-string v1, "    Prints all test packages; optionally only those targeting TARGET-PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2711
    const-string v1, "    Options:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2712
    const-string v1, "      -f: dump the name of the .apk file containing the test package"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2713
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2714
    const-string v1, "  list libraries"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2715
    const-string v1, "    Prints all system libraries."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2716
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2717
    const-string v1, "  list packages [-f] [-d] [-e] [-s] [-3] [-i] [-l] [-u] [-U] "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2718
    const-string v1, "      [--uid UID] [--user USER_ID] [FILTER]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2719
    const-string v1, "    Prints all packages; optionally only those whose name contains"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2720
    const-string v1, "    the text in FILTER.  Options are:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2721
    const-string v1, "      -f: see their associated file"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2722
    const-string v1, "      -d: filter to only show disabled packages"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2723
    const-string v1, "      -e: filter to only show enabled packages"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2724
    const-string v1, "      -s: filter to only show system packages"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2725
    const-string v1, "      -3: filter to only show third party packages"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2726
    const-string v1, "      -i: see the installer for the packages"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2727
    const-string v1, "      -l: ignored (used for compatibility with older releases)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2728
    const-string v1, "      -U: also show the package UID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2729
    const-string v1, "      -u: also include uninstalled packages"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2730
    const-string v1, "      --uid UID: filter to only show packages with the given UID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2731
    const-string v1, "      --user USER_ID: only list packages belonging to the given user"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2732
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2733
    const-string v1, "  list permission-groups"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2734
    const-string v1, "    Prints all known permission groups."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2735
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2736
    const-string v1, "  list permissions [-g] [-f] [-d] [-u] [GROUP]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2737
    const-string v1, "    Prints all known permissions; optionally only those in GROUP.  Options are:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2738
    const-string v1, "      -g: organize by group"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2739
    const-string v1, "      -f: print all information"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2740
    const-string v1, "      -s: short summary"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2741
    const-string v1, "      -d: only list dangerous permissions"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2742
    const-string v1, "      -u: list only the permissions users will see"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2743
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2744
    const-string v1, "  resolve-activity [--brief] [--components] [--user USER_ID] INTENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2745
    const-string v1, "    Prints the activity that resolves to the given INTENT."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2746
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2747
    const-string v1, "  query-activities [--brief] [--components] [--user USER_ID] INTENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2748
    const-string v1, "    Prints all activities that can handle the given INTENT."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2749
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2750
    const-string v1, "  query-services [--brief] [--components] [--user USER_ID] INTENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2751
    const-string v1, "    Prints all services that can handle the given INTENT."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2752
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2753
    const-string v1, "  query-receivers [--brief] [--components] [--user USER_ID] INTENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2754
    const-string v1, "    Prints all broadcast receivers that can handle the given INTENT."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2755
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2756
    const-string v1, "  install [-lrtsfdg] [-i PACKAGE] [--user USER_ID|all|current]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2757
    const-string v1, "       [-p INHERIT_PACKAGE] [--install-location 0/1/2]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2758
    const-string v1, "       [--originating-uri URI] [---referrer URI]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2759
    const-string v1, "       [--abi ABI_NAME] [--force-sdk]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2760
    const-string v1, "       [--preload] [--instantapp] [--full] [--dont-kill]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2761
    const-string v1, "       [--force-uuid internal|UUID] [--pkg PACKAGE] [-S BYTES] [PATH|-]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2762
    const-string v1, "    Install an application.  Must provide the apk data to install, either as a"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2763
    const-string v1, "    file path or \'-\' to read from stdin.  Options are:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2764
    const-string v1, "      -l: forward lock application"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2765
    const-string v1, "      -R: disallow replacement of existing application"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2766
    const-string v1, "      -t: allow test packages"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2767
    const-string v1, "      -i: specify package name of installer owning the app"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2768
    const-string v1, "      -s: install application on sdcard"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2769
    const-string v1, "      -f: install application on internal flash"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2770
    const-string v1, "      -d: allow version code downgrade (debuggable packages only)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2771
    const-string v1, "      -p: partial application install (new split on top of existing pkg)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2772
    const-string v1, "      -g: grant all runtime permissions"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2773
    const-string v1, "      -S: size in bytes of package, required for stdin"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2774
    const-string v1, "      --user: install under the given user."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2775
    const-string v1, "      --dont-kill: installing a new feature split, don\'t kill running app"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2776
    const-string v1, "      --originating-uri: set URI where app was downloaded from"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2777
    const-string v1, "      --referrer: set URI that instigated the install of the app"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2778
    const-string v1, "      --pkg: specify expected package name of app being installed"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2779
    const-string v1, "      --abi: override the default ABI of the platform"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2780
    const-string v1, "      --instantapp: cause the app to be installed as an ephemeral install app"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2781
    const-string v1, "      --full: cause the app to be installed as a non-ephemeral full app"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2782
    const-string v1, "      --install-location: force the install location:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2783
    const-string v1, "          0=auto, 1=internal only, 2=prefer external"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2784
    const-string v1, "      --force-uuid: force install on to disk volume with given UUID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2785
    const-string v1, "      --force-sdk: allow install even when existing app targets platform"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2786
    const-string v1, "          codename but new one targets a final API level"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2787
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2788
    const-string v1, "  install-create [-lrtsfdg] [-i PACKAGE] [--user USER_ID|all|current]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2789
    const-string v1, "       [-p INHERIT_PACKAGE] [--install-location 0/1/2]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2790
    const-string v1, "       [--originating-uri URI] [---referrer URI]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2791
    const-string v1, "       [--abi ABI_NAME] [--force-sdk]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2792
    const-string v1, "       [--preload] [--instantapp] [--full] [--dont-kill]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2793
    const-string v1, "       [--force-uuid internal|UUID] [--pkg PACKAGE] [-S BYTES]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2794
    const-string v1, "    Like \"install\", but starts an install session.  Use \"install-write\""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2795
    const-string v1, "    to push data into the session, and \"install-commit\" to finish."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2796
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2797
    const-string v1, "  install-write [-S BYTES] SESSION_ID SPLIT_NAME [PATH|-]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2798
    const-string v1, "    Write an apk into the given install session.  If the path is \'-\', data"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2799
    const-string v1, "    will be read from stdin.  Options are:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2800
    const-string v1, "      -S: size in bytes of package, required for stdin"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2801
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2802
    const-string v1, "  install-commit SESSION_ID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2803
    const-string v1, "    Commit the given active install session, installing the app."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2804
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2805
    const-string v1, "  install-abandon SESSION_ID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2806
    const-string v1, "    Delete the given active install session."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2807
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2808
    const-string v1, "  set-install-location LOCATION"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2809
    const-string v1, "    Changes the default install location.  NOTE this is only intended for debugging;"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2810
    const-string v1, "    using this can cause applications to break and other undersireable behavior."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2811
    const-string v1, "    LOCATION is one of:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2812
    const-string v1, "    0 [auto]: Let system decide the best location"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2813
    const-string v1, "    1 [internal]: Install on internal device storage"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2814
    const-string v1, "    2 [external]: Install on external media"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2815
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2816
    const-string v1, "  get-install-location"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2817
    const-string v1, "    Returns the current install location: 0, 1 or 2 as per set-install-location."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2818
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2819
    const-string v1, "  move-package PACKAGE [internal|UUID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2820
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2821
    const-string v1, "  move-primary-storage [internal|UUID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2822
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2823
    const-string v1, "  pm uninstall [-k] [--user USER_ID] [--versionCode VERSION_CODE] PACKAGE [SPLIT]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2824
    const-string v1, "    Remove the given package name from the system.  May remove an entire app"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2825
    const-string v1, "    if no SPLIT name is specified, otherwise will remove only the split of the"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2826
    const-string v1, "    given app.  Options are:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2827
    const-string v1, "      -k: keep the data and cache directories around after package removal."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2828
    const-string v1, "      --user: remove the app from the given user."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2829
    const-string v1, "      --versionCode: only uninstall if the app has the given version code."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2830
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2831
    const-string v1, "  clear [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2832
    const-string v1, "    Deletes all data associated with a package."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2833
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2834
    const-string v1, "  enable [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2835
    const-string v1, "  disable [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2836
    const-string v1, "  disable-user [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2837
    const-string v1, "  disable-until-used [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2838
    const-string v1, "  default-state [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2839
    const-string v1, "    These commands change the enabled state of a given package or"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2840
    const-string v1, "    component (written as \"package/class\")."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2841
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2842
    const-string v1, "  hide [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2843
    const-string v1, "  unhide [--user USER_ID] PACKAGE_OR_COMPONENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2844
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2845
    const-string v1, "  suspend [--user USER_ID] TARGET-PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2846
    const-string v1, "    Suspends the specified package (as user)."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2847
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2848
    const-string v1, "  unsuspend [--user USER_ID] TARGET-PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2849
    const-string v1, "    Unsuspends the specified package (as user)."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2850
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2851
    const-string v1, "  grant [--user USER_ID] PACKAGE PERMISSION"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2852
    const-string v1, "  revoke [--user USER_ID] PACKAGE PERMISSION"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2853
    const-string v1, "    These commands either grant or revoke permissions to apps.  The permissions"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2854
    const-string v1, "    must be declared as used in the app\'s manifest, be runtime permissions"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2855
    const-string v1, "    (protection level dangerous), and the app targeting SDK greater than Lollipop MR1."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2856
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2857
    const-string v1, "  reset-permissions"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2858
    const-string v1, "    Revert all runtime permissions to their default state."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2859
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2860
    const-string v1, "  set-permission-enforced PERMISSION [true|false]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2861
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2862
    const-string v1, "  get-privapp-permissions TARGET-PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2863
    const-string v1, "    Prints all privileged permissions for a package."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2864
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2865
    const-string v1, "  get-privapp-deny-permissions TARGET-PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2866
    const-string v1, "    Prints all privileged permissions that are denied for a package."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2867
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2868
    const-string v1, "  get-oem-permissions TARGET-PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2869
    const-string v1, "    Prints all OEM permissions for a package."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2870
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2871
    const-string v1, "  set-app-link [--user USER_ID] PACKAGE {always|ask|never|undefined}"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2872
    const-string v1, "  get-app-link [--user USER_ID] PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2873
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2874
    const-string v1, "  trim-caches DESIRED_FREE_SPACE [internal|UUID]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2875
    const-string v1, "    Trim cache files to reach the given free space."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2876
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2877
    const-string v1, "  create-user [--profileOf USER_ID] [--managed] [--restricted] [--ephemeral]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2878
    const-string v1, "      [--guest] USER_NAME"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2879
    const-string v1, "    Create a new user with the given USER_NAME, printing the new user identifier"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2880
    const-string v1, "    of the user."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2881
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2882
    const-string v1, "  remove-user USER_ID"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2883
    const-string v1, "    Remove the user with the given USER_IDENTIFIER, deleting all data"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2884
    const-string v1, "    associated with that user"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2885
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2886
    const-string v1, "  set-user-restriction [--user USER_ID] RESTRICTION VALUE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2887
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2888
    const-string v1, "  get-max-users"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2889
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2890
    const-string v1, "  get-max-running-users"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2891
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2892
    const-string v1, "  compile [-m MODE | -r REASON] [-f] [-c] [--split SPLIT_NAME]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2893
    const-string v1, "          [--reset] [--check-prof (true | false)] (-a | TARGET-PACKAGE)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2894
    const-string v1, "    Trigger compilation of TARGET-PACKAGE or all packages if \"-a\".  Options are:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2895
    const-string v1, "      -a: compile all packages"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2896
    const-string v1, "      -c: clear profile data before compiling"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2897
    const-string v1, "      -f: force compilation even if not needed"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2898
    const-string v1, "      -m: select compilation mode"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2899
    const-string v1, "          MODE is one of the dex2oat compiler filters:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2900
    const-string v1, "            assume-verified"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2901
    const-string v1, "            extract"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2902
    const-string v1, "            verify"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2903
    const-string v1, "            quicken"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2904
    const-string v1, "            space-profile"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2905
    const-string v1, "            space"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2906
    const-string v1, "            speed-profile"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2907
    const-string v1, "            speed"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2908
    const-string v1, "            everything"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2909
    const-string v1, "      -r: select compilation reason"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2910
    const-string v1, "          REASON is one of:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2911
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_44c
    sget-object v2, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_46c

    .line 2912
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "            "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2911
    add-int/lit8 v1, v1, 0x1

    goto :goto_44c

    .line 2914
    .end local v1    # "i":I
    :cond_46c
    const-string v1, "      --reset: restore package to its post-install state"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2915
    const-string v1, "      --check-prof (true | false): look at profiles when doing dexopt?"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2916
    const-string v1, "      --secondary-dex: compile app secondary dex files"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2917
    const-string v1, "      --split SPLIT: compile only the given split name"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2918
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2919
    const-string v1, "  force-dex-opt PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2920
    const-string v1, "    Force immediate execution of dex opt for the given PACKAGE."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2921
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2922
    const-string v1, "  bg-dexopt-job"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2923
    const-string v1, "    Execute the background optimizations immediately."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2924
    const-string v1, "    Note that the command only runs the background optimizer logic. It may"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2925
    const-string v1, "    overlap with the actual job but the job scheduler will not be able to"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2926
    const-string v1, "    cancel it. It will also run even if the device is not in the idle"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2927
    const-string v1, "    maintenance mode."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2928
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2929
    const-string v1, "  reconcile-secondary-dex-files TARGET-PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2930
    const-string v1, "    Reconciles the package secondary dex files with the generated oat files."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2931
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2932
    const-string v1, "  dump-profiles TARGET-PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2933
    const-string v1, "    Dumps method/class profile files to"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2934
    const-string v1, "    /data/misc/profman/TARGET-PACKAGE.txt"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2935
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2936
    const-string v1, "  snapshot-profile TARGET-PACKAGE [--code-path path]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2937
    const-string v1, "    Take a snapshot of the package profiles to"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2938
    const-string v1, "    /data/misc/profman/TARGET-PACKAGE[-code-path].prof"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2940
    const-string v1, "    If TARGET-PACKAGE=android it will take a snapshot of the boot image"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2941
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2942
    const-string v1, "  set-home-activity [--user USER_ID] TARGET-COMPONENT"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2943
    const-string v1, "    Set the default home activity (aka launcher)."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2944
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2945
    const-string v1, "  set-installer PACKAGE INSTALLER"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2946
    const-string v1, "    Set installer package name"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2947
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2948
    const-string v1, "  get-instantapp-resolver"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2949
    const-string v1, "    Return the name of the component that is the current instant app installer."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2950
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2951
    const-string v1, "  set-harmful-app-warning [--user <USER_ID>] <PACKAGE> [<WARNING>]"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2952
    const-string v1, "    Mark the app as harmful with the given warning message."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2953
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2954
    const-string v1, "  get-harmful-app-warning [--user <USER_ID>] <PACKAGE>"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2955
    const-string v1, "    Return the harmful app warning message for the given app, if present"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2956
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 2957
    const-string v1, "  uninstall-system-updates"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2958
    const-string v1, "    Remove updates to all system applications and fall back to their /system version."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2960
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 2961
    const-string v1, ""

    invoke-static {v0, v1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2962
    return-void
.end method

.method public runCreateUser()I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2022
    const/4 v0, -0x1

    .line 2023
    .local v0, "userId":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 2025
    .local v0, "flags":I
    .local v2, "userId":I
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 2025
    .local v4, "opt":Ljava/lang/String;
    const/4 v5, 0x1

    if-eqz v3, :cond_6d

    .line 2026
    const-string v3, "--profileOf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2027
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    goto :goto_4

    .line 2028
    :cond_1d
    const-string v3, "--managed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 2029
    or-int/lit8 v0, v0, 0x20

    goto :goto_4

    .line 2030
    :cond_28
    const-string v3, "--restricted"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 2031
    or-int/lit8 v0, v0, 0x8

    goto :goto_4

    .line 2032
    :cond_33
    const-string v3, "--ephemeral"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 2033
    or-int/lit16 v0, v0, 0x100

    goto :goto_4

    .line 2034
    :cond_3e
    const-string v3, "--guest"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 2035
    or-int/lit8 v0, v0, 0x4

    goto :goto_4

    .line 2036
    :cond_49
    const-string v3, "--demo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 2037
    or-int/lit16 v0, v0, 0x200

    goto :goto_4

    .line 2039
    :cond_54
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: unknown option "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2040
    return v5

    .line 2043
    :cond_6d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 2044
    .local v3, "arg":Ljava/lang/String;
    if-nez v3, :cond_7d

    .line 2045
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v6, "Error: no user name specified."

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2046
    return v5

    .line 2048
    :cond_7d
    move-object v6, v3

    .line 2050
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v7, "user"

    .line 2051
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 2050
    invoke-static {v7}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v7

    .line 2052
    .local v7, "um":Landroid/os/IUserManager;
    const-string v8, "account"

    .line 2053
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 2052
    invoke-static {v8}, Landroid/accounts/IAccountManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accounts/IAccountManager;

    move-result-object v8

    .line 2054
    .local v8, "accm":Landroid/accounts/IAccountManager;
    and-int/lit8 v9, v0, 0x8

    if-eqz v9, :cond_b1

    .line 2056
    if-ltz v2, :cond_9b

    move v9, v2

    goto :goto_9c

    :cond_9b
    move v9, v1

    .line 2057
    .local v9, "parentUserId":I
    :goto_9c
    invoke-interface {v7, v6, v9}, Landroid/os/IUserManager;->createRestrictedProfile(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v10

    .line 2058
    .local v10, "info":Landroid/content/pm/UserInfo;
    nop

    .line 2059
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v11

    if-nez v11, :cond_ab

    const-string/jumbo v11, "root"

    goto :goto_ad

    :cond_ab
    const-string v11, "com.android.shell"

    .line 2058
    :goto_ad
    invoke-interface {v8, v9, v2, v11}, Landroid/accounts/IAccountManager;->addSharedAccountsFromParentUser(IILjava/lang/String;)V

    .line 2060
    .end local v9    # "parentUserId":I
    goto :goto_bd

    .line 2060
    .end local v10    # "info":Landroid/content/pm/UserInfo;
    :cond_b1
    if-gez v2, :cond_b8

    .line 2061
    invoke-interface {v7, v6, v0}, Landroid/os/IUserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v10

    .line 2061
    .restart local v10    # "info":Landroid/content/pm/UserInfo;
    goto :goto_bd

    .line 2063
    .end local v10    # "info":Landroid/content/pm/UserInfo;
    :cond_b8
    const/4 v9, 0x0

    invoke-interface {v7, v6, v0, v2, v9}, Landroid/os/IUserManager;->createProfileForUser(Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v10

    .line 2063
    .restart local v10    # "info":Landroid/content/pm/UserInfo;
    :goto_bd
    move-object v9, v10

    .line 2066
    .end local v10    # "info":Landroid/content/pm/UserInfo;
    .local v9, "info":Landroid/content/pm/UserInfo;
    if-eqz v9, :cond_db

    .line 2067
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Success: created user id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2068
    return v1

    .line 2070
    :cond_db
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v10, "Error: couldn\'t create User."

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2071
    return v5
.end method

.method public runForceDexOpt()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1296
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->forceDexOpt(Ljava/lang/String;)V

    .line 1297
    const/4 v0, 0x0

    return v0
.end method

.method public runGetMaxRunningUsers()I
    .registers 5

    .line 2125
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 2126
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 2127
    .local v0, "activityManagerInternal":Landroid/app/ActivityManagerInternal;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maximum supported running users: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2128
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getMaxRunningUsers()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2127
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2129
    const/4 v1, 0x0

    return v1
.end method

.method public runGetMaxUsers()I
    .registers 4

    .line 2119
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum supported users: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2120
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2119
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2121
    const/4 v0, 0x0

    return v0
.end method

.method public runMovePackage()I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1074
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1075
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 1076
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: package name not specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1077
    return v1

    .line 1079
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 1080
    .local v2, "volumeUuid":Ljava/lang/String;
    const-string/jumbo v3, "internal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1081
    const/4 v2, 0x0

    .line 1084
    :cond_1f
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v0, v2}, Landroid/content/pm/IPackageManager;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1086
    .local v3, "moveId":I
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v4, v3}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v4

    .line 1087
    .local v4, "status":I
    :goto_2b
    invoke-static {v4}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 1088
    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6}, Landroid/os/SystemClock;->sleep(J)V

    .line 1089
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, v3}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v4

    goto :goto_2b

    .line 1092
    :cond_3d
    const/16 v5, -0x64

    if-ne v4, v5, :cond_4c

    .line 1093
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v5, "Success"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1094
    const/4 v1, 0x0

    return v1

    .line 1096
    :cond_4c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1097
    return v1
.end method

.method public runMovePrimaryStorage()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1102
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 1103
    .local v0, "volumeUuid":Ljava/lang/String;
    const-string/jumbo v1, "internal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1104
    const/4 v0, 0x0

    .line 1107
    :cond_e
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, v0}, Landroid/content/pm/IPackageManager;->movePrimaryStorage(Ljava/lang/String;)I

    move-result v1

    .line 1109
    .local v1, "moveId":I
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v1}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v2

    .line 1110
    .local v2, "status":I
    :goto_1a
    invoke-static {v2}, Landroid/content/pm/PackageManager;->isMoveStatusFinished(I)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 1111
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 1112
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerShellCommand;->mInterface:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v1}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I

    move-result v2

    goto :goto_1a

    .line 1115
    :cond_2c
    const/16 v3, -0x64

    if-ne v2, v3, :cond_3b

    .line 1116
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Success"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1117
    const/4 v3, 0x0

    return v3

    .line 1119
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1120
    const/4 v3, 0x1

    return v3
.end method

.method public runRemoveUser()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2077
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 2078
    .local v0, "arg":Ljava/lang/String;
    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 2079
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no user id specified."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2080
    return v1

    .line 2082
    :cond_11
    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    .line 2083
    .local v2, "userId":I
    const-string/jumbo v3, "user"

    .line 2084
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 2083
    invoke-static {v3}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v3

    .line 2085
    .local v3, "um":Landroid/os/IUserManager;
    invoke-interface {v3, v2}, Landroid/os/IUserManager;->removeUser(I)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 2086
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string v4, "Success: removed user"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2087
    const/4 v1, 0x0

    return v1

    .line 2089
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: couldn\'t remove user id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2090
    return v1
.end method

.method public runSetUserRestriction()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2095
    const/4 v0, 0x0

    .line 2096
    .local v0, "userId":I
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v1

    .line 2097
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_17

    const-string v2, "--user"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2098
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    .line 2101
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    .line 2102
    .local v2, "restriction":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 2104
    .local v3, "arg":Ljava/lang/String;
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 2105
    const/4 v4, 0x1

    .line 2105
    .local v4, "value":Z
    :goto_28
    goto :goto_33

    .line 2106
    .end local v4    # "value":Z
    :cond_29
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 2107
    const/4 v4, 0x0

    goto :goto_28

    .line 2110
    .restart local v4    # "value":Z
    :goto_33
    nop

    .line 2112
    const-string/jumbo v5, "user"

    .line 2113
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 2112
    invoke-static {v5}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v5

    .line 2114
    .local v5, "um":Landroid/os/IUserManager;
    invoke-interface {v5, v2, v4, v0}, Landroid/os/IUserManager;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 2115
    const/4 v6, 0x0

    return v6

    .line 2109
    .end local v4    # "value":Z
    .end local v5    # "um":Landroid/os/IUserManager;
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v4

    const-string v5, "Error: valid value not specified"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2110
    const/4 v4, 0x1

    return v4
.end method
