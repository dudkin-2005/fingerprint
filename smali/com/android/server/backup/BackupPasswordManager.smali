.class public final Lcom/android/server/backup/BackupPasswordManager;
.super Ljava/lang/Object;
.source "BackupPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;,
        Lcom/android/server/backup/BackupPasswordManager$PasswordVersionFileCodec;,
        Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;
    }
.end annotation


# static fields
.field private static final BACKUP_PW_FILE_VERSION:I = 0x2

.field private static final DEBUG:Z = false

.field private static final DEFAULT_PW_FILE_VERSION:I = 0x1

.field private static final PASSWORD_HASH_FILE_NAME:Ljava/lang/String; = "pwhash"

.field private static final PASSWORD_VERSION_FILE_NAME:Ljava/lang/String; = "pwversion"

.field public static final PBKDF_CURRENT:Ljava/lang/String; = "PBKDF2WithHmacSHA1"

.field public static final PBKDF_FALLBACK:Ljava/lang/String; = "PBKDF2WithHmacSHA1And8bit"

.field private static final TAG:Ljava/lang/String; = "BackupPasswordManager"


# instance fields
.field private final mBaseStateDir:Ljava/io/File;

.field private final mContext:Landroid/content/Context;

.field private mPasswordHash:Ljava/lang/String;

.field private mPasswordSalt:[B

.field private mPasswordVersion:I

.field private final mRng:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/security/SecureRandom;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/backup/BackupPasswordManager;->mContext:Landroid/content/Context;

    .line 73
    iput-object p3, p0, Lcom/android/server/backup/BackupPasswordManager;->mRng:Ljava/security/SecureRandom;

    .line 74
    iput-object p2, p0, Lcom/android/server/backup/BackupPasswordManager;->mBaseStateDir:Ljava/io/File;

    .line 75
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->loadStateFromFilesystem()V

    .line 76
    return-void
.end method

.method private clearPassword()Z
    .locals 2

    .line 163
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->getPasswordHashFile()Ljava/io/File;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    const-string v0, "BackupPasswordManager"

    const-string v1, "Unable to clear backup password"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v0, 0x0

    return v0

    .line 169
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    .line 170
    iput-object v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordSalt:[B

    .line 171
    const/4 v0, 0x1

    return v0
.end method

.method private getPasswordHashFile()Ljava/io/File;
    .locals 3

    .line 245
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mBaseStateDir:Ljava/io/File;

    const-string/jumbo v2, "pwhash"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getPasswordHashFileCodec()Lcom/android/server/backup/utils/DataStreamFileCodec;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/backup/utils/DataStreamFileCodec<",
            "Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Lcom/android/server/backup/utils/DataStreamFileCodec;

    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->getPasswordHashFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/backup/BackupPasswordManager$PasswordHashFileCodec;-><init>(Lcom/android/server/backup/BackupPasswordManager$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/utils/DataStreamFileCodec;-><init>(Ljava/io/File;Lcom/android/server/backup/utils/DataStreamCodec;)V

    return-object v0
.end method

.method private getPasswordVersionFileCodec()Lcom/android/server/backup/utils/DataStreamFileCodec;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/backup/utils/DataStreamFileCodec<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 235
    new-instance v0, Lcom/android/server/backup/utils/DataStreamFileCodec;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/backup/BackupPasswordManager;->mBaseStateDir:Ljava/io/File;

    const-string/jumbo v3, "pwversion"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/backup/BackupPasswordManager$PasswordVersionFileCodec;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/backup/BackupPasswordManager$PasswordVersionFileCodec;-><init>(Lcom/android/server/backup/BackupPasswordManager$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/utils/DataStreamFileCodec;-><init>(Ljava/io/File;Lcom/android/server/backup/utils/DataStreamCodec;)V

    return-object v0
.end method

.method private loadStateFromFilesystem()V
    .locals 2

    .line 180
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->getPasswordVersionFileCodec()Lcom/android/server/backup/utils/DataStreamFileCodec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/utils/DataStreamFileCodec;->deserialize()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordVersion:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    const-string v0, "BackupPasswordManager"

    const-string v1, "Unable to read backup pw version"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordVersion:I

    .line 187
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->getPasswordHashFileCodec()Lcom/android/server/backup/utils/DataStreamFileCodec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/backup/utils/DataStreamFileCodec;->deserialize()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;

    .line 188
    iget-object v1, v0, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->hash:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    .line 189
    iget-object v0, v0, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;->salt:[B

    iput-object v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordSalt:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    goto :goto_1

    .line 190
    :catch_1
    move-exception v0

    .line 191
    const-string v0, "BackupPasswordManager"

    const-string v1, "Unable to read saved backup pw hash"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_1
    return-void
.end method

.method private passwordMatchesSaved(Ljava/lang/String;)Z
    .locals 1

    .line 203
    const-string v0, "PBKDF2WithHmacSHA1"

    invoke-direct {p0, v0, p1}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->usePbkdf2Fallback()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PBKDF2WithHmacSHA1And8bit"

    invoke-direct {p0, v0, p1}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 203
    :goto_1
    return p1
.end method

.method private passwordMatchesSaved(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 216
    if-eqz p2, :cond_1

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 217
    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordSalt:[B

    const/16 v1, 0x2710

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object p1

    .line 223
    iget-object p2, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 219
    :cond_4
    :goto_2
    return v1
.end method

.method private randomSalt()[B
    .locals 2

    .line 228
    nop

    .line 229
    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 230
    iget-object v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 231
    return-object v0
.end method

.method private usePbkdf2Fallback()Z
    .locals 2

    .line 154
    iget v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordVersion:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method backupPasswordMatches(Ljava/lang/String;)Z
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/android/server/backup/BackupPasswordManager;->hasBackupPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 99
    const/4 p1, 0x0

    return p1

    .line 101
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method hasBackupPassword()Z
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string v2, "hasBackupPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/android/server/backup/BackupPasswordManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BACKUP"

    const-string/jumbo v2, "setBackupPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupPasswordManager;->passwordMatchesSaved(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 117
    return v0

    .line 122
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->getPasswordVersionFileCodec()Lcom/android/server/backup/utils/DataStreamFileCodec;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/backup/utils/DataStreamFileCodec;->serialize(Ljava/lang/Object;)V

    .line 123
    iput v1, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordVersion:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    nop

    .line 129
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 134
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->randomSalt()[B

    move-result-object p1

    .line 135
    const-string v1, "PBKDF2WithHmacSHA1"

    const/16 v2, 0x2710

    invoke-static {v1, p2, p1, v2}, Lcom/android/server/backup/utils/PasswordUtils;->buildPasswordHash(Ljava/lang/String;Ljava/lang/String;[BI)Ljava/lang/String;

    move-result-object p2

    .line 138
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->getPasswordHashFileCodec()Lcom/android/server/backup/utils/DataStreamFileCodec;

    move-result-object v1

    new-instance v2, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;

    invoke-direct {v2, p2, p1}, Lcom/android/server/backup/BackupPasswordManager$BackupPasswordHash;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v1, v2}, Lcom/android/server/backup/utils/DataStreamFileCodec;->serialize(Ljava/lang/Object;)V

    .line 139
    iput-object p2, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordHash:Ljava/lang/String;

    .line 140
    iput-object p1, p0, Lcom/android/server/backup/BackupPasswordManager;->mPasswordSalt:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    const/4 p1, 0x1

    return p1

    .line 142
    :catch_0
    move-exception p1

    .line 143
    const-string p1, "BackupPasswordManager"

    const-string p2, "Unable to set backup password"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return v0

    .line 130
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/server/backup/BackupPasswordManager;->clearPassword()Z

    move-result p1

    return p1

    .line 124
    :catch_1
    move-exception p1

    .line 125
    const-string p1, "BackupPasswordManager"

    const-string p2, "Unable to write backup pw version; password not changed"

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return v0
.end method
