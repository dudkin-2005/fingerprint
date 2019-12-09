.class public Lcom/android/server/GraphicsStatsService;
.super Landroid/view/IGraphicsStats$Stub;
.source "GraphicsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/GraphicsStatsService$HistoricalBuffer;,
        Lcom/android/server/GraphicsStatsService$ActiveBuffer;,
        Lcom/android/server/GraphicsStatsService$BufferInfo;
    }
.end annotation


# static fields
.field private static final DELETE_OLD:I = 0x2

.field public static final GRAPHICS_STATS_SERVICE:Ljava/lang/String; = "graphicsstats"

.field private static final SAVE_BUFFER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GraphicsStatsService"


# instance fields
.field private final ASHMEM_SIZE:I

.field private final ZERO_DATA:[B

.field private mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/GraphicsStatsService$ActiveBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mContext:Landroid/content/Context;

.field private final mFileAccessLock:Ljava/lang/Object;

.field private mGraphicsStatsDir:Ljava/io/File;

.field private final mLock:Ljava/lang/Object;

.field private mRotateIsScheduled:Z

.field private mWriteOutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Landroid/view/IGraphicsStats$Stub;-><init>()V

    .line 83
    invoke-static {}, Lcom/android/server/GraphicsStatsService;->nGetAshmemSize()I

    move-result v0

    iput v0, p0, Lcom/android/server/GraphicsStatsService;->ASHMEM_SIZE:I

    .line 84
    iget v0, p0, Lcom/android/server/GraphicsStatsService;->ASHMEM_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->ZERO_DATA:[B

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/GraphicsStatsService;->mRotateIsScheduled:Z

    .line 97
    iput-object p1, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    .line 98
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mAppOps:Landroid/app/AppOpsManager;

    .line 99
    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/GraphicsStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 100
    new-instance p1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    new-instance v0, Ljava/io/File;

    const-string v1, "graphicsstats"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    .line 102
    iget-object p1, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 103
    iget-object p1, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 107
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "GraphicsStats-disk"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 108
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v1, Lcom/android/server/GraphicsStatsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/GraphicsStatsService$1;-><init>(Lcom/android/server/GraphicsStatsService;)V

    invoke-direct {v0, p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    .line 124
    return-void

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Graphics stats directory does not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    .line 105
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$HistoricalBuffer;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/GraphicsStatsService;->saveBuffer(Lcom/android/server/GraphicsStatsService$HistoricalBuffer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/GraphicsStatsService;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService;->deleteOldBuffers()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/GraphicsStatsService;)I
    .locals 0

    .line 73
    iget p0, p0, Lcom/android/server/GraphicsStatsService;->ASHMEM_SIZE:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/GraphicsStatsService;)[B
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/server/GraphicsStatsService;->ZERO_DATA:[B

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/GraphicsStatsService;->processDied(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    return-void
.end method

.method private addToSaveQueue(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    .locals 4

    .line 280
    :try_start_0
    new-instance v0, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;

    invoke-direct {v0, p0, p1}, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;-><init>(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    .line 281
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    const-string v1, "GraphicsStatsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to copy graphicsstats from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v3, v3, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->closeAllBuffers()V

    .line 286
    return-void
.end method

.method private deleteOldBuffers()V
    .locals 10

    .line 253
    const-string v0, "deleting old graphicsstats buffers"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_0
    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 256
    if-eqz v3, :cond_4

    array-length v4, v3

    const/4 v5, 0x3

    if-gt v4, v5, :cond_0

    goto :goto_3

    .line 259
    :cond_0
    array-length v4, v3

    new-array v4, v4, [J

    .line 260
    const/4 v6, 0x0

    move v7, v6

    :goto_0
    array-length v8, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v7, v8, :cond_1

    .line 262
    :try_start_1
    aget-object v8, v3, v7

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v4, v7
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    goto :goto_1

    .line 263
    :catch_0
    move-exception v8

    .line 260
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 267
    :cond_1
    :try_start_2
    array-length v3, v4

    if-gt v3, v5, :cond_2

    .line 268
    monitor-exit v0

    return-void

    .line 270
    :cond_2
    invoke-static {v4}, Ljava/util/Arrays;->sort([J)V

    .line 271
    :goto_2
    array-length v3, v4

    sub-int/2addr v3, v5

    if-ge v6, v3, :cond_3

    .line 272
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    aget-wide v8, v4, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/server/GraphicsStatsService;->deleteRecursiveLocked(Ljava/io/File;)V

    .line 271
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 274
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 276
    return-void

    .line 257
    :cond_4
    :goto_3
    :try_start_3
    monitor-exit v0

    return-void

    .line 274
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private deleteRecursiveLocked(Ljava/io/File;)V
    .locals 4

    .line 242
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 244
    invoke-direct {p0, v3}, Lcom/android/server/GraphicsStatsService;->deleteRecursiveLocked(Ljava/io/File;)V

    .line 243
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    const-string v0, "GraphicsStatsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_1
    return-void
.end method

.method private dumpActiveLocked(JLjava/util/ArrayList;)Ljava/util/HashSet;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/GraphicsStatsService$HistoricalBuffer;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 323
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 324
    const/4 v1, 0x0

    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 325
    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;

    .line 326
    iget-object v4, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    move-object/from16 v5, p0

    invoke-direct {v5, v4}, Lcom/android/server/GraphicsStatsService;->pathForApp(Lcom/android/server/GraphicsStatsService$BufferInfo;)Ljava/io/File;

    move-result-object v4

    .line 327
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iget-object v4, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v9, v4, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    iget-object v4, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v10, v4, Lcom/android/server/GraphicsStatsService$BufferInfo;->versionCode:J

    iget-object v4, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v12, v4, Lcom/android/server/GraphicsStatsService$BufferInfo;->startTime:J

    iget-object v4, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v14, v4, Lcom/android/server/GraphicsStatsService$BufferInfo;->endTime:J

    iget-object v3, v3, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mData:[B

    move-wide/from16 v6, p1

    move-object/from16 v16, v3

    invoke-static/range {v6 .. v16}, Lcom/android/server/GraphicsStatsService;->nAddToDump(JLjava/lang/String;Ljava/lang/String;JJJ[B)V

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 332
    :cond_0
    return-object v0
.end method

.method private dumpHistoricalLocked(JLjava/util/HashSet;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 336
    move-object v0, p0

    iget-object v0, v0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 337
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 338
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    array-length v8, v7

    move v9, v2

    :goto_2
    if-ge v9, v8, :cond_1

    aget-object v10, v7, v9

    .line 339
    new-instance v11, Ljava/io/File;

    const-string/jumbo v12, "total"

    invoke-direct {v11, v10, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 340
    move-object/from16 v10, p3

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 341
    nop

    .line 338
    move-wide v12, p1

    goto :goto_3

    .line 343
    :cond_0
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    move-wide v12, p1

    invoke-static {v12, v13, v11}, Lcom/android/server/GraphicsStatsService;->nAddToDump(JLjava/lang/String;)V

    .line 338
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 337
    :cond_1
    move-wide v12, p1

    move-object/from16 v10, p3

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 336
    :cond_2
    move-wide v12, p1

    move-object/from16 v10, p3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 347
    :cond_3
    return-void
.end method

.method private fetchActiveBuffersLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Lcom/android/server/GraphicsStatsService$ActiveBuffer;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    .line 297
    iget-object v1, v0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/android/server/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 299
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 300
    iget-object v5, v0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .line 301
    iget v6, v5, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPid:I

    move v7, p3

    if-ne v6, v7, :cond_1

    iget v6, v5, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mUid:I

    move v8, p2

    if-ne v6, v8, :cond_2

    .line 304
    iget-object v1, v5, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v9, v1, Lcom/android/server/GraphicsStatsService$BufferInfo;->startTime:J

    cmp-long v1, v9, v2

    if-gez v1, :cond_0

    .line 305
    invoke-virtual {v5}, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->binderDied()V

    .line 306
    goto :goto_1

    .line 308
    :cond_0
    return-object v5

    .line 299
    :cond_1
    move v8, p2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 314
    :cond_3
    move v8, p2

    move v7, p3

    :goto_1
    :try_start_0
    new-instance v9, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    move-object v1, v9

    move-object v2, v0

    move-object v3, p1

    move v4, v8

    move v5, v7

    move-object v6, p4

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/server/GraphicsStatsService$ActiveBuffer;-><init>(Lcom/android/server/GraphicsStatsService;Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)V

    .line 315
    iget-object v0, v0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    return-object v9

    .line 317
    :catch_0
    move-exception v0

    .line 318
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Failed to allocate space"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPfd(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 191
    :try_start_0
    invoke-virtual {p1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object v0

    .line 192
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid file descriptor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :catch_0
    move-exception p1

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to get PFD from memory file"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic lambda$2EDVu98hsJvSwNgKvijVLSR3IrQ(Lcom/android/server/GraphicsStatsService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService;->onAlarm()V

    return-void
.end method

.method private static native nAddToDump(JLjava/lang/String;)V
.end method

.method private static native nAddToDump(JLjava/lang/String;Ljava/lang/String;JJJ[B)V
.end method

.method private static native nCreateDump(IZ)J
.end method

.method private static native nFinishDump(J)V
.end method

.method private static native nGetAshmemSize()I
.end method

.method private static native nSaveBuffer(Ljava/lang/String;Ljava/lang/String;JJJ[B)V
.end method

.method private normalizeDate(J)Ljava/util/Calendar;
    .locals 1

    .line 208
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 209
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 210
    const/4 p1, 0x0

    const/16 p2, 0xb

    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->set(II)V

    .line 211
    const/16 p2, 0xc

    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->set(II)V

    .line 212
    const/16 p2, 0xd

    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->set(II)V

    .line 213
    const/16 p2, 0xe

    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->set(II)V

    .line 214
    return-object v0
.end method

.method private onAlarm()V
    .locals 10

    .line 147
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/GraphicsStatsService;->mRotateIsScheduled:Z

    .line 149
    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService;->scheduleRotateLocked()V

    .line 150
    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    new-array v3, v1, [Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    .line 151
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    array-length v0, v2

    move v3, v1

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v0, :cond_0

    aget-object v5, v2, v3

    .line 154
    :try_start_1
    iget-object v6, v5, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mCallback:Landroid/view/IGraphicsStatsCallback;

    invoke-interface {v6}, Landroid/view/IGraphicsStatsCallback;->onRotateGraphicsStatsBuffer()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    goto :goto_1

    .line 155
    :catch_0
    move-exception v6

    .line 156
    const-string v7, "GraphicsStatsService"

    const-string v8, "Failed to notify \'%s\' (pid=%d) to rotate buffers"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v9, v5, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v9, v9, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    aput-object v9, v4, v1

    iget v5, v5, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mPid:I

    .line 157
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v9, 0x1

    aput-object v5, v4, v9

    .line 156
    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 162
    return-void

    .line 151
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private pathForApp(Lcom/android/server/GraphicsStatsService$BufferInfo;)Ljava/io/File;
    .locals 4

    .line 218
    const-string v0, "%d/%s/%d/total"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p1, Lcom/android/server/GraphicsStatsService$BufferInfo;->startTime:J

    .line 219
    invoke-direct {p0, v2, v3}, Lcom/android/server/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p1, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p1, Lcom/android/server/GraphicsStatsService$BufferInfo;->versionCode:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x2

    aput-object p1, v1, v2

    .line 218
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 220
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mGraphicsStatsDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private processDied(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 291
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-direct {p0, p1}, Lcom/android/server/GraphicsStatsService;->addToSaveQueue(Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    .line 293
    return-void

    .line 291
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private requestBufferForProcessLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Landroid/os/ParcelFileDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    invoke-direct/range {p0 .. p6}, Lcom/android/server/GraphicsStatsService;->fetchActiveBuffersLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    move-result-object p1

    .line 203
    invoke-direct {p0}, Lcom/android/server/GraphicsStatsService;->scheduleRotateLocked()V

    .line 204
    iget-object p1, p1, Lcom/android/server/GraphicsStatsService$ActiveBuffer;->mProcessBuffer:Landroid/os/MemoryFile;

    invoke-direct {p0, p1}, Lcom/android/server/GraphicsStatsService;->getPfd(Landroid/os/MemoryFile;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method private saveBuffer(Lcom/android/server/GraphicsStatsService$HistoricalBuffer;)V
    .locals 12

    .line 224
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saving graphicsstats for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v3, v3, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 227
    :cond_0
    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter v2

    .line 228
    :try_start_0
    iget-object v3, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    invoke-direct {p0, v3}, Lcom/android/server/GraphicsStatsService;->pathForApp(Lcom/android/server/GraphicsStatsService$BufferInfo;)Ljava/io/File;

    move-result-object v3

    .line 229
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 230
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 231
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 232
    const-string p1, "GraphicsStatsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create path: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    monitor-exit v2

    return-void

    .line 235
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-object v4, v4, Lcom/android/server/GraphicsStatsService$BufferInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v5, v5, Lcom/android/server/GraphicsStatsService$BufferInfo;->versionCode:J

    iget-object v7, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v7, v7, Lcom/android/server/GraphicsStatsService$BufferInfo;->startTime:J

    iget-object v9, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mInfo:Lcom/android/server/GraphicsStatsService$BufferInfo;

    iget-wide v9, v9, Lcom/android/server/GraphicsStatsService$BufferInfo;->endTime:J

    iget-object v11, p1, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;->mData:[B

    invoke-static/range {v3 .. v11}, Lcom/android/server/GraphicsStatsService;->nSaveBuffer(Ljava/lang/String;Ljava/lang/String;JJJ[B)V

    .line 237
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 239
    return-void

    .line 237
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private scheduleRotateLocked()V
    .locals 10

    .line 132
    iget-boolean v0, p0, Lcom/android/server/GraphicsStatsService;->mRotateIsScheduled:Z

    if-eqz v0, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/GraphicsStatsService;->mRotateIsScheduled:Z

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/GraphicsStatsService;->normalizeDate(J)Ljava/util/Calendar;

    move-result-object v1

    .line 137
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 138
    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-string v7, "GraphicsStatsService"

    new-instance v8, Lcom/android/server/-$$Lambda$GraphicsStatsService$2EDVu98hsJvSwNgKvijVLSR3IrQ;

    invoke-direct {v8, p0}, Lcom/android/server/-$$Lambda$GraphicsStatsService$2EDVu98hsJvSwNgKvijVLSR3IrQ;-><init>(Lcom/android/server/GraphicsStatsService;)V

    iget-object v9, p0, Lcom/android/server/GraphicsStatsService;->mWriteOutHandler:Landroid/os/Handler;

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 140
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 351
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    const-string v1, "GraphicsStatsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 352
    :cond_0
    nop

    .line 353
    array-length p2, p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    aget-object v2, p3, v1

    .line 354
    const-string v3, "--proto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 355
    nop

    .line 356
    nop

    .line 360
    const/4 p2, 0x1

    goto :goto_1

    .line 353
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    :cond_2
    move p2, v0

    :goto_1
    iget-object p3, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 361
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 362
    :goto_2
    iget-object v2, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-ge v0, v2, :cond_3

    .line 364
    :try_start_1
    new-instance v2, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;

    iget-object v3, p0, Lcom/android/server/GraphicsStatsService;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/GraphicsStatsService$ActiveBuffer;

    invoke-direct {v2, p0, v3}, Lcom/android/server/GraphicsStatsService$HistoricalBuffer;-><init>(Lcom/android/server/GraphicsStatsService;Lcom/android/server/GraphicsStatsService$ActiveBuffer;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 367
    goto :goto_3

    .line 365
    :catch_0
    move-exception v2

    .line 362
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 369
    :cond_3
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 370
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result p1

    invoke-static {p1, p2}, Lcom/android/server/GraphicsStatsService;->nCreateDump(IZ)J

    move-result-wide p1

    .line 372
    :try_start_3
    iget-object p3, p0, Lcom/android/server/GraphicsStatsService;->mFileAccessLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 373
    :try_start_4
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/GraphicsStatsService;->dumpActiveLocked(JLjava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v0

    .line 374
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 375
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/GraphicsStatsService;->dumpHistoricalLocked(JLjava/util/HashSet;)V

    .line 376
    monitor-exit p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 378
    invoke-static {p1, p2}, Lcom/android/server/GraphicsStatsService;->nFinishDump(J)V

    .line 379
    nop

    .line 380
    return-void

    .line 376
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 378
    :catchall_1
    move-exception p3

    invoke-static {p1, p2}, Lcom/android/server/GraphicsStatsService;->nFinishDump(J)V

    throw p3

    .line 369
    :catchall_2
    move-exception p1

    :try_start_7
    monitor-exit p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p1
.end method

.method public requestBufferForProcess(Ljava/lang/String;Landroid/view/IGraphicsStatsCallback;)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 168
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 169
    nop

    .line 170
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/server/GraphicsStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 176
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 173
    invoke-virtual {v0, p1, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 177
    iget-object v9, p0, Lcom/android/server/GraphicsStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 178
    nop

    .line 179
    :try_start_1
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v5

    .line 178
    move-object v0, p0

    move-object v1, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/GraphicsStatsService;->requestBufferForProcessLocked(Landroid/view/IGraphicsStatsCallback;IILjava/lang/String;J)Landroid/os/ParcelFileDescriptor;

    move-result-object p2

    .line 180
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 185
    nop

    .line 186
    return-object p2

    .line 180
    :catchall_0
    move-exception p2

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p2
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 184
    :catchall_1
    move-exception p1

    goto :goto_0

    .line 181
    :catch_0
    move-exception p2

    .line 182
    :try_start_4
    new-instance p2, Landroid/os/RemoteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find package: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 184
    :goto_0
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
