.class public Lcom/android/server/pm/PackageManagerServiceUtils;
.super Ljava/lang/Object;
.source "PackageManagerServiceUtils.java"


# static fields
.field private static final SEVEN_DAYS_IN_MILLISECONDS:J = 0x240c8400L


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 331
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

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .registers 9
    .param p4, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")V"
        }
    .end annotation

    .line 139
    .local p0, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/PackageParser$Package;>;"
    .local p1, "result":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    .local p2, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    .local p3, "sortTemp":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 140
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-interface {p0, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 141
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_19
    goto :goto_4

    .line 145
    :cond_1a
    invoke-static {p3, p4}, Lcom/android/server/pm/PackageManagerServiceUtils;->sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 146
    invoke-interface {p2, p3}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 148
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 149
    .restart local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 151
    nop

    .line 152
    invoke-virtual {p4, v1}, Lcom/android/server/pm/PackageManagerService;->findSharedNonSystemLibraries(Landroid/content/pm/PackageParser$Package;)Ljava/util/List;

    move-result-object v2

    .line 153
    .local v2, "deps":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_47

    .line 154
    invoke-interface {v2, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 155
    invoke-interface {p1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 156
    invoke-interface {p2, v2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 158
    .end local v1    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v2    # "deps":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    :cond_47
    goto :goto_24

    .line 160
    :cond_48
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 161
    return-void
.end method

.method public static checkISA(Ljava/lang/String;)Z
    .registers 7
    .param p0, "isa"    # Ljava/lang/String;

    .line 293
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_18

    aget-object v4, v0, v3

    .line 294
    .local v4, "abi":Ljava/lang/String;
    invoke-static {v4}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 295
    const/4 v0, 0x1

    return v0

    .line 293
    .end local v4    # "abi":Ljava/lang/String;
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 298
    :cond_18
    return v2
.end method

.method public static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .registers 9
    .param p0, "s1"    # [Landroid/content/pm/Signature;
    .param p1, "s2"    # [Landroid/content/pm/Signature;

    .line 412
    const/4 v0, 0x1

    if-nez p0, :cond_8

    .line 413
    if-nez p1, :cond_6

    .line 414
    goto :goto_7

    .line 415
    :cond_6
    const/4 v0, -0x1

    .line 413
    :goto_7
    return v0

    .line 418
    :cond_8
    if-nez p1, :cond_c

    .line 419
    const/4 v0, -0x2

    return v0

    .line 422
    :cond_c
    array-length v1, p0

    array-length v2, p1

    const/4 v3, -0x3

    if-eq v1, v2, :cond_12

    .line 423
    return v3

    .line 427
    :cond_12
    array-length v1, p0

    const/4 v2, 0x0

    if-ne v1, v0, :cond_24

    .line 428
    aget-object v0, p0, v2

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 429
    goto :goto_23

    .line 430
    :cond_21
    nop

    .line 428
    move v2, v3

    :goto_23
    return v2

    .line 433
    :cond_24
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 434
    .local v0, "set1":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    array-length v1, p0

    move v4, v2

    :goto_2b
    if-ge v4, v1, :cond_35

    aget-object v5, p0, v4

    .line 435
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 434
    .end local v5    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 437
    :cond_35
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 438
    .local v1, "set2":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    array-length v4, p1

    move v5, v2

    :goto_3c
    if-ge v5, v4, :cond_46

    aget-object v6, p1, v5

    .line 439
    .local v6, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 438
    .end local v6    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 442
    :cond_46
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 443
    return v2

    .line 445
    :cond_4d
    return v3
.end method

.method public static compressedFileExists(Ljava/lang/String;)Z
    .registers 3
    .param p0, "codePath"    # Ljava/lang/String;

    .line 723
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceUtils;->getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    .line 724
    .local v0, "compressedFiles":[Ljava/io/File;
    if-eqz v0, :cond_b

    array-length v1, v0

    if-lez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method public static decompressFile(Ljava/io/File;Ljava/io/File;)I
    .registers 8
    .param p0, "srcFile"    # Ljava/io/File;
    .param p1, "dstFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 659
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v0, :cond_2a

    .line 660
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decompress file; src: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", dst: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 660
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_2a
    :try_start_2a
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_34} :catch_66

    .line 664
    .local v0, "fileIn":Ljava/io/InputStream;
    nop

    .line 666
    const/4 v1, 0x0

    :try_start_36
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_3c} :catch_60
    .catchall {:try_start_36 .. :try_end_3c} :catchall_5e

    .line 664
    .local v2, "fileOut":Ljava/io/OutputStream;
    nop

    .line 668
    :try_start_3d
    invoke-static {v0, v2}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 669
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1a4

    invoke-static {v3, v4}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_49} :catch_54
    .catchall {:try_start_3d .. :try_end_49} :catchall_51

    .line 670
    const/4 v3, 0x1

    .line 671
    :try_start_4a
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4d} :catch_60
    .catchall {:try_start_4a .. :try_end_4d} :catchall_5e

    :try_start_4d
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_66

    .line 670
    return v3

    .line 671
    :catchall_51
    move-exception v3

    move-object v4, v1

    goto :goto_5a

    .line 664
    :catch_54
    move-exception v3

    :try_start_55
    throw v3
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    .line 671
    :catchall_56
    move-exception v4

    move-object v5, v4

    move-object v4, v3

    move-object v3, v5

    :goto_5a
    :try_start_5a
    invoke-static {v4, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5e} :catch_60
    .catchall {:try_start_5a .. :try_end_5e} :catchall_5e

    .end local v2    # "fileOut":Ljava/io/OutputStream;
    :catchall_5e
    move-exception v2

    goto :goto_62

    .line 664
    :catch_60
    move-exception v1

    :try_start_61
    throw v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_5e

    .line 671
    :goto_62
    :try_start_62
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_66} :catch_66

    .end local v0    # "fileIn":Ljava/io/InputStream;
    :catch_66
    move-exception v0

    .line 672
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to decompress file; src: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", dst: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 672
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 676
    .end local v0    # "e":Ljava/io/IOException;
    const/16 v0, -0x6e

    return v0
.end method

.method public static deriveAbiOverride(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)Ljava/lang/String;
    .registers 4
    .param p0, "abiOverride"    # Ljava/lang/String;
    .param p1, "settings"    # Lcom/android/server/pm/PackageSetting;

    .line 387
    const/4 v0, 0x0

    .line 388
    .local v0, "cpuAbiOverride":Ljava/lang/String;
    const-string v1, "-"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 389
    const/4 v0, 0x0

    goto :goto_13

    .line 390
    :cond_b
    if-eqz p0, :cond_f

    .line 391
    move-object v0, p0

    goto :goto_13

    .line 392
    :cond_f
    if-eqz p1, :cond_13

    .line 393
    iget-object v0, p1, Lcom/android/server/pm/PackageSetting;->cpuAbiOverrideString:Ljava/lang/String;

    .line 395
    :cond_13
    :goto_13
    return-object v0
.end method

.method public static dumpCriticalInfo(Landroid/util/proto/ProtoOutputStream;)V
    .registers 6
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 325
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_36

    .line 326
    .local v0, "in":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    move-object v2, v1

    .line 327
    .local v2, "line":Ljava/lang/String;
    :goto_10
    :try_start_10
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_2a

    .line 328
    const-string/jumbo v3, "ignored: updated version"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_10

    .line 329
    :cond_21
    const-wide v3, 0x20900000007L

    invoke-virtual {p0, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_29} :catch_30
    .catchall {:try_start_10 .. :try_end_29} :catchall_2e

    goto :goto_10

    .line 331
    .end local v2    # "line":Ljava/lang/String;
    :cond_2a
    :try_start_2a
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_36

    .line 332
    .end local v0    # "in":Ljava/io/BufferedReader;
    goto :goto_37

    .line 331
    .restart local v0    # "in":Ljava/io/BufferedReader;
    :catchall_2e
    move-exception v2

    goto :goto_32

    .line 325
    :catch_30
    move-exception v1

    :try_start_31
    throw v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2e

    .line 331
    :goto_32
    :try_start_32
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_36} :catch_36

    .line 331
    .end local v0    # "in":Ljava/io/BufferedReader;
    :catch_36
    move-exception v0

    .line 333
    :goto_37
    return-void
.end method

.method public static dumpCriticalInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "msg"    # Ljava/lang/String;

    .line 336
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_36

    .line 337
    .local v0, "in":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    move-object v2, v1

    .line 338
    .local v2, "line":Ljava/lang/String;
    :goto_10
    :try_start_10
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_2a

    .line 339
    const-string/jumbo v3, "ignored: updated version"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto :goto_10

    .line 340
    :cond_21
    if-eqz p1, :cond_26

    .line 341
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 343
    :cond_26
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_29} :catch_30
    .catchall {:try_start_10 .. :try_end_29} :catchall_2e

    goto :goto_10

    .line 345
    .end local v2    # "line":Ljava/lang/String;
    :cond_2a
    :try_start_2a
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_36

    .line 346
    .end local v0    # "in":Ljava/io/BufferedReader;
    goto :goto_37

    .line 345
    .restart local v0    # "in":Ljava/io/BufferedReader;
    :catchall_2e
    move-exception v2

    goto :goto_32

    .line 336
    :catch_30
    move-exception v1

    :try_start_31
    throw v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_2e

    .line 345
    :goto_32
    :try_start_32
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_36} :catch_36

    .line 345
    .end local v0    # "in":Ljava/io/BufferedReader;
    :catch_36
    move-exception v0

    .line 347
    :goto_37
    return-void
.end method

.method public static enforceShellRestriction(Ljava/lang/String;II)V
    .registers 6
    .param p0, "restriction"    # Ljava/lang/String;
    .param p1, "callingUid"    # I
    .param p2, "userHandle"    # I

    .line 369
    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_4b

    .line 370
    if-ltz p2, :cond_26

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    .line 371
    invoke-virtual {v0, p0, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_26

    .line 373
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shell does not have permission to access user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_26
    :goto_26
    if-gez p2, :cond_4b

    .line 376
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to check shell permission for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    .line 377
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_4b
    return-void
.end method

.method public static getCompressedFiles(Ljava/lang/String;)[Ljava/io/File;
    .registers 10
    .param p0, "codePath"    # Ljava/lang/String;

    .line 680
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 681
    .local v0, "stubCodePath":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 696
    .local v1, "stubName":Ljava/lang/String;
    const-string v2, "-Stub"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 697
    .local v2, "idx":I
    const/4 v3, 0x0

    if-ltz v2, :cond_7c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "-Stub"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v2

    if-eq v4, v5, :cond_20

    goto :goto_7c

    .line 701
    :cond_20
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 702
    .local v4, "stubParentDir":Ljava/io/File;
    if-nez v4, :cond_3d

    .line 703
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to determine stub parent dir for codePath: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    return-object v3

    .line 707
    :cond_3d
    new-instance v3, Ljava/io/File;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 708
    .local v3, "compressedPath":Ljava/io/File;
    new-instance v5, Lcom/android/server/pm/PackageManagerServiceUtils$1;

    invoke-direct {v5}, Lcom/android/server/pm/PackageManagerServiceUtils$1;-><init>()V

    invoke-virtual {v3, v5}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 715
    .local v5, "files":[Ljava/io/File;
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_COMPRESSION:Z

    if-eqz v6, :cond_7b

    if-eqz v5, :cond_7b

    array-length v6, v5

    if-lez v6, :cond_7b

    .line 716
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCompressedFiles["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_7b
    return-object v5

    .line 698
    .end local v3    # "compressedPath":Ljava/io/File;
    .end local v4    # "stubParentDir":Ljava/io/File;
    .end local v5    # "files":[Ljava/io/File;
    :cond_7c
    :goto_7c
    return-object v3
.end method

.method public static getLastModifiedTime(Landroid/content/pm/PackageParser$Package;)J
    .registers 9
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 302
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, "srcFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_12

    .line 304
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    return-wide v1

    .line 306
    :cond_12
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .local v1, "baseFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 308
    .local v2, "maxModifiedTime":J
    iget-object v4, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    if-eqz v4, :cond_3c

    .line 309
    iget-object v4, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_26
    if-ltz v4, :cond_3c

    .line 310
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    .local v5, "splitFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 309
    .end local v5    # "splitFile":Ljava/io/File;
    add-int/lit8 v4, v4, -0x1

    goto :goto_26

    .line 314
    .end local v4    # "i":I
    :cond_3c
    return-wide v2
.end method

.method private static getPackageNamesForIntent(Landroid/content/Intent;I)Landroid/util/ArraySet;
    .registers 7
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    move-object v1, v0

    .line 103
    .local v1, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p0, v0, v3, p1}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_11

    move-object v1, v0

    .line 106
    goto :goto_12

    .line 105
    :catch_11
    move-exception v0

    .line 107
    :goto_12
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 108
    .local v0, "pkgNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-eqz v1, :cond_31

    .line 109
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 110
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    goto :goto_1d

    .line 113
    :cond_31
    return-object v0
.end method

.method public static getPackagesForDexopt(Ljava/util/Collection;Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;
    .registers 14
    .param p1, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    .line 168
    .local p0, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 169
    .local v0, "remainingPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 170
    .local v1, "result":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .local v2, "sortTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Package;>;"
    sget-object v3, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$QMV-UHbRIK26QMZL5iM27MchX7U;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$QMV-UHbRIK26QMZL5iM27MchX7U;

    invoke-static {v3, v1, v0, v2, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 177
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.PRE_BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v3, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->getPackageNamesForIntent(Landroid/content/Intent;I)Landroid/util/ArraySet;

    move-result-object v4

    .line 179
    .local v4, "pkgNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v5, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$nPt0Hym3GvYeWA2vwfOLFDxZmCE;

    invoke-direct {v5, v4}, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$nPt0Hym3GvYeWA2vwfOLFDxZmCE;-><init>(Landroid/util/ArraySet;)V

    invoke-static {v5, v1, v0, v2, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 183
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->getDexManager()Lcom/android/server/pm/dex/DexManager;

    move-result-object v5

    .line 184
    .local v5, "dexManager":Lcom/android/server/pm/dex/DexManager;
    new-instance v6, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$fMBP3pPR7BB2hICieRxkdNG-3H8;

    invoke-direct {v6, v5}, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$fMBP3pPR7BB2hICieRxkdNG-3H8;-><init>(Lcom/android/server/pm/dex/DexManager;)V

    invoke-static {v6, v1, v0, v2, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 192
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_95

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isHistoricalPackageUsageAvailable()Z

    move-result v6

    if-eqz v6, :cond_95

    .line 193
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    if-eqz v6, :cond_4f

    .line 194
    const-string v6, "PackageManager"

    const-string v7, "Looking at historical package use"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_4f
    sget-object v6, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$whx96xO50U3fax1NRe1upTcx9jc;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$whx96xO50U3fax1NRe1upTcx9jc;

    invoke-static {v0, v6}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    .line 200
    .local v6, "lastUsed":Landroid/content/pm/PackageParser$Package;
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    if-eqz v7, :cond_78

    .line 201
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Taking package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " as reference in time use"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_78
    nop

    .line 204
    invoke-virtual {v6}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v7

    .line 206
    .local v7, "estimatedPreviousSystemUseTime":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-eqz v9, :cond_8e

    .line 207
    const-wide/32 v9, 0x240c8400

    sub-long v9, v7, v9

    .line 208
    .local v9, "cutoffTime":J
    new-instance v11, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$p5q19y4-2x-i747j_hTNL1EMzt0;

    .local v11, "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/PackageParser$Package;>;"
    invoke-direct {v11, v9, v10}, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$p5q19y4-2x-i747j_hTNL1EMzt0;-><init>(J)V

    .line 210
    .end local v9    # "cutoffTime":J
    goto :goto_90

    .line 212
    .end local v11    # "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/PackageParser$Package;>;"
    :cond_8e
    sget-object v11, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$Fz3elZ0VmMMv9-wl_G3AN15dUU8;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$Fz3elZ0VmMMv9-wl_G3AN15dUU8;

    .restart local v11    # "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/PackageParser$Package;>;"
    :goto_90
    move-object v9, v11

    .line 214
    .end local v11    # "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/PackageParser$Package;>;"
    .local v9, "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/PackageParser$Package;>;"
    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 215
    .end local v6    # "lastUsed":Landroid/content/pm/PackageParser$Package;
    .end local v7    # "estimatedPreviousSystemUseTime":J
    goto :goto_97

    .line 217
    .end local v9    # "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/PackageParser$Package;>;"
    :cond_95
    sget-object v9, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$hVRkjdaFuAMTY9J9JQ7JyWMYCHA;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$hVRkjdaFuAMTY9J9JQ7JyWMYCHA;

    .restart local v9    # "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/PackageParser$Package;>;"
    :goto_97
    move-object v6, v9

    .line 219
    .end local v9    # "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/PackageParser$Package;>;"
    .local v6, "remainingPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/pm/PackageParser$Package;>;"
    invoke-static {v6, v1, v0, v2, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->applyPackageFilter(Ljava/util/function/Predicate;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 222
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    if-eqz v7, :cond_d3

    .line 223
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Packages to be dexopted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceUtils;->packagesToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Packages skipped from dexopt: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->packagesToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_d3
    return-object v1
.end method

.method private static getSettingsProblemFile()Ljava/io/File;
    .registers 4

    .line 318
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 319
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 320
    .local v1, "systemDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "uiderrors.txt"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 321
    .local v2, "fname":Ljava/io/File;
    return-object v2
.end method

.method static isApkVerificationForced(Lcom/android/server/pm/PackageSetting;)Z
    .registers 2
    .param p0, "disabledPs"    # Lcom/android/server/pm/PackageSetting;

    .line 545
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isPrivileged()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isApkVerityEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method static isApkVerityEnabled()Z
    .registers 2

    .line 540
    const-string/jumbo v0, "ro.apk_verity.mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v1, 0x1

    nop

    :cond_c
    return v1
.end method

.method public static isUnusedSinceTimeInMillis(JJJLcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;JJ)Z
    .registers 16
    .param p0, "firstInstallTime"    # J
    .param p2, "currentTimeInMillis"    # J
    .param p4, "thresholdTimeinMillis"    # J
    .param p6, "packageUseInfo"    # Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;
    .param p7, "latestPackageUseTimeInMillis"    # J
    .param p9, "latestForegroundPackageUseTimeInMillis"    # J

    .line 242
    sub-long v0, p2, p0

    cmp-long v0, v0, p4

    const/4 v1, 0x0

    if-gez v0, :cond_8

    .line 243
    return v1

    .line 247
    :cond_8
    sub-long v2, p2, p9

    cmp-long v0, v2, p4

    const/4 v2, 0x1

    if-gez v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    .line 251
    .local v0, "isActiveInForeground":Z
    :goto_12
    if-eqz v0, :cond_15

    .line 252
    return v1

    .line 257
    :cond_15
    sub-long v3, p2, p7

    cmp-long v3, v3, p4

    if-gez v3, :cond_23

    .line 260
    invoke-virtual {p6}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result v3

    if-eqz v3, :cond_23

    move v3, v2

    goto :goto_24

    :cond_23
    move v3, v1

    .line 262
    .local v3, "isActiveInBackgroundAndUsedByOtherPackages":Z
    :goto_24
    if-nez v3, :cond_28

    move v1, v2

    nop

    :cond_28
    return v1
.end method

.method static synthetic lambda$getPackagesForDexopt$1(Landroid/content/pm/PackageParser$Package;)Z
    .registers 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 173
    iget-boolean v0, p0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$2(Landroid/util/ArraySet;Landroid/content/pm/PackageParser$Package;)Z
    .registers 3
    .param p0, "pkgNames"    # Landroid/util/ArraySet;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 179
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$3(Lcom/android/server/pm/dex/DexManager;Landroid/content/pm/PackageParser$Package;)Z
    .registers 3
    .param p0, "dexManager"    # Lcom/android/server/pm/dex/DexManager;
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 185
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/DexManager;->getPackageUseInfoOrDefault(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/android/server/pm/dex/PackageDexUsage$PackageUseInfo;->isAnyCodePathUsedByOtherApps()Z

    move-result v0

    .line 185
    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$4(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I
    .registers 6
    .param p0, "pkg1"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "pkg2"    # Landroid/content/pm/PackageParser$Package;

    .line 198
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    .line 199
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v2

    .line 198
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$5(JLandroid/content/pm/PackageParser$Package;)Z
    .registers 5
    .param p0, "cutoffTime"    # J
    .param p2, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 209
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$6(Landroid/content/pm/PackageParser$Package;)Z
    .registers 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 212
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getPackagesForDexopt$7(Landroid/content/pm/PackageParser$Package;)Z
    .registers 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$sortPackagesByUsageDate$0(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;)I
    .registers 6
    .param p0, "pkg1"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "pkg2"    # Landroid/content/pm/PackageParser$Package;

    .line 126
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v0

    .line 127
    invoke-virtual {p0}, Landroid/content/pm/PackageParser$Package;->getLatestForegroundPackageUseTimeInMills()J

    move-result-wide v2

    .line 126
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public static logCriticalInfo(ILjava/lang/String;)V
    .registers 10
    .param p0, "priority"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .line 350
    const-string v0, "PackageManager"

    invoke-static {p0, v0, p1}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-static {p1}, Lcom/android/server/EventLogTags;->writePmCriticalInfo(Ljava/lang/String;)V

    .line 353
    :try_start_8
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->getSettingsProblemFile()Ljava/io/File;

    move-result-object v0

    .line 354
    .local v0, "fname":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 355
    .local v1, "out":Ljava/io/FileOutputStream;
    new-instance v2, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v2, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 356
    .local v2, "pw":Ljava/io/PrintWriter;
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 357
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, "dateString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 360
    nop

    .line 361
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1fc

    .line 360
    const/4 v7, -0x1

    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_4e} :catch_4f

    .line 365
    .end local v0    # "fname":Ljava/io/File;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v4    # "dateString":Ljava/lang/String;
    goto :goto_50

    .line 364
    :catch_4f
    move-exception v0

    .line 366
    :goto_50
    return-void
.end method

.method private static matchSignatureInSystem(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)Z
    .registers 8
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "disabledPkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .line 518
    const/4 v0, 0x0

    const/4 v1, 0x6

    :try_start_2
    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Z)V

    .line 519
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v4, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    if-nez v2, :cond_3e

    iget-object v2, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v4, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v4, v4, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const/16 v5, 0x8

    .line 522
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    if-eqz v2, :cond_27

    goto :goto_3e

    .line 527
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated system app mismatches cert on /system: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_3d
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_3d} :catch_3f

    .line 529
    return v0

    .line 525
    :cond_3e
    :goto_3e
    return v3

    .line 531
    :catch_3f
    move-exception v2

    .line 532
    .local v2, "e":Landroid/content/pm/PackageParser$PackageParserException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to collect cert for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    invoke-virtual {v2}, Landroid/content/pm/PackageParser$PackageParserException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 532
    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 534
    return v0
.end method

.method private static matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/PackageParser$SigningDetails;)Z
    .registers 14
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "packageSignatures"    # Lcom/android/server/pm/PackageSignatures;
    .param p2, "parsedSignatures"    # Landroid/content/pm/PackageParser$SigningDetails;

    .line 456
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 457
    .local v0, "existingSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    iget-object v1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_16

    aget-object v5, v1, v4

    .line 458
    .local v5, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 457
    .end local v5    # "sig":Landroid/content/pm/Signature;
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 460
    :cond_16
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 461
    .local v1, "scannedCompatSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/pm/Signature;>;"
    iget-object v2, p2, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v2

    move v5, v3

    :goto_1f
    if-ge v5, v4, :cond_3b

    aget-object v6, v2, v5

    .line 463
    .local v6, "sig":Landroid/content/pm/Signature;
    :try_start_23
    invoke-virtual {v6}, Landroid/content/pm/Signature;->getChainSignatures()[Landroid/content/pm/Signature;

    move-result-object v7

    .line 464
    .local v7, "chainSignatures":[Landroid/content/pm/Signature;
    array-length v8, v7

    move v9, v3

    :goto_29
    if-ge v9, v8, :cond_33

    aget-object v10, v7, v9

    .line 465
    .local v10, "chainSig":Landroid/content/pm/Signature;
    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_23 .. :try_end_30} :catch_34

    .line 464
    .end local v10    # "chainSig":Landroid/content/pm/Signature;
    add-int/lit8 v9, v9, 0x1

    goto :goto_29

    .line 469
    .end local v7    # "chainSignatures":[Landroid/content/pm/Signature;
    :cond_33
    goto :goto_38

    .line 467
    :catch_34
    move-exception v7

    .line 468
    .local v7, "e":Ljava/security/cert/CertificateEncodingException;
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 461
    .end local v6    # "sig":Landroid/content/pm/Signature;
    .end local v7    # "e":Ljava/security/cert/CertificateEncodingException;
    :goto_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 472
    :cond_3b
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 474
    iput-object p2, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 475
    const/4 v2, 0x1

    return v2

    .line 476
    :cond_45
    invoke-virtual {p2}, Landroid/content/pm/PackageParser$SigningDetails;->hasPastSigningCertificates()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 481
    const/4 v2, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Existing package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has flattened signing certificate chain. Unable to install newer version with rotated signing certificate."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 485
    :cond_65
    return v3
.end method

.method private static matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;I)Z
    .registers 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "existingSignatures"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p2, "parsedSignatures"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p3, "flags"    # I
        .annotation build Landroid/content/pm/PackageParser$SigningDetails$CertCapabilities;
        .end annotation
    .end param

    .line 493
    const/4 v0, 0x0

    .line 495
    .local v0, "msg":Ljava/lang/String;
    const/4 v1, 0x4

    :try_start_2
    invoke-virtual {p2, p1, p3}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapabilityRecover(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 496
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recovered effectively matching certificates for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V
    :try_end_1c
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_1c} :catch_1f

    .line 498
    const/4 v1, 0x1

    return v1

    .line 502
    :cond_1e
    goto :goto_24

    .line 500
    :catch_1f
    move-exception v2

    .line 501
    .local v2, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 503
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :goto_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to recover certificates for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 505
    const/4 v1, 0x0

    return v1
.end method

.method public static packagesToString(Ljava/util/Collection;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 278
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 280
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_20

    .line 281
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_20
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    goto :goto_9

    .line 285
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static realpath(Ljava/io/File;)Ljava/lang/String;
    .registers 3
    .param p0, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->realpath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 272
    :catch_9
    move-exception v0

    .line 273
    .local v0, "ee":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public static sortPackagesByUsageDate(Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V
    .registers 3
    .param p1, "packageManagerService"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            ")V"
        }
    .end annotation

    .line 121
    .local p0, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->isHistoricalPackageUsageAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 122
    return-void

    .line 125
    :cond_7
    sget-object v0, Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$ePZ6rsJ05hJ2glmOqcq1_jX6J8w;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerServiceUtils$ePZ6rsJ05hJ2glmOqcq1_jX6J8w;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 128
    return-void
.end method

.method public static verifySignatures(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Landroid/content/pm/PackageParser$SigningDetails;ZZ)Z
    .registers 13
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "disabledPkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "parsedSignatures"    # Landroid/content/pm/PackageParser$SigningDetails;
    .param p3, "compareCompat"    # Z
    .param p4, "compareRecover"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 557
    iget-object v0, p0, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    .line 558
    .local v0, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 559
    .local v1, "compatMatch":Z
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v2, v2, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_aa

    .line 562
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {p2, v2, v4}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    const/16 v5, 0x8

    if-nez v2, :cond_26

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 565
    invoke-virtual {v2, p2, v5}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_26

    :cond_24
    move v2, v3

    goto :goto_27

    :cond_26
    :goto_26
    move v2, v4

    .line 568
    .local v2, "match":Z
    :goto_27
    if-nez v2, :cond_32

    if-eqz p3, :cond_32

    .line 569
    iget-object v6, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-static {v0, v6, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v2

    .line 571
    move v1, v2

    .line 573
    :cond_32
    if-nez v2, :cond_4f

    if-eqz p4, :cond_4f

    .line 574
    iget-object v6, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v6, v6, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-static {v0, v6, p2, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v6

    if-nez v6, :cond_4d

    iget-object v6, p0, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v6, v6, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 579
    invoke-static {v0, p2, v6, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v5

    if-eqz v5, :cond_4b

    goto :goto_4d

    :cond_4b
    move v5, v3

    goto :goto_4e

    :cond_4d
    :goto_4d
    move v5, v4

    :goto_4e
    move v2, v5

    .line 586
    :cond_4f
    if-nez v2, :cond_5b

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->isApkVerificationForced(Lcom/android/server/pm/PackageSetting;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 587
    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignatureInSystem(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)Z

    move-result v2

    .line 590
    :cond_5b
    if-nez v2, :cond_aa

    .line 602
    new-array v5, v4, [I

    const/16 v6, 0x12

    aput v6, v5, v3

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_8d

    iget-object v5, p0, Lcom/android/server/pm/PackageSetting;->codePathString:Ljava/lang/String;

    .line 603
    invoke-static {v5}, Lcom/android/server/pm/OemPackageManagerHelper;->isReserveApp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 604
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " signatures do not match the previously installed version, use system reserve app!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    .line 608
    :cond_8d
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    const/4 v4, -0x7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " signatures do not match previously installed version; ignoring!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 616
    .end local v2    # "match":Z
    :cond_aa
    :goto_aa
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    if-eqz v2, :cond_12e

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v5, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-eq v2, v5, :cond_12e

    .line 625
    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 626
    const/4 v5, 0x2

    invoke-virtual {p2, v2, v5}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    if-nez v2, :cond_d4

    iget-object v2, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v2, v2, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v2, v2, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 629
    invoke-virtual {v2, p2, v5}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v2

    if-eqz v2, :cond_d2

    goto :goto_d4

    :cond_d2
    move v2, v3

    goto :goto_d5

    :cond_d4
    :goto_d4
    move v2, v4

    .line 632
    .restart local v2    # "match":Z
    :goto_d5
    if-nez v2, :cond_e1

    if-eqz p3, :cond_e1

    .line 633
    iget-object v6, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v6, v6, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-static {v0, v6, p2}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesCompat(Ljava/lang/String;Lcom/android/server/pm/PackageSignatures;Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v2

    .line 636
    :cond_e1
    if-nez v2, :cond_102

    if-eqz p4, :cond_102

    .line 637
    iget-object v6, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v6, v6, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v6, v6, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 638
    invoke-static {v0, v6, p2, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v6

    if-nez v6, :cond_ff

    iget-object v6, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v6, v6, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v6, v6, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 642
    invoke-static {v0, p2, v6, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->matchSignaturesRecover(Ljava/lang/String;Landroid/content/pm/PackageParser$SigningDetails;Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result v5

    if-eqz v5, :cond_fe

    goto :goto_ff

    :cond_fe
    goto :goto_100

    :cond_ff
    :goto_ff
    move v3, v4

    :goto_100
    move v2, v3

    .line 646
    or-int/2addr v1, v2

    .line 648
    :cond_102
    if-eqz v2, :cond_105

    .end local v2    # "match":Z
    goto :goto_12e

    .line 649
    .restart local v2    # "match":Z
    :cond_105
    new-instance v3, Lcom/android/server/pm/PackageManagerException;

    const/4 v4, -0x8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has no signatures that match those in shared user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/pm/PackageSetting;->sharedUser:Lcom/android/server/pm/SharedUserSetting;

    iget-object v6, v6, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; ignoring!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 655
    .end local v2    # "match":Z
    :cond_12e
    :goto_12e
    return v1
.end method
