.class public abstract Lcom/android/server/security/VerityUtils;
.super Ljava/lang/Object;
.source "VerityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;,
        Lcom/android/server/security/VerityUtils$SetupResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VerityUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateApkVerityIntoSharedMemory(Ljava/lang/String;[B)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Landroid/util/Pair<",
            "Landroid/os/SharedMemory;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;,
            Ljava/security/DigestException;,
            Ljava/security/NoSuchAlgorithmException;,
            Landroid/util/apk/SignatureNotFoundException;
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;-><init>(Lcom/android/server/security/VerityUtils$1;)V

    .line 110
    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureVerifier;->generateApkVerity(Ljava/lang/String;Landroid/util/apk/ByteBufferFactory;)[B

    move-result-object p0

    .line 114
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 118
    invoke-virtual {v0}, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->getBufferLimit()I

    move-result p0

    .line 119
    invoke-virtual {v0}, Lcom/android/server/security/VerityUtils$TrackedShmBufferFactory;->releaseSharedMemory()Landroid/os/SharedMemory;

    move-result-object p1

    .line 120
    if-eqz p1, :cond_1

    .line 123
    sget v0, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {p1, v0}, Landroid/os/SharedMemory;->setProtect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 124
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Failed to set up shared memory correctly"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 121
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to generate verity tree into shared memory"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 115
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Locally generated verity root hash does not match"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static generateApkVeritySetupData(Ljava/lang/String;)Lcom/android/server/security/VerityUtils$SetupResult;
    .locals 3

    .line 53
    nop

    .line 55
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object v1

    .line 56
    if-nez v1, :cond_0

    .line 60
    invoke-static {}, Lcom/android/server/security/VerityUtils$SetupResult;->skipped()Lcom/android/server/security/VerityUtils$SetupResult;

    move-result-object p0

    .line 77
    nop

    .line 60
    return-object p0

    .line 63
    :cond_0
    invoke-static {p0, v1}, Lcom/android/server/security/VerityUtils;->generateApkVerityIntoSharedMemory(Ljava/lang/String;[B)Landroid/util/Pair;

    move-result-object p0

    .line 65
    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/os/SharedMemory;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 66
    :try_start_1
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 67
    invoke-virtual {v1}, Landroid/os/SharedMemory;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {v0}, Landroid/system/Os;->dup(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/server/security/VerityUtils$SetupResult;->ok(Ljava/io/FileDescriptor;I)Lcom/android/server/security/VerityUtils$SetupResult;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/DigestException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    if-eqz v1, :cond_2

    .line 78
    invoke-virtual {v1}, Landroid/os/SharedMemory;->close()V

    .line 71
    :cond_2
    return-object p0

    .line 69
    :cond_3
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/android/server/security/VerityUtils$SetupResult;->failed()Lcom/android/server/security/VerityUtils$SetupResult;

    move-result-object p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/DigestException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/util/apk/SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    if-eqz v1, :cond_4

    .line 78
    invoke-virtual {v1}, Landroid/os/SharedMemory;->close()V

    .line 69
    :cond_4
    return-object p0

    .line 77
    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    .line 72
    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    .line 77
    :catchall_1
    move-exception p0

    goto :goto_2

    .line 72
    :catch_1
    move-exception p0

    .line 74
    :goto_1
    :try_start_3
    const-string v1, "VerityUtils"

    const-string v2, "Failed to set up apk verity: "

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    invoke-static {}, Lcom/android/server/security/VerityUtils$SetupResult;->failed()Lcom/android/server/security/VerityUtils$SetupResult;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 77
    if-eqz v0, :cond_5

    .line 78
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    .line 75
    :cond_5
    return-object p0

    .line 77
    :goto_2
    if-eqz v0, :cond_6

    .line 78
    invoke-virtual {v0}, Landroid/os/SharedMemory;->close()V

    :cond_6
    throw p0
.end method

.method public static generateFsverityRootHash(Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/DigestException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->generateFsverityRootHash(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getVerityRootHash(Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/SignatureNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 96
    invoke-static {p0}, Landroid/util/apk/ApkSignatureVerifier;->getVerityRootHash(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method
