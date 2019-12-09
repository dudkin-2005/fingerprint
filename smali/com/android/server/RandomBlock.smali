.class Lcom/android/server/RandomBlock;
.super Ljava/lang/Object;
.source "RandomBlock.java"


# static fields
.field private static final BLOCK_SIZE:I = 0x200

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "RandomBlock"


# instance fields
.field private block:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/RandomBlock;->block:[B

    .line 39
    return-void
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 2

    .line 93
    if-nez p0, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 97
    :catch_0
    move-exception p0

    .line 98
    const-string v0, "RandomBlock"

    const-string v1, "IOException thrown while closing Closeable"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    :goto_0
    return-void
.end method

.method static fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    nop

    .line 45
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    :try_start_1
    invoke-static {v1}, Lcom/android/server/RandomBlock;->fromStream(Ljava/io/InputStream;)Lcom/android/server/RandomBlock;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    invoke-static {v1}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    .line 46
    return-object p0

    .line 48
    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    invoke-static {v0}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static fromStream(Ljava/io/InputStream;)Lcom/android/server/RandomBlock;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/android/server/RandomBlock;

    invoke-direct {v0}, Lcom/android/server/RandomBlock;-><init>()V

    .line 54
    nop

    .line 55
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x200

    if-ge v1, v2, :cond_1

    .line 56
    iget-object v3, v0, Lcom/android/server/RandomBlock;->block:[B

    sub-int/2addr v2, v1

    invoke-virtual {p0, v3, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 57
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 60
    add-int/2addr v1, v2

    .line 61
    goto :goto_0

    .line 58
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    .line 62
    :cond_1
    return-object v0
.end method

.method private toDataOut(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/android/server/RandomBlock;->block:[B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 89
    return-void
.end method

.method private static truncateIfPossible(Ljava/io/RandomAccessFile;)V
    .locals 2

    .line 79
    const-wide/16 v0, 0x200

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 80
    :catch_0
    move-exception p0

    .line 85
    :goto_0
    return-void
.end method


# virtual methods
.method toFile(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    nop

    .line 69
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    if-eqz p2, :cond_0

    const-string/jumbo p2, "rws"

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "rw"

    :goto_0
    invoke-direct {v1, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/RandomBlock;->toDataOut(Ljava/io/DataOutput;)V

    .line 71
    invoke-static {v1}, Lcom/android/server/RandomBlock;->truncateIfPossible(Ljava/io/RandomAccessFile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    invoke-static {v1}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    .line 74
    nop

    .line 75
    return-void

    .line 73
    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    invoke-static {v0}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    throw p1
.end method
