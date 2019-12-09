.class public Lcom/android/server/backup/internal/PerformBackupTask;
.super Ljava/lang/Object;
.source "PerformBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformBackupTask"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/BackupManagerService;

.field private mAgentBinder:Landroid/app/IBackupAgent;

.field private final mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

.field private mBackupData:Landroid/os/ParcelFileDescriptor;

.field private mBackupDataName:Ljava/io/File;

.field private volatile mCancelAll:Z

.field private final mCancelLock:Ljava/lang/Object;

.field private final mCurrentOpToken:I

.field private mCurrentPackage:Landroid/content/pm/PackageInfo;

.field private mCurrentState:Lcom/android/server/backup/internal/BackupState;

.field private volatile mEphemeralOpToken:I

.field private mFinished:Z

.field private final mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

.field private mJournal:Lcom/android/server/backup/DataChangedJournal;

.field private final mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field private mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field private mNewState:Landroid/os/ParcelFileDescriptor;

.field private mNewStateName:Ljava/io/File;

.field private final mNonIncremental:Z

.field private mObserver:Landroid/app/backup/IBackupObserver;

.field private mOriginalQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/internal/BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingFullBackups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/internal/BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Landroid/os/ParcelFileDescriptor;

.field private mSavedStateName:Ljava/io/File;

.field private mStateDir:Ljava/io/File;

.field private mStatus:I

.field private final mTransportClient:Lcom/android/server/backup/transport/TransportClient;

.field private final mUserInitiated:Z


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 813
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

.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/backup/DataChangedJournal;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Ljava/util/List;ZZ)V
    .registers 35
    .param p1, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "transportClient"    # Lcom/android/server/backup/transport/TransportClient;
    .param p3, "dirName"    # Ljava/lang/String;
    .param p5, "journal"    # Lcom/android/server/backup/DataChangedJournal;
    .param p6, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p7, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p8, "listener"    # Lcom/android/server/backup/internal/OnTaskFinishedListener;
    .param p10, "userInitiated"    # Z
    .param p11, "nonIncremental"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/backup/BackupManagerService;",
            "Lcom/android/server/backup/transport/TransportClient;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backup/internal/BackupRequest;",
            ">;",
            "Lcom/android/server/backup/DataChangedJournal;",
            "Landroid/app/backup/IBackupObserver;",
            "Landroid/app/backup/IBackupManagerMonitor;",
            "Lcom/android/server/backup/internal/OnTaskFinishedListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .local p4, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/backup/internal/BackupRequest;>;"
    .local p9, "pendingFullBackups":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    move-object/from16 v14, p1

    .line 155
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelLock:Ljava/lang/Object;

    .line 156
    iput-object v14, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 157
    move-object/from16 v15, p2

    iput-object v15, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 158
    move-object/from16 v13, p4

    iput-object v13, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    .line 160
    move-object/from16 v12, p5

    iput-object v12, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    .line 161
    move-object/from16 v11, p6

    iput-object v11, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 162
    move-object/from16 v10, p7

    iput-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 163
    if-eqz p8, :cond_30

    move-object/from16 v0, p8

    goto :goto_32

    :cond_30
    sget-object v0, Lcom/android/server/backup/internal/OnTaskFinishedListener;->NOP:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    :goto_32
    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    .line 164
    move-object/from16 v8, p9

    iput-object v8, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    .line 165
    move/from16 v7, p10

    iput-boolean v7, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mUserInitiated:Z

    .line 166
    move/from16 v5, p11

    iput-boolean v5, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mNonIncremental:Z

    .line 167
    nop

    .line 168
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->getAgentTimeoutParameters()Lcom/android/server/backup/BackupAgentTimeoutParameters;

    move-result-object v0

    const-string v2, "Timeout parameters cannot be null"

    .line 167
    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupAgentTimeoutParameters;

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 171
    new-instance v0, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v2

    move-object/from16 v4, p3

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentOpToken:I

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mFinished:Z

    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->getCurrentOpLock()Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    .line 177
    :try_start_6a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->isBackupOperationInProgress()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_87

    .line 179
    const-string v0, "PerformBackupTask"

    const-string v3, "Skipping backup since one is already in progress."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iput-boolean v2, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelAll:Z

    .line 182
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 183
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentState:Lcom/android/server/backup/internal/BackupState;

    .line 184
    const-string v0, "Skipped. Backup already in progress."

    invoke-virtual {v14, v0}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto :goto_d9

    .line 186
    :cond_87
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->INITIAL:Lcom/android/server/backup/internal/BackupState;

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentState:Lcom/android/server/backup/internal/BackupState;

    .line 187
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v9, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 188
    .local v9, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    iget-object v2, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    .line 189
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    .line 190
    .local v6, "fullBackups":[Ljava/lang/String;
    new-instance v0, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v3, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v2, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    iget-object v8, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    move-object/from16 v20, v8

    iget-boolean v8, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mUserInitiated:Z

    move-object/from16 v21, v2

    move-object v2, v0

    move-object/from16 v22, v3

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v17

    move/from16 v7, v18

    move/from16 v18, v8

    move-object/from16 v17, v20

    move-object/from16 v8, v19

    move-object/from16 v10, v22

    move-object/from16 v11, v21

    move-object/from16 v12, v17

    move/from16 v13, v18

    invoke-direct/range {v2 .. v13}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/transport/TransportClient;Landroid/app/backup/IFullBackupRestoreObserver;[Ljava/lang/String;ZLcom/android/server/backup/FullBackupJob;Ljava/util/concurrent/CountDownLatch;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;Lcom/android/server/backup/internal/OnTaskFinishedListener;Z)V

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    .line 198
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/internal/PerformBackupTask;->registerTask()V

    .line 199
    const-string v0, "STATE => INITIAL"

    invoke-virtual {v14, v0}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 201
    .end local v6    # "fullBackups":[Ljava/lang/String;
    .end local v9    # "latch":Ljava/util/concurrent/CountDownLatch;
    :goto_d9
    monitor-exit v16

    .line 202
    return-void

    .line 201
    :catchall_db
    move-exception v0

    monitor-exit v16
    :try_end_dd
    .catchall {:try_start_6a .. :try_end_dd} :catchall_db

    throw v0
.end method

.method private SHA1Checksum([B)Ljava/lang/String;
    .registers 6
    .param p1, "input"    # [B

    .line 764
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 765
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_2a

    .end local v0    # "md":Ljava/security/MessageDigest;
    move-object v0, v1

    .line 769
    .local v0, "checksum":[B
    nop

    .line 768
    nop

    .line 771
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 772
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_16
    array-length v3, v0

    if-ge v2, v3, :cond_25

    .line 773
    aget-byte v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 772
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 775
    .end local v2    # "i":I
    :cond_25
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 766
    .end local v0    # "checksum":[B
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :catch_2a
    move-exception v0

    .line 767
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "PerformBackupTask"

    const-string v2, "Unable to use SHA-1!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const-string v1, "00"

    return-object v1
.end method

.method private backupPm()V
    .registers 5

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->makeMetadataAgent()Lcom/android/server/backup/PackageManagerBackupAgent;

    move-result-object v0

    .line 365
    .local v0, "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    const-string v1, "@pm@"

    .line 367
    invoke-virtual {v0}, Lcom/android/server/backup/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v2

    .line 365
    invoke-direct {p0, v1, v2}, Lcom/android/server/backup/internal/PerformBackupTask;->invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;)I

    move-result v1

    iput v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 368
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PMBA invoke: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_58
    .catchall {:try_start_0 .. :try_end_39} :catchall_56

    .line 382
    .end local v0    # "pmAgent":Lcom/android/server/backup/PackageManagerBackupAgent;
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exiting backupPm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 383
    iget v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v0, :cond_ad

    goto :goto_96

    .line 382
    :catchall_56
    move-exception v0

    goto :goto_ae

    .line 374
    :catch_58
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    :try_start_59
    const-string v1, "PerformBackupTask"

    const-string v2, "Error in backup thread during pm"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in backup thread during pm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 377
    const/16 v1, -0x3e8

    iput v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I
    :try_end_7a
    .catchall {:try_start_59 .. :try_end_7a} :catchall_56

    .line 382
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exiting backupPm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 383
    iget v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v0, :cond_ad

    .line 386
    :goto_96
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 387
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 388
    invoke-direct {p0, v1}, Lcom/android/server/backup/internal/PerformBackupTask;->invokeAgentToObserverError(I)I

    move-result v1

    .line 387
    invoke-static {v0, v1}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 389
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v0}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    .line 392
    :cond_ad
    return-void

    .line 382
    :goto_ae
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exiting backupPm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 383
    iget v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v1, :cond_e1

    .line 386
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 387
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 388
    invoke-direct {p0, v2}, Lcom/android/server/backup/internal/PerformBackupTask;->invokeAgentToObserverError(I)I

    move-result v2

    .line 387
    invoke-static {v1, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 389
    sget-object v1, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v1}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    :cond_e1
    throw v0
.end method

.method private beginBackup()V
    .registers 11

    .line 254
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->clearBackupTrace()V

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 256
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "beginBackup: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/internal/BackupRequest;

    .line 258
    .local v2, "req":Lcom/android/server/backup/internal/BackupRequest;
    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 259
    iget-object v3, v2, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .end local v2    # "req":Lcom/android/server/backup/internal/BackupRequest;
    goto :goto_17

    .line 261
    :cond_2e
    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 265
    .end local v0    # "b":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 269
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 270
    const-string v1, "PerformBackupTask"

    const-string v2, "Backup begun with an empty queue - nothing to do."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v2, "queue empty at begin"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v1, v0}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 273
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v0}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    .line 274
    return-void

    .line 280
    :cond_6c
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    .line 284
    iget-boolean v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNonIncremental:Z

    .line 290
    .local v1, "skipPm":Z
    move v2, v0

    .line 290
    .local v2, "i":I
    :goto_79
    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_9d

    .line 291
    const-string v3, "@pm@"

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    .line 292
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/internal/BackupRequest;

    iget-object v4, v4, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    .line 291
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 296
    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 297
    const/4 v1, 0x0

    .line 298
    goto :goto_9d

    .line 290
    :cond_9a
    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    .line 303
    .end local v2    # "i":I
    :cond_9d
    :goto_9d
    const-string v2, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Beginning backup of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " targets"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    const-string v4, "@pm@"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 307
    .local v2, "pmState":Ljava/io/File;
    const/16 v3, -0x3e8

    :try_start_c9
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v5, "PBT.beginBackup()"

    invoke-virtual {v4, v5}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v4

    .line 308
    .local v4, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v5

    .line 309
    .local v5, "transportName":Ljava/lang/String;
    const/16 v6, 0xb05

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 312
    iget v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v6, :cond_146

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_146

    .line 313
    const-string v6, "PerformBackupTask"

    const-string v7, "Initializing (wiping) backup state and transport storage"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "initializing transport "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 315
    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v6, v7}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 316
    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v6

    iput v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 318
    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "transport.initializeDevice() == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 319
    iget v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v6, :cond_138

    .line 320
    const/16 v6, 0xb0b

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v6, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_146

    .line 322
    :cond_138
    const/16 v0, 0xb06

    const-string v6, "(initialize)"

    invoke-static {v0, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 323
    const-string v0, "PerformBackupTask"

    const-string v6, "Transport error in initializeDevice()"

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_146
    :goto_146
    if-eqz v1, :cond_155

    .line 328
    const-string v0, "PerformBackupTask"

    const-string v6, "Skipping backup of package metadata."

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v0}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    goto :goto_15e

    .line 335
    :cond_155
    iget v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v0, :cond_15e

    .line 336
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->BACKUP_PM:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v0}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_15e} :catch_18e
    .catchall {:try_start_c9 .. :try_end_15e} :catchall_18c

    .line 346
    .end local v4    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v5    # "transportName":Ljava/lang/String;
    :cond_15e
    :goto_15e
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exiting prelim: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 347
    iget v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v0, :cond_1cb

    .line 350
    :goto_17a
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v0, v4}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 352
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 354
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v0}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    goto :goto_1cb

    .line 346
    :catchall_18c
    move-exception v0

    goto :goto_1cc

    .line 339
    :catch_18e
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    :try_start_18f
    const-string v4, "PerformBackupTask"

    const-string v5, "Error in backup thread during init"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in backup thread during init: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 342
    iput v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I
    :try_end_1ae
    .catchall {:try_start_18f .. :try_end_1ae} :catchall_18c

    .line 346
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exiting prelim: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 347
    iget v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v0, :cond_1cb

    goto :goto_17a

    .line 357
    :cond_1cb
    :goto_1cb
    return-void

    .line 346
    :goto_1cc
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exiting prelim: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 347
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v4, :cond_1f9

    .line 350
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v4, v5}, Lcom/android/server/backup/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    .line 352
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v4, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 354
    sget-object v3, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v3}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    :cond_1f9
    throw v0
.end method

.method private clearAgentState()V
    .registers 4

    .line 1185
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_a

    .line 1187
    :cond_9
    goto :goto_b

    .line 1186
    :catch_a
    move-exception v0

    .line 1189
    :goto_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_15

    .line 1191
    :cond_14
    goto :goto_16

    .line 1190
    :catch_15
    move-exception v0

    .line 1193
    :goto_16
    :try_start_16
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1f} :catch_20

    .line 1195
    :cond_1f
    goto :goto_21

    .line 1194
    :catch_20
    move-exception v0

    .line 1196
    :goto_21
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getCurrentOpLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1200
    :try_start_28
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getCurrentOperations()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mEphemeralOpToken:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1201
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iput-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 1202
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_6c

    .line 1205
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_6b

    .line 1206
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unbinding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 1208
    :try_start_5c
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_69} :catch_6a

    .line 1210
    goto :goto_6b

    :catch_6a
    move-exception v0

    .line 1212
    :cond_6b
    :goto_6b
    return-void

    .line 1202
    :catchall_6c
    move-exception v1

    :try_start_6d
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method private clearMetadata()V
    .registers 4

    .line 656
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    const-string v2, "@pm@"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 657
    .local v0, "pmState":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 658
    :cond_12
    return-void
.end method

.method private errorCleanup()V
    .registers 2

    .line 1177
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1178
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1179
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->clearAgentState()V

    .line 1180
    return-void
.end method

.method private executeNextState(Lcom/android/server/backup/internal/BackupState;)V
    .registers 5
    .param p1, "nextState"    # Lcom/android/server/backup/internal/BackupState;

    .line 1219
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeNextState => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 1220
    iput-object p1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentState:Lcom/android/server/backup/internal/BackupState;

    .line 1221
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1223
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1224
    return-void
.end method

.method private failAgent(Landroid/app/IBackupAgent;Ljava/lang/String;)V
    .registers 7
    .param p1, "agent"    # Landroid/app/IBackupAgent;
    .param p2, "message"    # Ljava/lang/String;

    .line 754
    :try_start_0
    invoke-interface {p1, p2}, Landroid/app/IBackupAgent;->fail(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 757
    goto :goto_1f

    .line 755
    :catch_4
    move-exception v0

    .line 756
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PerformBackupTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error conveying failure to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void
.end method

.method private finalizeBackup()V
    .registers 8

    .line 548
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v1, "finishing"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/internal/BackupRequest;

    .line 553
    .local v1, "req":Lcom/android/server/backup/internal/BackupRequest;
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 554
    .end local v1    # "req":Lcom/android/server/backup/internal/BackupRequest;
    goto :goto_d

    .line 560
    :cond_21
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v0}, Lcom/android/server/backup/DataChangedJournal;->delete()Z

    move-result v0

    if-nez v0, :cond_45

    .line 561
    const-string v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to remove backup journal file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mJournal:Lcom/android/server/backup/DataChangedJournal;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_45
    const-string v0, "PBT.finalizeBackup()"

    .line 568
    .local v0, "callerLogString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getCurrentToken()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_97

    iget v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v1, :cond_97

    .line 570
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v2, "success; recording token"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 572
    :try_start_5f
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 573
    invoke-virtual {v1, v0}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v1

    .line 574
    .local v1, "transport":Lcom/android/internal/backup/IBackupTransport;
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-interface {v1}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->setCurrentToken(J)V

    .line 575
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->writeRestoreTokens()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_73} :catch_74

    .line 581
    .end local v1    # "transport":Lcom/android/internal/backup/IBackupTransport;
    goto :goto_97

    .line 576
    :catch_74
    move-exception v1

    .line 579
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transport threw reporting restore set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v3, "transport threw returning token"

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 587
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_97
    :goto_97
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 588
    :try_start_9e
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->setBackupRunning(Z)V

    .line 589
    iget v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    const/16 v4, -0x3e9

    if-ne v2, v4, :cond_ef

    .line 594
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v4, "init required; rerunning"

    invoke-virtual {v2, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_b2
    .catchall {:try_start_9e .. :try_end_b2} :catchall_191

    .line 596
    :try_start_b2
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getTransportManager()Lcom/android/server/backup/TransportManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    .line 597
    invoke-virtual {v4}, Lcom/android/server/backup/transport/TransportClient;->getTransportComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/backup/TransportManager;->getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    .line 598
    .local v2, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/BackupManagerService;->getPendingInits()Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_cb} :catch_cc
    .catchall {:try_start_b2 .. :try_end_cb} :catchall_191

    .line 602
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_e7

    .line 599
    :catch_cc
    move-exception v2

    .line 600
    .local v2, "e":Ljava/lang/Exception;
    :try_start_cd
    const-string v4, "PerformBackupTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to query transport name for init: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_e7
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->clearMetadata()V

    .line 604
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->backupNow()V

    .line 606
    :cond_ef
    monitor-exit v1
    :try_end_f0
    .catchall {:try_start_cd .. :try_end_f0} :catchall_191

    .line 608
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->clearBackupTrace()V

    .line 610
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->unregisterTask()V

    .line 612
    iget-boolean v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelAll:Z

    if-nez v1, :cond_13a

    iget v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v1, :cond_13a

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    if-eqz v1, :cond_13a

    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    .line 613
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13a

    .line 614
    const-string v1, "PerformBackupTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting full backups for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mPendingFullBackups:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 619
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    const-string v3, "full-transport-requested"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_17d

    .line 620
    :cond_13a
    iget-boolean v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelAll:Z

    if-eqz v1, :cond_154

    .line 621
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v1, v0}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 622
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    if-eqz v1, :cond_14c

    .line 623
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 625
    :cond_14c
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v2, -0x7d3

    invoke-static {v1, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    goto :goto_17d

    .line 628
    :cond_154
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mListener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    invoke-interface {v1, v0}, Lcom/android/server/backup/internal/OnTaskFinishedListener;->onFinished(Ljava/lang/String;)V

    .line 629
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFullBackupTask:Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;

    invoke-virtual {v1}, Lcom/android/server/backup/fullbackup/PerformFullTransportBackupTask;->unregisterTask()V

    .line 630
    iget v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    const/16 v2, -0x3ed

    if-eq v1, v2, :cond_177

    if-eqz v1, :cond_177

    const/16 v2, -0x3e8

    packed-switch v1, :pswitch_data_196

    .line 643
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v1, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    goto :goto_17d

    .line 638
    :pswitch_171
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v1, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 640
    goto :goto_17d

    .line 634
    :cond_177
    :pswitch_177
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v1, v3}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupFinished(Landroid/app/backup/IBackupObserver;I)V

    .line 636
    nop

    .line 648
    :goto_17d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFinished:Z

    .line 649
    const-string v1, "PerformBackupTask"

    const-string v2, "K/V backup pass finished."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 652
    return-void

    .line 606
    :catchall_191
    move-exception v2

    :try_start_192
    monitor-exit v1
    :try_end_193
    .catchall {:try_start_192 .. :try_end_193} :catchall_191

    throw v2

    nop

    nop

    :pswitch_data_196
    .packed-switch -0x3ea
        :pswitch_177
        :pswitch_171
    .end packed-switch
.end method

.method private invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;)I
    .registers 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Landroid/app/IBackupAgent;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 664
    const-string v0, "PerformBackupTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invokeAgentForBackup on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invoking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 668
    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    const-string v2, "blank_state"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v9, v0

    .line 669
    .local v9, "blankStateName":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-direct {v0, v1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedStateName:Ljava/io/File;

    .line 670
    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    .line 671
    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNewStateName:Ljava/io/File;

    .line 674
    const/4 v0, 0x0

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 675
    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 676
    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 678
    const/4 v1, 0x0

    .line 679
    .local v1, "callingAgent":Z
    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v0

    iput v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mEphemeralOpToken:I

    .line 684
    const/4 v10, 0x0

    :try_start_8e
    const-string v0, "@pm@"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 687
    new-instance v0, Landroid/content/pm/PackageInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInfo;-><init>()V

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 688
    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iput-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 694
    :cond_a1
    nop

    .line 695
    iget-boolean v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNonIncremental:Z

    if-eqz v0, :cond_a8

    move-object v0, v9

    goto :goto_aa

    :cond_a8
    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedStateName:Ljava/io/File;

    :goto_aa
    const/high16 v2, 0x18000000

    .line 694
    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    .line 699
    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    const/high16 v2, 0x3c000000    # 0.0078125f

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    .line 704
    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_dc

    .line 705
    const-string v0, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELinux restorecon failed on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_dc
    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNewStateName:Ljava/io/File;

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    .line 713
    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v2, "PBT.invokeAgentForBackup()"

    .line 714
    invoke-virtual {v0, v2}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 716
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v0, v8, v10}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v15
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_f0} :catch_143
    .catchall {:try_start_8e .. :try_end_f0} :catchall_141

    .line 717
    .local v15, "quota":J
    const/16 v20, 0x1

    .line 720
    .end local v1    # "callingAgent":Z
    .local v20, "callingAgent":Z
    :try_start_f2
    iget-object v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v2, "setting timeout"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 721
    iget-object v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentTimeoutParameters:Lcom/android/server/backup/BackupAgentTimeoutParameters;

    .line 722
    invoke-virtual {v1}, Lcom/android/server/backup/BackupAgentTimeoutParameters;->getKvBackupAgentTimeoutMillis()J

    move-result-wide v3

    .line 723
    .local v3, "kvBackupAgentTimeoutMillis":J
    iget-object v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget v2, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mEphemeralOpToken:I

    const/4 v6, 0x0

    move-object v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 725
    iget-object v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v2, "calling agent doBackup()"

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 727
    iget-object v12, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedState:Landroid/os/ParcelFileDescriptor;

    iget-object v13, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    iget-object v14, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNewState:Landroid/os/ParcelFileDescriptor;

    iget v1, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mEphemeralOpToken:I

    iget-object v2, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 729
    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v18

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->getTransportFlags()I

    move-result v19

    .line 727
    move-object/from16 v11, p2

    move/from16 v17, v1

    invoke-interface/range {v11 .. v19}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I)V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_129} :catch_13d
    .catchall {:try_start_f2 .. :try_end_129} :catchall_139

    .line 739
    .end local v0    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v3    # "kvBackupAgentTimeoutMillis":J
    .end local v15    # "quota":J
    iget-boolean v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNonIncremental:Z

    if-eqz v0, :cond_130

    .line 740
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 748
    :cond_130
    iget-object v0, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v1, "invoke success"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 749
    return v10

    .line 739
    :catchall_139
    move-exception v0

    move/from16 v1, v20

    goto :goto_19b

    .line 730
    :catch_13d
    move-exception v0

    move/from16 v1, v20

    goto :goto_144

    .line 739
    .end local v20    # "callingAgent":Z
    .restart local v1    # "callingAgent":Z
    :catchall_141
    move-exception v0

    goto :goto_19b

    .line 730
    :catch_143
    move-exception v0

    .line 731
    .local v0, "e":Ljava/lang/Exception;
    :goto_144
    :try_start_144
    const-string v2, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error invoking for backup on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v2, v7, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 733
    const/16 v2, 0xb07

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v10

    const/4 v4, 0x1

    .line 734
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 733
    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 735
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/internal/PerformBackupTask;->errorCleanup()V
    :try_end_18c
    .catchall {:try_start_144 .. :try_end_18c} :catchall_141

    .line 736
    if-eqz v1, :cond_191

    const/16 v2, -0x3eb

    goto :goto_193

    .line 737
    :cond_191
    const/16 v2, -0x3e8

    .line 739
    :goto_193
    iget-boolean v3, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNonIncremental:Z

    if-eqz v3, :cond_19a

    .line 740
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 736
    :cond_19a
    return v2

    .line 739
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_19b
    iget-boolean v2, v7, Lcom/android/server/backup/internal/PerformBackupTask;->mNonIncremental:Z

    if-eqz v2, :cond_1a2

    .line 740
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_1a2
    throw v0
.end method

.method private invokeAgentToObserverError(I)I
    .registers 3
    .param p1, "error"    # I

    .line 395
    const/16 v0, -0x3eb

    if-ne p1, v0, :cond_5

    .line 396
    return v0

    .line 398
    :cond_5
    const/16 v0, -0x3e8

    return v0
.end method

.method private invokeNextAgent()V
    .registers 12

    .line 405
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 406
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invoke q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 412
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v0}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    .line 413
    return-void

    .line 417
    :cond_2e
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/backup/internal/BackupRequest;

    .line 418
    .local v1, "request":Lcom/android/server/backup/internal/BackupRequest;
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 420
    const-string v2, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "starting key/value backup of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "launch agent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 429
    const/16 v2, -0x7d2

    const/16 v3, -0x3ec

    const/4 v4, 0x0

    const/16 v5, -0x3eb

    :try_start_72
    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 430
    .local v6, "pm":Landroid/content/pm/PackageManager;
    iget-object v7, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    const/high16 v8, 0x8000000

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    .line 432
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v7, v6}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v7

    const/16 v8, -0x7d1

    if-nez v7, :cond_112

    .line 436
    const-string v7, "PerformBackupTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " no longer supports backup; skipping"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v9, "skipping - not eligible, completion is noop"

    invoke-virtual {v7, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 441
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v9, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 444
    sget-object v7, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V
    :try_end_c1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_72 .. :try_end_c1} :catch_29b
    .catchall {:try_start_72 .. :try_end_c1} :catchall_299

    .line 505
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 509
    iget v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v7, :cond_10a

    .line 510
    sget-object v7, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    .line 511
    .local v7, "nextState":Lcom/android/server/backup/internal/BackupState;
    iput-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 515
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v5, :cond_f3

    .line 520
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 521
    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 522
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e9

    sget-object v7, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    .line 523
    :cond_e9
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 524
    invoke-static {v0, v2, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_106

    .line 526
    :cond_f3
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v3, :cond_101

    .line 529
    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 530
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    .line 531
    invoke-static {v0, v3, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_106

    .line 535
    :cond_101
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->revertAndEndBackup()V

    .line 536
    sget-object v7, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    .line 539
    :goto_106
    invoke-direct {p0, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    .line 540
    .end local v7    # "nextState":Lcom/android/server/backup/internal/BackupState;
    goto :goto_111

    .line 542
    :cond_10a
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v2, "expecting completion/timeout callback"

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 445
    :goto_111
    return-void

    .line 448
    :cond_112
    :try_start_112
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-static {v7}, Lcom/android/server/backup/utils/AppBackupUtils;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_19e

    .line 452
    const-string v7, "PerformBackupTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " requests full-data rather than key/value; skipping"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v9, "skipping - fullBackupOnly, completion is noop"

    invoke-virtual {v7, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 458
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v9, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 461
    sget-object v7, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V
    :try_end_14d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_112 .. :try_end_14d} :catch_29b
    .catchall {:try_start_112 .. :try_end_14d} :catchall_299

    .line 505
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 509
    iget v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v7, :cond_196

    .line 510
    sget-object v7, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    .line 511
    .restart local v7    # "nextState":Lcom/android/server/backup/internal/BackupState;
    iput-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 515
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v5, :cond_17f

    .line 520
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 521
    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 522
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_175

    sget-object v7, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    .line 523
    :cond_175
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 524
    invoke-static {v0, v2, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_192

    .line 526
    :cond_17f
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v3, :cond_18d

    .line 529
    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 530
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    .line 531
    invoke-static {v0, v3, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_192

    .line 535
    :cond_18d
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->revertAndEndBackup()V

    .line 536
    sget-object v7, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    .line 539
    :goto_192
    invoke-direct {p0, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    .line 540
    .end local v7    # "nextState":Lcom/android/server/backup/internal/BackupState;
    goto :goto_19d

    .line 542
    :cond_196
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v2, "expecting completion/timeout callback"

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 462
    :goto_19d
    return-void

    .line 465
    :cond_19e
    :try_start_19e
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v7}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    if-eqz v7, :cond_20f

    .line 469
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v9, "skipping - stopped"

    invoke-virtual {v7, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 470
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v9, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 473
    sget-object v7, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    invoke-direct {p0, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V
    :try_end_1be
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19e .. :try_end_1be} :catch_29b
    .catchall {:try_start_19e .. :try_end_1be} :catchall_299

    .line 505
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 509
    iget v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v7, :cond_207

    .line 510
    sget-object v7, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    .line 511
    .restart local v7    # "nextState":Lcom/android/server/backup/internal/BackupState;
    iput-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 515
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v5, :cond_1f0

    .line 520
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 521
    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 522
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e6

    sget-object v7, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    .line 523
    :cond_1e6
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 524
    invoke-static {v0, v2, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_203

    .line 526
    :cond_1f0
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v3, :cond_1fe

    .line 529
    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 530
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    .line 531
    invoke-static {v0, v3, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_203

    .line 535
    :cond_1fe
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->revertAndEndBackup()V

    .line 536
    sget-object v7, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    .line 539
    :goto_203
    invoke-direct {p0, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    .line 540
    .end local v7    # "nextState":Lcom/android/server/backup/internal/BackupState;
    goto :goto_20e

    .line 542
    :cond_207
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v2, "expecting completion/timeout callback"

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 474
    :goto_20e
    return-void

    .line 477
    :cond_20f
    move-object v7, v4

    .line 479
    .local v7, "agent":Landroid/app/IBackupAgent;
    :try_start_210
    iget-object v8, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v8}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    new-instance v9, Landroid/os/WorkSource;

    iget-object v10, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v9, v10}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v8, v9}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 481
    iget-object v8, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v9, v0}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v8

    move-object v7, v8

    .line 483
    iget-object v8, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "agent bound; a? = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_23f

    const/4 v10, 0x1

    goto :goto_240

    :cond_23f
    move v10, v0

    :goto_240
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 484
    if-eqz v7, :cond_257

    .line 485
    iput-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 486
    iget-object v8, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-direct {p0, v8, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->invokeAgentForBackup(Ljava/lang/String;Landroid/app/IBackupAgent;)I

    move-result v8

    iput v8, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    goto :goto_259

    .line 492
    :cond_257
    iput v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I
    :try_end_259
    .catch Ljava/lang/SecurityException; {:try_start_210 .. :try_end_259} :catch_25a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_210 .. :try_end_259} :catch_29b
    .catchall {:try_start_210 .. :try_end_259} :catchall_299

    .line 499
    :goto_259
    goto :goto_26b

    .line 494
    :catch_25a
    move-exception v8

    .line 496
    .local v8, "ex":Ljava/lang/SecurityException;
    :try_start_25b
    const-string v9, "PerformBackupTask"

    const-string v10, "error in bind/backup"

    invoke-static {v9, v10, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    iput v5, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 498
    iget-object v9, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v10, "agent SE"

    invoke-virtual {v9, v10}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V
    :try_end_26b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25b .. :try_end_26b} :catch_29b
    .catchall {:try_start_25b .. :try_end_26b} :catchall_299

    .line 505
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "agent":Landroid/app/IBackupAgent;
    .end local v8    # "ex":Ljava/lang/SecurityException;
    :goto_26b
    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 509
    iget v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v6, :cond_2f6

    .line 510
    sget-object v6, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    .line 511
    .local v6, "nextState":Lcom/android/server/backup/internal/BackupState;
    iput-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 515
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v5, :cond_294

    .line 520
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 521
    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 522
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d5

    sget-object v6, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    goto :goto_2d5

    .line 526
    :cond_294
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v3, :cond_2ed

    goto :goto_2e3

    .line 505
    .end local v6    # "nextState":Lcom/android/server/backup/internal/BackupState;
    :catchall_299
    move-exception v6

    goto :goto_2ff

    .line 500
    :catch_29b
    move-exception v6

    .line 501
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_29c
    const-string v7, "PerformBackupTask"

    const-string v8, "Package does not exist; skipping"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v8, "no such package"

    invoke-virtual {v7, v8}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 503
    iput v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I
    :try_end_2ad
    .catchall {:try_start_29c .. :try_end_2ad} :catchall_299

    .line 505
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v6}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 509
    iget v6, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v6, :cond_2f6

    .line 510
    sget-object v6, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    .line 511
    .local v6, "nextState":Lcom/android/server/backup/internal/BackupState;
    iput-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 515
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v5, :cond_2df

    .line 520
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 521
    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 522
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2d5

    sget-object v6, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    .line 523
    :cond_2d5
    :goto_2d5
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 524
    invoke-static {v0, v2, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_2f2

    .line 526
    :cond_2df
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v3, :cond_2ed

    .line 529
    :goto_2e3
    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 530
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    .line 531
    invoke-static {v0, v3, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_2f2

    .line 535
    :cond_2ed
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->revertAndEndBackup()V

    .line 536
    sget-object v6, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    .line 539
    :goto_2f2
    invoke-direct {p0, v6}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    .line 540
    .end local v6    # "nextState":Lcom/android/server/backup/internal/BackupState;
    goto :goto_2fe

    .line 542
    :cond_2f6
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v2, "expecting completion/timeout callback"

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 544
    nop

    .line 545
    :goto_2fe
    return-void

    .line 505
    :goto_2ff
    iget-object v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 509
    iget v7, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v7, :cond_348

    .line 510
    sget-object v7, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    .line 511
    .local v7, "nextState":Lcom/android/server/backup/internal/BackupState;
    iput-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    .line 515
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v5, :cond_331

    .line 520
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 521
    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 522
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_327

    sget-object v7, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    .line 523
    :cond_327
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 524
    invoke-static {v0, v2, v5}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_344

    .line 526
    :cond_331
    iget v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v4, v3, :cond_33f

    .line 529
    iput v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 530
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    iget-object v3, v1, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    .line 531
    invoke-static {v0, v3, v2}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    goto :goto_344

    .line 535
    :cond_33f
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->revertAndEndBackup()V

    .line 536
    sget-object v7, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    .line 539
    :goto_344
    invoke-direct {p0, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    .line 540
    .end local v7    # "nextState":Lcom/android/server/backup/internal/BackupState;
    goto :goto_34f

    .line 542
    :cond_348
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v2, "expecting completion/timeout callback"

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    :goto_34f
    throw v6
.end method

.method private registerTask()V
    .registers 7

    .line 208
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getCurrentOpLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 209
    :try_start_7
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService;->getCurrentOperations()Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentOpToken:I

    new-instance v3, Lcom/android/server/backup/internal/Operation;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v4, p0, v5}, Lcom/android/server/backup/internal/Operation;-><init>(ILcom/android/server/backup/BackupRestoreTask;I)V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    monitor-exit v0

    .line 212
    return-void

    .line 211
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method private revertAndEndBackup()V
    .registers 7

    .line 1154
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v1, "transport error; reverting"

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 1160
    :try_start_8
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v1, "PBT.revertAndEndBackup()"

    .line 1161
    invoke-virtual {v0, v1}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    .line 1162
    .local v0, "transport":Lcom/android/internal/backup/IBackupTransport;
    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_16

    .line 1162
    .end local v0    # "transport":Lcom/android/internal/backup/IBackupTransport;
    move-wide v0, v1

    .line 1166
    .local v0, "delay":J
    goto :goto_33

    .line 1163
    .end local v0    # "delay":J
    :catch_16
    move-exception v0

    .line 1164
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PerformBackupTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to contact transport for recommended backoff: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    const-wide/16 v0, 0x0

    .line 1167
    .local v0, "delay":J
    :goto_33
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 1168
    invoke-virtual {v3}, Lcom/android/server/backup/BackupManagerService;->getConstants()Lcom/android/server/backup/BackupManagerConstants;

    move-result-object v3

    .line 1167
    invoke-static {v2, v0, v1, v3}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    .line 1170
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mOriginalQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/backup/internal/BackupRequest;

    .line 1171
    .local v3, "request":Lcom/android/server/backup/internal/BackupRequest;
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v3, Lcom/android/server/backup/internal/BackupRequest;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    .line 1172
    .end local v3    # "request":Lcom/android/server/backup/internal/BackupRequest;
    goto :goto_48

    .line 1174
    :cond_5c
    return-void
.end method

.method private unregisterTask()V
    .registers 3

    .line 218
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->removeOperation(I)V

    .line 219
    return-void
.end method

.method private writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 781
    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetState(Ljava/lang/String;I)[B

    move-result-object v0

    .line 784
    .local v0, "widgetState":[B
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mStateDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_widget"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 785
    .local v1, "widgetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    .line 794
    .local v2, "priorStateExists":Z
    if-nez v2, :cond_26

    if-nez v0, :cond_26

    .line 796
    return-void

    .line 803
    :cond_26
    const/4 v3, 0x0

    .line 804
    .local v3, "newChecksum":Ljava/lang/String;
    const/4 v4, 0x0

    if-eqz v0, :cond_62

    .line 805
    invoke-direct {p0, v0}, Lcom/android/server/backup/internal/PerformBackupTask;->SHA1Checksum([B)Ljava/lang/String;

    move-result-object v3

    .line 806
    if-eqz v2, :cond_62

    .line 809
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 808
    .local v5, "fin":Ljava/io/FileInputStream;
    nop

    .line 810
    :try_start_36
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_3b} :catch_5c
    .catchall {:try_start_36 .. :try_end_3b} :catchall_5a

    .line 808
    .local v6, "in":Ljava/io/DataInputStream;
    nop

    .line 812
    :try_start_3c
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_40} :catch_50
    .catchall {:try_start_3c .. :try_end_40} :catchall_4d

    .line 813
    .local v7, "priorChecksum":Ljava/lang/String;
    :try_start_40
    invoke-static {v4, v6}, Lcom/android/server/backup/internal/PerformBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_43} :catch_5c
    .catchall {:try_start_40 .. :try_end_43} :catchall_5a

    .line 813
    .end local v6    # "in":Ljava/io/DataInputStream;
    invoke-static {v4, v5}, Lcom/android/server/backup/internal/PerformBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 814
    .end local v5    # "fin":Ljava/io/FileInputStream;
    invoke-static {v3, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 816
    return-void

    .line 813
    .end local v7    # "priorChecksum":Ljava/lang/String;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/DataInputStream;
    :catchall_4d
    move-exception v7

    move-object v8, v4

    goto :goto_56

    .line 808
    :catch_50
    move-exception v7

    :try_start_51
    throw v7
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    .line 813
    :catchall_52
    move-exception v8

    move-object v10, v8

    move-object v8, v7

    move-object v7, v10

    :goto_56
    :try_start_56
    invoke-static {v8, v6}, Lcom/android/server/backup/internal/PerformBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v7
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_5a} :catch_5c
    .catchall {:try_start_56 .. :try_end_5a} :catchall_5a

    .line 813
    .end local v6    # "in":Ljava/io/DataInputStream;
    :catchall_5a
    move-exception v6

    goto :goto_5e

    .line 808
    :catch_5c
    move-exception v4

    :try_start_5d
    throw v4
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5a

    .line 813
    :goto_5e
    invoke-static {v4, v5}, Lcom/android/server/backup/internal/PerformBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v6

    .line 821
    .end local v5    # "fin":Ljava/io/FileInputStream;
    :cond_62
    new-instance v5, Landroid/app/backup/BackupDataOutput;

    invoke-direct {v5, p1}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    .line 822
    .local v5, "out":Landroid/app/backup/BackupDataOutput;
    if-eqz v0, :cond_9f

    .line 824
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 823
    .local v6, "fout":Ljava/io/FileOutputStream;
    nop

    .line 825
    :try_start_6f
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_74} :catch_99
    .catchall {:try_start_6f .. :try_end_74} :catchall_97

    .line 823
    .local v7, "stateOut":Ljava/io/DataOutputStream;
    nop

    .line 827
    :try_start_75
    invoke-virtual {v7, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_78} :catch_8d
    .catchall {:try_start_75 .. :try_end_78} :catchall_8a

    .line 828
    :try_start_78
    invoke-static {v4, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_7b} :catch_99
    .catchall {:try_start_78 .. :try_end_7b} :catchall_97

    .line 828
    .end local v7    # "stateOut":Ljava/io/DataOutputStream;
    invoke-static {v4, v6}, Lcom/android/server/backup/internal/PerformBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 830
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    const-string/jumbo v4, "\uffed\uffedwidget"

    array-length v6, v0

    invoke-virtual {v5, v4, v6}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 831
    array-length v4, v0

    invoke-virtual {v5, v0, v4}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    goto :goto_a9

    .line 828
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v7    # "stateOut":Ljava/io/DataOutputStream;
    :catchall_8a
    move-exception v8

    move-object v9, v4

    goto :goto_93

    .line 823
    :catch_8d
    move-exception v8

    :try_start_8e
    throw v8
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8f

    .line 828
    :catchall_8f
    move-exception v9

    move-object v10, v9

    move-object v9, v8

    move-object v8, v10

    :goto_93
    :try_start_93
    invoke-static {v9, v7}, Lcom/android/server/backup/internal/PerformBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v8
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_93 .. :try_end_97} :catch_99
    .catchall {:try_start_93 .. :try_end_97} :catchall_97

    .line 828
    .end local v7    # "stateOut":Ljava/io/DataOutputStream;
    :catchall_97
    move-exception v7

    goto :goto_9b

    .line 823
    :catch_99
    move-exception v4

    :try_start_9a
    throw v4
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_97

    .line 828
    :goto_9b
    invoke-static {v4, v6}, Lcom/android/server/backup/internal/PerformBackupTask;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v7

    .line 834
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    :cond_9f
    const-string/jumbo v4, "\uffed\uffedwidget"

    const/4 v6, -0x1

    invoke-virtual {v5, v4, v6}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 835
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 837
    :goto_a9
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCancelLock"
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_3
    sget-object v1, Lcom/android/server/backup/internal/PerformBackupTask$1;->$SwitchMap$com$android$server$backup$internal$BackupState:[I

    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentState:Lcom/android/server/backup/internal/BackupState;

    invoke-virtual {v2}, Lcom/android/server/backup/internal/BackupState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_32

    goto :goto_2d

    .line 241
    :pswitch_11
    iget-boolean v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFinished:Z

    if-nez v1, :cond_19

    .line 242
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->finalizeBackup()V

    goto :goto_2d

    .line 244
    :cond_19
    const-string v1, "PerformBackupTask"

    const-string v2, "Duplicate finish of K/V pass"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 237
    :pswitch_21
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->invokeNextAgent()V

    .line 238
    goto :goto_2d

    .line 233
    :pswitch_25
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->backupPm()V

    .line 234
    goto :goto_2d

    .line 229
    :pswitch_29
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->beginBackup()V

    .line 230
    nop

    .line 248
    :goto_2d
    monitor-exit v0

    .line 249
    return-void

    .line 248
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_11
    .end packed-switch
.end method

.method public handleCancel(Z)V
    .registers 11
    .param p1, "cancelAll"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCancelLock"
    .end annotation

    .line 1112
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mEphemeralOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->removeOperation(I)V

    .line 1113
    iget-object v0, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1114
    :try_start_a
    iget-boolean v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mFinished:Z

    if-eqz v1, :cond_10

    .line 1119
    monitor-exit v0

    return-void

    .line 1121
    :cond_10
    iput-boolean p1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelAll:Z

    .line 1122
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_1b

    .line 1123
    iget-object v1, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_1e

    .line 1124
    :cond_1b
    const-string/jumbo v1, "no_package_yet"

    .line 1125
    .local v1, "logPackageName":Ljava/lang/String;
    :goto_1e
    const-string v2, "PerformBackupTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cancel backing up "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    const/16 v2, 0xb07

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1127
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", cancelAll="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 1129
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v3, 0x15

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const-string v7, "android.app.backup.extra.LOG_CANCEL_ALL"

    iget-boolean v8, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelAll:Z

    .line 1132
    invoke-static {v6, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v6

    .line 1129
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 1135
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->errorCleanup()V

    .line 1136
    if-nez p1, :cond_8d

    .line 1141
    nop

    .line 1142
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7e

    sget-object v2, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    goto :goto_80

    :cond_7e
    sget-object v2, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    .line 1141
    :goto_80
    invoke-direct {p0, v2}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    .line 1143
    iget-object v2, p0, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V

    goto :goto_90

    .line 1145
    :cond_8d
    invoke-direct {p0}, Lcom/android/server/backup/internal/PerformBackupTask;->finalizeBackup()V

    .line 1147
    .end local v1    # "logPackageName":Ljava/lang/String;
    :goto_90
    monitor-exit v0

    .line 1148
    return-void

    .line 1147
    :catchall_92
    move-exception v1

    monitor-exit v0
    :try_end_94
    .catchall {:try_start_a .. :try_end_94} :catchall_92

    throw v1
.end method

.method public operationComplete(J)V
    .registers 24
    .param p1, "unusedResult"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCancelLock"
    .end annotation

    move-object/from16 v1, p0

    .line 842
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget v2, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mEphemeralOpToken:I

    invoke-virtual {v0, v2}, Lcom/android/server/backup/BackupManagerService;->removeOperation(I)V

    .line 843
    iget-object v2, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCancelLock:Ljava/lang/Object;

    monitor-enter v2

    .line 845
    :try_start_c
    iget-boolean v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mFinished:Z

    if-eqz v0, :cond_1a

    .line 846
    const-string v0, "PerformBackupTask"

    const-string/jumbo v3, "operationComplete received after task finished."

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    monitor-exit v2

    return-void

    .line 850
    :cond_1a
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_42

    .line 855
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_27

    .line 856
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    goto :goto_29

    :cond_27
    const-string v0, "[none]"

    .line 860
    .local v0, "pkg":Ljava/lang/String;
    :goto_29
    iget-object v3, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "late opComplete; curPkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 861
    monitor-exit v2

    return-void

    .line 864
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_42
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v3, v0

    .line 865
    .local v3, "pkgName":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 866
    .local v4, "filepos":J
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_53
    .catchall {:try_start_c .. :try_end_53} :catchall_39e

    move-object v6, v0

    .line 870
    .local v6, "fd":Ljava/io/FileDescriptor;
    const/high16 v9, 0x10000000

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    :try_start_5a
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_117

    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v12

    if-nez v0, :cond_117

    .line 873
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-static {v0, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object v14, v0

    .line 875
    .local v14, "readFd":Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/app/backup/BackupDataInput;

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v15

    invoke-direct {v0, v15}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_79} :catch_11b
    .catchall {:try_start_5a .. :try_end_79} :catchall_39e

    .line 875
    .local v0, "in":Landroid/app/backup/BackupDataInput;
    :goto_79
    move-object v15, v0

    .line 877
    .end local v0    # "in":Landroid/app/backup/BackupDataInput;
    .local v15, "in":Landroid/app/backup/BackupDataInput;
    :try_start_7a
    invoke-virtual {v15}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 878
    invoke-virtual {v15}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_ff

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const v7, 0xff00

    if-lt v9, v7, :cond_ff

    .line 881
    iget-object v7, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Illegal backup key: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Lcom/android/server/backup/internal/PerformBackupTask;->failAgent(Landroid/app/IBackupAgent;Ljava/lang/String;)V

    .line 882
    iget-object v7, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "illegal key "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 883
    invoke-virtual {v7, v8}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 884
    const/16 v7, 0xb07

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v3, v8, v13

    const-string v9, "bad key"

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 886
    iget-object v7, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/4 v8, 0x5

    iget-object v9, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const-string v12, "android.app.backup.extra.LOG_ILLEGAL_KEY"

    .line 891
    invoke-static {v10, v12, v0}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 886
    const/4 v11, 0x3

    invoke-static {v7, v8, v9, v11, v12}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 894
    iget-object v7, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 896
    iget-object v7, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v8, -0x3eb

    .line 897
    invoke-static {v7, v3, v8}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 899
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/internal/PerformBackupTask;->errorCleanup()V
    :try_end_f8
    .catchall {:try_start_7a .. :try_end_f8} :catchall_110

    .line 906
    if-eqz v14, :cond_fd

    .line 907
    :try_start_fa
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_fa .. :try_end_fd} :catch_11b
    .catchall {:try_start_fa .. :try_end_fd} :catchall_39e

    :cond_fd
    :try_start_fd
    monitor-exit v2
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_39e

    .line 901
    return-void

    .line 903
    :cond_ff
    :try_start_ff
    invoke-virtual {v15}, Landroid/app/backup/BackupDataInput;->skipEntityData()V
    :try_end_102
    .catchall {:try_start_ff .. :try_end_102} :catchall_110

    .line 904
    .end local v0    # "key":Ljava/lang/String;
    nop

    .line 875
    move-object v0, v15

    const/high16 v9, 0x10000000

    const/4 v11, 0x2

    const/4 v12, 0x1

    goto/16 :goto_79

    .line 906
    :cond_10a
    if-eqz v14, :cond_117

    .line 907
    :try_start_10c
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_117

    .line 906
    :catchall_110
    move-exception v0

    if-eqz v14, :cond_116

    .line 907
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_116
    throw v0

    .line 913
    .end local v14    # "readFd":Landroid/os/ParcelFileDescriptor;
    .end local v15    # "in":Landroid/app/backup/BackupDataInput;
    :cond_117
    :goto_117
    invoke-direct {v1, v6, v3}, Lcom/android/server/backup/internal/PerformBackupTask;->writeWidgetPayloadIfAppropriate(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_11a} :catch_11b
    .catchall {:try_start_10c .. :try_end_11a} :catchall_39e

    .line 925
    goto :goto_140

    .line 914
    :catch_11b
    move-exception v0

    move-object v7, v0

    .line 919
    .local v7, "e":Ljava/io/IOException;
    :try_start_11d
    const-string v0, "PerformBackupTask"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to save widget state for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_133
    .catchall {:try_start_11d .. :try_end_133} :catchall_39e

    .line 921
    :try_start_133
    invoke-static {v6, v4, v5}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_136
    .catch Landroid/system/ErrnoException; {:try_start_133 .. :try_end_136} :catch_137
    .catchall {:try_start_133 .. :try_end_136} :catchall_39e

    .line 924
    goto :goto_140

    .line 922
    :catch_137
    move-exception v0

    move-object v8, v0

    .line 923
    .local v0, "ee":Landroid/system/ErrnoException;
    :try_start_139
    const-string v8, "PerformBackupTask"

    const-string v9, "Unable to roll back!"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    .end local v0    # "ee":Landroid/system/ErrnoException;
    .end local v7    # "e":Ljava/io/IOException;
    :goto_140
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getBackupHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v7, 0x11

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 933
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/internal/PerformBackupTask;->clearAgentState()V

    .line 934
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v7, "operation complete"

    invoke-virtual {v0, v7}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 936
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mTransportClient:Lcom/android/server/backup/transport/TransportClient;

    const-string v7, "PBT.operationComplete()"

    invoke-virtual {v0, v7}, Lcom/android/server/backup/transport/TransportClient;->connect(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v0

    move-object v7, v0

    .line 937
    .local v7, "transport":Lcom/android/internal/backup/IBackupTransport;
    const/4 v8, 0x0

    .line 938
    .local v8, "backupData":Landroid/os/ParcelFileDescriptor;
    iput v13, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I
    :try_end_162
    .catchall {:try_start_139 .. :try_end_162} :catchall_39e

    .line 939
    const-wide/16 v11, 0x0

    move-wide v14, v11

    .line 941
    .local v14, "size":J
    const/16 v9, -0x3ee

    :try_start_167
    invoke-static {v7}, Lcom/android/server/backup/transport/TransportUtils;->checkTransportNotNull(Lcom/android/internal/backup/IBackupTransport;)Lcom/android/internal/backup/IBackupTransport;

    .line 942
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v14, v18

    .line 943
    cmp-long v0, v14, v11

    if-lez v0, :cond_212

    .line 944
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v16

    cmp-long v0, v16, v11

    if-nez v0, :cond_182

    const/4 v0, 0x1

    goto :goto_183

    :cond_182
    const/4 v0, 0x0

    .line 945
    .local v0, "isNonIncremental":Z
    :goto_183
    iget v11, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v11, :cond_1a9

    .line 946
    iget-object v11, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    const/high16 v12, 0x10000000

    invoke-static {v11, v12}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    move-object v8, v11

    .line 948
    iget-object v11, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v12, "sending data to transport"

    invoke-virtual {v11, v12}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 951
    iget-boolean v11, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mUserInitiated:Z

    .line 953
    .local v11, "userInitiatedFlag":I
    if-eqz v0, :cond_19e

    .line 954
    const/4 v12, 0x4

    goto :goto_19f

    .line 955
    :cond_19e
    const/4 v12, 0x2

    .line 956
    .local v12, "incrementalFlag":I
    :goto_19f
    or-int v13, v11, v12

    .line 958
    .local v13, "flags":I
    iget-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    invoke-interface {v7, v10, v8, v13}, Lcom/android/internal/backup/IBackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v10

    iput v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 961
    .end local v11    # "userInitiatedFlag":I
    .end local v12    # "incrementalFlag":I
    .end local v13    # "flags":I
    :cond_1a9
    if-eqz v0, :cond_1c1

    iget v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v10, v9, :cond_1c1

    .line 967
    const-string v10, "PerformBackupTask"

    const-string v11, "Transport requested non-incremental but already the case, error"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v11, "Transport requested non-incremental but already the case, error"

    invoke-virtual {v10, v11}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 971
    const/16 v10, -0x3e8

    iput v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 979
    :cond_1c1
    iget-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "data delivered: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 980
    iget v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v10, :cond_203

    .line 981
    iget-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string v11, "finishing op on transport"

    invoke-virtual {v10, v11}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 982
    invoke-interface {v7}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v10

    iput v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    .line 983
    iget-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "finished: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    goto :goto_211

    .line 984
    :cond_203
    iget v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    const/16 v11, -0x3ea

    if-ne v10, v11, :cond_211

    .line 985
    iget-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v11, "transport rejected package"

    invoke-virtual {v10, v11}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 987
    .end local v0    # "isNonIncremental":Z
    :cond_211
    :goto_211
    goto :goto_227

    .line 991
    :cond_212
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v10, "no data to send"

    invoke-virtual {v0, v10}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 992
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/4 v10, 0x7

    iget-object v11, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-static {v0, v10, v11, v13, v12}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 999
    :goto_227
    iget v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-nez v0, :cond_255

    .line 1003
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1004
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mNewStateName:Ljava/io/File;

    iget-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedStateName:Ljava/io/File;

    invoke-virtual {v0, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1005
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    .line 1006
    const/4 v10, 0x0

    invoke-static {v0, v3, v10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 1007
    const/16 v0, 0xb08

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v3, v11, v10

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v12, 0x1

    aput-object v10, v11, v12

    invoke-static {v0, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1008
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService;->logBackupComplete(Ljava/lang/String;)V

    goto/16 :goto_2de

    .line 1009
    :cond_255
    iget v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    const/16 v10, -0x3ea

    if-ne v0, v10, :cond_272

    .line 1012
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1013
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1014
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v10, -0x3ea

    invoke-static {v0, v3, v10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 1016
    const-string v0, "Transport rejected"

    invoke-static {v3, v0}, Lcom/android/server/EventLogTags;->writeBackupAgentFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2de

    .line 1017
    :cond_272
    iget v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    const/16 v10, -0x3ed

    if-ne v0, v10, :cond_283

    .line 1018
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    invoke-static {v0, v3, v10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 1020
    const/16 v0, 0xb0d

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    goto :goto_2de

    .line 1022
    :cond_283
    iget v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v0, v9, :cond_2d2

    .line 1023
    const-string v0, "PerformBackupTask"

    const-string v10, "Transport lost data, retrying package"

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Transport lost data, retrying package:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/server/backup/BackupManagerService;->addBackupTrace(Ljava/lang/String;)V

    .line 1026
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v10, 0x33

    iget-object v11, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v0, v10, v11, v12, v13}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    .line 1034
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mBackupDataName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1035
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mSavedStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1036
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mNewStateName:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1042
    const-string v0, "@pm@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2de

    .line 1043
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/server/backup/internal/BackupRequest;

    invoke-direct {v10, v3}, Lcom/android/server/backup/internal/BackupRequest;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2de

    .line 1048
    :cond_2d2
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v10, -0x3e8

    invoke-static {v0, v3, v10}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 1050
    const/16 v10, 0xb06

    invoke-static {v10, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_2de
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_2de} :catch_2ec
    .catchall {:try_start_167 .. :try_end_2de} :catchall_2e7

    .line 1060
    :cond_2de
    :goto_2de
    if-eqz v8, :cond_2e6

    :try_start_2e0
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2e3
    .catch Ljava/io/IOException; {:try_start_2e0 .. :try_end_2e3} :catch_2e4
    .catchall {:try_start_2e0 .. :try_end_2e3} :catchall_39e

    goto :goto_2e6

    .line 1061
    :catch_2e4
    move-exception v0

    .line 1063
    goto :goto_319

    .line 1062
    :cond_2e6
    :goto_2e6
    goto :goto_319

    .line 1059
    :catchall_2e7
    move-exception v0

    move-object v9, v8

    move-object v8, v0

    goto/16 :goto_394

    .line 1052
    :catch_2ec
    move-exception v0

    .line 1053
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2ed
    iget-object v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mObserver:Landroid/app/backup/IBackupObserver;

    const/16 v11, -0x3e8

    invoke-static {v10, v3, v11}, Lcom/android/server/backup/utils/BackupObserverUtils;->sendBackupOnPackageResult(Landroid/app/backup/IBackupObserver;Ljava/lang/String;I)V

    .line 1055
    const-string v10, "PerformBackupTask"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Transport error backing up "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1056
    const/16 v10, 0xb06

    invoke-static {v10, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1057
    const/16 v10, -0x3e8

    iput v10, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I
    :try_end_313
    .catchall {:try_start_2ed .. :try_end_313} :catchall_2e7

    .line 1060
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v8, :cond_2e6

    :try_start_315
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_318
    .catch Ljava/io/IOException; {:try_start_315 .. :try_end_318} :catch_2e4
    .catchall {:try_start_315 .. :try_end_318} :catchall_39e

    goto :goto_2e6

    .line 1066
    :goto_319
    :try_start_319
    iget v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-eqz v0, :cond_381

    iget v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    const/16 v10, -0x3ea

    if-ne v0, v10, :cond_324

    goto :goto_381

    .line 1072
    :cond_324
    iget v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    if-ne v0, v9, :cond_336

    .line 1074
    const-string v0, "@pm@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_333

    .line 1075
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->BACKUP_PM:Lcom/android/server/backup/internal/BackupState;

    goto :goto_38e

    .line 1079
    :cond_333
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    goto :goto_38e

    .line 1082
    :cond_336
    iget v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mStatus:I

    const/16 v9, -0x3ed

    if-ne v0, v9, :cond_37b

    .line 1087
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;
    :try_end_33e
    .catchall {:try_start_319 .. :try_end_33e} :catchall_39e

    if-eqz v0, :cond_36d

    .line 1089
    :try_start_340
    invoke-static {v7}, Lcom/android/server/backup/transport/TransportUtils;->checkTransportNotNull(Lcom/android/internal/backup/IBackupTransport;)Lcom/android/internal/backup/IBackupTransport;

    .line 1090
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mCurrentPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v7, v0, v9}, Lcom/android/internal/backup/IBackupTransport;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v9

    .line 1091
    .local v9, "quota":J
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mAgentBinder:Landroid/app/IBackupAgent;

    invoke-interface {v0, v14, v15, v9, v10}, Landroid/app/IBackupAgent;->doQuotaExceeded(JJ)V
    :try_end_351
    .catch Ljava/lang/Exception; {:try_start_340 .. :try_end_351} :catch_352
    .catchall {:try_start_340 .. :try_end_351} :catchall_39e

    .line 1094
    .end local v9    # "quota":J
    goto :goto_36d

    .line 1092
    :catch_352
    move-exception v0

    .line 1093
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_353
    const-string v9, "PerformBackupTask"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to notify about quota exceeded: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_36d
    :goto_36d
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_378

    sget-object v0, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    goto :goto_37a

    :cond_378
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    :goto_37a
    goto :goto_38e

    .line 1100
    :cond_37b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/internal/PerformBackupTask;->revertAndEndBackup()V

    .line 1101
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    goto :goto_38e

    .line 1070
    :cond_381
    :goto_381
    iget-object v0, v1, Lcom/android/server/backup/internal/PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_38c

    sget-object v0, Lcom/android/server/backup/internal/BackupState;->FINAL:Lcom/android/server/backup/internal/BackupState;

    goto :goto_38e

    :cond_38c
    sget-object v0, Lcom/android/server/backup/internal/BackupState;->RUNNING_QUEUE:Lcom/android/server/backup/internal/BackupState;

    .line 1101
    .local v0, "nextState":Lcom/android/server/backup/internal/BackupState;
    :goto_38e
    nop

    .line 1104
    invoke-direct {v1, v0}, Lcom/android/server/backup/internal/PerformBackupTask;->executeNextState(Lcom/android/server/backup/internal/BackupState;)V

    .line 1105
    .end local v0    # "nextState":Lcom/android/server/backup/internal/BackupState;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "filepos":J
    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .end local v7    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v8    # "backupData":Landroid/os/ParcelFileDescriptor;
    .end local v14    # "size":J
    monitor-exit v2
    :try_end_393
    .catchall {:try_start_353 .. :try_end_393} :catchall_39e

    .line 1106
    return-void

    .line 1059
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v4    # "filepos":J
    .restart local v6    # "fd":Ljava/io/FileDescriptor;
    .restart local v7    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .local v9, "backupData":Landroid/os/ParcelFileDescriptor;
    .restart local v14    # "size":J
    :goto_394
    nop

    .line 1060
    if-eqz v9, :cond_39d

    :try_start_397
    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_39a
    .catch Ljava/io/IOException; {:try_start_397 .. :try_end_39a} :catch_39b
    .catchall {:try_start_397 .. :try_end_39a} :catchall_39e

    goto :goto_39d

    .line 1061
    :catch_39b
    move-exception v0

    nop

    .line 1062
    :cond_39d
    :goto_39d
    :try_start_39d
    throw v8

    .line 1105
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "filepos":J
    .end local v6    # "fd":Ljava/io/FileDescriptor;
    .end local v7    # "transport":Lcom/android/internal/backup/IBackupTransport;
    .end local v9    # "backupData":Landroid/os/ParcelFileDescriptor;
    .end local v14    # "size":J
    :catchall_39e
    move-exception v0

    monitor-exit v2
    :try_end_3a0
    .catchall {:try_start_39d .. :try_end_3a0} :catchall_39e

    throw v0
.end method
