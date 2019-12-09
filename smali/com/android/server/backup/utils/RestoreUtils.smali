.class public Lcom/android/server/backup/utils/RestoreUtils;
.super Ljava/lang/Object;
.source "RestoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    }
.end annotation


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    .line 110
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/Context;",
            "Lcom/android/server/backup/restore/RestoreDeleteObserver;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;",
            "Lcom/android/server/backup/FileMetadata;",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/utils/BytesReadListener;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p5

    .line 76
    nop

    .line 79
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installing from backup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;-><init>(Lcom/android/server/backup/utils/RestoreUtils$1;)V

    .line 84
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v2

    .line 87
    new-instance v4, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    .line 88
    move-object/from16 v6, p6

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 91
    :try_start_1
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 92
    :try_start_2
    iget-object v7, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const-wide/16 v8, 0x0

    iget-wide v10, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-object v6, v12

    invoke-virtual/range {v6 .. v11}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 94
    const v7, 0x8000

    :try_start_3
    new-array v7, v7, [B

    .line 95
    iget-wide v8, v0, Lcom/android/server/backup/FileMetadata;->size:J

    .line 96
    :goto_0
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_2

    .line 97
    array-length v10, v7

    int-to-long v10, v10

    cmp-long v10, v10, v8

    if-gez v10, :cond_0

    array-length v10, v7

    int-to-long v10, v10

    goto :goto_1

    .line 98
    :cond_0
    move-wide v10, v8

    :goto_1
    long-to-int v10, v10

    move-object/from16 v11, p0

    invoke-virtual {v11, v7, v1, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    .line 99
    if-ltz v10, :cond_1

    .line 100
    int-to-long v13, v10

    move-object/from16 v15, p7

    invoke-interface {v15, v13, v14}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    goto :goto_2

    .line 102
    :cond_1
    move-object/from16 v15, p7

    :goto_2
    invoke-virtual {v6, v7, v1, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    int-to-long v13, v10

    sub-long/2addr v8, v13

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    if-eqz v6, :cond_3

    :try_start_4
    invoke-static {v3, v6}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 108
    :cond_3
    invoke-virtual {v12}, Landroid/content/pm/PackageInstaller$Session;->abandon()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 110
    if-eqz v12, :cond_4

    :try_start_5
    invoke-static {v3, v12}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 115
    :cond_4
    nop

    .line 118
    nop

    .line 122
    nop

    .line 126
    nop

    .line 130
    :try_start_6
    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v2, p4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    if-eq v0, v2, :cond_5

    .line 131
    goto :goto_3

    .line 196
    :cond_5
    move v1, v5

    :goto_3
    goto :goto_6

    .line 105
    :catchall_0
    move-exception v0

    move-object v5, v3

    goto :goto_4

    .line 92
    :catch_0
    move-exception v0

    move-object v5, v0

    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 105
    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v6, :cond_6

    :try_start_8
    invoke-static {v5, v6}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_6
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 110
    :catchall_2
    move-exception v0

    goto :goto_5

    .line 91
    :catch_1
    move-exception v0

    move-object v3, v0

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 110
    :goto_5
    if-eqz v12, :cond_7

    :try_start_a
    invoke-static {v3, v12}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_7
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 111
    :catch_2
    move-exception v0

    .line 112
    :try_start_b
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V

    .line 114
    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 193
    :catch_3
    move-exception v0

    .line 194
    const-string v0, "BackupManagerService"

    const-string v2, "Unable to transcribe restored apk for install"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    nop

    .line 198
    :goto_6
    return v1
.end method
