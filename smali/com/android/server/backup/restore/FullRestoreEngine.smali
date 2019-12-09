.class public Lcom/android/server/backup/restore/FullRestoreEngine;
.super Lcom/android/server/backup/restore/RestoreEngine;
.source "FullRestoreEngine.java"


# instance fields
.field private mAgent:Landroid/app/IBackupAgent;

.field private mAgentPackage:Ljava/lang/String;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field final mAllowApks:Z

.field private final mAllowObbs:Z

.field private final mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

.field final mBuffer:[B

.field private mBytes:J

.field private final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

.field final mEphemeralOpToken:I

.field private final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field private final mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

.field private mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field private mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field final mOnlyPackage:Landroid/content/pm/PackageInfo;

.field private final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPipes:[Landroid/os/ParcelFileDescriptor;

.field private mTargetApp:Landroid/content/pm/ApplicationInfo;

.field private mWidgetData:[B


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZZI)V
    .registers 11
    .param p1, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "monitorTask"    # Lcom/android/server/backup/BackupRestoreTask;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p5, "onlyPackage"    # Landroid/content/pm/PackageInfo;
    .param p6, "allowApks"    # Z
    .param p7, "allowObbs"    # Z
    .param p8, "ephemeralOpToken"    # I

    .line 133
    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    .line 75
    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 101
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    .line 105
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    .line 108
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    .line 112
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    .line 121
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 124
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 134
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 135
    iput p8, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    .line 136
    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    .line 137
    iput-object p3, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 138
    iput-object p4, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 139
    iput-object p5, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    .line 140
    iput-boolean p6, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    .line 141
    iput-boolean p7, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowObbs:Z

    .line 142
    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    .line 143
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    .line 144
    nop

    .line 145
    invoke-virtual {p1}, Lcom/android/server/backup/BackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    const-string v1, "Timeout parameters cannot be null"

    .line 144
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 147
    return-void
.end method

.method static synthetic access$014(Lcom/android/server/backup/restore/FullRestoreEngine;J)J
    .registers 5
    .param p0, "x0"    # Lcom/android/server/backup/restore/FullRestoreEngine;
    .param p1, "x1"    # J

    .line 69
    iget-wide v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    return-wide v0
.end method

.method private static isCanonicalFilePath(Ljava/lang/String;)Z
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .line 635
    const-string v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    .line 642
    :cond_11
    const/4 v0, 0x1

    return v0

    .line 639
    :cond_13
    :goto_13
    const/4 v0, 0x0

    return v0
.end method

.method private static isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z
    .registers 4
    .param p0, "info"    # Lcom/android/server/backup/FileMetadata;

    .line 610
    const-string v0, "c"

    iget-object v1, p0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 614
    return v1

    .line 617
    :cond_c
    const-string/jumbo v0, "r"

    iget-object v2, p0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 622
    iget-object v0, p0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v2, "no_backup/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 626
    return v1

    .line 631
    :cond_23
    const/4 v0, 0x1

    return v0
.end method

.method private setUpPipes()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 574
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 575
    return-void
.end method

.method private shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 652
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 653
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "packages_to_clear_data_before_full_restore"

    .line 652
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "packageListString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 656
    const/4 v1, 0x0

    return v1

    .line 659
    :cond_19
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 660
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private tearDownAgent(Landroid/content/pm/ApplicationInfo;)V
    .registers 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .line 597
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_c

    .line 598
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 599
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 601
    :cond_c
    return-void
.end method

.method private tearDownPipes()V
    .registers 5

    .line 581
    monitor-enter p0

    .line 582
    :try_start_1
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2b

    if-eqz v0, :cond_29

    .line 584
    const/4 v0, 0x0

    :try_start_6
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 585
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v0, v1, v2

    .line 586
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 587
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aput-object v0, v1, v2
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1e} :catch_1f
    .catchall {:try_start_6 .. :try_end_1e} :catchall_2b

    .line 590
    goto :goto_27

    .line 588
    :catch_1f
    move-exception v1

    .line 589
    .local v1, "e":Ljava/io/IOException;
    :try_start_20
    const-string v2, "BackupManagerService"

    const-string v3, "Couldn\'t close agent pipes"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    .end local v1    # "e":Ljava/io/IOException;
    :goto_27
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 593
    :cond_29
    monitor-exit p0

    .line 594
    return-void

    .line 593
    :catchall_2b
    move-exception v0

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_2b

    throw v0
.end method


# virtual methods
.method public getAgent()Landroid/app/IBackupAgent;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    return-object v0
.end method

.method public getWidgetData()[B
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    return-object v0
.end method

.method handleTimeout()V
    .registers 2

    .line 604
    invoke-direct {p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 605
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 606
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 607
    return-void
.end method

.method public restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    .registers 59
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "mustKillAgent"    # Z
    .param p3, "buffer"    # [B
    .param p4, "onlyPackage"    # Landroid/content/pm/PackageInfo;
    .param p5, "allowApks"    # Z
    .param p6, "token"    # I
    .param p7, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRunning()Z

    move-result v0

    const/4 v13, 0x0

    if-nez v0, :cond_17

    .line 160
    const-string v0, "BackupManagerService"

    const-string v2, "Restore engine used after halting"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return v13

    .line 164
    :cond_17
    new-instance v0, Lcom/android/server/backup/restore/FullRestoreEngine$1;

    invoke-direct {v0, v1}, Lcom/android/server/backup/restore/FullRestoreEngine$1;-><init>(Lcom/android/server/backup/restore/FullRestoreEngine;)V

    move-object v14, v0

    .line 171
    .local v14, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    new-instance v0, Lcom/android/server/backup/utils/TarBackupReader;

    move-object/from16 v15, p7

    invoke-direct {v0, v10, v14, v15}, Lcom/android/server/backup/utils/TarBackupReader;-><init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V

    move-object v9, v0

    .line 179
    .local v9, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    const/4 v8, -0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    :try_start_28
    invoke-virtual {v9}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeaders()Lcom/android/server/backup/FileMetadata;

    move-result-object v0

    move-object v4, v0

    .line 180
    .local v4, "info":Lcom/android/server/backup/FileMetadata;
    if-eqz v4, :cond_63a

    .line 185
    iget-object v0, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object v3, v0

    .line 186
    .local v3, "pkg":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_38} :catch_646

    if-nez v0, :cond_9a

    .line 189
    if-eqz v12, :cond_74

    .line 190
    :try_start_3c
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 191
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected data for "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " but saw "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v1, v8}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 193
    invoke-virtual {v1, v13}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 194
    return v13

    .line 551
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    :catch_69
    move-exception v0

    move/from16 v4, p6

    move-object/from16 v49, v9

    move-object/from16 v43, v14

    move-object/from16 v30, v15

    goto/16 :goto_64f

    .line 200
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "info":Lcom/android/server/backup/FileMetadata;
    :cond_74
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    .line 201
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_83
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_9a

    .line 208
    const-string v0, "BackupManagerService"

    const-string v2, "Saw new package; finalizing old one"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 212
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 213
    iput-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 214
    iput-object v6, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_9a} :catch_69

    .line 218
    :cond_9a
    :try_start_9a
    iget-object v0, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v2, "_manifest"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_a2} :catch_646

    if-eqz v0, :cond_fe

    .line 219
    :try_start_a4
    invoke-virtual {v9, v4}, Lcom/android/server/backup/utils/TarBackupReader;->readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 221
    .local v0, "signatures":[Landroid/content/pm/Signature;
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/content/pm/PackageManagerInternal;

    .line 223
    .local v7, "pmi":Landroid/content/pm/PackageManagerInternal;
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 224
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 223
    move-object v2, v9

    move-object v13, v3

    move-object/from16 v3, v16

    .line 223
    .end local v3    # "pkg":Ljava/lang/String;
    .local v13, "pkg":Ljava/lang/String;
    move-object/from16 v29, v4

    move/from16 v4, p5

    .line 223
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .local v29, "info":Lcom/android/server/backup/FileMetadata;
    move v15, v5

    move-object/from16 v5, v29

    move-object v6, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/backup/utils/TarBackupReader;->chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;Landroid/content/pm/PackageManagerInternal;)Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v2

    .line 226
    .local v2, "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v6, v29

    iget-object v4, v6, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 226
    .end local v29    # "info":Lcom/android/server/backup/FileMetadata;
    .local v6, "info":Lcom/android/server/backup/FileMetadata;
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v3, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    iget-object v4, v6, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v3, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-wide v3, v6, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v9, v3, v4}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 233
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v3, v13}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_e9
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_e9} :catch_f3

    .line 234
    .end local v0    # "signatures":[Landroid/content/pm/Signature;
    .end local v2    # "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v7    # "pmi":Landroid/content/pm/PackageManagerInternal;
    nop

    .line 557
    move/from16 v4, p6

    move-object v3, v6

    move-object/from16 v49, v9

    move-object/from16 v43, v14

    goto/16 :goto_641

    .line 551
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v13    # "pkg":Ljava/lang/String;
    :catch_f3
    move-exception v0

    move/from16 v4, p6

    move-object/from16 v49, v9

    move-object/from16 v43, v14

    .line 551
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v30, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v43, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v49, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :goto_fa
    move-object/from16 v30, p7

    goto/16 :goto_64f

    .line 234
    .end local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v49    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "pkg":Ljava/lang/String;
    .restart local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_fe
    move-object v13, v3

    move-object v6, v4

    move v15, v5

    .line 234
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v13    # "pkg":Ljava/lang/String;
    :try_start_101
    iget-object v0, v6, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string v2, "_meta"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_109} :catch_646

    if-eqz v0, :cond_134

    .line 236
    :try_start_10b
    invoke-virtual {v9, v6}, Lcom/android/server/backup/utils/TarBackupReader;->readMetadata(Lcom/android/server/backup/FileMetadata;)V

    .line 242
    invoke-virtual {v9}, Lcom/android/server/backup/utils/TarBackupReader;->getWidgetData()[B

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 244
    invoke-virtual {v9}, Lcom/android/server/backup/utils/TarBackupReader;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0
    :try_end_118
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_118} :catch_f3

    move-object v2, v0

    .line 246
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v2, "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :try_start_119
    iget-wide v3, v6, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v9, v3, v4}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V
    :try_end_11e
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_11e} :catch_129

    .line 557
    move/from16 v4, p6

    move-object/from16 v30, v2

    move-object v3, v6

    move-object/from16 v49, v9

    move-object/from16 v43, v14

    goto/16 :goto_643

    .line 551
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v13    # "pkg":Ljava/lang/String;
    :catch_129
    move-exception v0

    move/from16 v4, p6

    move-object/from16 v30, v2

    move-object/from16 v49, v9

    move-object/from16 v43, v14

    goto/16 :goto_64f

    .line 250
    .end local v2    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v13    # "pkg":Ljava/lang/String;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_134
    const/4 v0, 0x1

    .line 251
    .local v0, "okay":Z
    :try_start_135
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/restore/RestorePolicy;

    move-object v7, v2

    .line 252
    .local v7, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    sget-object v2, Lcom/android/server/backup/restore/FullRestoreEngine$2;->$SwitchMap$com$android$server$backup$restore$RestorePolicy:[I

    invoke-virtual {v7}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_146
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_146} :catch_646

    packed-switch v2, :pswitch_data_68e

    .line 305
    move-object v3, v6

    move-object/from16 v32, v7

    move-object v15, v9

    .line 305
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v3, "info":Lcom/android/server/backup/FileMetadata;
    .local v15, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v32, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :try_start_14d
    const-string v2, "BackupManagerService"
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_14d .. :try_end_14f} :catch_630

    goto/16 :goto_1d6

    .line 289
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :pswitch_151
    :try_start_151
    iget-object v2, v6, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_163

    .line 291
    const-string v2, "BackupManagerService"

    const-string v3, "apk present but ACCEPT"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_162
    .catch Ljava/io/IOException; {:try_start_151 .. :try_end_162} :catch_f3

    .line 297
    const/4 v0, 0x0

    .line 312
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_163
    move-object v3, v6

    move-object/from16 v32, v7

    move-object v15, v9

    goto/16 :goto_1e3

    .line 260
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :pswitch_169
    :try_start_169
    iget-object v2, v6, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b8

    .line 262
    const-string v2, "BackupManagerService"

    const-string v3, "APK file; installing"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move v5, v8

    move-object v8, v2

    .line 266
    .local v8, "installerPackageName":Ljava/lang/String;
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 267
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v15, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;
    :try_end_190
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_190} :catch_1c5

    .line 266
    move-object/from16 v16, v2

    move-object v2, v10

    move-object/from16 v5, v16

    move-object/from16 v31, v6

    move-object v6, v15

    .line 266
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .local v31, "info":Lcom/android/server/backup/FileMetadata;
    move-object v15, v7

    move-object/from16 v7, v31

    .line 266
    .end local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .local v15, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    move-object/from16 v32, v15

    move-object v15, v9

    move-object v9, v14

    .line 266
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v15, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :try_start_19f
    invoke-static/range {v2 .. v9}, Lcom/android/server/backup/utils/RestoreUtils;->installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;)Z

    move-result v2

    .line 272
    .local v2, "isSuccessfullyInstalled":Z
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v2, :cond_1aa

    .line 273
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_1ac

    .line 274
    :cond_1aa
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    .line 272
    :goto_1ac
    invoke-virtual {v3, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    move-object/from16 v3, v31

    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->size:J

    .line 278
    .end local v31    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    invoke-virtual {v15, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 279
    const/4 v4, 0x1

    return v4

    .line 283
    .end local v2    # "isSuccessfullyInstalled":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v8    # "installerPackageName":Ljava/lang/String;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :cond_1b8
    move-object v3, v6

    move-object/from16 v32, v7

    move-object v15, v9

    .line 283
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v2, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c3
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1c3} :catch_1f2

    .line 284
    const/4 v0, 0x0

    .line 286
    goto :goto_1e3

    .line 551
    .end local v0    # "okay":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_1c5
    move-exception v0

    move/from16 v4, p6

    move-object/from16 v49, v9

    move-object/from16 v43, v14

    move-object/from16 v30, p7

    .line 551
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_64f

    .line 254
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v0    # "okay":Z
    .restart local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v13    # "pkg":Ljava/lang/String;
    :pswitch_1d0
    move-object v3, v6

    move-object/from16 v32, v7

    move-object v15, v9

    .line 254
    .end local v6    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    const/4 v0, 0x0

    .line 255
    goto :goto_1e3

    .line 305
    :goto_1d6
    :try_start_1d6
    const-string v4, "Invalid policy from manifest"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v0, 0x0

    .line 307
    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v2, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :goto_1e3
    invoke-static {v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z

    move-result v2
    :try_end_1e7
    .catch Ljava/io/IOException; {:try_start_1d6 .. :try_end_1e7} :catch_630

    if-eqz v2, :cond_1fb

    :try_start_1e9
    iget-object v2, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->isCanonicalFilePath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1fc

    goto :goto_1fb

    .line 551
    .end local v0    # "okay":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_1f2
    move-exception v0

    move/from16 v4, p6

    move-object/from16 v43, v14

    move-object/from16 v49, v15

    goto/16 :goto_fa

    .line 313
    .restart local v0    # "okay":Z
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v13    # "pkg":Ljava/lang/String;
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_1fb
    :goto_1fb
    const/4 v0, 0x0

    .line 321
    .end local v0    # "okay":Z
    .local v2, "okay":Z
    :cond_1fc
    move v2, v0

    if-eqz v2, :cond_274

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;
    :try_end_201
    .catch Ljava/io/IOException; {:try_start_1e9 .. :try_end_201} :catch_1f2

    if-nez v0, :cond_274

    .line 327
    :try_start_203
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 328
    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v13, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 333
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v0, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23a

    .line 340
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->shouldForceClearAppDataOnFullRestore(Ljava/lang/String;)Z

    move-result v0

    .line 342
    .local v0, "forceClear":Z
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v4, :cond_228

    if-eqz v0, :cond_235

    .line 344
    :cond_228
    const-string v4, "BackupManagerService"

    const-string v5, "Clearing app data preparatory to full restore"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v13, v5}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;Z)V

    .line 354
    :cond_235
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v4, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 363
    .end local v0    # "forceClear":Z
    :cond_23a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setUpPipes()V

    .line 364
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 366
    iput-object v13, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_24a
    .catch Ljava/io/IOException; {:try_start_203 .. :try_end_24a} :catch_24d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_203 .. :try_end_24a} :catch_24b

    goto :goto_24e

    .line 369
    :catch_24b
    move-exception v0

    goto :goto_24f

    .line 367
    :catch_24d
    move-exception v0

    .line 371
    :goto_24e
    nop

    .line 373
    :goto_24f
    :try_start_24f
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-nez v0, :cond_274

    .line 374
    const-string v0, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create agent for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v2, 0x0

    .line 376
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 377
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    :cond_274
    if-eqz v2, :cond_29f

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29f

    .line 384
    const-string v0, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restoring data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " but agent is for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29e
    .catch Ljava/io/IOException; {:try_start_24f .. :try_end_29e} :catch_1f2

    .line 386
    const/4 v2, 0x0

    .line 393
    :cond_29f
    if-eqz v2, :cond_5da

    .line 394
    const/4 v6, 0x1

    .line 395
    .local v6, "agentSuccess":Z
    :try_start_2a2
    iget-wide v7, v3, Lcom/android/server/backup/FileMetadata;->size:J

    .line 396
    .local v7, "toCopy":J
    const-string v0, "com.android.sharedstoragebackup"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2aa
    .catch Ljava/io/IOException; {:try_start_2a2 .. :try_end_2aa} :catch_5cf

    move v9, v0

    .line 397
    .local v9, "isSharedStorage":Z
    if-eqz v9, :cond_2b4

    .line 398
    :try_start_2ad
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getSharedBackupAgentTimeoutMillis()J

    move-result-wide v16
    :try_end_2b3
    .catch Ljava/io/IOException; {:try_start_2ad .. :try_end_2b3} :catch_1f2

    goto :goto_2ba

    .line 399
    :cond_2b4
    :try_start_2b4
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getRestoreAgentTimeoutMillis()J

    move-result-wide v16
    :try_end_2ba
    .catch Ljava/io/IOException; {:try_start_2b4 .. :try_end_2ba} :catch_5cf

    :goto_2ba
    move-wide/from16 v35, v16

    .line 401
    .local v35, "timeout":J
    :try_start_2bc
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    const/16 v38, 0x1

    move-object/from16 v33, v0

    move/from16 v34, p6

    move-object/from16 v37, v4

    invoke-virtual/range {v33 .. v38}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 406
    const-string/jumbo v0, "obb"

    iget-object v4, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2d4
    .catch Ljava/io/IOException; {:try_start_2bc .. :try_end_2d4} :catch_4b3
    .catch Landroid/os/RemoteException; {:try_start_2bc .. :try_end_2d4} :catch_491

    if-eqz v0, :cond_3ac

    .line 408
    :try_start_2d6
    const-string v0, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Restoring OBB file for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v18, v4, v5

    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_2ff
    .catch Ljava/io/IOException; {:try_start_2d6 .. :try_end_2ff} :catch_39b
    .catch Landroid/os/RemoteException; {:try_start_2d6 .. :try_end_2ff} :catch_38a

    move/from16 v39, v2

    :try_start_301
    iget v2, v3, Lcom/android/server/backup/FileMetadata;->type:I
    :try_end_303
    .catch Ljava/io/IOException; {:try_start_301 .. :try_end_303} :catch_37b
    .catch Landroid/os/RemoteException; {:try_start_301 .. :try_end_303} :catch_36c

    .line 411
    .end local v2    # "okay":Z
    .local v39, "okay":Z
    move/from16 v40, v6

    :try_start_305
    iget-object v6, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;
    :try_end_307
    .catch Ljava/io/IOException; {:try_start_305 .. :try_end_307} :catch_35f
    .catch Landroid/os/RemoteException; {:try_start_305 .. :try_end_307} :catch_352

    .line 411
    .end local v6    # "agentSuccess":Z
    .local v40, "agentSuccess":Z
    move-wide/from16 v41, v7

    :try_start_309
    iget-wide v7, v3, Lcom/android/server/backup/FileMetadata;->mode:J
    :try_end_30b
    .catch Ljava/io/IOException; {:try_start_309 .. :try_end_30b} :catch_347
    .catch Landroid/os/RemoteException; {:try_start_309 .. :try_end_30b} :catch_33c

    .line 411
    .end local v7    # "toCopy":J
    .local v41, "toCopy":J
    move-object/from16 v43, v14

    move-object/from16 v44, v15

    :try_start_30f
    iget-wide v14, v3, Lcom/android/server/backup/FileMetadata;->mtime:J
    :try_end_311
    .catch Ljava/io/IOException; {:try_start_30f .. :try_end_311} :catch_335
    .catch Landroid/os/RemoteException; {:try_start_30f .. :try_end_311} :catch_32e

    .line 411
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .local v44, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    move/from16 v45, v9

    :try_start_313
    iget-object v9, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 414
    .end local v9    # "isSharedStorage":Z
    .local v45, "isSharedStorage":Z
    invoke-virtual {v9}, Lcom/android/server/backup/BackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v28

    .line 411
    move-object/from16 v16, v0

    move-object/from16 v17, v13

    move-wide/from16 v19, v4

    move/from16 v21, v2

    move-object/from16 v22, v6

    move-wide/from16 v23, v7

    move-wide/from16 v25, v14

    move/from16 v27, p6

    invoke-virtual/range {v16 .. v28}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_32c
    .catch Ljava/io/IOException; {:try_start_313 .. :try_end_32c} :catch_412
    .catch Landroid/os/RemoteException; {:try_start_313 .. :try_end_32c} :catch_40d

    goto/16 :goto_450

    .line 452
    .end local v45    # "isSharedStorage":Z
    .restart local v9    # "isSharedStorage":Z
    :catch_32e
    move-exception v0

    move/from16 v45, v9

    move-object/from16 v46, v13

    .line 452
    .end local v9    # "isSharedStorage":Z
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_4a0

    .line 447
    .end local v45    # "isSharedStorage":Z
    .restart local v9    # "isSharedStorage":Z
    :catch_335
    move-exception v0

    move/from16 v45, v9

    move-object/from16 v46, v13

    .line 447
    .end local v9    # "isSharedStorage":Z
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_4c2

    .line 452
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_33c
    move-exception v0

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    move-object/from16 v46, v13

    .line 452
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_4a0

    .line 447
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_347
    move-exception v0

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    move-object/from16 v46, v13

    .line 447
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_4c2

    .line 452
    .end local v41    # "toCopy":J
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_352
    move-exception v0

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    move-object/from16 v46, v13

    .line 452
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_4a0

    .line 447
    .end local v41    # "toCopy":J
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_35f
    move-exception v0

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    move-object/from16 v46, v13

    .line 447
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_4c2

    .line 452
    .end local v40    # "agentSuccess":Z
    .end local v41    # "toCopy":J
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_36c
    move-exception v0

    move/from16 v40, v6

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    move-object/from16 v46, v13

    .line 452
    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v40    # "agentSuccess":Z
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_4a0

    .line 447
    .end local v40    # "agentSuccess":Z
    .end local v41    # "toCopy":J
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_37b
    move-exception v0

    move/from16 v40, v6

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    move-object/from16 v46, v13

    .line 447
    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v40    # "agentSuccess":Z
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_4c2

    .line 452
    .end local v39    # "okay":Z
    .end local v40    # "agentSuccess":Z
    .end local v41    # "toCopy":J
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v2    # "okay":Z
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_38a
    move-exception v0

    move/from16 v39, v2

    move/from16 v40, v6

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    move-object/from16 v46, v13

    .line 452
    .end local v2    # "okay":Z
    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v39    # "okay":Z
    .restart local v40    # "agentSuccess":Z
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_4a0

    .line 447
    .end local v39    # "okay":Z
    .end local v40    # "agentSuccess":Z
    .end local v41    # "toCopy":J
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v2    # "okay":Z
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_39b
    move-exception v0

    move/from16 v39, v2

    move/from16 v40, v6

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    move-object/from16 v46, v13

    .line 447
    .end local v2    # "okay":Z
    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v39    # "okay":Z
    .restart local v40    # "agentSuccess":Z
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    goto/16 :goto_4c2

    .line 415
    .end local v39    # "okay":Z
    .end local v40    # "agentSuccess":Z
    .end local v41    # "toCopy":J
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .restart local v2    # "okay":Z
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :cond_3ac
    move/from16 v39, v2

    move/from16 v40, v6

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    .line 415
    .end local v2    # "okay":Z
    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v39    # "okay":Z
    .restart local v40    # "agentSuccess":Z
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    :try_start_3b8
    const-string/jumbo v0, "k"

    iget-object v2, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3c1
    .catch Ljava/io/IOException; {:try_start_3b8 .. :try_end_3c1} :catch_48d
    .catch Landroid/os/RemoteException; {:try_start_3b8 .. :try_end_3c1} :catch_489

    if-eqz v0, :cond_417

    .line 419
    :try_start_3c3
    const-string v0, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restoring key-value file for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v0, Lcom/android/server/backup/KeyValueAdbRestoreEngine;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 425
    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v18

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v20, v4, v5

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move/from16 v22, p6

    invoke-direct/range {v16 .. v22}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerServiceInterface;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V

    .line 427
    .local v0, "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v4, "restore-key-value-runner"

    invoke-direct {v2, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_40c
    .catch Ljava/io/IOException; {:try_start_3c3 .. :try_end_40c} :catch_412
    .catch Landroid/os/RemoteException; {:try_start_3c3 .. :try_end_40c} :catch_40d

    .line 428
    .end local v0    # "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    goto :goto_450

    .line 452
    :catch_40d
    move-exception v0

    move-object/from16 v46, v13

    goto/16 :goto_4a0

    .line 447
    :catch_412
    move-exception v0

    move-object/from16 v46, v13

    goto/16 :goto_4c2

    .line 436
    :cond_417
    :try_start_417
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v2, "system"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_422
    .catch Ljava/io/IOException; {:try_start_417 .. :try_end_422} :catch_48d
    .catch Landroid/os/RemoteException; {:try_start_417 .. :try_end_422} :catch_489

    if-eqz v0, :cond_453

    .line 437
    :try_start_424
    const-string v0, "BackupManagerService"

    const-string/jumbo v2, "system process agent - spinning a thread"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v0, Lcom/android/server/backup/restore/RestoreFileRunnable;

    iget-object v2, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x0

    aget-object v20, v5, v6

    move-object/from16 v16, v0

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v3

    move/from16 v21, p6

    invoke-direct/range {v16 .. v21}, Lcom/android/server/backup/restore/RestoreFileRunnable;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    .line 440
    .local v0, "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v4, "restore-sys-runner"

    invoke-direct {v2, v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_44f
    .catch Ljava/io/IOException; {:try_start_424 .. :try_end_44f} :catch_412
    .catch Landroid/os/RemoteException; {:try_start_424 .. :try_end_44f} :catch_40d

    .line 441
    .end local v0    # "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    nop

    .line 458
    .end local v13    # "pkg":Ljava/lang/String;
    .local v46, "pkg":Ljava/lang/String;
    :goto_450
    move-object/from16 v46, v13

    goto :goto_47f

    .line 442
    .end local v46    # "pkg":Ljava/lang/String;
    .restart local v13    # "pkg":Ljava/lang/String;
    :cond_453
    :try_start_453
    iget-object v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v15, v0, v2

    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->size:J

    iget v0, v3, Lcom/android/server/backup/FileMetadata;->type:I

    iget-object v2, v3, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-wide v7, v3, Lcom/android/server/backup/FileMetadata;->mode:J
    :try_end_464
    .catch Ljava/io/IOException; {:try_start_453 .. :try_end_464} :catch_48d
    .catch Landroid/os/RemoteException; {:try_start_453 .. :try_end_464} :catch_489

    move-object/from16 v46, v13

    :try_start_466
    iget-wide v12, v3, Lcom/android/server/backup/FileMetadata;->mtime:J

    .end local v13    # "pkg":Ljava/lang/String;
    .restart local v46    # "pkg":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 444
    invoke-virtual {v9}, Lcom/android/server/backup/BackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v26

    .line 442
    move-wide/from16 v16, v4

    move/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v20, v6

    move-wide/from16 v21, v7

    move-wide/from16 v23, v12

    move/from16 v25, p6

    invoke-interface/range {v14 .. v26}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_47f
    .catch Ljava/io/IOException; {:try_start_466 .. :try_end_47f} :catch_487
    .catch Landroid/os/RemoteException; {:try_start_466 .. :try_end_47f} :catch_485

    .line 458
    :goto_47f
    nop

    .line 461
    move/from16 v2, v39

    move/from16 v6, v40

    goto :goto_4cd

    .line 452
    :catch_485
    move-exception v0

    goto :goto_4a0

    .line 447
    :catch_487
    move-exception v0

    goto :goto_4c2

    .line 452
    .end local v46    # "pkg":Ljava/lang/String;
    .restart local v13    # "pkg":Ljava/lang/String;
    :catch_489
    move-exception v0

    move-object/from16 v46, v13

    .line 452
    .end local v13    # "pkg":Ljava/lang/String;
    .restart local v46    # "pkg":Ljava/lang/String;
    goto :goto_4a0

    .line 447
    .end local v46    # "pkg":Ljava/lang/String;
    .restart local v13    # "pkg":Ljava/lang/String;
    :catch_48d
    move-exception v0

    move-object/from16 v46, v13

    .line 447
    .end local v13    # "pkg":Ljava/lang/String;
    .restart local v46    # "pkg":Ljava/lang/String;
    goto :goto_4c2

    .line 452
    .end local v39    # "okay":Z
    .end local v40    # "agentSuccess":Z
    .end local v41    # "toCopy":J
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v45    # "isSharedStorage":Z
    .end local v46    # "pkg":Ljava/lang/String;
    .restart local v2    # "okay":Z
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v13    # "pkg":Ljava/lang/String;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_491
    move-exception v0

    move/from16 v39, v2

    move/from16 v40, v6

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v46, v13

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    .line 455
    .end local v2    # "okay":Z
    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v39    # "okay":Z
    .restart local v40    # "agentSuccess":Z
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    .restart local v46    # "pkg":Ljava/lang/String;
    :goto_4a0
    :try_start_4a0
    const-string v2, "BackupManagerService"

    const-string v4, "Agent crashed during full restore"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a7
    .catch Ljava/io/IOException; {:try_start_4a0 .. :try_end_4a7} :catch_4aa

    .line 456
    const/4 v6, 0x0

    .line 457
    .end local v40    # "agentSuccess":Z
    .restart local v6    # "agentSuccess":Z
    const/4 v0, 0x0

    .line 457
    .end local v39    # "okay":Z
    .local v0, "okay":Z
    goto :goto_4cc

    .line 551
    .end local v0    # "okay":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v6    # "agentSuccess":Z
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v35    # "timeout":J
    .end local v41    # "toCopy":J
    .end local v45    # "isSharedStorage":Z
    .end local v46    # "pkg":Ljava/lang/String;
    :catch_4aa
    move-exception v0

    move/from16 v4, p6

    move-object/from16 v49, v44

    .line 551
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v49    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :goto_4af
    move-object/from16 v12, p4

    goto/16 :goto_fa

    .line 447
    .end local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v49    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v2    # "okay":Z
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v6    # "agentSuccess":Z
    .restart local v7    # "toCopy":J
    .restart local v9    # "isSharedStorage":Z
    .restart local v13    # "pkg":Ljava/lang/String;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v35    # "timeout":J
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catch_4b3
    move-exception v0

    move/from16 v39, v2

    move/from16 v40, v6

    move-wide/from16 v41, v7

    move/from16 v45, v9

    move-object/from16 v46, v13

    move-object/from16 v43, v14

    move-object/from16 v44, v15

    .line 449
    .end local v2    # "okay":Z
    .end local v6    # "agentSuccess":Z
    .end local v7    # "toCopy":J
    .end local v9    # "isSharedStorage":Z
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v0, "e":Ljava/io/IOException;
    .restart local v39    # "okay":Z
    .restart local v40    # "agentSuccess":Z
    .restart local v41    # "toCopy":J
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v45    # "isSharedStorage":Z
    .restart local v46    # "pkg":Ljava/lang/String;
    :goto_4c2
    :try_start_4c2
    const-string v2, "BackupManagerService"

    const-string v4, "Couldn\'t establish restore"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c9
    .catch Ljava/io/IOException; {:try_start_4c2 .. :try_end_4c9} :catch_5c4

    .line 450
    const/4 v6, 0x0

    .line 451
    .end local v40    # "agentSuccess":Z
    .restart local v6    # "agentSuccess":Z
    const/4 v0, 0x0

    .line 458
    .end local v39    # "okay":Z
    .local v0, "okay":Z
    nop

    .line 461
    .end local v0    # "okay":Z
    .restart local v2    # "okay":Z
    :goto_4cc
    move v2, v0

    :goto_4cd
    if-eqz v2, :cond_567

    .line 465
    const/4 v0, 0x1

    .line 468
    .local v0, "pipeOkay":Z
    :try_start_4d0
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;
    :try_end_4d2
    .catch Ljava/io/IOException; {:try_start_4d0 .. :try_end_4d2} :catch_55f

    if-eqz v4, :cond_53f

    :try_start_4d4
    iget-object v4, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_53f

    .line 469
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v7, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    aget-object v7, v7, v5

    .line 470
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move v9, v0

    move-wide/from16 v7, v41

    .line 471
    .end local v0    # "pipeOkay":Z
    .end local v41    # "toCopy":J
    .local v4, "pipe":Ljava/io/FileOutputStream;
    .restart local v7    # "toCopy":J
    .local v9, "pipeOkay":Z
    :goto_4eb
    const-wide/16 v12, 0x0

    cmp-long v0, v7, v12

    if-lez v0, :cond_53c

    .line 472
    array-length v0, v11

    int-to-long v12, v0

    cmp-long v0, v7, v12

    if-lez v0, :cond_4f9

    .line 473
    array-length v0, v11

    goto :goto_4fa

    :cond_4f9
    long-to-int v0, v7

    :goto_4fa
    move v12, v0

    .line 474
    .local v12, "toRead":I
    const/4 v13, 0x0

    invoke-virtual {v10, v11, v13, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    move v13, v0

    .line 475
    .local v13, "nRead":I
    if-ltz v13, :cond_50c

    .line 476
    iget-wide v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    move/from16 v47, v6

    int-to-long v5, v13

    .line 476
    .end local v6    # "agentSuccess":Z
    .local v47, "agentSuccess":Z
    add-long/2addr v14, v5

    iput-wide v14, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J
    :try_end_50b
    .catch Ljava/io/IOException; {:try_start_4d4 .. :try_end_50b} :catch_4aa

    goto :goto_50e

    .line 478
    .end local v47    # "agentSuccess":Z
    .restart local v6    # "agentSuccess":Z
    :cond_50c
    move/from16 v47, v6

    .line 478
    .end local v6    # "agentSuccess":Z
    .restart local v47    # "agentSuccess":Z
    :goto_50e
    if-gtz v13, :cond_511

    .line 479
    goto :goto_544

    .line 481
    :cond_511
    int-to-long v5, v13

    sub-long/2addr v7, v5

    .line 485
    if-eqz v9, :cond_537

    .line 487
    const/4 v5, 0x0

    :try_start_516
    invoke-virtual {v4, v11, v5, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_519
    .catch Ljava/io/IOException; {:try_start_516 .. :try_end_519} :catch_51a

    .line 492
    goto :goto_537

    .line 488
    :catch_51a
    move-exception v0

    move-object v5, v0

    .line 489
    .local v0, "e":Ljava/io/IOException;
    :try_start_51c
    const-string v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to write to restore pipe: "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 489
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_536
    .catch Ljava/io/IOException; {:try_start_51c .. :try_end_536} :catch_4aa

    .line 491
    const/4 v9, 0x0

    .line 494
    .end local v0    # "e":Ljava/io/IOException;
    .end local v12    # "toRead":I
    .end local v13    # "nRead":I
    :cond_537
    :goto_537
    nop

    .line 470
    move/from16 v6, v47

    const/4 v5, 0x1

    goto :goto_4eb

    .line 500
    .end local v4    # "pipe":Ljava/io/FileOutputStream;
    .end local v47    # "agentSuccess":Z
    .restart local v6    # "agentSuccess":Z
    :cond_53c
    move/from16 v47, v6

    .line 500
    .end local v6    # "agentSuccess":Z
    .restart local v47    # "agentSuccess":Z
    goto :goto_544

    .line 500
    .end local v7    # "toCopy":J
    .end local v9    # "pipeOkay":Z
    .end local v47    # "agentSuccess":Z
    .local v0, "pipeOkay":Z
    .restart local v6    # "agentSuccess":Z
    .restart local v41    # "toCopy":J
    :cond_53f
    move/from16 v47, v6

    .line 500
    .end local v6    # "agentSuccess":Z
    .restart local v47    # "agentSuccess":Z
    move v9, v0

    move-wide/from16 v7, v41

    .line 500
    .end local v0    # "pipeOkay":Z
    .end local v41    # "toCopy":J
    .restart local v7    # "toCopy":J
    .restart local v9    # "pipeOkay":Z
    :goto_544
    :try_start_544
    iget-wide v4, v3, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_546
    .catch Ljava/io/IOException; {:try_start_544 .. :try_end_546} :catch_55f

    move-object/from16 v6, v44

    :try_start_548
    invoke-virtual {v6, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 504
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v6, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;
    :try_end_54d
    .catch Ljava/io/IOException; {:try_start_548 .. :try_end_54d} :catch_558

    move/from16 v4, p6

    :try_start_54f
    invoke-virtual {v0, v4}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v0
    :try_end_553
    .catch Ljava/io/IOException; {:try_start_54f .. :try_end_553} :catch_556

    .line 509
    .end local v9    # "pipeOkay":Z
    .end local v47    # "agentSuccess":Z
    .local v0, "agentSuccess":Z
    move/from16 v47, v0

    goto :goto_56f

    .line 551
    .end local v0    # "agentSuccess":Z
    .end local v2    # "okay":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "toCopy":J
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v35    # "timeout":J
    .end local v45    # "isSharedStorage":Z
    .end local v46    # "pkg":Ljava/lang/String;
    :catch_556
    move-exception v0

    goto :goto_55b

    :catch_558
    move-exception v0

    move/from16 v4, p6

    .line 551
    .end local v6    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v49    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :goto_55b
    move-object/from16 v49, v6

    goto/16 :goto_4af

    .line 551
    .end local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .end local v49    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catch_55f
    move-exception v0

    move/from16 v4, p6

    move-object/from16 v49, v44

    move-object/from16 v12, p4

    goto :goto_5cb

    .line 509
    .restart local v2    # "okay":Z
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .local v6, "agentSuccess":Z
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v35    # "timeout":J
    .restart local v41    # "toCopy":J
    .restart local v45    # "isSharedStorage":Z
    .restart local v46    # "pkg":Ljava/lang/String;
    :cond_567
    move/from16 v4, p6

    move/from16 v47, v6

    move-object/from16 v6, v44

    move-wide/from16 v7, v41

    .line 509
    .end local v41    # "toCopy":J
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v6, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v7    # "toCopy":J
    .restart local v47    # "agentSuccess":Z
    :goto_56f
    if-nez v47, :cond_5bc

    .line 510
    :try_start_571
    const-string v0, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Agent failure restoring "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v46

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v46    # "pkg":Ljava/lang/String;
    .local v9, "pkg":Ljava/lang/String;
    const-string v12, "; ending restore"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v5, 0x12

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 513
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 514
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 515
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 516
    iget-object v0, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v12, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5ab
    .catch Ljava/io/IOException; {:try_start_571 .. :try_end_5ab} :catch_5b8

    .line 520
    move-object/from16 v12, p4

    if-eqz v12, :cond_5c1

    .line 521
    const/4 v0, -0x2

    :try_start_5b0
    invoke-virtual {v1, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 522
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V
    :try_end_5b7
    .catch Ljava/io/IOException; {:try_start_5b0 .. :try_end_5b7} :catch_5fb

    .line 523
    return v13

    .line 551
    .end local v2    # "okay":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "toCopy":J
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v35    # "timeout":J
    .end local v45    # "isSharedStorage":Z
    .end local v47    # "agentSuccess":Z
    :catch_5b8
    move-exception v0

    move-object/from16 v12, p4

    goto :goto_5fc

    .line 531
    .restart local v2    # "okay":Z
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v46    # "pkg":Ljava/lang/String;
    :cond_5bc
    move-object/from16 v9, v46

    const/4 v5, 0x0

    move-object/from16 v12, p4

    .line 531
    .end local v46    # "pkg":Ljava/lang/String;
    .restart local v9    # "pkg":Ljava/lang/String;
    :cond_5c1
    move/from16 v39, v2

    goto :goto_5e3

    .line 551
    .end local v2    # "okay":Z
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v6    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_5c4
    move-exception v0

    move/from16 v4, p6

    move-object/from16 v12, p4

    move-object/from16 v49, v44

    .line 551
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v49    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :goto_5cb
    move-object/from16 v30, p7

    .line 551
    .end local v44    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v6    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto/16 :goto_64f

    .line 551
    .end local v6    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v49    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catch_5cf
    move-exception v0

    move/from16 v4, p6

    move-object/from16 v43, v14

    move-object/from16 v49, v15

    move-object/from16 v30, p7

    .line 551
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v6    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    goto/16 :goto_64f

    .line 531
    .end local v6    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v2    # "okay":Z
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .local v13, "pkg":Ljava/lang/String;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :cond_5da
    move/from16 v4, p6

    move/from16 v39, v2

    move-object v9, v13

    move-object/from16 v43, v14

    move-object v6, v15

    const/4 v5, 0x0

    .line 531
    .end local v2    # "okay":Z
    .end local v13    # "pkg":Ljava/lang/String;
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v6    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v9    # "pkg":Ljava/lang/String;
    .restart local v39    # "okay":Z
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :goto_5e3
    if-nez v39, :cond_62d

    .line 535
    :try_start_5e5
    iget-wide v7, v3, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v13, 0x1ff

    add-long/2addr v7, v13

    const-wide/16 v13, -0x200

    and-long/2addr v7, v13

    .line 536
    .local v7, "bytesToConsume":J
    :goto_5ed
    const-wide/16 v13, 0x0

    cmp-long v0, v7, v13

    if-lez v0, :cond_62d

    .line 537
    array-length v0, v11
    :try_end_5f4
    .catch Ljava/io/IOException; {:try_start_5e5 .. :try_end_5f4} :catch_627

    int-to-long v13, v0

    cmp-long v0, v7, v13

    if-lez v0, :cond_600

    .line 538
    :try_start_5f9
    array-length v0, v11
    :try_end_5fa
    .catch Ljava/io/IOException; {:try_start_5f9 .. :try_end_5fa} :catch_5fb

    goto :goto_601

    .line 551
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "bytesToConsume":J
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v39    # "okay":Z
    :catch_5fb
    move-exception v0

    .line 551
    .end local v6    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v49    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :goto_5fc
    move-object/from16 v49, v6

    goto/16 :goto_fa

    .line 538
    .end local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .end local v49    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v6    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v7    # "bytesToConsume":J
    .restart local v9    # "pkg":Ljava/lang/String;
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v39    # "okay":Z
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :cond_600
    long-to-int v0, v7

    .line 539
    .local v0, "toRead":I
    :goto_601
    const/4 v2, 0x0

    :try_start_602
    invoke-virtual {v10, v11, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v13
    :try_end_606
    .catch Ljava/io/IOException; {:try_start_602 .. :try_end_606} :catch_627

    int-to-long v13, v13

    .line 540
    .local v13, "nRead":J
    const-wide/16 v15, 0x0

    cmp-long v2, v13, v15

    if-ltz v2, :cond_618

    .line 541
    move-object/from16 v49, v6

    :try_start_60f
    iget-wide v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    .line 541
    .end local v6    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v49    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    add-long/2addr v5, v13

    iput-wide v5, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J
    :try_end_614
    .catch Ljava/io/IOException; {:try_start_60f .. :try_end_614} :catch_615

    goto :goto_61a

    .line 551
    .end local v0    # "toRead":I
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "bytesToConsume":J
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v13    # "nRead":J
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v39    # "okay":Z
    :catch_615
    move-exception v0

    goto/16 :goto_fa

    .line 543
    .end local v49    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v0    # "toRead":I
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v6    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v7    # "bytesToConsume":J
    .restart local v9    # "pkg":Ljava/lang/String;
    .restart local v13    # "nRead":J
    .restart local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .restart local v39    # "okay":Z
    :cond_618
    move-object/from16 v49, v6

    .line 543
    .end local v6    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v49    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :goto_61a
    const-wide/16 v5, 0x0

    cmp-long v2, v13, v5

    if-gtz v2, :cond_621

    .line 544
    goto :goto_641

    .line 546
    :cond_621
    sub-long/2addr v7, v13

    .line 547
    .end local v0    # "toRead":I
    .end local v13    # "nRead":J
    nop

    .line 535
    move-object/from16 v6, v49

    const/4 v5, 0x0

    goto :goto_5ed

    .line 551
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v7    # "bytesToConsume":J
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v32    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v39    # "okay":Z
    .end local v49    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v6    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_627
    move-exception v0

    move-object/from16 v49, v6

    move-object/from16 v30, p7

    .line 551
    .end local v6    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v49    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto :goto_64f

    .line 557
    .end local v49    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v6    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :cond_62d
    move-object/from16 v49, v6

    .line 557
    .end local v6    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v49    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto :goto_641

    .line 551
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v49    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :catch_630
    move-exception v0

    move/from16 v4, p6

    move-object/from16 v43, v14

    move-object/from16 v49, v15

    move-object/from16 v30, p7

    .line 551
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v15    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v49    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    goto :goto_64f

    .line 557
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v49    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .local v4, "info":Lcom/android/server/backup/FileMetadata;
    .local v9, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    :cond_63a
    move-object v3, v4

    move-object/from16 v49, v9

    move-object/from16 v43, v14

    move/from16 v4, p6

    .line 557
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v49    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :goto_641
    move-object/from16 v30, p7

    .line 556
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :goto_643
    move-object/from16 v50, v3

    goto :goto_671

    .line 551
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .end local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local v49    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .restart local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    :catch_646
    move-exception v0

    move/from16 v4, p6

    move-object/from16 v49, v9

    move-object/from16 v43, v14

    move-object/from16 v30, p7

    .line 553
    .end local v9    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    .end local v14    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .end local p7    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .local v0, "e":Ljava/io/IOException;
    .restart local v30    # "monitor":Landroid/app/backup/IBackupManagerMonitor;
    .restart local v43    # "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    .restart local v49    # "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :goto_64f
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "io exception on restore socket read: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 556
    nop

    .line 556
    .end local v0    # "e":Ljava/io/IOException;
    const/16 v50, 0x0

    .line 556
    .local v50, "info":Lcom/android/server/backup/FileMetadata;
    :goto_671
    move-object/from16 v0, v50

    .line 560
    .end local v50    # "info":Lcom/android/server/backup/FileMetadata;
    .local v0, "info":Lcom/android/server/backup/FileMetadata;
    if-nez v0, :cond_684

    .line 564
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 565
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 566
    if-eqz p2, :cond_685

    .line 567
    iget-object v3, v1, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1, v3}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    goto :goto_685

    .line 570
    :cond_684
    const/4 v15, 0x0

    :cond_685
    :goto_685
    if-eqz v0, :cond_68a

    const/16 v48, 0x1

    goto :goto_68c

    :cond_68a
    move/from16 v48, v15

    :goto_68c
    return v48

    nop

    :pswitch_data_68e
    .packed-switch 0x1
        :pswitch_1d0
        :pswitch_169
        :pswitch_151
    .end packed-switch
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 664
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v0, :cond_15

    .line 667
    :try_start_4
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v0, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 671
    goto :goto_15

    .line 668
    :catch_a
    move-exception v0

    .line 669
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BackupManagerService"

    const-string v2, "full restore observer went away: restorePackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 673
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-void
.end method
