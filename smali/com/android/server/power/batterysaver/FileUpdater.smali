.class public Lcom/android/server/power/batterysaver/FileUpdater;
.super Ljava/lang/Object;
.source "FileUpdater.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final PROP_SKIP_WRITE:Ljava/lang/String; = "debug.batterysaver.no_write_files"

.field private static final TAG:Ljava/lang/String; = "BatterySaverController"

.field private static final TAG_DEFAULT_ROOT:Ljava/lang/String; = "defaults"


# instance fields
.field private final MAX_RETRIES:I

.field private final RETRY_INTERVAL_MS:J

.field private final mContext:Landroid/content/Context;

.field private final mDefaultValues:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandleWriteOnHandlerRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingWrites:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRetries:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    .line 303
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 104
    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x1388

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/power/batterysaver/FileUpdater;-><init>(Landroid/content/Context;Landroid/os/Looper;II)V

    .line 105
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;II)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    .line 83
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mPendingWrites:Landroid/util/ArrayMap;

    .line 89
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mDefaultValues:Landroid/util/ArrayMap;

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mRetries:I

    .line 171
    new-instance v0, Lcom/android/server/power/batterysaver/-$$Lambda$FileUpdater$NUmipjKCJwbgmFbIcGS3uaz3QFk;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/-$$Lambda$FileUpdater$NUmipjKCJwbgmFbIcGS3uaz3QFk;-><init>(Lcom/android/server/power/batterysaver/FileUpdater;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandleWriteOnHandlerRunnable:Ljava/lang/Runnable;

    .line 112
    iput-object p1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mContext:Landroid/content/Context;

    .line 113
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandler:Landroid/os/Handler;

    .line 115
    iput p3, p0, Lcom/android/server/power/batterysaver/FileUpdater;->MAX_RETRIES:I

    .line 116
    int-to-long p1, p4

    iput-wide p1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->RETRY_INTERVAL_MS:J

    .line 117
    return-void
.end method

.method private cloneMap(Landroid/util/ArrayMap;)Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    return-object v0
.end method

.method private doWtf(Ljava/lang/String;)V
    .locals 1

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/power/batterysaver/FileUpdater;->injectWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    return-void
.end method

.method private ensureDefaultLoaded(Ljava/lang/String;)Z
    .locals 4

    .line 265
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mDefaultValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 267
    monitor-exit v0

    return v2

    .line 269
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 272
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/FileUpdater;->injectReadFromFileTrimmed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 279
    nop

    .line 280
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 281
    :try_start_2
    iget-object v3, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mDefaultValues:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->saveDefaultValuesLocked()V

    .line 283
    monitor-exit v1

    .line 284
    return v2

    .line 283
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 273
    :catch_0
    move-exception v0

    .line 275
    const-string v1, "Unable to read from file"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/power/batterysaver/FileUpdater;->injectWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    invoke-direct {p0, p1}, Lcom/android/server/power/batterysaver/FileUpdater;->removePendingWrite(Ljava/lang/String;)V

    .line 278
    const/4 p1, 0x0

    return p1

    .line 269
    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private getKeysString(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleWriteOnHandler()V
    .locals 7

    .line 193
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mPendingWrites:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 195
    monitor-exit v0

    return-void

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mPendingWrites:Landroid/util/ArrayMap;

    invoke-direct {p0, v1}, Lcom/android/server/power/batterysaver/FileUpdater;->cloneMap(Landroid/util/ArrayMap;)Landroid/util/ArrayMap;

    move-result-object v1

    .line 204
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    nop

    .line 210
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 211
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 212
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 213
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 216
    invoke-direct {p0, v4}, Lcom/android/server/power/batterysaver/FileUpdater;->ensureDefaultLoaded(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 217
    goto :goto_1

    .line 223
    :cond_1
    :try_start_1
    invoke-virtual {p0, v4, v5}, Lcom/android/server/power/batterysaver/FileUpdater;->injectWriteToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0, v4}, Lcom/android/server/power/batterysaver/FileUpdater;->removePendingWrite(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 228
    goto :goto_1

    .line 226
    :catch_0
    move-exception v3

    .line 227
    nop

    .line 211
    const/4 v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    :cond_2
    if-eqz v3, :cond_3

    .line 231
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->scheduleRetry()V

    .line 233
    :cond_3
    return-void

    .line 204
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/power/batterysaver/FileUpdater;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->handleWriteOnHandler()V

    return-void
.end method

.method private removePendingWrite(Ljava/lang/String;)V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mPendingWrites:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    monitor-exit v0

    .line 239
    return-void

    .line 238
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private saveDefaultValuesLocked()V
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 311
    new-instance v0, Landroid/util/AtomicFile;

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->injectDefaultValuesFilename()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 313
    nop

    .line 315
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 316
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 319
    :try_start_1
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 320
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 321
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 322
    const-string v4, "defaults"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    iget-object v4, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mDefaultValues:Landroid/util/ArrayMap;

    invoke-static {v4, v3, v1}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Lorg/xmlpull/v1/XmlSerializer;Lcom/android/internal/util/XmlUtils$WriteMapCallback;)V

    .line 327
    const-string v4, "defaults"

    invoke-interface {v3, v1, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 328
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 331
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 335
    goto :goto_1

    .line 332
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 333
    :goto_0
    const-string v3, "BatterySaverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write to file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 336
    :goto_1
    return-void
.end method

.method private scheduleRetry()V
    .locals 5

    .line 242
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mPendingWrites:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 244
    monitor-exit v0

    return-void

    .line 247
    :cond_0
    iget v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mRetries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mRetries:I

    .line 248
    iget v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mRetries:I

    iget v2, p0, Lcom/android/server/power/batterysaver/FileUpdater;->MAX_RETRIES:I

    if-le v1, v2, :cond_1

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gave up writing files: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mPendingWrites:Landroid/util/ArrayMap;

    invoke-direct {p0, v2}, Lcom/android/server/power/batterysaver/FileUpdater;->getKeysString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/power/batterysaver/FileUpdater;->doWtf(Ljava/lang/String;)V

    .line 250
    monitor-exit v0

    return-void

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandleWriteOnHandlerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 254
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandleWriteOnHandlerRunnable:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/android/server/power/batterysaver/FileUpdater;->RETRY_INTERVAL_MS:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 255
    monitor-exit v0

    .line 256
    return-void

    .line 255
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method getDefaultValuesForTest()Landroid/util/ArrayMap;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mDefaultValues:Landroid/util/ArrayMap;

    return-object v0
.end method

.method injectDefaultValuesFilename()Ljava/io/File;
    .locals 3

    .line 392
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "battery-saver"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 394
    new-instance v1, Ljava/io/File;

    const-string v2, "default-values.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method injectReadFromFileTrimmed(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    invoke-static {p1}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method injectShouldSkipWrite()Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 399
    const-string v0, "debug.batterysaver.no_write_files"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method injectWriteToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->injectShouldSkipWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    const-string p2, "BatterySaverController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipped writing to \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void

    .line 301
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    .line 302
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    :try_start_2
    invoke-static {v1, v0}, Lcom/android/server/power/batterysaver/FileUpdater;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 306
    nop

    .line 307
    return-void

    .line 303
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 301
    :catch_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 303
    :goto_0
    :try_start_4
    invoke-static {v1, v0}, Lcom/android/server/power/batterysaver/FileUpdater;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed writing \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' to \'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BatterySaverController"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    throw v0
.end method

.method injectWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 388
    const-string v0, "BatterySaverController"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 389
    return-void
.end method

.method loadDefaultValuesLocked()Z
    .locals 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 341
    new-instance v0, Landroid/util/AtomicFile;

    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->injectDefaultValuesFilename()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 345
    nop

    .line 346
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    .line 347
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 348
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 351
    move-object v6, v3

    :cond_0
    :goto_0
    :try_start_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-eq v7, v2, :cond_4

    .line 352
    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    .line 353
    goto :goto_0

    .line 355
    :cond_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    .line 357
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 358
    if-ne v7, v2, :cond_3

    .line 359
    const-string v7, "defaults"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 360
    const-string v5, "BatterySaverController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid root tag: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 361
    nop

    .line 369
    if-eqz v4, :cond_2

    :try_start_3
    invoke-static {v3, v4}, Lcom/android/server/power/batterysaver/FileUpdater;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 361
    :cond_2
    return v1

    .line 365
    :cond_3
    :try_start_4
    new-array v7, v2, [Ljava/lang/String;

    .line 366
    const-string v8, "defaults"

    invoke-static {v5, v8, v7, v3}, Lcom/android/internal/util/XmlUtils;->readThisArrayMapXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/util/XmlUtils$ReadMapCallback;)Landroid/util/ArrayMap;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 368
    nop

    .line 351
    move-object v6, v7

    goto :goto_0

    .line 369
    :cond_4
    if-eqz v4, :cond_5

    :try_start_5
    invoke-static {v3, v4}, Lcom/android/server/power/batterysaver/FileUpdater;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 371
    :catch_0
    move-exception v3

    goto :goto_5

    .line 373
    :cond_5
    :goto_1
    goto :goto_6

    .line 369
    :catchall_0
    move-exception v5

    move-object v7, v6

    move-object v6, v3

    goto :goto_3

    .line 346
    :catch_1
    move-exception v5

    goto :goto_2

    .line 369
    :catchall_1
    move-exception v5

    move-object v6, v3

    move-object v7, v6

    goto :goto_3

    .line 346
    :catch_2
    move-exception v5

    move-object v6, v3

    :goto_2
    :try_start_6
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 369
    :catchall_2
    move-exception v7

    move-object v10, v6

    move-object v6, v5

    move-object v5, v7

    move-object v7, v10

    :goto_3
    if-eqz v4, :cond_6

    :try_start_7
    invoke-static {v6, v4}, Lcom/android/server/power/batterysaver/FileUpdater;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    goto :goto_4

    .line 371
    :catch_3
    move-exception v3

    move-object v6, v7

    goto :goto_5

    .line 369
    :cond_6
    :goto_4
    throw v5
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3

    .line 371
    :catch_4
    move-exception v4

    move-object v6, v3

    move-object v3, v4

    .line 372
    :goto_5
    const-string v4, "BatterySaverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to read file "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 369
    :catch_5
    move-exception v0

    .line 370
    nop

    .line 373
    nop

    .line 374
    move-object v6, v3

    :goto_6
    if-eqz v6, :cond_7

    .line 375
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mDefaultValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 376
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mDefaultValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    .line 377
    return v2

    .line 379
    :cond_7
    return v1
.end method

.method public restoreDefault()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mPendingWrites:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 167
    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mDefaultValues:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Lcom/android/server/power/batterysaver/FileUpdater;->writeFiles(Landroid/util/ArrayMap;)V

    .line 168
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady(Z)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    if-eqz p1, :cond_0

    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->loadDefaultValuesLocked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 124
    const-string p1, "BatterySaverController"

    const-string v1, "Default values loaded after runtime restart; writing them..."

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->restoreDefault()V

    goto :goto_0

    .line 131
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/FileUpdater;->injectDefaultValuesFilename()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 131
    :cond_1
    :goto_0
    monitor-exit v0

    .line 132
    return-void

    .line 131
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public writeFiles(Landroid/util/ArrayMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 140
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 141
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 147
    iget-object v4, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mPendingWrites:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 150
    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mRetries:I

    .line 152
    iget-object p1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandleWriteOnHandlerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 153
    iget-object p1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/power/batterysaver/FileUpdater;->mHandleWriteOnHandlerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
