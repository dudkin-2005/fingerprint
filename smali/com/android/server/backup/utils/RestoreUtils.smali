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
    .registers 3
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 110
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

.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installApk(Ljava/io/InputStream;Landroid/content/Context;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;)Z
    .registers 31
    .param p0, "instream"    # Ljava/io/InputStream;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deleteObserver"    # Lcom/android/server/backup/restore/RestoreDeleteObserver;
    .param p5, "info"    # Lcom/android/server/backup/FileMetadata;
    .param p6, "installerPackageName"    # Ljava/lang/String;
    .param p7, "bytesReadListener"    # Lcom/android/server/backup/utils/BytesReadListener;
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

    .local p3, "manifestSignatures":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Landroid/content/pm/Signature;>;"
    .local p4, "packagePolicies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/backup/restore/RestorePolicy;>;"
    move-object/from16 v1, p5

    .line 76
    const/4 v2, 0x1

    .line 79
    .local v2, "okay":Z
    const-string v0, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Installing from backup: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :try_start_1b
    new-instance v0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;-><init>(Lcom/android/server/backup/utils/RestoreUtils$1;)V

    move-object v4, v0

    .line 84
    .local v4, "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object v5, v0

    .line 85
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    move-object v6, v0

    .line 87
    .local v6, "installer":Landroid/content/pm/PackageInstaller;
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v7, 0x1

    invoke-direct {v0, v7}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_32} :catch_3a3

    move-object v7, v0

    .line 88
    .local v7, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    move-object/from16 v8, p6

    :try_start_35
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageInstaller$SessionParams;->setInstallerPackageName(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageInstaller;->createSession(Landroid/content/pm/PackageInstaller$SessionParams;)I

    move-result v0
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3c} :catch_399

    move v9, v0

    .line 91
    .local v9, "sessionId":I
    :try_start_3d
    invoke-virtual {v6, v9}, Landroid/content/pm/PackageInstaller;->openSession(I)Landroid/content/pm/PackageInstaller$Session;

    move-result-object v0
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_41} :catch_381
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_41} :catch_399

    move-object v14, v0

    .line 92
    .local v14, "session":Landroid/content/pm/PackageInstaller$Session;
    :try_start_42
    iget-object v11, v1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_44} :catch_361
    .catchall {:try_start_42 .. :try_end_44} :catchall_34c

    const-wide/16 v12, 0x0

    move-object/from16 v17, v4

    :try_start_48
    iget-wide v3, v1, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4a} :catch_339
    .catchall {:try_start_48 .. :try_end_4a} :catchall_326

    .end local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .local v17, "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    move-object v10, v14

    move/from16 v18, v2

    move-object v2, v14

    move-wide v14, v3

    .end local v14    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    .local v18, "okay":Z
    :try_start_4f
    invoke-virtual/range {v10 .. v15}, Landroid/content/pm/PackageInstaller$Session;->openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;

    move-result-object v0
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_53} :catch_315
    .catchall {:try_start_4f .. :try_end_53} :catchall_304

    move-object v3, v0

    .line 94
    .local v3, "apkStream":Ljava/io/OutputStream;
    const v0, 0x8000

    :try_start_57
    new-array v4, v0, [B

    .line 95
    .local v4, "buffer":[B
    iget-wide v10, v1, Lcom/android/server/backup/FileMetadata;->size:J
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5b} :catch_2e4
    .catchall {:try_start_57 .. :try_end_5b} :catchall_2d3

    .line 96
    .local v10, "size":J
    :goto_5b
    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    const/4 v13, 0x0

    if-lez v12, :cond_10b

    .line 97
    :try_start_62
    array-length v12, v4
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_63} :catch_f9
    .catchall {:try_start_62 .. :try_end_63} :catchall_e7

    int-to-long v14, v12

    cmp-long v12, v14, v10

    if-gez v12, :cond_8f

    :try_start_68
    array-length v12, v4
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_69} :catch_7d
    .catchall {:try_start_68 .. :try_end_69} :catchall_6b

    int-to-long v14, v12

    goto :goto_90

    .line 105
    .end local v4    # "buffer":[B
    .end local v10    # "size":J
    :catchall_6b
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object/from16 v13, p7

    move-object v4, v1

    move-object/from16 v19, v7

    const/4 v1, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p0

    goto/16 :goto_2f6

    .line 92
    :catch_7d
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object/from16 v13, p7

    move-object v11, v0

    move-object v4, v1

    move-object/from16 v19, v7

    const/4 v1, 0x0

    move-object/from16 v7, p0

    goto/16 :goto_2f4

    .line 97
    .restart local v4    # "buffer":[B
    .restart local v10    # "size":J
    :cond_8f
    move-wide v14, v10

    .line 98
    .local v14, "toRead":J
    :goto_90
    long-to-int v12, v14

    move-object/from16 v19, v7

    move-object/from16 v7, p0

    :try_start_95
    invoke-virtual {v7, v4, v13, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v12
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_95 .. :try_end_99} :catch_d9
    .catchall {:try_start_95 .. :try_end_99} :catchall_cb

    .line 99
    .end local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .local v12, "didRead":I
    .local v19, "params":Landroid/content/pm/PackageInstaller$SessionParams;
    if-ltz v12, :cond_ba

    .line 100
    int-to-long v0, v12

    move-object/from16 v13, p7

    :try_start_9e
    invoke-interface {v13, v0, v1}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    goto :goto_bc

    .line 105
    .end local v4    # "buffer":[B
    .end local v10    # "size":J
    .end local v12    # "didRead":I
    .end local v14    # "toRead":J
    :catchall_a2
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    const/4 v1, 0x0

    move-object/from16 v4, p5

    goto :goto_d6

    .line 92
    :catch_ad
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object v11, v0

    const/4 v1, 0x0

    move-object/from16 v4, p5

    goto/16 :goto_2f4

    .line 102
    .restart local v4    # "buffer":[B
    .restart local v10    # "size":J
    .restart local v12    # "didRead":I
    .restart local v14    # "toRead":J
    :cond_ba
    move-object/from16 v13, p7

    :goto_bc
    const/4 v1, 0x0

    invoke-virtual {v3, v4, v1, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_c0} :catch_ad
    .catchall {:try_start_9e .. :try_end_c0} :catchall_a2

    .line 103
    int-to-long v0, v12

    sub-long/2addr v10, v0

    .line 104
    .end local v12    # "didRead":I
    .end local v14    # "toRead":J
    nop

    .line 95
    move-object/from16 v7, v19

    const v0, 0x8000

    move-object/from16 v1, p5

    goto :goto_5b

    .line 105
    .end local v4    # "buffer":[B
    .end local v10    # "size":J
    :catchall_cb
    move-exception v0

    move-object/from16 v13, p7

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object v4, v1

    const/4 v1, 0x0

    :goto_d6
    const/4 v11, 0x0

    goto/16 :goto_2f6

    .line 92
    :catch_d9
    move-exception v0

    move-object/from16 v13, p7

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object v11, v0

    move-object v4, v1

    const/4 v1, 0x0

    goto/16 :goto_2f4

    .line 105
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catchall_e7
    move-exception v0

    move-object/from16 v13, p7

    move-object/from16 v19, v7

    move-object/from16 v7, p0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object v4, v1

    const/4 v1, 0x0

    const/4 v11, 0x0

    goto/16 :goto_2e3

    .line 92
    :catch_f9
    move-exception v0

    move-object/from16 v13, p7

    move-object/from16 v19, v7

    move-object/from16 v7, p0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object v11, v0

    move-object v4, v1

    const/4 v1, 0x0

    goto/16 :goto_2f4

    .line 105
    :cond_10b
    move-object/from16 v13, p7

    move-object/from16 v19, v7

    move-object/from16 v7, p0

    .end local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    if-eqz v3, :cond_130

    const/4 v1, 0x0

    :try_start_114
    invoke-static {v1, v3}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_117
    .catch Ljava/lang/Throwable; {:try_start_114 .. :try_end_117} :catch_124
    .catchall {:try_start_114 .. :try_end_117} :catchall_118

    goto :goto_130

    .line 110
    .end local v3    # "apkStream":Ljava/io/OutputStream;
    :catchall_118
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    const/4 v1, 0x0

    move-object/from16 v4, p5

    goto/16 :goto_378

    .line 91
    :catch_124
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object v3, v0

    move-object/from16 v4, p5

    goto/16 :goto_375

    .line 108
    :cond_130
    :goto_130
    :try_start_130
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$Session;->abandon()V
    :try_end_133
    .catch Ljava/lang/Throwable; {:try_start_130 .. :try_end_133} :catch_2c9
    .catchall {:try_start_130 .. :try_end_133} :catchall_118

    .line 110
    if-eqz v2, :cond_150

    const/4 v1, 0x0

    :try_start_136
    invoke-static {v1, v2}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_139} :catch_145
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_139} :catch_13a

    goto :goto_150

    .line 193
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v9    # "sessionId":I
    .end local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_13a
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object/from16 v4, p5

    goto/16 :goto_3b3

    .line 111
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v9    # "sessionId":I
    .restart local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_145
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object/from16 v4, p5

    goto/16 :goto_393

    .line 115
    :cond_150
    :goto_150
    nop

    .line 118
    const/4 v1, 0x0

    .line 122
    .local v1, "result":Landroid/content/Intent;
    const/4 v2, 0x1

    .line 126
    .local v2, "status":I
    if-eqz v2, :cond_17b

    .line 130
    move-object/from16 v4, p5

    :try_start_157
    iget-object v0, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_157 .. :try_end_159} :catch_172

    move-object/from16 v10, p4

    :try_start_15b
    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    if-eq v0, v3, :cond_16a

    .line 131
    const/4 v0, 0x0

    .line 196
    .end local v18    # "okay":Z
    .local v0, "okay":Z
    move-object/from16 v12, p2

    move-object/from16 v14, p3

    goto/16 :goto_2c2

    .end local v0    # "okay":Z
    .end local v1    # "result":Landroid/content/Intent;
    .end local v2    # "status":I
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v9    # "sessionId":I
    .end local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v18    # "okay":Z
    :cond_16a
    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move/from16 v0, v18

    goto/16 :goto_2c2

    .line 193
    :catch_172
    move-exception v0

    move-object/from16 v10, p4

    :goto_175
    move-object/from16 v12, p2

    move-object/from16 v14, p3

    goto/16 :goto_3b3

    .line 135
    .restart local v1    # "result":Landroid/content/Intent;
    .restart local v2    # "status":I
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v9    # "sessionId":I
    .restart local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :cond_17b
    move-object/from16 v10, p4

    move-object/from16 v4, p5

    const/4 v3, 0x0

    .line 136
    .local v3, "uninstall":Z
    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 138
    .local v11, "installedPackageName":Ljava/lang/String;
    iget-object v0, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ba

    .line 139
    const-string v0, "BackupManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Restore stream claimed to include apk for "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " but apk was really "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1af
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_1af} :catch_2c6

    .line 143
    const/4 v0, 0x0

    .line 144
    .end local v18    # "okay":Z
    .restart local v0    # "okay":Z
    const/4 v3, 0x1

    .line 185
    move-object/from16 v14, p3

    move-object/from16 v20, v1

    move/from16 v21, v2

    .end local v0    # "okay":Z
    .end local v1    # "result":Landroid/content/Intent;
    .local v2, "okay":Z
    .local v20, "result":Landroid/content/Intent;
    .local v21, "status":I
    :goto_1b7
    move v2, v0

    goto/16 :goto_2a7

    .line 147
    .end local v20    # "result":Landroid/content/Intent;
    .end local v21    # "status":I
    .restart local v1    # "result":Landroid/content/Intent;
    .local v2, "status":I
    .restart local v18    # "okay":Z
    :cond_1ba
    :try_start_1ba
    iget-object v0, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/high16 v12, 0x8000000

    invoke-virtual {v5, v0, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 149
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v12, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1c6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1ba .. :try_end_1c6} :catch_280
    .catch Ljava/io/IOException; {:try_start_1ba .. :try_end_1c6} :catch_279

    const v14, 0x8000

    and-int/2addr v12, v14

    if-nez v12, :cond_1fc

    .line 151
    :try_start_1cc
    const-string v12, "BackupManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Restore stream contains apk of package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " but it disallows backup/restore"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1cc .. :try_end_1e9} :catch_1f3
    .catch Ljava/io/IOException; {:try_start_1cc .. :try_end_1e9} :catch_2c6

    .line 154
    const/4 v12, 0x0

    .line 180
    .end local v18    # "okay":Z
    .local v12, "okay":Z
    move-object/from16 v14, p3

    move-object/from16 v20, v1

    move/from16 v21, v2

    move v2, v12

    goto/16 :goto_274

    .line 176
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v12    # "okay":Z
    .restart local v18    # "okay":Z
    :catch_1f3
    move-exception v0

    move-object/from16 v14, p3

    move-object/from16 v20, v1

    move/from16 v21, v2

    goto/16 :goto_287

    .line 157
    .restart local v0    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_1fc
    :try_start_1fc
    iget-object v12, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;
    :try_end_1fe
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1fc .. :try_end_1fe} :catch_280
    .catch Ljava/io/IOException; {:try_start_1fc .. :try_end_1fe} :catch_279

    move-object/from16 v14, p3

    :try_start_200
    invoke-virtual {v14, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/content/pm/Signature;

    .line 158
    .local v12, "sigs":[Landroid/content/pm/Signature;
    const-class v15, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v15}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageManagerInternal;

    .line 160
    .local v15, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-static {v12, v0, v15}, Lcom/android/server/backup/utils/AppBackupUtils;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManagerInternal;)Z

    move-result v16
    :try_end_212
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_200 .. :try_end_212} :catch_277
    .catch Ljava/io/IOException; {:try_start_200 .. :try_end_212} :catch_2c4

    if-eqz v16, :cond_24e

    .line 163
    move-object/from16 v20, v1

    :try_start_216
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .end local v1    # "result":Landroid/content/Intent;
    .restart local v20    # "result":Landroid/content/Intent;
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_21a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_216 .. :try_end_21a} :catch_24a
    .catch Ljava/io/IOException; {:try_start_216 .. :try_end_21a} :catch_2c4

    move/from16 v21, v2

    const/16 v2, 0x2710

    .end local v2    # "status":I
    .restart local v21    # "status":I
    if-ge v1, v2, :cond_247

    :try_start_220
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v1, :cond_247

    .line 165
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v0

    const-string v0, "Installed app "

    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .local v22, "pkg":Landroid/content/pm/PackageInfo;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has restricted uid and no agent"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v2, 0x0

    .end local v18    # "okay":Z
    .local v2, "okay":Z
    goto :goto_274

    .line 180
    .end local v2    # "okay":Z
    .end local v12    # "sigs":[Landroid/content/pm/Signature;
    .end local v15    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v22    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v18    # "okay":Z
    :cond_247
    move/from16 v2, v18

    goto :goto_274

    .line 176
    .end local v21    # "status":I
    .local v2, "status":I
    :catch_24a
    move-exception v0

    move/from16 v21, v2

    .end local v2    # "status":I
    .restart local v21    # "status":I
    goto :goto_287

    .line 170
    .end local v20    # "result":Landroid/content/Intent;
    .end local v21    # "status":I
    .restart local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .restart local v1    # "result":Landroid/content/Intent;
    .restart local v2    # "status":I
    .restart local v12    # "sigs":[Landroid/content/pm/Signature;
    .restart local v15    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :cond_24e
    move-object/from16 v22, v0

    move-object/from16 v20, v1

    move/from16 v21, v2

    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v1    # "result":Landroid/content/Intent;
    .end local v2    # "status":I
    .restart local v20    # "result":Landroid/content/Intent;
    .restart local v21    # "status":I
    .restart local v22    # "pkg":Landroid/content/pm/PackageInfo;
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installed app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " signatures do not match restore manifest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_271
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_220 .. :try_end_271} :catch_275
    .catch Ljava/io/IOException; {:try_start_220 .. :try_end_271} :catch_2c4

    .line 172
    const/4 v2, 0x0

    .line 173
    .end local v18    # "okay":Z
    .local v2, "okay":Z
    const/4 v0, 0x1

    .line 180
    .end local v3    # "uninstall":Z
    .end local v12    # "sigs":[Landroid/content/pm/Signature;
    .end local v15    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v22    # "pkg":Landroid/content/pm/PackageInfo;
    .local v0, "uninstall":Z
    move v3, v0

    .end local v0    # "uninstall":Z
    .restart local v3    # "uninstall":Z
    :goto_274
    goto :goto_2a7

    .line 176
    .end local v2    # "okay":Z
    .restart local v18    # "okay":Z
    :catch_275
    move-exception v0

    goto :goto_287

    .end local v20    # "result":Landroid/content/Intent;
    .end local v21    # "status":I
    .restart local v1    # "result":Landroid/content/Intent;
    .local v2, "status":I
    :catch_277
    move-exception v0

    goto :goto_283

    .line 193
    .end local v1    # "result":Landroid/content/Intent;
    .end local v2    # "status":I
    .end local v3    # "uninstall":Z
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v9    # "sessionId":I
    .end local v11    # "installedPackageName":Ljava/lang/String;
    .end local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_279
    move-exception v0

    move-object/from16 v14, p3

    :goto_27c
    move-object/from16 v12, p2

    goto/16 :goto_3b3

    .line 176
    .restart local v1    # "result":Landroid/content/Intent;
    .restart local v2    # "status":I
    .restart local v3    # "uninstall":Z
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v9    # "sessionId":I
    .restart local v11    # "installedPackageName":Ljava/lang/String;
    .restart local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_280
    move-exception v0

    move-object/from16 v14, p3

    :goto_283
    move-object/from16 v20, v1

    move/from16 v21, v2

    .line 177
    .end local v1    # "result":Landroid/content/Intent;
    .end local v2    # "status":I
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v20    # "result":Landroid/content/Intent;
    .restart local v21    # "status":I
    :goto_287
    :try_start_287
    const-string v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Install of package "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " succeeded but now not found"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a4
    .catch Ljava/io/IOException; {:try_start_287 .. :try_end_2a4} :catch_2c4

    .line 179
    const/4 v0, 0x0

    .end local v18    # "okay":Z
    .local v0, "okay":Z
    goto/16 :goto_1b7

    .line 185
    .end local v0    # "okay":Z
    .local v2, "okay":Z
    :goto_2a7
    if-eqz v3, :cond_2bf

    .line 186
    :try_start_2a9
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->reset()V
    :try_end_2ac
    .catch Ljava/io/IOException; {:try_start_2a9 .. :try_end_2ac} :catch_2b8

    .line 187
    move-object/from16 v12, p2

    const/4 v1, 0x0

    :try_start_2af
    invoke-virtual {v5, v11, v12, v1}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->waitForCompletion()V
    :try_end_2b5
    .catch Ljava/io/IOException; {:try_start_2af .. :try_end_2b5} :catch_2b6

    .end local v3    # "uninstall":Z
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v9    # "sessionId":I
    .end local v11    # "installedPackageName":Ljava/lang/String;
    .end local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v20    # "result":Landroid/content/Intent;
    .end local v21    # "status":I
    goto :goto_2c1

    .line 193
    :catch_2b6
    move-exception v0

    goto :goto_2bb

    :catch_2b8
    move-exception v0

    move-object/from16 v12, p2

    .end local v2    # "okay":Z
    .restart local v18    # "okay":Z
    :goto_2bb
    move/from16 v18, v2

    goto/16 :goto_3b3

    .line 196
    .end local v18    # "okay":Z
    .restart local v2    # "okay":Z
    :cond_2bf
    move-object/from16 v12, p2

    :goto_2c1
    move v0, v2

    .end local v2    # "okay":Z
    .restart local v0    # "okay":Z
    :goto_2c2
    goto/16 :goto_3bb

    .line 193
    .end local v0    # "okay":Z
    .restart local v18    # "okay":Z
    :catch_2c4
    move-exception v0

    goto :goto_27c

    :catch_2c6
    move-exception v0

    goto/16 :goto_175

    .line 91
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .restart local v9    # "sessionId":I
    .restart local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_2c9
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object/from16 v4, p5

    goto :goto_300

    .line 105
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .local v3, "apkStream":Ljava/io/OutputStream;
    .restart local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catchall_2d3
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object/from16 v13, p7

    move-object v4, v1

    move-object/from16 v19, v7

    const/4 v1, 0x0

    move-object/from16 v7, p0

    move-object v11, v1

    .end local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :goto_2e3
    goto :goto_2f6

    .line 92
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_2e4
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object/from16 v13, p7

    move-object v4, v1

    move-object/from16 v19, v7

    const/4 v1, 0x0

    move-object/from16 v7, p0

    move-object v11, v0

    .end local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :goto_2f4
    :try_start_2f4
    throw v11
    :try_end_2f5
    .catchall {:try_start_2f4 .. :try_end_2f5} :catchall_2f5

    .line 105
    :catchall_2f5
    move-exception v0

    :goto_2f6
    if-eqz v3, :cond_303

    :try_start_2f8
    invoke-static {v11, v3}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    goto :goto_303

    .line 110
    .end local v3    # "apkStream":Ljava/io/OutputStream;
    :catchall_2fc
    move-exception v0

    goto/16 :goto_378

    .line 91
    :catch_2ff
    move-exception v0

    :goto_300
    move-object v3, v0

    goto/16 :goto_375

    .line 105
    .restart local v3    # "apkStream":Ljava/io/OutputStream;
    :cond_303
    :goto_303
    throw v0
    :try_end_304
    .catch Ljava/lang/Throwable; {:try_start_2f8 .. :try_end_304} :catch_2ff
    .catchall {:try_start_2f8 .. :try_end_304} :catchall_2fc

    .line 110
    .end local v3    # "apkStream":Ljava/io/OutputStream;
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catchall_304
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object/from16 v13, p7

    move-object v4, v1

    move-object/from16 v19, v7

    const/4 v1, 0x0

    move-object/from16 v7, p0

    .end local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    goto/16 :goto_378

    .line 91
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_315
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object/from16 v13, p7

    move-object v4, v1

    move-object/from16 v19, v7

    move-object/from16 v7, p0

    move-object v3, v0

    .end local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    goto/16 :goto_375

    .line 110
    .end local v18    # "okay":Z
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .local v2, "okay":Z
    .restart local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .local v14, "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_326
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v10, p4

    move-object/from16 v13, p7

    move-object v4, v1

    move/from16 v18, v2

    move-object/from16 v19, v7

    move-object v2, v14

    const/4 v1, 0x0

    move-object/from16 v7, p0

    move-object/from16 v14, p3

    .end local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v14    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v18    # "okay":Z
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    goto :goto_378

    .line 91
    .end local v18    # "okay":Z
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .local v2, "okay":Z
    .restart local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v14    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catch_339
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v10, p4

    move-object/from16 v13, p7

    move-object v4, v1

    move/from16 v18, v2

    move-object/from16 v19, v7

    move-object v2, v14

    move-object/from16 v7, p0

    move-object/from16 v14, p3

    move-object v3, v0

    .end local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v14    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v18    # "okay":Z
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    goto :goto_375

    .line 110
    .end local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v18    # "okay":Z
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .local v2, "okay":Z
    .local v4, "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v14    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catchall_34c
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v10, p4

    move-object/from16 v13, p7

    move/from16 v18, v2

    move-object/from16 v17, v4

    move-object/from16 v19, v7

    move-object v2, v14

    move-object/from16 v7, p0

    move-object/from16 v14, p3

    move-object v4, v1

    move-object v1, v3

    .end local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v14    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v18    # "okay":Z
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    goto :goto_378

    .line 91
    .end local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v18    # "okay":Z
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .local v2, "okay":Z
    .restart local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local v14    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catch_361
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v10, p4

    move-object/from16 v13, p7

    move/from16 v18, v2

    move-object/from16 v17, v4

    move-object/from16 v19, v7

    move-object v2, v14

    move-object/from16 v7, p0

    move-object/from16 v14, p3

    move-object v4, v1

    move-object v3, v0

    .end local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local v14    # "session":Landroid/content/pm/PackageInstaller$Session;
    .local v2, "session":Landroid/content/pm/PackageInstaller$Session;
    .restart local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v18    # "okay":Z
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :goto_375
    :try_start_375
    throw v3
    :try_end_376
    .catchall {:try_start_375 .. :try_end_376} :catchall_376

    .line 110
    :catchall_376
    move-exception v0

    move-object v1, v3

    :goto_378
    if-eqz v2, :cond_380

    :try_start_37a
    invoke-static {v1, v2}, Lcom/android/server/backup/utils/RestoreUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    goto :goto_380

    .line 111
    .end local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    :catch_37e
    move-exception v0

    goto :goto_393

    .line 110
    .restart local v2    # "session":Landroid/content/pm/PackageInstaller$Session;
    :cond_380
    :goto_380
    throw v0
    :try_end_381
    .catch Ljava/lang/Exception; {:try_start_37a .. :try_end_381} :catch_37e
    .catch Ljava/io/IOException; {:try_start_37a .. :try_end_381} :catch_397

    .line 111
    .end local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v18    # "okay":Z
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .local v2, "okay":Z
    .restart local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_381
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object/from16 v13, p7

    move/from16 v18, v2

    move-object/from16 v17, v4

    move-object/from16 v19, v7

    move-object/from16 v7, p0

    move-object v4, v1

    .line 112
    .end local v2    # "okay":Z
    .end local v4    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v7    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .local v0, "t":Ljava/lang/Exception;
    .restart local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .restart local v18    # "okay":Z
    .restart local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :goto_393
    :try_start_393
    invoke-virtual {v6, v9}, Landroid/content/pm/PackageInstaller;->abandonSession(I)V

    .line 114
    throw v0
    :try_end_397
    .catch Ljava/io/IOException; {:try_start_393 .. :try_end_397} :catch_397

    .line 193
    .end local v0    # "t":Ljava/lang/Exception;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "installer":Landroid/content/pm/PackageInstaller;
    .end local v9    # "sessionId":I
    .end local v17    # "receiver":Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
    .end local v19    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    :catch_397
    move-exception v0

    goto :goto_3b3

    .end local v18    # "okay":Z
    .restart local v2    # "okay":Z
    :catch_399
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    goto :goto_3ae

    :catch_3a3
    move-exception v0

    move-object/from16 v7, p0

    move-object/from16 v12, p2

    move-object/from16 v14, p3

    move-object/from16 v10, p4

    move-object/from16 v8, p6

    :goto_3ae
    move-object/from16 v13, p7

    move-object v4, v1

    move/from16 v18, v2

    .line 194
    .end local v2    # "okay":Z
    .local v0, "e":Ljava/io/IOException;
    .restart local v18    # "okay":Z
    :goto_3b3
    const-string v1, "BackupManagerService"

    const-string v2, "Unable to transcribe restored apk for install"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x0

    .line 198
    .end local v18    # "okay":Z
    .local v0, "okay":Z
    :goto_3bb
    return v0
.end method
