.class Lcom/android/server/accounts/CryptoHelper;
.super Ljava/lang/Object;
.source "CryptoHelper.java"


# static fields
.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final IV_LENGTH:I = 0x10

.field private static final KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final KEY_CIPHER:Ljava/lang/String; = "cipher"

.field private static final KEY_IV:Ljava/lang/String; = "iv"

.field private static final KEY_MAC:Ljava/lang/String; = "mac"

.field private static final MAC_ALGORITHM:Ljava/lang/String; = "HMACSHA256"

.field private static final TAG:Ljava/lang/String; = "Account"

.field private static sInstance:Lcom/android/server/accounts/CryptoHelper;


# instance fields
.field private final mEncryptionKey:Ljavax/crypto/SecretKey;

.field private final mMacKey:Ljavax/crypto/SecretKey;


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/CryptoHelper;->mEncryptionKey:Ljavax/crypto/SecretKey;

    .line 51
    const-string v0, "HMACSHA256"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/CryptoHelper;->mMacKey:Ljavax/crypto/SecretKey;

    .line 53
    return-void
.end method

.method private static constantTimeArrayEquals([B[B)Z
    .locals 6

    .line 124
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    .line 127
    :cond_0
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    .line 128
    return v1

    .line 130
    :cond_1
    nop

    .line 131
    move v3, v0

    move v2, v1

    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_3

    .line 132
    aget-byte v4, p0, v2

    aget-byte v5, p1, v2

    if-ne v4, v5, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    and-int/2addr v3, v4

    .line 131
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 134
    :cond_3
    return v3

    .line 125
    :cond_4
    :goto_2
    if-ne p0, p1, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    :goto_3
    return v0
.end method

.method private createMac([B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 116
    const-string v0, "HMACSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/android/server/accounts/CryptoHelper;->mMacKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 118
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 119
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 120
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p1

    return-object p1
.end method

.method static declared-synchronized getInstance()Lcom/android/server/accounts/CryptoHelper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-class v0, Lcom/android/server/accounts/CryptoHelper;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/android/server/accounts/CryptoHelper;->sInstance:Lcom/android/server/accounts/CryptoHelper;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/android/server/accounts/CryptoHelper;

    invoke-direct {v1}, Lcom/android/server/accounts/CryptoHelper;-><init>()V

    sput-object v1, Lcom/android/server/accounts/CryptoHelper;->sInstance:Lcom/android/server/accounts/CryptoHelper;

    .line 44
    :cond_0
    sget-object v1, Lcom/android/server/accounts/CryptoHelper;->sInstance:Lcom/android/server/accounts/CryptoHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 40
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private verifyMac([B[B[B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 104
    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/CryptoHelper;->createMac([B[B)[B

    move-result-object p1

    invoke-static {p3, p1}, Lcom/android/server/accounts/CryptoHelper;->constantTimeArrayEquals([B[B)Z

    move-result p1

    return p1

    .line 106
    :cond_1
    :goto_0
    const-string p1, "Account"

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 107
    const-string p1, "Account"

    const-string p2, "Cipher or MAC is empty!"

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method decryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 79
    const-string v0, "Cannot decrypt null bundle."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "iv"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 81
    const-string v1, "cipher"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 82
    const-string v2, "mac"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 83
    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/accounts/CryptoHelper;->verifyMac([B[B[B)Z

    move-result p1

    if-nez p1, :cond_0

    .line 84
    const-string p1, "Account"

    const-string v0, "Escrow mac mismatched!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 p1, 0x0

    return-object p1

    .line 88
    :cond_0
    new-instance p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 89
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 90
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/accounts/CryptoHelper;->mEncryptionKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v2, v3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 91
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 93
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 94
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 95
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 97
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 98
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 99
    return-object p1
.end method

.method encryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 57
    const-string v0, "Cannot encrypt null bundle."

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 59
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    .line 61
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 63
    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/android/server/accounts/CryptoHelper;->mEncryptionKey:Ljavax/crypto/SecretKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 65
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 66
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/android/server/accounts/CryptoHelper;->createMac([B[B)[B

    move-result-object v1

    .line 69
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 70
    const-string v3, "cipher"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 71
    const-string p1, "mac"

    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 72
    const-string p1, "iv"

    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 74
    return-object v2
.end method
