.class public Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;
.super Lcom/android/server/backup/fullbackup/FullBackupTask;
.source "PerformAdbBackupTask.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# instance fields
.field private backupManagerService:Lcom/android/server/backup/BackupManagerService;

.field mAllApps:Z

.field mBackupEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

.field mCompress:Z

.field private final mCurrentOpToken:I

.field mCurrentPassword:Ljava/lang/String;

.field mCurrentTarget:Landroid/content/pm/PackageInfo;

.field mDeflater:Ljava/util/zip/DeflaterOutputStream;

.field mDoWidgets:Z

.field mEncryptPassword:Ljava/lang/String;

.field mIncludeApks:Z

.field mIncludeObbs:Z

.field mIncludeShared:Z

.field mIncludeSystem:Z

.field mKeyValue:Z

.field final mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mOutputFile:Landroid/os/ParcelFileDescriptor;

.field mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 31
    .param p1, "backupManagerService"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "includeApks"    # Z
    .param p5, "includeObbs"    # Z
    .param p6, "includeShared"    # Z
    .param p7, "doWidgets"    # Z
    .param p8, "curPassword"    # Ljava/lang/String;
    .param p9, "encryptPassword"    # Ljava/lang/String;
    .param p10, "doAllApps"    # Z
    .param p11, "doSystem"    # Z
    .param p12, "doCompress"    # Z
    .param p13, "doKeyValue"    # Z
    .param p14, "packages"    # [Ljava/lang/String;
    .param p15, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    .line 94
    move-object/from16 v3, p3

    invoke-direct {v0, v3}, Lcom/android/server/backup/fullbackup/FullBackupTask;-><init>(Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 95
    move-object/from16 v4, p1

    iput-object v4, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/backup/BackupManagerService;->generateRandomIntegerToken()I

    move-result v5

    iput v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    .line 97
    move-object/from16 v5, p15

    iput-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 99
    move-object/from16 v6, p2

    iput-object v6, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 100
    move/from16 v7, p4

    iput-boolean v7, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z

    .line 101
    move/from16 v8, p5

    iput-boolean v8, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z

    .line 102
    move/from16 v9, p6

    iput-boolean v9, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z

    .line 103
    move/from16 v10, p7

    iput-boolean v10, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    .line 104
    move/from16 v11, p10

    iput-boolean v11, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    .line 105
    move/from16 v12, p11

    iput-boolean v12, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    .line 106
    if-nez p14, :cond_3c

    .line 107
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    goto :goto_45

    .line 108
    :cond_3c
    new-instance v13, Ljava/util/ArrayList;

    invoke-static/range {p14 .. p14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_45
    iput-object v13, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 109
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    .line 114
    if-eqz v2, :cond_57

    const-string v13, ""

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_54

    goto :goto_57

    .line 117
    :cond_54
    iput-object v2, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    goto :goto_59

    .line 115
    :cond_57
    :goto_57
    iput-object v1, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 122
    :goto_59
    move/from16 v13, p12

    iput-boolean v13, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z

    .line 123
    move/from16 v14, p13

    iput-boolean v14, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    .line 124
    return-void
.end method

.method private emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 20
    .param p1, "headerbuf"    # Ljava/lang/StringBuilder;
    .param p2, "ofstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 144
    iget-object v2, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 145
    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B

    move-result-object v2

    .line 146
    .local v2, "newUserSalt":[B
    const-string v4, "PBKDF2WithHmacSHA1"

    iget-object v5, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 147
    const/16 v6, 0x2710

    invoke-static {v4, v5, v2, v6}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 152
    .local v4, "userKey":Ljavax/crypto/SecretKey;
    const/16 v5, 0x20

    new-array v5, v5, [B

    .line 153
    .local v5, "masterPw":[B
    iget-object v7, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v7}, Lcom/android/server/backup/BackupManagerService;->getRng()Ljava/security/SecureRandom;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 154
    iget-object v7, v0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 155
    invoke-virtual {v7, v3}, Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B

    move-result-object v3

    .line 158
    .local v3, "checksumSalt":[B
    const-string v7, "AES/CBC/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 159
    .local v7, "c":Ljavax/crypto/Cipher;
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string v9, "AES"

    invoke-direct {v8, v5, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 160
    .local v8, "masterKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v9, 0x1

    invoke-virtual {v7, v9, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 161
    new-instance v10, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v11, p2

    invoke-direct {v10, v11, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 164
    .local v10, "finalOutput":Ljava/io/OutputStream;
    const-string v12, "AES-256"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const/16 v12, 0xa

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    invoke-static {v2}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    invoke-static {v3}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    const-string v13, "AES/CBC/PKCS5Padding"

    invoke-static {v13}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v13

    .line 178
    .local v13, "mkC":Ljavax/crypto/Cipher;
    invoke-virtual {v13, v9, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 180
    invoke-virtual {v13}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v9

    .line 181
    .local v9, "IV":[B
    invoke-static {v9}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v7}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v9

    .line 195
    invoke-virtual {v8}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v14

    .line 196
    .local v14, "mk":[B
    const-string v15, "PBKDF2WithHmacSHA1"

    .line 198
    invoke-virtual {v8}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v12

    .line 197
    invoke-static {v15, v12, v3, v6}, Lcom/android/server/backup/utils/PasswordUtils;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B

    move-result-object v6

    .line 201
    .local v6, "checksum":[B
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    array-length v15, v9

    array-length v0, v14

    add-int/2addr v15, v0

    array-length v0, v6

    add-int/2addr v15, v0

    add-int/lit8 v15, v15, 0x3

    invoke-direct {v12, v15}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v0, v12

    .line 203
    .local v0, "blob":Ljava/io/ByteArrayOutputStream;
    new-instance v12, Ljava/io/DataOutputStream;

    invoke-direct {v12, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 204
    .local v12, "mkOut":Ljava/io/DataOutputStream;
    array-length v15, v9

    invoke-virtual {v12, v15}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 205
    invoke-virtual {v12, v9}, Ljava/io/DataOutputStream;->write([B)V

    .line 206
    array-length v15, v14

    invoke-virtual {v12, v15}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 207
    invoke-virtual {v12, v14}, Ljava/io/DataOutputStream;->write([B)V

    .line 208
    array-length v15, v6

    invoke-virtual {v12, v15}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 209
    invoke-virtual {v12, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 210
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->flush()V

    .line 211
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    invoke-virtual {v13, v15}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v15

    .line 212
    .local v15, "encryptedMk":[B
    move-object/from16 v16, v0

    invoke-static {v15}, Lcom/android/server/backup/utils/PasswordUtils;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "blob":Ljava/io/ByteArrayOutputStream;
    .local v16, "blob":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    return-object v10
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .registers 5
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 221
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 222
    .local v0, "eof":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_8

    .line 225
    .end local v0    # "eof":[B
    goto :goto_10

    .line 223
    :catch_8
    move-exception v0

    .line 224
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    const-string v2, "Error attempting to finalize backup stream"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v0    # "e":Ljava/io/IOException;
    :goto_10
    return-void
.end method


# virtual methods
.method addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 127
    .local p1, "set":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .local p2, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 128
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 130
    :try_start_16
    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 133
    .local v2, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_25} :catch_26

    .line 136
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_42

    .line 134
    :catch_26
    move-exception v2

    .line 135
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", skipping"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_42
    :goto_42
    goto :goto_4

    .line 139
    :cond_43
    return-void
.end method

.method public execute()V
    .registers 1

    .line 482
    return-void
.end method

.method public handleCancel(Z)V
    .registers 6
    .param p1, "cancelAll"    # Z

    .line 491
    iget-object v0, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 493
    .local v0, "target":Landroid/content/pm/PackageInfo;
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adb backup cancel of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    if-eqz v0, :cond_23

    .line 496
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 498
    :cond_23
    iget-object v1, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget v2, p0, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I

    invoke-virtual {v1, v2}, Lcom/android/server/backup/BackupManagerService;->removeOperation(I)V

    .line 499
    return-void
.end method

.method public operationComplete(J)V
    .registers 3
    .param p1, "result"    # J

    .line 487
    return-void
.end method

.method public run()V
    .registers 37

    .line 230
    move-object/from16 v12, p0

    iget-boolean v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z

    if-eqz v0, :cond_9

    const-string v0, ", including key-value backups"

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    move-object v13, v0

    .line 231
    .local v13, "includeKeyValue":Ljava/lang/String;
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- Performing adb backup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    move-object v14, v0

    .line 234
    .local v14, "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    iget-object v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    move-object v15, v0

    .line 236
    .local v15, "obbConnection":Lcom/android/server/backup/fullbackup/FullBackupObbConnection;
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->establish()V

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendStartBackup()V

    .line 239
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 242
    .local v11, "pm":Landroid/content/pm/PackageManager;
    iget-boolean v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mAllApps:Z

    const/4 v1, 0x0

    const/4 v10, 0x1

    if-eqz v0, :cond_6d

    .line 243
    const/high16 v0, 0x8000000

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 245
    .local v0, "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move v2, v1

    .line 245
    .local v2, "i":I
    :goto_4e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6d

    .line 246
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 248
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    iget-boolean v4, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeSystem:Z

    if-eq v4, v10, :cond_65

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v10

    if-nez v4, :cond_6a

    .line 250
    :cond_65
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 257
    .end local v0    # "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "i":I
    :cond_6d
    iget-boolean v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mDoWidgets:Z

    if-eqz v0, :cond_7b

    .line 259
    nop

    .line 260
    invoke-static {v1}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v0

    .line 261
    .local v0, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_7b

    .line 272
    invoke-virtual {v12, v14, v0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 279
    .end local v0    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7b
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_84

    .line 280
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v12, v14, v0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 287
    :cond_84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 288
    .local v8, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {v14}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 288
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    :goto_92
    move-object v9, v0

    .line 289
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_103

    .line 290
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 291
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2, v11}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)Z

    move-result v2

    if-eqz v2, :cond_e0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 292
    invoke-static {v2}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsStopped(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_b6

    goto :goto_e0

    .line 298
    :cond_b6
    invoke-static {v0}, Lcom/android/server/backup/utils/AppBackupUtils;->appIsKeyValueOnly(Landroid/content/pm/PackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_100

    .line 299
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 301
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is key-value."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    goto :goto_100

    .line 293
    .restart local v0    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_e0
    :goto_e0
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 295
    const-string v2, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not eligible for backup, removing."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_100
    :goto_100
    nop

    .line 288
    move-object v0, v9

    goto :goto_92

    .line 309
    :cond_103
    new-instance v0, Ljava/util/ArrayList;

    .line 310
    invoke-virtual {v14}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v7, v0

    .line 311
    .local v7, "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v2, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v6, v0

    .line 312
    .local v6, "ofstream":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 314
    .local v2, "out":Ljava/io/OutputStream;
    const/4 v0, 0x0

    move-object v3, v0

    .line 316
    .restart local v3    # "pkg":Landroid/content/pm/PackageInfo;
    :try_start_11c
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;
    :try_end_11e
    .catch Landroid/os/RemoteException; {:try_start_11c .. :try_end_11e} :catch_76f
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_11e} :catch_71f
    .catchall {:try_start_11c .. :try_end_11e} :catchall_70e

    if-eqz v0, :cond_153

    :try_start_120
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_126
    .catch Landroid/os/RemoteException; {:try_start_120 .. :try_end_126} :catch_146
    .catch Ljava/lang/Exception; {:try_start_120 .. :try_end_126} :catch_139
    .catchall {:try_start_120 .. :try_end_126} :catchall_12a

    if-lez v0, :cond_153

    move v0, v10

    goto :goto_154

    .line 456
    :catchall_12a
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move v5, v10

    move-object/from16 v28, v11

    goto/16 :goto_7d9

    .line 453
    :catch_139
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move v5, v10

    move-object/from16 v28, v11

    goto/16 :goto_72a

    .line 451
    :catch_146
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move v5, v10

    move-object/from16 v28, v11

    goto/16 :goto_77a

    .line 316
    :cond_153
    move v0, v1

    :goto_154
    move/from16 v16, v0

    .line 319
    .local v16, "encrypting":Z
    :try_start_156
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->deviceIsEncrypted()Z

    move-result v0
    :try_end_15c
    .catch Landroid/os/RemoteException; {:try_start_156 .. :try_end_15c} :catch_76f
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_15c} :catch_71f
    .catchall {:try_start_156 .. :try_end_15c} :catchall_70e

    if-eqz v0, :cond_1bb

    if-nez v16, :cond_1bb

    .line 320
    :try_start_160
    const-string v0, "BackupManagerService"

    const-string v1, "Unencrypted backup of encrypted device; aborting"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_167
    .catch Landroid/os/RemoteException; {:try_start_160 .. :try_end_167} :catch_146
    .catch Ljava/lang/Exception; {:try_start_160 .. :try_end_167} :catch_139
    .catchall {:try_start_160 .. :try_end_167} :catchall_12a

    .line 457
    if-eqz v2, :cond_172

    .line 458
    :try_start_169
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 459
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_172

    .line 462
    :catch_170
    move-exception v0

    goto :goto_178

    .line 461
    :cond_172
    :goto_172
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_177
    .catch Ljava/io/IOException; {:try_start_169 .. :try_end_177} :catch_170

    .line 464
    goto :goto_193

    .line 462
    :goto_178
    nop

    .line 463
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO error closing adb backup file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v0    # "e":Ljava/io/IOException;
    :goto_193
    iget-object v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 466
    :try_start_196
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 467
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 468
    monitor-exit v1
    :try_end_1a1
    .catchall {:try_start_196 .. :try_end_1a1} :catchall_1b8

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 470
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 472
    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 321
    return-void

    .line 468
    :catchall_1b8
    move-exception v0

    :try_start_1b9
    monitor-exit v1
    :try_end_1ba
    .catchall {:try_start_1b9 .. :try_end_1ba} :catchall_1b8

    throw v0

    .line 324
    :cond_1bb
    move-object v4, v6

    .line 328
    .local v4, "finalOutput":Ljava/io/OutputStream;
    :try_start_1bc
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z

    move-result v0
    :try_end_1c4
    .catch Landroid/os/RemoteException; {:try_start_1bc .. :try_end_1c4} :catch_76f
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1c4} :catch_71f
    .catchall {:try_start_1bc .. :try_end_1c4} :catchall_70e

    if-nez v0, :cond_222

    .line 330
    :try_start_1c6
    const-string v0, "BackupManagerService"

    const-string v1, "Backup password mismatch; aborting"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cd
    .catch Landroid/os/RemoteException; {:try_start_1c6 .. :try_end_1cd} :catch_146
    .catch Ljava/lang/Exception; {:try_start_1c6 .. :try_end_1cd} :catch_139
    .catchall {:try_start_1c6 .. :try_end_1cd} :catchall_12a

    .line 457
    if-eqz v2, :cond_1d8

    .line 458
    :try_start_1cf
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 459
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_1d8

    .line 462
    :catch_1d6
    move-exception v0

    goto :goto_1de

    .line 461
    :cond_1d8
    :goto_1d8
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1dd
    .catch Ljava/io/IOException; {:try_start_1cf .. :try_end_1dd} :catch_1d6

    .line 464
    goto :goto_1f9

    .line 462
    :goto_1de
    nop

    .line 463
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v1, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IO error closing adb backup file: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1f9
    iget-object v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 466
    :try_start_1fc
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 467
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 468
    monitor-exit v1
    :try_end_208
    .catchall {:try_start_1fc .. :try_end_208} :catchall_21f

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 470
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 472
    const-string v0, "BackupManagerService"

    const-string v1, "Full backup pass complete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 332
    return-void

    .line 468
    :catchall_21f
    move-exception v0

    :try_start_220
    monitor-exit v1
    :try_end_221
    .catchall {:try_start_220 .. :try_end_221} :catchall_21f

    throw v0

    .line 360
    :cond_222
    :try_start_222
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x400

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v10, v0

    .line 362
    .local v10, "headerbuf":Ljava/lang/StringBuilder;
    const-string v0, "ANDROID BACKUP\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const/4 v0, 0x5

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    iget-boolean v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_235
    .catch Landroid/os/RemoteException; {:try_start_222 .. :try_end_235} :catch_701
    .catch Ljava/lang/Exception; {:try_start_222 .. :try_end_235} :catch_6f5
    .catchall {:try_start_222 .. :try_end_235} :catchall_6e9

    if-eqz v0, :cond_263

    :try_start_237
    const-string v0, "\n1\n"
    :try_end_239
    .catch Landroid/os/RemoteException; {:try_start_237 .. :try_end_239} :catch_256
    .catch Ljava/lang/Exception; {:try_start_237 .. :try_end_239} :catch_249
    .catchall {:try_start_237 .. :try_end_239} :catchall_23a

    goto :goto_265

    .line 456
    .end local v4    # "finalOutput":Ljava/io/OutputStream;
    .end local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v16    # "encrypting":Z
    :catchall_23a
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move-object/from16 v28, v11

    .line 456
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v1, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v3, "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .local v28, "pm":Landroid/content/pm/PackageManager;
    .local v29, "pkg":Landroid/content/pm/PackageInfo;
    .local v31, "ofstream":Ljava/io/FileOutputStream;
    .local v32, "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_246
    const/4 v5, 0x1

    goto/16 :goto_7d9

    .line 453
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catch_249
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move-object/from16 v28, v11

    .line 453
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_253
    const/4 v5, 0x1

    goto/16 :goto_72a

    .line 451
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catch_256
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move-object/from16 v28, v11

    .line 451
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_260
    const/4 v5, 0x1

    goto/16 :goto_77a

    .line 364
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v4    # "finalOutput":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v16    # "encrypting":Z
    :cond_263
    :try_start_263
    const-string v0, "\n0\n"

    :goto_265
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_268
    .catch Landroid/os/RemoteException; {:try_start_263 .. :try_end_268} :catch_701
    .catch Ljava/lang/Exception; {:try_start_263 .. :try_end_268} :catch_6f5
    .catchall {:try_start_263 .. :try_end_268} :catchall_6e9

    .line 368
    if-eqz v16, :cond_27f

    .line 369
    :try_start_26a
    invoke-direct {v12, v10, v4}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_26e
    .catch Ljava/lang/Exception; {:try_start_26a .. :try_end_26e} :catch_270
    .catch Landroid/os/RemoteException; {:try_start_26a .. :try_end_26e} :catch_256
    .catchall {:try_start_26a .. :try_end_26e} :catchall_23a

    move-object v4, v0

    goto :goto_285

    .line 384
    :catch_270
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    const/4 v5, 0x1

    goto/16 :goto_688

    .line 371
    :cond_27f
    :try_start_27f
    const-string/jumbo v0, "none\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :goto_285
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 375
    .local v0, "header":[B
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 378
    iget-boolean v5, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCompress:Z
    :try_end_294
    .catch Ljava/lang/Exception; {:try_start_27f .. :try_end_294} :catch_67b
    .catch Landroid/os/RemoteException; {:try_start_27f .. :try_end_294} :catch_701
    .catchall {:try_start_27f .. :try_end_294} :catchall_6e9

    if-eqz v5, :cond_310

    .line 379
    :try_start_296
    new-instance v5, Ljava/util/zip/Deflater;

    const/16 v1, 0x9

    invoke-direct {v5, v1}, Ljava/util/zip/Deflater;-><init>(I)V

    move-object v1, v5

    .line 380
    .local v1, "deflater":Ljava/util/zip/Deflater;
    new-instance v5, Ljava/util/zip/DeflaterOutputStream;
    :try_end_2a0
    .catch Ljava/lang/Exception; {:try_start_296 .. :try_end_2a0} :catch_2fe
    .catch Landroid/os/RemoteException; {:try_start_296 .. :try_end_2a0} :catch_2ee
    .catchall {:try_start_296 .. :try_end_2a0} :catchall_2da

    move-object/from16 v19, v8

    const/4 v8, 0x1

    :try_start_2a3
    invoke-direct {v5, v4, v1, v8}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_2a6
    .catch Ljava/lang/Exception; {:try_start_2a3 .. :try_end_2a6} :catch_2ca
    .catch Landroid/os/RemoteException; {:try_start_2a3 .. :try_end_2a6} :catch_2bc
    .catchall {:try_start_2a3 .. :try_end_2a6} :catchall_2ab

    .line 380
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    move-object v4, v5

    .line 383
    .end local v1    # "deflater":Ljava/util/zip/Deflater;
    move-object/from16 v17, v4

    goto/16 :goto_315

    .line 456
    .end local v0    # "header":[B
    .end local v4    # "finalOutput":Ljava/io/OutputStream;
    .end local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v16    # "encrypting":Z
    :catchall_2ab
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move v5, v8

    move-object/from16 v28, v11

    move-object/from16 v1, v19

    move-object v3, v2

    move-object/from16 v19, v9

    goto/16 :goto_7da

    .line 451
    :catch_2bc
    move-exception v0

    .line 451
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v1, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_2bd
    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move v5, v8

    move-object/from16 v28, v11

    move-object/from16 v1, v19

    move-object/from16 v19, v9

    goto/16 :goto_77a

    .line 384
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v4    # "finalOutput":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v16    # "encrypting":Z
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_2ca
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move v5, v8

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v1, v19

    move-object/from16 v19, v9

    goto/16 :goto_688

    .line 456
    .end local v4    # "finalOutput":Ljava/io/OutputStream;
    .end local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v16    # "encrypting":Z
    .end local v19    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catchall_2da
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v29, v3

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v28, v11

    move-object/from16 v1, v19

    const/4 v5, 0x1

    move-object v3, v2

    move-object/from16 v19, v9

    move-object v2, v0

    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v19    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_7db

    .line 451
    .end local v19    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_2ee
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v28, v11

    move-object/from16 v1, v19

    const/4 v5, 0x1

    move-object/from16 v19, v9

    .line 451
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v19    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_77a

    .line 384
    .end local v19    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v4    # "finalOutput":Ljava/io/OutputStream;
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v16    # "encrypting":Z
    :catch_2fe
    move-exception v0

    move-object/from16 v19, v8

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v1, v19

    const/4 v5, 0x1

    move-object/from16 v19, v9

    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v19    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_688

    .line 383
    .end local v19    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v0    # "header":[B
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :cond_310
    move-object/from16 v19, v8

    const/4 v8, 0x1

    move-object/from16 v17, v4

    .line 383
    .end local v4    # "finalOutput":Ljava/io/OutputStream;
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v17, "finalOutput":Ljava/io/OutputStream;
    .restart local v19    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_315
    move-object/from16 v5, v17

    .line 388
    .end local v0    # "header":[B
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v5, "out":Ljava/io/OutputStream;
    nop

    .line 391
    :try_start_318
    iget-boolean v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeShared:Z
    :try_end_31a
    .catch Landroid/os/RemoteException; {:try_start_318 .. :try_end_31a} :catch_66c
    .catch Ljava/lang/Exception; {:try_start_318 .. :try_end_31a} :catch_65d
    .catchall {:try_start_318 .. :try_end_31a} :catchall_64a

    if-eqz v0, :cond_35f

    .line 393
    :try_start_31c
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.sharedstoragebackup"
    :try_end_324
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_31c .. :try_end_324} :catch_355
    .catch Landroid/os/RemoteException; {:try_start_31c .. :try_end_324} :catch_351
    .catch Ljava/lang/Exception; {:try_start_31c .. :try_end_324} :catch_342
    .catchall {:try_start_31c .. :try_end_324} :catchall_330

    const/4 v2, 0x0

    :try_start_325
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v3, v0

    .line 395
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_32d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_325 .. :try_end_32d} :catch_32e
    .catch Landroid/os/RemoteException; {:try_start_325 .. :try_end_32d} :catch_351
    .catch Ljava/lang/Exception; {:try_start_325 .. :try_end_32d} :catch_342
    .catchall {:try_start_325 .. :try_end_32d} :catchall_330

    .line 398
    goto :goto_360

    .line 396
    :catch_32e
    move-exception v0

    goto :goto_357

    .line 456
    .end local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v16    # "encrypting":Z
    .end local v17    # "finalOutput":Ljava/io/OutputStream;
    :catchall_330
    move-exception v0

    move-object v2, v0

    move-object/from16 v29, v3

    move-object v3, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move v5, v8

    move-object/from16 v28, v11

    move-object/from16 v1, v19

    move-object/from16 v19, v9

    goto/16 :goto_7db

    .line 453
    :catch_342
    move-exception v0

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move v5, v8

    move-object/from16 v28, v11

    move-object/from16 v1, v19

    move-object/from16 v19, v9

    goto/16 :goto_72a

    .line 451
    :catch_351
    move-exception v0

    move-object v2, v5

    goto/16 :goto_2bd

    .line 396
    .restart local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v16    # "encrypting":Z
    .restart local v17    # "finalOutput":Ljava/io/OutputStream;
    :catch_355
    move-exception v0

    const/4 v2, 0x0

    .line 397
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_357
    :try_start_357
    const-string v1, "BackupManagerService"

    const-string v4, "Unable to find shared-storage backup handler"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35e
    .catch Landroid/os/RemoteException; {:try_start_357 .. :try_end_35e} :catch_351
    .catch Ljava/lang/Exception; {:try_start_357 .. :try_end_35e} :catch_342
    .catchall {:try_start_357 .. :try_end_35e} :catchall_330

    .line 397
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_360

    .line 402
    :cond_35f
    const/4 v2, 0x0

    :goto_360
    :try_start_360
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_364
    .catch Landroid/os/RemoteException; {:try_start_360 .. :try_end_364} :catch_66c
    .catch Ljava/lang/Exception; {:try_start_360 .. :try_end_364} :catch_65d
    .catchall {:try_start_360 .. :try_end_364} :catchall_64a

    .line 403
    .local v0, "N":I
    nop

    .line 403
    .local v2, "i":I
    :goto_365
    move v4, v2

    .line 403
    .end local v2    # "i":I
    .local v4, "i":I
    if-ge v4, v0, :cond_576

    .line 404
    :try_start_368
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;
    :try_end_36e
    .catch Landroid/os/RemoteException; {:try_start_368 .. :try_end_36e} :catch_565
    .catch Ljava/lang/Exception; {:try_start_368 .. :try_end_36e} :catch_554
    .catchall {:try_start_368 .. :try_end_36e} :catchall_53f

    move-object v3, v1

    .line 406
    :try_start_36f
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_376
    .catch Landroid/os/RemoteException; {:try_start_36f .. :try_end_376} :catch_52d
    .catch Ljava/lang/Exception; {:try_start_36f .. :try_end_376} :catch_51b
    .catchall {:try_start_36f .. :try_end_376} :catchall_505

    :try_start_376
    const-string v8, "--- Performing full backup for package "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ---"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v1, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.sharedstoragebackup"

    .line 410
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move/from16 v18, v1

    .line 413
    .local v18, "isSharedStorage":Z
    new-instance v8, Lcom/android/server/backup/fullbackup/FullBackupEngine;

    iget-object v2, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    const/16 v20, 0x0

    iget-boolean v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeApks:Z
    :try_end_39e
    .catch Landroid/os/RemoteException; {:try_start_376 .. :try_end_39e} :catch_4f4
    .catch Ljava/lang/Exception; {:try_start_376 .. :try_end_39e} :catch_4e3
    .catchall {:try_start_376 .. :try_end_39e} :catchall_4cf

    const-wide v21, 0x7fffffffffffffffL

    move-object/from16 v28, v9

    :try_start_3a5
    iget v9, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentOpToken:I
    :try_end_3a7
    .catch Landroid/os/RemoteException; {:try_start_3a5 .. :try_end_3a7} :catch_4bd
    .catch Ljava/lang/Exception; {:try_start_3a5 .. :try_end_3a7} :catch_4ab
    .catchall {:try_start_3a5 .. :try_end_3a7} :catchall_495

    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .local v28, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    const/16 v23, 0x0

    move/from16 v24, v1

    move-object v1, v8

    move-object/from16 v29, v3

    move-object v3, v5

    .line 413
    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v29    # "pkg":Landroid/content/pm/PackageInfo;
    move/from16 v25, v4

    move-object/from16 v4, v20

    .line 413
    .end local v4    # "i":I
    .local v25, "i":I
    move-object/from16 v30, v5

    move-object/from16 v5, v29

    .line 413
    .end local v5    # "out":Ljava/io/OutputStream;
    .local v30, "out":Ljava/io/OutputStream;
    move-object/from16 v31, v6

    move/from16 v6, v24

    .line 413
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    move-object/from16 v32, v7

    move-object v7, v12

    .line 413
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v34, v8

    move/from16 v20, v9

    move-object/from16 v33, v19

    move-object/from16 v19, v28

    const/16 v24, 0x1

    move-wide/from16 v8, v21

    .line 413
    .end local v28    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .local v33, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v27, v10

    move/from16 v10, v20

    .line 413
    .end local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .local v27, "headerbuf":Ljava/lang/StringBuilder;
    move-object/from16 v28, v11

    move/from16 v11, v23

    .line 413
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v28, "pm":Landroid/content/pm/PackageManager;
    :try_start_3d2
    invoke-direct/range {v1 .. v11}, Lcom/android/server/backup/fullbackup/FullBackupEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Lcom/android/server/backup/fullbackup/FullBackupPreflight;Landroid/content/pm/PackageInfo;ZLcom/android/server/backup/BackupRestoreTask;JII)V

    move-object/from16 v1, v34

    iput-object v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;
    :try_end_3d9
    .catch Landroid/os/RemoteException; {:try_start_3d2 .. :try_end_3d9} :catch_48a
    .catch Ljava/lang/Exception; {:try_start_3d2 .. :try_end_3d9} :catch_47f
    .catchall {:try_start_3d2 .. :try_end_3d9} :catchall_473

    .line 416
    if-eqz v18, :cond_3fc

    :try_start_3db
    const-string v1, "Shared storage"
    :try_end_3dd
    .catch Landroid/os/RemoteException; {:try_start_3db .. :try_end_3dd} :catch_3f3
    .catch Ljava/lang/Exception; {:try_start_3db .. :try_end_3dd} :catch_3ea
    .catchall {:try_start_3db .. :try_end_3dd} :catchall_3e1

    move-object v2, v1

    move-object/from16 v1, v29

    goto :goto_400

    .line 456
    .end local v0    # "N":I
    .end local v16    # "encrypting":Z
    .end local v17    # "finalOutput":Ljava/io/OutputStream;
    .end local v18    # "isSharedStorage":Z
    .end local v25    # "i":I
    .end local v27    # "headerbuf":Ljava/lang/StringBuilder;
    :catchall_3e1
    move-exception v0

    move-object v2, v0

    move-object/from16 v3, v30

    move-object/from16 v1, v33

    const/4 v5, 0x1

    goto/16 :goto_7db

    .line 453
    :catch_3ea
    move-exception v0

    move-object/from16 v3, v29

    move-object/from16 v2, v30

    .line 453
    .end local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v30    # "out":Ljava/io/OutputStream;
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v2, "out":Ljava/io/OutputStream;
    .restart local v3    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_3ef
    move-object/from16 v1, v33

    goto/16 :goto_253

    .line 451
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v30    # "out":Ljava/io/OutputStream;
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_3f3
    move-exception v0

    move-object/from16 v3, v29

    move-object/from16 v2, v30

    .line 451
    .end local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v30    # "out":Ljava/io/OutputStream;
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_3f8
    move-object/from16 v1, v33

    goto/16 :goto_260

    .line 416
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v0    # "N":I
    .restart local v16    # "encrypting":Z
    .restart local v17    # "finalOutput":Ljava/io/OutputStream;
    .restart local v18    # "isSharedStorage":Z
    .restart local v25    # "i":I
    .restart local v27    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v30    # "out":Ljava/io/OutputStream;
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :cond_3fc
    move-object/from16 v1, v29

    :try_start_3fe
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 416
    .end local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .local v1, "pkg":Landroid/content/pm/PackageInfo;
    :goto_400
    invoke-virtual {v12, v2}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 419
    iput-object v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mCurrentTarget:Landroid/content/pm/PackageInfo;

    .line 420
    iget-object v2, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/fullbackup/FullBackupEngine;

    invoke-virtual {v2}, Lcom/android/server/backup/fullbackup/FullBackupEngine;->backupOnePackage()I

    .line 424
    iget-boolean v2, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mIncludeObbs:Z
    :try_end_40c
    .catch Landroid/os/RemoteException; {:try_start_3fe .. :try_end_40c} :catch_46a
    .catch Ljava/lang/Exception; {:try_start_3fe .. :try_end_40c} :catch_461
    .catchall {:try_start_3fe .. :try_end_40c} :catchall_455

    if-eqz v2, :cond_43f

    if-nez v18, :cond_43f

    .line 425
    move-object/from16 v2, v30

    :try_start_412
    invoke-virtual {v15, v1, v2}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    move-result v3

    .line 426
    .end local v30    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v3, "obbOkay":Z
    if-eqz v3, :cond_419

    .line 426
    .end local v3    # "obbOkay":Z
    .end local v18    # "isSharedStorage":Z
    goto :goto_441

    .line 427
    .restart local v3    # "obbOkay":Z
    .restart local v18    # "isSharedStorage":Z
    :cond_419
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure writing OBB stack for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_430
    .catch Landroid/os/RemoteException; {:try_start_412 .. :try_end_430} :catch_43c
    .catch Ljava/lang/Exception; {:try_start_412 .. :try_end_430} :catch_439
    .catchall {:try_start_412 .. :try_end_430} :catchall_430

    .line 456
    .end local v0    # "N":I
    .end local v3    # "obbOkay":Z
    .end local v16    # "encrypting":Z
    .end local v17    # "finalOutput":Ljava/io/OutputStream;
    .end local v18    # "isSharedStorage":Z
    .end local v25    # "i":I
    .end local v27    # "headerbuf":Ljava/lang/StringBuilder;
    :catchall_430
    move-exception v0

    move-object/from16 v29, v1

    move-object v3, v2

    move-object/from16 v1, v33

    const/4 v5, 0x1

    goto/16 :goto_7da

    .line 453
    :catch_439
    move-exception v0

    move-object v3, v1

    goto :goto_3ef

    .line 451
    :catch_43c
    move-exception v0

    move-object v3, v1

    goto :goto_3f8

    .line 403
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v0    # "N":I
    .restart local v16    # "encrypting":Z
    .restart local v17    # "finalOutput":Ljava/io/OutputStream;
    .restart local v25    # "i":I
    .restart local v27    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v30    # "out":Ljava/io/OutputStream;
    :cond_43f
    move-object/from16 v2, v30

    .line 403
    .end local v30    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :goto_441
    add-int/lit8 v3, v25, 0x1

    .line 403
    .end local v25    # "i":I
    .local v3, "i":I
    move-object v5, v2

    move v2, v3

    move-object/from16 v9, v19

    move-object/from16 v10, v27

    move-object/from16 v11, v28

    move-object/from16 v6, v31

    move-object/from16 v7, v32

    move-object/from16 v19, v33

    const/4 v8, 0x1

    move-object v3, v1

    goto/16 :goto_365

    .line 456
    .end local v0    # "N":I
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v3    # "i":I
    .end local v16    # "encrypting":Z
    .end local v17    # "finalOutput":Ljava/io/OutputStream;
    .end local v27    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v30    # "out":Ljava/io/OutputStream;
    :catchall_455
    move-exception v0

    move-object/from16 v2, v30

    move-object/from16 v29, v1

    move-object v3, v2

    move-object/from16 v1, v33

    const/4 v5, 0x1

    move-object v2, v0

    .line 456
    .end local v30    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto/16 :goto_7db

    .line 453
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v30    # "out":Ljava/io/OutputStream;
    :catch_461
    move-exception v0

    move-object/from16 v2, v30

    move-object v3, v1

    move-object/from16 v1, v33

    const/4 v5, 0x1

    .line 453
    .end local v30    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto/16 :goto_72a

    .line 451
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v30    # "out":Ljava/io/OutputStream;
    :catch_46a
    move-exception v0

    move-object/from16 v2, v30

    move-object v3, v1

    move-object/from16 v1, v33

    const/4 v5, 0x1

    .line 451
    .end local v30    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto/16 :goto_77a

    .line 456
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v30    # "out":Ljava/io/OutputStream;
    :catchall_473
    move-exception v0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object v3, v2

    move-object/from16 v1, v33

    const/4 v5, 0x1

    move-object v2, v0

    .line 456
    .end local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v30    # "out":Ljava/io/OutputStream;
    .restart local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto/16 :goto_7db

    .line 453
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v30    # "out":Ljava/io/OutputStream;
    :catch_47f
    move-exception v0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object v3, v1

    move-object/from16 v1, v33

    const/4 v5, 0x1

    .line 453
    .end local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v30    # "out":Ljava/io/OutputStream;
    .restart local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto/16 :goto_72a

    .line 451
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v30    # "out":Ljava/io/OutputStream;
    :catch_48a
    move-exception v0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object v3, v1

    move-object/from16 v1, v33

    const/4 v5, 0x1

    .line 451
    .end local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v30    # "out":Ljava/io/OutputStream;
    .restart local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto/16 :goto_77a

    .line 456
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v28, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    :catchall_495
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v33, v19

    move-object/from16 v19, v28

    move-object/from16 v28, v11

    move-object/from16 v29, v1

    move-object v3, v2

    move-object/from16 v1, v33

    const/4 v5, 0x1

    move-object v2, v0

    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .local v28, "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_7db

    .line 453
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v28, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    :catch_4ab
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v33, v19

    move-object/from16 v19, v28

    move-object/from16 v28, v11

    move-object/from16 v1, v33

    const/4 v5, 0x1

    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .local v28, "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_72a

    .line 451
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v28, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    :catch_4bd
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v33, v19

    move-object/from16 v19, v28

    move-object/from16 v28, v11

    move-object/from16 v1, v33

    const/4 v5, 0x1

    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .local v28, "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_77a

    .line 456
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catchall_4cf
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v28, v11

    move-object/from16 v33, v19

    move-object/from16 v19, v9

    move-object/from16 v29, v1

    move-object v3, v2

    move-object/from16 v1, v33

    const/4 v5, 0x1

    goto :goto_518

    .line 453
    :catch_4e3
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v28, v11

    move-object/from16 v33, v19

    move-object/from16 v19, v9

    move-object/from16 v1, v33

    const/4 v5, 0x1

    goto :goto_52b

    .line 451
    :catch_4f4
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v28, v11

    move-object/from16 v33, v19

    move-object/from16 v19, v9

    move-object/from16 v1, v33

    const/4 v5, 0x1

    goto :goto_53d

    .line 456
    :catchall_505
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v28, v11

    move-object/from16 v33, v19

    move-object/from16 v19, v9

    move-object/from16 v29, v1

    move-object v3, v2

    move v5, v8

    move-object/from16 v1, v33

    .restart local v29    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_518
    move-object v2, v0

    .line 456
    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_7db

    .line 453
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_51b
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v28, v11

    move-object/from16 v33, v19

    move-object/from16 v19, v9

    move v5, v8

    move-object/from16 v1, v33

    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_52b
    goto/16 :goto_72a

    .line 451
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_52d
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v28, v11

    move-object/from16 v33, v19

    move-object/from16 v19, v9

    move v5, v8

    move-object/from16 v1, v33

    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_53d
    goto/16 :goto_77a

    .line 456
    .end local v1    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catchall_53f
    move-exception v0

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v28, v11

    move-object/from16 v33, v19

    move-object/from16 v19, v9

    move-object/from16 v29, v3

    move v5, v8

    move-object/from16 v1, v33

    move-object v3, v2

    move-object v2, v0

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_7db

    .line 453
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_554
    move-exception v0

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v28, v11

    move-object/from16 v33, v19

    move-object/from16 v19, v9

    move v5, v8

    move-object/from16 v1, v33

    .line 453
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_72a

    .line 451
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_565
    move-exception v0

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v28, v11

    move-object/from16 v33, v19

    move-object/from16 v19, v9

    move v5, v8

    move-object/from16 v1, v33

    .line 451
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_77a

    .line 432
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v0    # "N":I
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v16    # "encrypting":Z
    .restart local v17    # "finalOutput":Ljava/io/OutputStream;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :cond_576
    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move-object/from16 v33, v19

    move-object/from16 v19, v9

    .line 432
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v27    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :try_start_583
    iget-boolean v1, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mKeyValue:Z
    :try_end_585
    .catch Landroid/os/RemoteException; {:try_start_583 .. :try_end_585} :catch_644
    .catch Ljava/lang/Exception; {:try_start_583 .. :try_end_585} :catch_63e
    .catchall {:try_start_583 .. :try_end_585} :catchall_634

    if-eqz v1, :cond_5eb

    .line 433
    move-object/from16 v1, v33

    :try_start_589
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 433
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v1, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_58d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5ed

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 435
    .local v5, "keyValuePackage":Landroid/content/pm/PackageInfo;
    const-string v6, "BackupManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--- Performing key-value backup for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ---"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v6, Lcom/android/server/backup/KeyValueAdbBackupEngine;

    iget-object v7, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    iget-object v8, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 441
    invoke-virtual {v8}, Lcom/android/server/backup/BackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    iget-object v8, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 442
    invoke-virtual {v8}, Lcom/android/server/backup/BackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v25

    iget-object v8, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    .line 443
    invoke-virtual {v8}, Lcom/android/server/backup/BackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v26

    move-object/from16 v20, v6

    move-object/from16 v21, v2

    move-object/from16 v22, v5

    move-object/from16 v23, v7

    invoke-direct/range {v20 .. v26}, Lcom/android/server/backup/KeyValueAdbBackupEngine;-><init>(Ljava/io/OutputStream;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/BackupManagerServiceInterface;Landroid/content/pm/PackageManager;Ljava/io/File;Ljava/io/File;)V

    .line 444
    .local v6, "kvBackupEngine":Lcom/android/server/backup/KeyValueAdbBackupEngine;
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v7}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v6}, Lcom/android/server/backup/KeyValueAdbBackupEngine;->backupOnePackage()V
    :try_end_5df
    .catch Landroid/os/RemoteException; {:try_start_589 .. :try_end_5df} :catch_5e8
    .catch Ljava/lang/Exception; {:try_start_589 .. :try_end_5df} :catch_5e5
    .catchall {:try_start_589 .. :try_end_5df} :catchall_5e0

    .line 446
    .end local v5    # "keyValuePackage":Landroid/content/pm/PackageInfo;
    .end local v6    # "kvBackupEngine":Lcom/android/server/backup/KeyValueAdbBackupEngine;
    goto :goto_58d

    .line 456
    .end local v0    # "N":I
    .end local v16    # "encrypting":Z
    .end local v17    # "finalOutput":Ljava/io/OutputStream;
    .end local v27    # "headerbuf":Ljava/lang/StringBuilder;
    :catchall_5e0
    move-exception v0

    move-object/from16 v29, v3

    goto/16 :goto_246

    .line 453
    :catch_5e5
    move-exception v0

    goto/16 :goto_253

    .line 451
    :catch_5e8
    move-exception v0

    goto/16 :goto_260

    .line 450
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v0    # "N":I
    .restart local v16    # "encrypting":Z
    .restart local v17    # "finalOutput":Ljava/io/OutputStream;
    .restart local v27    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :cond_5eb
    move-object/from16 v1, v33

    .line 450
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :cond_5ed
    :try_start_5ed
    invoke-direct {v12, v2}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_5f0
    .catch Landroid/os/RemoteException; {:try_start_5ed .. :try_end_5f0} :catch_5e8
    .catch Ljava/lang/Exception; {:try_start_5ed .. :try_end_5f0} :catch_5e5
    .catchall {:try_start_5ed .. :try_end_5f0} :catchall_630

    .line 457
    .end local v0    # "N":I
    .end local v16    # "encrypting":Z
    .end local v17    # "finalOutput":Ljava/io/OutputStream;
    .end local v27    # "headerbuf":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_5fb

    .line 458
    :try_start_5f2
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 459
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_5fb

    .line 462
    :catch_5f9
    move-exception v0

    goto :goto_601

    .line 461
    :cond_5fb
    :goto_5fb
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_600
    .catch Ljava/io/IOException; {:try_start_5f2 .. :try_end_600} :catch_5f9

    .line 464
    goto :goto_61c

    .line 462
    :goto_601
    nop

    .line 463
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO error closing adb backup file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v0    # "e":Ljava/io/IOException;
    :goto_61c
    iget-object v4, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 466
    :try_start_61f
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 467
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 468
    monitor-exit v4

    goto/16 :goto_7bb

    :catchall_62d
    move-exception v0

    monitor-exit v4
    :try_end_62f
    .catchall {:try_start_61f .. :try_end_62f} :catchall_62d

    throw v0

    .line 456
    :catchall_630
    move-exception v0

    const/4 v5, 0x1

    goto/16 :goto_7d7

    .line 456
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catchall_634
    move-exception v0

    move-object/from16 v1, v33

    const/4 v5, 0x1

    move-object/from16 v29, v3

    move-object v3, v2

    move-object v2, v0

    .line 456
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_7db

    .line 453
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_63e
    move-exception v0

    move-object/from16 v1, v33

    const/4 v5, 0x1

    .line 453
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_72a

    .line 451
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_644
    move-exception v0

    move-object/from16 v1, v33

    const/4 v5, 0x1

    .line 451
    .end local v33    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_77a

    .line 456
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v5, "out":Ljava/io/OutputStream;
    .local v6, "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catchall_64a
    move-exception v0

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move v5, v8

    move-object/from16 v28, v11

    move-object/from16 v1, v19

    move-object/from16 v19, v9

    move-object/from16 v29, v3

    move-object v3, v2

    move-object v2, v0

    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_7db

    .line 453
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_65d
    move-exception v0

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move v5, v8

    move-object/from16 v28, v11

    move-object/from16 v1, v19

    move-object/from16 v19, v9

    .line 453
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_72a

    .line 451
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v2    # "out":Ljava/io/OutputStream;
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_66c
    move-exception v0

    move-object v2, v5

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move v5, v8

    move-object/from16 v28, v11

    move-object/from16 v1, v19

    move-object/from16 v19, v9

    .line 451
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_77a

    .line 384
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v4, "finalOutput":Ljava/io/OutputStream;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v16    # "encrypting":Z
    :catch_67b
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    const/4 v5, 0x1

    .line 384
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v10    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v27    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_688
    move-object v6, v0

    .line 386
    .local v6, "e":Ljava/lang/Exception;
    :try_start_689
    const-string v0, "BackupManagerService"

    const-string v7, "Unable to emit archive header"

    invoke-static {v0, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_690
    .catch Landroid/os/RemoteException; {:try_start_689 .. :try_end_690} :catch_6e6
    .catch Ljava/lang/Exception; {:try_start_689 .. :try_end_690} :catch_6e4
    .catchall {:try_start_689 .. :try_end_690} :catchall_7d6

    .line 457
    if-eqz v2, :cond_69b

    .line 458
    :try_start_692
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 459
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_69b

    .line 462
    :catch_699
    move-exception v0

    goto :goto_6a1

    .line 461
    :cond_69b
    :goto_69b
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6a0
    .catch Ljava/io/IOException; {:try_start_692 .. :try_end_6a0} :catch_699

    .line 464
    goto :goto_6bc

    .line 462
    :goto_6a1
    nop

    .line 463
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v7, "BackupManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IO error closing adb backup file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v0    # "e":Ljava/io/IOException;
    :goto_6bc
    iget-object v7, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v7

    .line 466
    :try_start_6bf
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 467
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 468
    monitor-exit v7
    :try_end_6ca
    .catchall {:try_start_6bf .. :try_end_6ca} :catchall_6e1

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 470
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 472
    const-string v0, "BackupManagerService"

    const-string v5, "Full backup pass complete."

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 387
    return-void

    .line 468
    :catchall_6e1
    move-exception v0

    :try_start_6e2
    monitor-exit v7
    :try_end_6e3
    .catchall {:try_start_6e2 .. :try_end_6e3} :catchall_6e1

    throw v0

    .line 453
    .end local v4    # "finalOutput":Ljava/io/OutputStream;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v16    # "encrypting":Z
    .end local v27    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_6e4
    move-exception v0

    goto :goto_72a

    .line 451
    :catch_6e6
    move-exception v0

    goto/16 :goto_77a

    .line 456
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .local v6, "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catchall_6e9
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move-object/from16 v28, v11

    const/4 v5, 0x1

    goto :goto_719

    .line 453
    :catch_6f5
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move-object/from16 v28, v11

    const/4 v5, 0x1

    goto :goto_72a

    .line 451
    :catch_701
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move-object/from16 v28, v11

    const/4 v5, 0x1

    goto/16 :goto_77a

    .line 456
    :catchall_70e
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move v5, v10

    move-object/from16 v28, v11

    .line 456
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    .restart local v29    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_719
    move-object/from16 v29, v3

    move-object v3, v2

    move-object v2, v0

    .line 456
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    goto/16 :goto_7db

    .line 453
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v29    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "out":Ljava/io/OutputStream;
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catch_71f
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move v5, v10

    move-object/from16 v28, v11

    .line 454
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_72a
    :try_start_72a
    const-string v4, "BackupManagerService"

    const-string v6, "Internal exception during full backup"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_731
    .catchall {:try_start_72a .. :try_end_731} :catchall_7d6

    .line 457
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_73c

    .line 458
    :try_start_733
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 459
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_73c

    .line 462
    :catch_73a
    move-exception v0

    goto :goto_742

    .line 461
    :cond_73c
    :goto_73c
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_741
    .catch Ljava/io/IOException; {:try_start_733 .. :try_end_741} :catch_73a

    .line 464
    goto :goto_75d

    .line 462
    :goto_742
    nop

    .line 463
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO error closing adb backup file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v0    # "e":Ljava/io/IOException;
    :goto_75d
    iget-object v4, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 466
    :try_start_760
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 467
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 468
    monitor-exit v4

    goto :goto_7bb

    :catchall_76c
    move-exception v0

    monitor-exit v4
    :try_end_76e
    .catchall {:try_start_760 .. :try_end_76e} :catchall_76c

    throw v0

    .line 451
    .end local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v28    # "pm":Landroid/content/pm/PackageManager;
    .end local v31    # "ofstream":Ljava/io/FileOutputStream;
    .end local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v6    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v11    # "pm":Landroid/content/pm/PackageManager;
    :catch_76f
    move-exception v0

    move-object/from16 v31, v6

    move-object/from16 v32, v7

    move-object v1, v8

    move-object/from16 v19, v9

    move v5, v10

    move-object/from16 v28, v11

    .line 452
    .end local v6    # "ofstream":Ljava/io/FileOutputStream;
    .end local v7    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v8    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v1    # "keyValueBackupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v19    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    .restart local v28    # "pm":Landroid/content/pm/PackageManager;
    .restart local v31    # "ofstream":Ljava/io/FileOutputStream;
    .restart local v32    # "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_77a
    :try_start_77a
    const-string v4, "BackupManagerService"

    const-string v6, "App died during full backup"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_781
    .catchall {:try_start_77a .. :try_end_781} :catchall_7d6

    .line 457
    .end local v0    # "e":Landroid/os/RemoteException;
    if-eqz v2, :cond_78c

    .line 458
    :try_start_783
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 459
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_78c

    .line 462
    :catch_78a
    move-exception v0

    goto :goto_792

    .line 461
    :cond_78c
    :goto_78c
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_791
    .catch Ljava/io/IOException; {:try_start_783 .. :try_end_791} :catch_78a

    .line 464
    goto :goto_7ad

    .line 462
    :goto_792
    nop

    .line 463
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IO error closing adb backup file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v0    # "e":Ljava/io/IOException;
    :goto_7ad
    iget-object v4, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 466
    :try_start_7b0
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 467
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 468
    monitor-exit v4
    :try_end_7bb
    .catchall {:try_start_7b0 .. :try_end_7bb} :catchall_7d3

    .line 469
    :goto_7bb
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 470
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 472
    const-string v0, "BackupManagerService"

    const-string v4, "Full backup pass complete."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 475
    nop

    .line 476
    return-void

    .line 468
    :catchall_7d3
    move-exception v0

    :try_start_7d4
    monitor-exit v4
    :try_end_7d5
    .catchall {:try_start_7d4 .. :try_end_7d5} :catchall_7d3

    throw v0

    .line 456
    :catchall_7d6
    move-exception v0

    .line 456
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    .restart local v29    # "pkg":Landroid/content/pm/PackageInfo;
    :goto_7d7
    move-object/from16 v29, v3

    :goto_7d9
    move-object v3, v2

    :goto_7da
    move-object v2, v0

    .line 457
    :goto_7db
    if-eqz v3, :cond_7e6

    .line 458
    :try_start_7dd
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 459
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_7e6

    .line 462
    :catch_7e4
    move-exception v0

    goto :goto_7ec

    .line 461
    :cond_7e6
    :goto_7e6
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7eb
    .catch Ljava/io/IOException; {:try_start_7dd .. :try_end_7eb} :catch_7e4

    .line 464
    goto :goto_807

    .line 462
    :goto_7ec
    nop

    .line 463
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IO error closing adb backup file: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "BackupManagerService"

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v0    # "e":Ljava/io/IOException;
    :goto_807
    iget-object v4, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v4

    .line 466
    :try_start_80a
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 467
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 468
    monitor-exit v4
    :try_end_815
    .catchall {:try_start_80a .. :try_end_815} :catchall_82c

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->sendEndBackup()V

    .line 470
    invoke-virtual {v15}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->tearDown()V

    .line 472
    const-string v0, "BackupManagerService"

    const-string v4, "Full backup pass complete."

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, v12, Lcom/android/server/backup/fullbackup/PerformAdbBackupTask;->backupManagerService:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2

    .line 468
    :catchall_82c
    move-exception v0

    :try_start_82d
    monitor-exit v4
    :try_end_82e
    .catchall {:try_start_82d .. :try_end_82e} :catchall_82c

    throw v0
.end method
