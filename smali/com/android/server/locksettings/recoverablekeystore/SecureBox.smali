.class public Lcom/android/server/locksettings/recoverablekeystore/SecureBox;
.super Ljava/lang/Object;
.source "SecureBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;
    }
.end annotation


# static fields
.field private static final BIG_INT_02:Ljava/math/BigInteger;

.field private static final CIPHER_ALG:Ljava/lang/String; = "AES"

.field private static final CONSTANT_01:[B

.field private static final EC_ALG:Ljava/lang/String; = "EC"

.field private static final EC_COORDINATE_LEN_BYTES:I = 0x20

.field private static final EC_P256_COMMON_NAME:Ljava/lang/String; = "secp256r1"

.field private static final EC_P256_OPENSSL_NAME:Ljava/lang/String; = "prime256v1"

.field private static final EC_PARAM_A:Ljava/math/BigInteger;

.field private static final EC_PARAM_B:Ljava/math/BigInteger;

.field private static final EC_PARAM_P:Ljava/math/BigInteger;

.field static final EC_PARAM_SPEC:Ljava/security/spec/ECParameterSpec;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final EC_PUBLIC_KEY_LEN_BYTES:I = 0x41

.field private static final EC_PUBLIC_KEY_PREFIX:B = 0x4t

.field private static final EMPTY_BYTE_ARRAY:[B

.field private static final ENC_ALG:Ljava/lang/String; = "AES/GCM/NoPadding"

.field private static final GCM_KEY_LEN_BYTES:I = 0x10

.field private static final GCM_NONCE_LEN_BYTES:I = 0xc

.field private static final GCM_TAG_LEN_BYTES:I = 0x10

.field private static final HKDF_INFO_WITHOUT_PUBLIC_KEY:[B

.field private static final HKDF_INFO_WITH_PUBLIC_KEY:[B

.field private static final HKDF_SALT:[B

.field private static final KA_ALG:Ljava/lang/String; = "ECDH"

.field private static final MAC_ALG:Ljava/lang/String; = "HmacSHA256"

.field private static final VERSION:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 70
    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->VERSION:[B

    .line 71
    new-array v0, v0, [[B

    const-string v1, "SECUREBOX"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->VERSION:[B

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->concat([[B)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_SALT:[B

    .line 73
    const-string v0, "P256 HKDF-SHA-256 AES-128-GCM"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_INFO_WITH_PUBLIC_KEY:[B

    .line 75
    const-string v0, "SHARED HKDF-SHA-256 AES-128-GCM"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_INFO_WITHOUT_PUBLIC_KEY:[B

    .line 77
    new-array v0, v3, [B

    aput-byte v3, v0, v2

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->CONSTANT_01:[B

    .line 78
    new-array v0, v2, [B

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EMPTY_BYTE_ARRAY:[B

    .line 95
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->BIG_INT_02:Ljava/math/BigInteger;

    .line 103
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "ffffffff00000001000000000000000000000000ffffffffffffffffffffffff"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    .line 105
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    new-instance v1, Ljava/math/BigInteger;

    const-string v4, "3"

    invoke-direct {v1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_A:Ljava/math/BigInteger;

    .line 106
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "5ac635d8aa3a93e7b3ebbd55769886bc651d06b0cc53b0f63bce3c3e27d2604b"

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_B:Ljava/math/BigInteger;

    .line 112
    new-instance v0, Ljava/security/spec/EllipticCurve;

    new-instance v1, Ljava/security/spec/ECFieldFp;

    sget-object v4, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    invoke-direct {v1, v4}, Ljava/security/spec/ECFieldFp;-><init>(Ljava/math/BigInteger;)V

    sget-object v4, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_A:Ljava/math/BigInteger;

    sget-object v5, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_B:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v4, v5}, Ljava/security/spec/EllipticCurve;-><init>(Ljava/security/spec/ECField;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 114
    new-instance v1, Ljava/security/spec/ECPoint;

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296"

    invoke-direct {v4, v5, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v5, Ljava/math/BigInteger;

    const-string v6, "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5"

    invoke-direct {v5, v6, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v4, v5}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 122
    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "ffffffff00000000ffffffffffffffffbce6faada7179e84f3b9cac2fc632551"

    invoke-direct {v4, v5, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 125
    new-instance v2, Ljava/security/spec/ECParameterSpec;

    invoke-direct {v2, v0, v1, v4, v3}, Ljava/security/spec/ECParameterSpec;-><init>(Ljava/security/spec/EllipticCurve;Ljava/security/spec/ECPoint;Ljava/math/BigInteger;I)V

    sput-object v2, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_SPEC:Ljava/security/spec/ECParameterSpec;

    .line 126
    return-void

    nop

    :array_0
    .array-data 1
        0x2t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aesGcmDecrypt(Ljavax/crypto/SecretKey;[B[B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    .line 337
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;->DECRYPT:Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->aesGcmInternal(Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;Ljavax/crypto/SecretKey;[B[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method private static aesGcmEncrypt(Ljavax/crypto/SecretKey;[B[B[B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 328
    :try_start_0
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;->ENCRYPT:Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->aesGcmInternal(Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;Ljavax/crypto/SecretKey;[B[B[B)[B

    move-result-object p0
    :try_end_0
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 329
    :catch_0
    move-exception p0

    .line 331
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static aesGcmInternal(Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;Ljavax/crypto/SecretKey;[B[B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    .line 345
    :try_start_0
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3

    .line 349
    nop

    .line 350
    new-instance v1, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v2, 0x80

    invoke-direct {v1, v2, p2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    .line 352
    :try_start_1
    sget-object p2, Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;->DECRYPT:Lcom/android/server/locksettings/recoverablekeystore/SecureBox$AesGcmOperation;

    if-ne p0, p2, :cond_0

    .line 353
    const/4 p0, 0x2

    invoke-virtual {v0, p0, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0

    .line 355
    :cond_0
    const/4 p0, 0x1

    invoke-virtual {v0, p0, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_2

    .line 360
    :goto_0
    nop

    .line 362
    :try_start_2
    invoke-virtual {v0, p4}, Ljavax/crypto/Cipher;->updateAAD([B)V

    .line 363
    invoke-virtual {v0, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_2
    .catch Ljavax/crypto/AEADBadTagException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    .line 368
    :catch_0
    move-exception p0

    .line 371
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 364
    :catch_1
    move-exception p0

    .line 367
    throw p0

    .line 357
    :catch_2
    move-exception p0

    .line 359
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 346
    :catch_3
    move-exception p0

    .line 348
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static varargs concat([[B)[B
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 451
    nop

    .line 452
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 453
    aget-object v3, p0, v1

    if-nez v3, :cond_0

    .line 454
    sget-object v3, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EMPTY_BYTE_ARRAY:[B

    aput-object v3, p0, v1

    .line 456
    :cond_0
    aget-object v3, p0, v1

    array-length v3, v3

    add-int/2addr v2, v3

    .line 452
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    :cond_1
    new-array v1, v2, [B

    .line 460
    nop

    .line 461
    array-length v2, p0

    move v3, v0

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v5, p0, v3

    .line 462
    array-length v6, v5

    invoke-static {v5, v0, v1, v4, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 463
    array-length v5, v5

    add-int/2addr v4, v5

    .line 461
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 465
    :cond_2
    return-object v1
.end method

.method static decodePublicKey([B)Ljava/security/PublicKey;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 399
    new-instance v0, Ljava/math/BigInteger;

    .line 402
    const/16 v1, 0x21

    const/4 v2, 0x1

    invoke-static {p0, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 403
    new-instance v3, Ljava/math/BigInteger;

    .line 406
    const/16 v4, 0x41

    invoke-static {p0, v1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    invoke-direct {v3, v2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 410
    invoke-static {v0, v3}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->validateEcPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 412
    const-string p0, "EC"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 414
    :try_start_0
    new-instance v1, Ljava/security/spec/ECPublicKeySpec;

    new-instance v2, Ljava/security/spec/ECPoint;

    invoke-direct {v2, v0, v3}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_SPEC:Ljava/security/spec/ECParameterSpec;

    invoke-direct {v1, v2, v0}, Ljava/security/spec/ECPublicKeySpec;-><init>(Ljava/security/spec/ECPoint;Ljava/security/spec/ECParameterSpec;)V

    invoke-virtual {p0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 415
    :catch_0
    move-exception p0

    .line 417
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static decrypt(Ljava/security/PrivateKey;[B[B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    .line 242
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->emptyByteArrayIfNull([B)[B

    move-result-object p1

    .line 243
    if-nez p0, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Both the private key and shared secret are empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 246
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->emptyByteArrayIfNull([B)[B

    move-result-object p2

    .line 247
    if-eqz p3, :cond_4

    .line 251
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 252
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->VERSION:[B

    array-length v0, v0

    invoke-static {p3, v0}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->readEncryptedPayload(Ljava/nio/ByteBuffer;I)[B

    move-result-object v0

    .line 253
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->VERSION:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 260
    if-nez p0, :cond_2

    .line 261
    sget-object p0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EMPTY_BYTE_ARRAY:[B

    .line 262
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_INFO_WITHOUT_PUBLIC_KEY:[B

    goto :goto_1

    .line 264
    :cond_2
    const/16 v0, 0x41

    invoke-static {p3, v0}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->readEncryptedPayload(Ljava/nio/ByteBuffer;I)[B

    move-result-object v0

    .line 265
    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->decodePublicKey([B)Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->dhComputeSecret(Ljava/security/PrivateKey;Ljava/security/PublicKey;)[B

    move-result-object p0

    .line 266
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_INFO_WITH_PUBLIC_KEY:[B

    .line 269
    :goto_1
    const/16 v1, 0xc

    invoke-static {p3, v1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->readEncryptedPayload(Ljava/nio/ByteBuffer;I)[B

    move-result-object v1

    .line 270
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {p3, v2}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->readEncryptedPayload(Ljava/nio/ByteBuffer;I)[B

    move-result-object p3

    .line 271
    const/4 v2, 0x2

    new-array v2, v2, [[B

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v2}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->concat([[B)[B

    move-result-object p0

    .line 272
    sget-object p1, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_SALT:[B

    invoke-static {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->hkdfDeriveKey([B[B[B)Ljavax/crypto/SecretKey;

    move-result-object p0

    .line 273
    invoke-static {p0, v1, p3, p2}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->aesGcmDecrypt(Ljavax/crypto/SecretKey;[B[B[B)[B

    move-result-object p0

    return-object p0

    .line 254
    :cond_3
    new-instance p0, Ljavax/crypto/AEADBadTagException;

    const-string p1, "The payload was not encrypted by SecureBox v2"

    invoke-direct {p0, p1}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 248
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Encrypted payload must not be null."

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static dhComputeSecret(Ljava/security/PrivateKey;Ljava/security/PublicKey;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 289
    const-string v0, "ECDH"

    invoke-static {v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    .line 291
    :try_start_0
    invoke-virtual {v0, p0}, Ljavax/crypto/KeyAgreement;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    nop

    .line 296
    const/4 p0, 0x1

    invoke-virtual {v0, p1, p0}, Ljavax/crypto/KeyAgreement;->doPhase(Ljava/security/Key;Z)Ljava/security/Key;

    .line 297
    invoke-virtual {v0}, Ljavax/crypto/KeyAgreement;->generateSecret()[B

    move-result-object p0

    return-object p0

    .line 292
    :catch_0
    move-exception p0

    .line 294
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static emptyByteArrayIfNull([B)[B
    .locals 0

    .line 469
    if-nez p0, :cond_0

    sget-object p0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EMPTY_BYTE_ARRAY:[B

    :cond_0
    return-object p0
.end method

.method static encodePublicKey(Ljava/security/PublicKey;)[B
    .locals 5

    .line 383
    check-cast p0, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {p0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object p0

    .line 384
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 385
    invoke-virtual {p0}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 387
    const/16 v1, 0x41

    new-array v2, v1, [B

    .line 390
    array-length v3, p0

    sub-int/2addr v1, v3

    array-length v3, p0

    const/4 v4, 0x0

    invoke-static {p0, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 391
    array-length p0, v0

    rsub-int/lit8 p0, p0, 0x21

    array-length v1, v0

    invoke-static {v0, v4, v2, p0, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 392
    const/4 p0, 0x4

    aput-byte p0, v2, v4

    .line 393
    return-object v2
.end method

.method public static encrypt(Ljava/security/PublicKey;[B[B[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 181
    invoke-static {p1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->emptyByteArrayIfNull([B)[B

    move-result-object p1

    .line 182
    if-nez p0, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Both the public key and shared secret are empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 185
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->emptyByteArrayIfNull([B)[B

    move-result-object p2

    .line 186
    invoke-static {p3}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->emptyByteArrayIfNull([B)[B

    move-result-object p3

    .line 191
    if-nez p0, :cond_2

    .line 192
    const/4 p0, 0x0

    .line 193
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EMPTY_BYTE_ARRAY:[B

    .line 194
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_INFO_WITHOUT_PUBLIC_KEY:[B

    .line 201
    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    goto :goto_1

    .line 196
    :cond_2
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->dhComputeSecret(Ljava/security/PrivateKey;Ljava/security/PublicKey;)[B

    move-result-object p0

    .line 198
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_INFO_WITH_PUBLIC_KEY:[B

    .line 201
    :goto_1
    invoke-static {}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->genRandomNonce()[B

    move-result-object v2

    .line 202
    const/4 v3, 0x2

    new-array v4, v3, [[B

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 p0, 0x1

    aput-object p1, v4, p0

    invoke-static {v4}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->concat([[B)[B

    move-result-object p1

    .line 203
    sget-object v4, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->HKDF_SALT:[B

    invoke-static {p1, v4, v1}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->hkdfDeriveKey([B[B[B)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 204
    invoke-static {p1, v2, p3, p2}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->aesGcmEncrypt(Ljavax/crypto/SecretKey;[B[B[B)[B

    move-result-object p1

    .line 205
    const/4 p2, 0x3

    if-nez v0, :cond_3

    .line 206
    new-array p2, p2, [[B

    sget-object p3, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->VERSION:[B

    aput-object p3, p2, v5

    aput-object v2, p2, p0

    aput-object p1, p2, v3

    invoke-static {p2}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->concat([[B)[B

    move-result-object p0

    return-object p0

    .line 208
    :cond_3
    const/4 p3, 0x4

    new-array p3, p3, [[B

    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->VERSION:[B

    aput-object v1, p3, v5

    .line 209
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->encodePublicKey(Ljava/security/PublicKey;)[B

    move-result-object v0

    aput-object v0, p3, p0

    aput-object v2, p3, v3

    aput-object p1, p3, p2

    .line 208
    invoke-static {p3}, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->concat([[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static genKeyPair()Ljava/security/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 139
    const-string v0, "EC"

    invoke-static {v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 142
    :try_start_0
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    const-string/jumbo v2, "prime256v1"

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 143
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 144
    :catch_0
    move-exception v1

    .line 148
    :try_start_1
    new-instance v1, Ljava/security/spec/ECGenParameterSpec;

    const-string/jumbo v2, "secp256r1"

    invoke-direct {v1, v2}, Ljava/security/spec/ECGenParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 149
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 150
    :catch_1
    move-exception v0

    .line 151
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    const-string v2, "Unable to find the NIST P-256 curve"

    invoke-direct {v1, v2, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static genRandomNonce()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 444
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 445
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 446
    return-object v0
.end method

.method private static hkdfDeriveKey([B[B[B)Ljavax/crypto/SecretKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 303
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 305
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "HmacSHA256"

    invoke-direct {v1, p1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1

    .line 309
    nop

    .line 310
    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    .line 313
    :try_start_1
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "HmacSHA256"

    invoke-direct {p1, p0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_0

    .line 317
    nop

    .line 318
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 320
    sget-object p0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->CONSTANT_01:[B

    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    .line 322
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 p2, 0x10

    invoke-static {p0, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string p2, "AES"

    invoke-direct {p1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object p1

    .line 314
    :catch_0
    move-exception p0

    .line 316
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 306
    :catch_1
    move-exception p0

    .line 308
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static readEncryptedPayload(Ljava/nio/ByteBuffer;I)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/AEADBadTagException;
        }
    .end annotation

    .line 278
    new-array p1, p1, [B

    .line 280
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    nop

    .line 284
    return-object p1

    .line 281
    :catch_0
    move-exception p0

    .line 282
    new-instance p0, Ljavax/crypto/AEADBadTagException;

    const-string p1, "The encrypted payload is too short"

    invoke-direct {p0, p1}, Ljavax/crypto/AEADBadTagException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validateEcPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 422
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    .line 423
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1

    .line 424
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 425
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 430
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->BIG_INT_02:Ljava/math/BigInteger;

    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    invoke-virtual {p1, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 431
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->BIG_INT_02:Ljava/math/BigInteger;

    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    .line 432
    invoke-virtual {p0, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_A:Ljava/math/BigInteger;

    .line 433
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    .line 434
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 435
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_B:Ljava/math/BigInteger;

    .line 436
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/SecureBox;->EC_PARAM_P:Ljava/math/BigInteger;

    .line 437
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 438
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 441
    return-void

    .line 439
    :cond_0
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Point lies outside of the expected curve"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 426
    :cond_1
    new-instance p0, Ljava/security/InvalidKeyException;

    const-string p1, "Point lies outside of the expected curve"

    invoke-direct {p0, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
