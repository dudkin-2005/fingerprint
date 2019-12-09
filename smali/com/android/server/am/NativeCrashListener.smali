.class final Lcom/android/server/am/NativeCrashListener;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUGGERD_SOCKET_PATH:Ljava/lang/String; = "/data/system/ndebugsocket"

.field static final MORE_DEBUG:Z = false

.field static final SOCKET_TIMEOUT_MILLIS:J = 0x2710L

.field static final TAG:Ljava/lang/String; = "NativeCrashListener"


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 99
    return-void
.end method

.method static readExactly(Ljava/io/FileDescriptor;[BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 177
    nop

    .line 178
    const/4 v0, 0x0

    :goto_0
    if-lez p3, :cond_1

    .line 179
    add-int v1, p2, v0

    invoke-static {p0, p1, v1, p3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    .line 180
    if-gtz v1, :cond_0

    .line 184
    const/4 p0, -0x1

    return p0

    .line 186
    :cond_0
    sub-int/2addr p3, v1

    .line 187
    add-int/2addr v0, v1

    .line 188
    goto :goto_0

    .line 189
    :cond_1
    return v0
.end method

.method static unpackInt([BI)I
    .locals 3

    .line 168
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 169
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 170
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 171
    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    .line 172
    shl-int/lit8 p1, v0, 0x18

    shl-int/lit8 v0, v1, 0x10

    or-int/2addr p1, v0

    shl-int/lit8 v0, v2, 0x8

    or-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    .locals 8

    .line 195
    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 196
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 199
    const-wide/16 v3, 0x2710

    :try_start_0
    invoke-static {v3, v4}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v0

    .line 200
    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {p1, v3, v4, v0}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 201
    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {p1, v3, v4, v0}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 208
    const/16 v0, 0x8

    const/4 v3, 0x0

    invoke-static {p1, v1, v3, v0}, Lcom/android/server/am/NativeCrashListener;->readExactly(Ljava/io/FileDescriptor;[BII)I

    move-result v4

    .line 209
    if-eq v4, v0, :cond_0

    .line 211
    const-string p1, "NativeCrashListener"

    const-string v0, "Unable to read from debuggerd"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void

    .line 215
    :cond_0
    invoke-static {v1, v3}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v0

    .line 216
    const/4 v4, 0x4

    invoke-static {v1, v4}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v4

    .line 222
    if-lez v0, :cond_5

    .line 224
    iget-object v5, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 226
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 227
    if-eqz v6, :cond_4

    .line 229
    :try_start_2
    iget-boolean v0, v6, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v0, :cond_1

    .line 233
    return-void

    .line 239
    :cond_1
    array-length v0, v1

    invoke-static {p1, v1, v3, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    .line 240
    if-lez v0, :cond_3

    .line 246
    add-int/lit8 v5, v0, -0x1

    aget-byte v7, v1, v5

    if-nez v7, :cond_2

    .line 247
    invoke-virtual {v2, v1, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 248
    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {v2, v1, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 253
    :cond_3
    if-gtz v0, :cond_1

    .line 262
    :goto_0
    iget-object p1, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/android/server/am/ProcessRecord;->crashing:Z

    .line 264
    iput-boolean v0, v6, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    .line 265
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 270
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 271
    new-instance v0, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;

    invoke-direct {v0, p0, v6, v4, p1}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;-><init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->start()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 272
    goto :goto_1

    .line 265
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 273
    :cond_4
    const-string p1, "NativeCrashListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find ProcessRecord for pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 275
    :goto_1
    goto :goto_2

    .line 226
    :catchall_1
    move-exception p1

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p1

    .line 276
    :cond_5
    const-string p1, "NativeCrashListener"

    const-string v0, "Bogus pid!"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 281
    :goto_2
    goto :goto_3

    .line 278
    :catch_0
    move-exception p1

    .line 279
    const-string v0, "NativeCrashListener"

    const-string v1, "Exception dealing with report"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    :goto_3
    return-void
.end method

.method public run()V
    .locals 9

    .line 103
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 111
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/ndebugsocket"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 118
    :cond_0
    :try_start_0
    sget v2, Landroid/system/OsConstants;->AF_UNIX:I

    sget v3, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 119
    const-string v3, "/data/system/ndebugsocket"

    invoke-static {v3}, Landroid/system/UnixSocketAddress;->createFileSystem(Ljava/lang/String;)Landroid/system/UnixSocketAddress;

    move-result-object v3

    .line 121
    invoke-static {v2, v3}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 122
    invoke-static {v2, v0}, Landroid/system/Os;->listen(Ljava/io/FileDescriptor;I)V

    .line 123
    const-string v3, "/data/system/ndebugsocket"

    const/16 v5, 0x1ff

    invoke-static {v3, v5}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 126
    :goto_0
    nop

    .line 129
    const/4 v3, 0x0

    :try_start_1
    invoke-static {v2, v3}, Landroid/system/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    if-eqz v5, :cond_1

    .line 134
    :try_start_2
    invoke-virtual {p0, v5}, Lcom/android/server/am/NativeCrashListener;->consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 136
    :catch_0
    move-exception v3

    goto :goto_4

    .line 141
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    .line 143
    :try_start_3
    invoke-static {v5, v1, v4, v0}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 149
    goto :goto_2

    .line 144
    :catch_1
    move-exception v3

    .line 151
    :goto_2
    :try_start_4
    invoke-static {v5}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 156
    :goto_3
    goto :goto_6

    .line 152
    :catch_2
    move-exception v3

    goto :goto_3

    .line 141
    :catchall_0
    move-exception v2

    move-object v5, v3

    goto :goto_7

    .line 136
    :catch_3
    move-exception v5

    move-object v8, v5

    move-object v5, v3

    move-object v3, v8

    .line 137
    :goto_4
    :try_start_5
    const-string v6, "NativeCrashListener"

    const-string v7, "Error handling connection"

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 141
    if-eqz v5, :cond_2

    .line 143
    :try_start_6
    invoke-static {v5, v1, v4, v0}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 149
    goto :goto_5

    .line 144
    :catch_4
    move-exception v3

    .line 151
    :goto_5
    :try_start_7
    invoke-static {v5}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_7
    .catch Landroid/system/ErrnoException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_3

    .line 159
    :cond_2
    :goto_6
    goto :goto_0

    .line 141
    :catchall_1
    move-exception v2

    :goto_7
    if-eqz v5, :cond_3

    .line 143
    :try_start_8
    invoke-static {v5, v1, v4, v0}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 149
    goto :goto_8

    .line 144
    :catch_5
    move-exception v0

    .line 151
    :goto_8
    :try_start_9
    invoke-static {v5}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 156
    goto :goto_9

    .line 152
    :catch_6
    move-exception v0

    .line 156
    :cond_3
    :goto_9
    :try_start_a
    throw v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 160
    :catch_7
    move-exception v0

    .line 161
    const-string v1, "NativeCrashListener"

    const-string v2, "Unable to init native debug socket!"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    return-void
.end method
