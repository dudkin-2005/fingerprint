.class public Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;
.super Ljava/lang/Object;
.source "RecoverableKeyGenerator.java"


# static fields
.field static final KEY_SIZE_BITS:I = 0x100

.field private static final RESULT_CANNOT_INSERT_ROW:I = -0x1

.field private static final SECRET_KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final TAG:Ljava/lang/String; = "PlatformKeyGen"


# instance fields
.field private final mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

.field private final mKeyGenerator:Ljavax/crypto/KeyGenerator;


# direct methods
.method private constructor <init>(Ljavax/crypto/KeyGenerator;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mKeyGenerator:Ljavax/crypto/KeyGenerator;

    .line 73
    iput-object p2, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    .line 74
    return-void
.end method

.method public static newInstance(Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 62
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 63
    new-instance v1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;

    invoke-direct {v1, v0, p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;-><init>(Ljavax/crypto/KeyGenerator;Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;)V

    return-object v1
.end method


# virtual methods
.method public generateAndStoreKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;IILjava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mKeyGenerator:Ljavax/crypto/KeyGenerator;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 98
    iget-object v0, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mKeyGenerator:Ljavax/crypto/KeyGenerator;

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 100
    invoke-static {p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->fromSecretKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    move-result-object p1

    .line 101
    iget-object v1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {v1, p2, p3, p4, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->insertKey(IILjava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;)J

    move-result-wide v1

    .line 103
    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 109
    iget-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {p1, p2, p3, v1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    move-result-wide p1

    .line 110
    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-gez p1, :cond_0

    .line 111
    const-string p1, "PlatformKeyGen"

    const-string p2, "Failed to set the shoudCreateSnapshot flag in the local DB."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    return-object p1

    .line 104
    :cond_1
    new-instance p1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 106
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v2

    aput-object p4, v0, v1

    .line 105
    const-string p3, "Failed writing (%d, %s) to database."

    invoke-static {p2, p3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public importKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;IILjava/lang/String;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 140
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p5, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 142
    invoke-static {p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;->fromSecretKey(Lcom/android/server/locksettings/recoverablekeystore/PlatformEncryptionKey;Ljavax/crypto/SecretKey;)Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;

    move-result-object p1

    .line 143
    iget-object p5, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {p5, p2, p3, p4, p1}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->insertKey(IILjava/lang/String;Lcom/android/server/locksettings/recoverablekeystore/WrappedKey;)J

    move-result-wide v0

    .line 145
    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    const/4 p5, 0x1

    if-eqz p1, :cond_0

    .line 151
    iget-object p1, p0, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyGenerator;->mDatabase:Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;

    invoke-virtual {p1, p2, p3, p5}, Lcom/android/server/locksettings/recoverablekeystore/storage/RecoverableKeyStoreDb;->setShouldCreateSnapshot(IIZ)J

    .line 152
    return-void

    .line 146
    :cond_0
    new-instance p1, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 148
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    aput-object p4, v0, p5

    .line 147
    const-string p3, "Failed writing (%d, %s) to database."

    invoke-static {p2, p3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStorageException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
