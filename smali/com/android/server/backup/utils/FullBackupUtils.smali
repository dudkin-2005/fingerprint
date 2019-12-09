.class public Lcom/android/server/backup/utils/FullBackupUtils;
.super Ljava/lang/Object;
.source "FullBackupUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static routeSocketDataToOutput(Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 54
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 56
    const v0, 0x8000

    new-array v0, v0, [B

    .line 58
    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    if-lez v1, :cond_3

    .line 59
    :goto_0
    if-lez v1, :cond_0

    .line 60
    array-length v2, v0

    if-le v1, v2, :cond_1

    array-length v2, v0

    goto :goto_1

    .line 61
    :cond_1
    move v2, v1

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    .line 62
    if-ltz v2, :cond_2

    .line 66
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 67
    sub-int/2addr v1, v2

    .line 68
    goto :goto_0

    .line 63
    :cond_2
    const-string p0, "BackupManagerService"

    const-string p1, "Unexpectedly reached end of file while reading data"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 70
    :cond_3
    return-void
.end method

.method public static writeAppManifest(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageManager;Ljava/io/File;ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    new-instance p4, Ljava/lang/StringBuilder;

    const/16 v0, 0x1000

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 97
    new-instance v0, Landroid/util/StringBuilderPrinter;

    invoke-direct {v0, p4}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    .line 99
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 102
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 107
    if-eqz p3, :cond_1

    const-string p1, "1"

    goto :goto_1

    :cond_1
    const-string p1, "0"

    :goto_1
    invoke-virtual {v0, p1}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 110
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 111
    if-nez p0, :cond_2

    .line 112
    const-string p0, "0"

    invoke-virtual {v0, p0}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 116
    :cond_2
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    .line 117
    array-length p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 118
    array-length p1, p0

    const/4 p3, 0x0

    :goto_2
    if-ge p3, p1, :cond_3

    aget-object v1, p0, p3

    .line 119
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/StringBuilderPrinter;->println(Ljava/lang/String;)V

    .line 118
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 123
    :cond_3
    :goto_3
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 124
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 125
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 132
    const-wide/16 p0, 0x0

    invoke-virtual {p2, p0, p1}, Ljava/io/File;->setLastModified(J)Z

    .line 133
    return-void
.end method
