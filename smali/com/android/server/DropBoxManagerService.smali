.class public final Lcom/android/server/DropBoxManagerService;
.super Lcom/android/server/SystemService;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DropBoxManagerService$EntryFile;,
        Lcom/android/server/DropBoxManagerService$FileList;
    }
.end annotation


# static fields
.field private static final DEFAULT_AGE_SECONDS:I = 0x3f480

.field private static final DEFAULT_MAX_FILES:I = 0x3e8

.field private static final DEFAULT_MAX_FILES_LOWRAM:I = 0x12c

.field private static final DEFAULT_QUOTA_KB:I = 0x1400

.field private static final DEFAULT_QUOTA_PERCENT:I = 0xa

.field private static final DEFAULT_RESERVE_PERCENT:I = 0xa

.field private static final MSG_SEND_BROADCAST:I = 0x1

.field private static final PROFILE_DUMP:Z = false

.field private static final QUOTA_RESCAN_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DropBoxManagerService"


# instance fields
.field private mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

.field private mBlockSize:I

.field private volatile mBooted:Z

.field private mCachedQuotaBlocks:I

.field private mCachedQuotaUptimeMillis:J

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDropBoxDir:Ljava/io/File;

.field private mFilesByTag:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/DropBoxManagerService$FileList;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameworkEventCollector:Lnet/oneplus/odm/insight/FrameworkEventCollector;

.field private final mHandler:Landroid/os/Handler;

.field private mMaxFiles:I

.field mObjEpitaphLock:Ljava/lang/Object;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatFs:Landroid/os/StatFs;

.field private final mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 208
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/dropbox"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 220
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 130
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 134
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 136
    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 137
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 139
    iput-boolean v0, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 148
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mObjEpitaphLock:Ljava/lang/Object;

    .line 157
    new-instance v0, Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$1;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 179
    new-instance v0, Lcom/android/server/DropBoxManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$2;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    .line 221
    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 222
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 225
    new-instance v0, Lnet/oneplus/odm/insight/FrameworkEventCollector;

    invoke-direct {v0, p1}, Lnet/oneplus/odm/insight/FrameworkEventCollector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFrameworkEventCollector:Lnet/oneplus/odm/insight/FrameworkEventCollector;

    .line 227
    new-instance v0, Lcom/android/server/DropBoxManagerService$3;

    invoke-direct {v0, p0, p3}, Lcom/android/server/DropBoxManagerService$3;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    .line 236
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/DropBoxManagerService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .param p1, "x1"    # J

    .line 101
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/server/DropBoxManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/DropBoxManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;

    .line 101
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private declared-synchronized createEntry(Ljava/io/File;Ljava/lang/String;I)J
    .registers 32
    .param p1, "temp"    # Ljava/io/File;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 932
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 938
    .local v2, "t":J
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v5, 0x2710

    add-long/2addr v5, v2

    invoke-direct {v4, v5, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 939
    .local v0, "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    const/4 v4, 0x0

    .line 940
    .local v4, "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2e

    .line 941
    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/server/DropBoxManagerService$EntryFile;

    invoke-interface {v0, v5}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object v4, v5

    .line 942
    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 945
    :cond_2e
    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v5

    const-wide/16 v6, 0x1

    if-nez v5, :cond_4c

    .line 946
    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-wide v8, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    add-long/2addr v8, v6

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-wide v2, v8

    .line 949
    :cond_4c
    if-eqz v4, :cond_c0

    .line 950
    array-length v5, v4

    const/4 v8, 0x0

    move-wide v13, v2

    .end local v2    # "t":J
    .local v13, "t":J
    :goto_51
    if-ge v8, v5, :cond_bd

    aget-object v2, v4, v8

    .line 951
    .local v2, "late":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v10, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v9, v10

    iput v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 952
    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DropBoxManagerService$FileList;

    .line 953
    .local v3, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v3, :cond_79

    iget-object v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v9, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_79

    .line 954
    iget v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v10, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v9, v10

    iput v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 956
    :cond_79
    iget v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_a4

    .line 957
    new-instance v15, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v9, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v9}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v12, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    add-long v17, v13, v6

    .local v17, "t":J
    iget v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    iget v6, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move v7, v9

    move-object v9, v15

    .end local v13    # "t":J
    move-object/from16 v19, v0

    move-object v0, v15

    move v15, v7

    .end local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .local v19, "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    move/from16 v16, v6

    invoke-direct/range {v9 .. v16}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    .line 950
    move-wide/from16 v13, v17

    const-wide/16 v9, 0x1

    goto :goto_b7

    .line 960
    .end local v17    # "t":J
    .end local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v13    # "t":J
    :cond_a4
    move-object/from16 v19, v0

    .end local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v7, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-wide/16 v9, 0x1

    add-long v11, v13, v9

    .local v11, "t":J
    invoke-direct {v0, v6, v7, v13, v14}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    .end local v13    # "t":J
    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    .line 950
    .end local v2    # "late":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v3    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    move-wide v13, v11

    .end local v11    # "t":J
    .restart local v13    # "t":J
    :goto_b7
    add-int/lit8 v8, v8, 0x1

    move-wide v6, v9

    move-object/from16 v0, v19

    goto :goto_51

    .line 965
    .end local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    :cond_bd
    move-object/from16 v19, v0

    goto :goto_c3

    .end local v13    # "t":J
    .local v2, "t":J
    :cond_c0
    move-object/from16 v19, v0

    move-wide v13, v2

    .end local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .end local v2    # "t":J
    .restart local v13    # "t":J
    .restart local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    :goto_c3
    if-nez p1, :cond_d2

    .line 966
    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v5, p2

    invoke-direct {v2, v3, v5, v13, v14}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    goto :goto_ee

    .line 968
    :cond_d2
    move-object/from16 v5, p2

    new-instance v2, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget v6, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move-object/from16 v20, v2

    move-object/from16 v21, p1

    move-object/from16 v22, v3

    move-object/from16 v23, v5

    move-wide/from16 v24, v13

    move/from16 v26, p3

    move/from16 v27, v6

    invoke-direct/range {v20 .. v27}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {v1, v2}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_ee
    .catchall {:try_start_3 .. :try_end_ee} :catchall_f0

    .line 970
    :goto_ee
    monitor-exit p0

    return-wide v13

    .line 931
    .end local v4    # "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v13    # "t":J
    .end local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .end local p1    # "temp":Ljava/io/File;
    .end local p2    # "tag":Ljava/lang/String;
    .end local p3    # "flags":I
    :catchall_f0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    throw v0
.end method

.method private declared-synchronized enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    .registers 5
    .param p1, "entry"    # Lcom/android/server/DropBoxManagerService$EntryFile;

    monitor-enter p0

    .line 913
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 914
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 919
    invoke-virtual {p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_45

    iget v0, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    if-lez v0, :cond_45

    .line 920
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 921
    .local v0, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-nez v0, :cond_39

    .line 922
    new-instance v1, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    move-object v0, v1

    .line 923
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 925
    :cond_39
    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 926
    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    .line 928
    .end local v0    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_45
    monitor-exit p0

    return-void

    .line 912
    .end local p1    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :catchall_47
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    throw p1
.end method

.method private declared-synchronized init()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 873
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    if-nez v0, :cond_5f

    .line 874
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_2f

    .line 875
    :cond_16
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t mkdir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_d4

    .line 878
    :cond_2f
    :goto_2f
    :try_start_2f
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 879
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_44} :catch_45
    .catchall {:try_start_2f .. :try_end_44} :catchall_d4

    .line 882
    goto :goto_5f

    .line 880
    :catch_45
    move-exception v0

    .line 881
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_46
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t statfs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 885
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_5f
    :goto_5f
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    if-nez v0, :cond_d2

    .line 886
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 887
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_b9

    .line 889
    new-instance v1, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 890
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 893
    array-length v1, v0

    const/4 v2, 0x0

    :goto_7c
    if-ge v2, v1, :cond_d2

    aget-object v3, v0, v2

    .line 894
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 895
    const-string v4, "DropBoxManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 897
    goto :goto_b6

    .line 900
    :cond_a6
    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget v5, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct {v4, v3, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    .line 902
    .local v4, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-virtual {v4}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 905
    invoke-direct {p0, v4}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    .line 893
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_b6
    :goto_b6
    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    .line 887
    :cond_b9
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t list files: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d2
    .catchall {:try_start_46 .. :try_end_d2} :catchall_d4

    .line 909
    .end local v0    # "files":[Ljava/io/File;
    :cond_d2
    monitor-exit p0

    return-void

    .line 872
    :catchall_d4
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    throw v0
.end method

.method private declared-synchronized trimToFit()J
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 980
    :try_start_3
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "dropbox_age_seconds"

    const v3, 0x3f480

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v2, v0

    .line 982
    .local v2, "ageSeconds":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "dropbox_max_files"

    .line 984
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 985
    const/16 v4, 0x12c

    goto :goto_1e

    .line 982
    :cond_1c
    const/16 v4, 0x3e8

    :goto_1e
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 986
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    mul-int/lit16 v0, v2, 0x3e8

    int-to-long v5, v0

    sub-long/2addr v3, v5

    .line 987
    .local v3, "cutoffMillis":J
    :goto_2c
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_87

    .line 988
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 989
    .local v0, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-wide v5, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_53

    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->size()I

    move-result v5

    iget v6, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    if-ge v5, v6, :cond_53

    .line 990
    goto :goto_87

    .line 993
    :cond_53
    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v6, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DropBoxManagerService$FileList;

    .line 994
    .local v5, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v5, :cond_6e

    iget-object v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v6, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    iget v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 995
    :cond_6e
    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v6, v6, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v6, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v7, v6, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v8, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 996
    :cond_81
    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V

    .line 997
    .end local v0    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v5    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    goto :goto_2c

    .line 1004
    :cond_87
    :goto_87
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1005
    .local v5, "uptimeMillis":J
    iget-wide v7, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    const-wide/16 v9, 0x1388

    add-long/2addr v7, v9

    cmp-long v0, v5, v7

    if-lez v0, :cond_102

    .line 1006
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "dropbox_quota_percent"

    const/16 v8, 0xa

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v7, v0

    .line 1008
    .local v7, "quotaPercent":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "dropbox_reserve_percent"

    invoke-static {v0, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v8, v0

    .line 1010
    .local v8, "reservePercent":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "dropbox_quota_kb"

    const/16 v10, 0x1400

    invoke-static {v0, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v9, v0

    .line 1013
    .local v9, "quotaKb":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_b9
    .catchall {:try_start_3 .. :try_end_b9} :catchall_1da

    move-object v10, v0

    .line 1015
    .local v10, "dirPath":Ljava/lang/String;
    :try_start_ba
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0, v10}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ba .. :try_end_bf} :catch_e8
    .catchall {:try_start_ba .. :try_end_bf} :catchall_1da

    .line 1018
    nop

    .line 1019
    :try_start_c0
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    .line 1020
    .local v0, "available":I
    iget-object v11, v1, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockCount()I

    move-result v11

    mul-int/2addr v11, v8

    div-int/lit8 v11, v11, 0x64

    sub-int v11, v0, v11

    .line 1021
    .local v11, "nonreserved":I
    mul-int/lit16 v12, v9, 0x400

    iget v13, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    div-int/2addr v12, v13

    .line 1022
    .local v12, "maximum":I
    const/4 v13, 0x0

    mul-int v14, v11, v7

    div-int/lit8 v14, v14, 0x64

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    iput v13, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 1023
    iput-wide v5, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .end local v0    # "available":I
    .end local v7    # "quotaPercent":I
    .end local v8    # "reservePercent":I
    .end local v9    # "quotaKb":I
    .end local v10    # "dirPath":Ljava/lang/String;
    .end local v11    # "nonreserved":I
    .end local v12    # "maximum":I
    goto :goto_102

    .line 1016
    .restart local v7    # "quotaPercent":I
    .restart local v8    # "reservePercent":I
    .restart local v9    # "quotaKb":I
    .restart local v10    # "dirPath":Ljava/lang/String;
    :catch_e8
    move-exception v0

    .line 1017
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Can\'t restat: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1040
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v7    # "quotaPercent":I
    .end local v8    # "reservePercent":I
    .end local v9    # "quotaKb":I
    .end local v10    # "dirPath":Ljava/lang/String;
    :cond_102
    :goto_102
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v7, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-le v0, v7, :cond_1ce

    .line 1042
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .local v0, "unsqueezed":I
    const/4 v7, 0x0

    .line 1043
    .local v7, "squeezed":I
    new-instance v8, Ljava/util/TreeSet;

    iget-object v9, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 1044
    .local v8, "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v7

    move v7, v0

    .end local v0    # "unsqueezed":I
    .local v7, "unsqueezed":I
    .local v10, "squeezed":I
    :goto_120
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1045
    .local v0, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    if-lez v10, :cond_137

    iget v11, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v12, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v12, v7

    div-int/2addr v12, v10

    if-gt v11, v12, :cond_137

    .line 1046
    goto :goto_13d

    .line 1048
    :cond_137
    iget v11, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    sub-int/2addr v7, v11

    .line 1049
    add-int/lit8 v10, v10, 0x1

    .line 1050
    .end local v0    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    goto :goto_120

    .line 1051
    :cond_13d
    :goto_13d
    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v0, v7

    div-int/2addr v0, v10

    move v9, v0

    .line 1054
    .local v9, "tagQuota":I
    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_146
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1ce

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    move-object v12, v0

    .line 1055
    .local v12, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v13, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-ge v0, v13, :cond_161

    .line 1071
    .end local v7    # "unsqueezed":I
    .end local v8    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .end local v9    # "tagQuota":I
    .end local v10    # "squeezed":I
    .end local v12    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    move/from16 v16, v2

    move-wide/from16 v17, v3

    goto/16 :goto_1d2

    .line 1056
    .restart local v7    # "unsqueezed":I
    .restart local v8    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .restart local v9    # "tagQuota":I
    .restart local v10    # "squeezed":I
    .restart local v12    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_161
    :goto_161
    iget v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    if-le v0, v9, :cond_1c4

    iget-object v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1c4

    .line 1057
    iget-object v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object v13, v0

    .line 1058
    .local v13, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_185

    iget v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v14, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v0, v14

    iput v0, v12, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1059
    :cond_185
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_198

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v14, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v15, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v14, v15

    iput v14, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_198
    .catchall {:try_start_c0 .. :try_end_198} :catchall_1da

    .line 1062
    :cond_198
    :try_start_198
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v13, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V

    .line 1063
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v14, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v15, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;
    :try_end_1a3
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_1a3} :catch_1b2
    .catchall {:try_start_198 .. :try_end_1a3} :catchall_1da

    move/from16 v16, v2

    move-wide/from16 v17, v3

    :try_start_1a7
    iget-wide v2, v13, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    .end local v2    # "ageSeconds":I
    .end local v3    # "cutoffMillis":J
    .local v16, "ageSeconds":I
    .local v17, "cutoffMillis":J
    invoke-direct {v0, v14, v15, v2, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_1af
    .catch Ljava/io/IOException; {:try_start_1a7 .. :try_end_1af} :catch_1b0
    .catchall {:try_start_1a7 .. :try_end_1af} :catchall_1da

    .line 1066
    goto :goto_1be

    .line 1064
    :catch_1b0
    move-exception v0

    goto :goto_1b7

    .end local v16    # "ageSeconds":I
    .end local v17    # "cutoffMillis":J
    .restart local v2    # "ageSeconds":I
    .restart local v3    # "cutoffMillis":J
    :catch_1b2
    move-exception v0

    move/from16 v16, v2

    move-wide/from16 v17, v3

    .line 1065
    .end local v2    # "ageSeconds":I
    .end local v3    # "cutoffMillis":J
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "ageSeconds":I
    .restart local v17    # "cutoffMillis":J
    :goto_1b7
    :try_start_1b7
    const-string v2, "DropBoxManagerService"

    const-string v3, "Can\'t write tombstone file"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1067
    .end local v0    # "e":Ljava/io/IOException;
    .end local v13    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :goto_1be
    nop

    .line 1056
    move/from16 v2, v16

    move-wide/from16 v3, v17

    goto :goto_161

    .line 1068
    .end local v12    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    .end local v16    # "ageSeconds":I
    .end local v17    # "cutoffMillis":J
    .restart local v2    # "ageSeconds":I
    .restart local v3    # "cutoffMillis":J
    :cond_1c4
    move/from16 v16, v2

    move-wide/from16 v17, v3

    .line 1054
    .end local v2    # "ageSeconds":I
    .end local v3    # "cutoffMillis":J
    .restart local v16    # "ageSeconds":I
    .restart local v17    # "cutoffMillis":J
    move/from16 v2, v16

    move-wide/from16 v3, v17

    goto/16 :goto_146

    .line 1071
    .end local v7    # "unsqueezed":I
    .end local v8    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .end local v9    # "tagQuota":I
    .end local v10    # "squeezed":I
    .end local v16    # "ageSeconds":I
    .end local v17    # "cutoffMillis":J
    .restart local v2    # "ageSeconds":I
    .restart local v3    # "cutoffMillis":J
    :cond_1ce
    move/from16 v16, v2

    move-wide/from16 v17, v3

    .end local v2    # "ageSeconds":I
    .end local v3    # "cutoffMillis":J
    .restart local v16    # "ageSeconds":I
    .restart local v17    # "cutoffMillis":J
    :goto_1d2
    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    iget v2, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_1d6
    .catchall {:try_start_1b7 .. :try_end_1d6} :catchall_1da

    mul-int/2addr v0, v2

    int-to-long v2, v0

    monitor-exit p0

    return-wide v2

    .line 979
    .end local v5    # "uptimeMillis":J
    .end local v16    # "ageSeconds":I
    .end local v17    # "cutoffMillis":J
    :catchall_1da
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    throw v0
.end method


# virtual methods
.method public add(Landroid/os/DropBoxManager$Entry;)V
    .registers 40
    .param p1, "entry"    # Landroid/os/DropBoxManager$Entry;

    move-object/from16 v1, p0

    .line 274
    const/4 v2, 0x0

    .line 275
    .local v2, "temp":Ljava/io/File;
    const/4 v3, 0x0

    .line 276
    .local v3, "input":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 277
    .local v4, "output":Ljava/io/OutputStream;
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v5, "tag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.assert.enable"

    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v7, v0

    .line 283
    .local v7, "assertState":Z
    :try_start_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v0

    .line 284
    .local v0, "flags":I
    and-int/lit8 v8, v0, 0x1

    if-nez v8, :cond_31a

    .line 286
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V

    .line 287
    invoke-virtual {v1, v5}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result v8
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_21} :catch_330
    .catchall {:try_start_12 .. :try_end_21} :catchall_32b

    if-nez v8, :cond_32

    .line 430
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 431
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 432
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 433
    if-eqz v2, :cond_31

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 287
    :cond_31
    return-void

    .line 288
    :cond_32
    :try_start_32
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v8

    .line 289
    .local v8, "max":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 291
    .local v10, "lastTrim":J
    iget v12, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    new-array v12, v12, [B

    .line 292
    .local v12, "buffer":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    move-object v3, v13

    .line 297
    move v13, v6

    .line 298
    .local v13, "read":I
    :goto_44
    array-length v14, v12
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_45} :catch_330
    .catchall {:try_start_32 .. :try_end_45} :catchall_32b

    if-ge v13, v14, :cond_55

    .line 299
    :try_start_47
    array-length v14, v12

    sub-int/2addr v14, v13

    invoke-virtual {v3, v12, v13, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v14
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4d} :catch_52
    .catchall {:try_start_47 .. :try_end_4d} :catchall_358

    .line 300
    .local v14, "n":I
    if-gtz v14, :cond_50

    .line 300
    .end local v14    # "n":I
    goto :goto_55

    .line 301
    .restart local v14    # "n":I
    :cond_50
    add-int/2addr v13, v14

    .line 302
    .end local v14    # "n":I
    goto :goto_44

    .line 427
    .end local v0    # "flags":I
    .end local v8    # "max":J
    .end local v10    # "lastTrim":J
    .end local v12    # "buffer":[B
    .end local v13    # "read":I
    :catch_52
    move-exception v0

    goto/16 :goto_333

    .line 307
    .restart local v0    # "flags":I
    .restart local v8    # "max":J
    .restart local v10    # "lastTrim":J
    .restart local v12    # "buffer":[B
    .restart local v13    # "read":I
    :cond_55
    :goto_55
    :try_start_55
    new-instance v14, Ljava/io/File;

    iget-object v15, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5e} :catch_330
    .catchall {:try_start_55 .. :try_end_5e} :catchall_32b

    move-object/from16 v16, v2

    :try_start_60
    const-string v2, "drop"

    .line 307
    .end local v2    # "temp":Ljava/io/File;
    .local v16, "temp":Ljava/io/File;
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    move-wide/from16 v17, v8

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    .line 307
    .end local v8    # "max":J
    .local v17, "max":J
    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v15, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_7e} :catch_327
    .catchall {:try_start_60 .. :try_end_7e} :catchall_322

    move-object v2, v14

    .line 308
    .end local v16    # "temp":Ljava/io/File;
    .restart local v2    # "temp":Ljava/io/File;
    :try_start_7f
    iget v6, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 309
    .local v6, "bufferSize":I
    const/16 v8, 0x1000

    if-le v6, v8, :cond_87

    const/16 v6, 0x1000

    .line 310
    :cond_87
    const/16 v8, 0x200

    if-ge v6, v8, :cond_8d

    const/16 v6, 0x200

    .line 311
    :cond_8d
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 312
    .local v8, "foutput":Ljava/io/FileOutputStream;
    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-direct {v9, v8, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v4, v9

    .line 313
    array-length v9, v12

    if-ne v13, v9, :cond_a8

    and-int/lit8 v9, v0, 0x4

    if-nez v9, :cond_a8

    .line 314
    new-instance v9, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v9, v4}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_a4} :catch_52
    .catchall {:try_start_7f .. :try_end_a4} :catchall_358

    move-object v4, v9

    .line 315
    or-int/lit8 v0, v0, 0x4

    goto :goto_a9

    .line 319
    :cond_a8
    move-object v9, v4

    .line 319
    .end local v0    # "flags":I
    .local v4, "flags":I
    .local v9, "output":Ljava/io/OutputStream;
    :goto_a9
    move v4, v0

    if-nez v7, :cond_db

    :try_start_ac
    const-string v0, "SYSTEM_SERVER"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 320
    const-string v0, "<android-panic-begin>\n"

    invoke-static {v0}, Lcom/oem/debug/OemManager;->writeRawPartition(Ljava/lang/String;)I

    move-result v0

    .line 321
    .local v0, "size":I
    const-string v14, "DropBoxManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v6

    const-string/jumbo v6, "write tag begin size : "

    .line 321
    .end local v6    # "bufferSize":I
    .local v19, "bufferSize":I
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v0    # "size":I
    goto :goto_dd

    .line 430
    .end local v4    # "flags":I
    .end local v8    # "foutput":Ljava/io/FileOutputStream;
    .end local v10    # "lastTrim":J
    .end local v12    # "buffer":[B
    .end local v13    # "read":I
    .end local v17    # "max":J
    .end local v19    # "bufferSize":I
    :catchall_d4
    move-exception v0

    goto/16 :goto_35a

    .line 427
    :catch_d7
    move-exception v0

    move-object v4, v9

    goto/16 :goto_333

    .line 326
    .restart local v4    # "flags":I
    .restart local v6    # "bufferSize":I
    .restart local v8    # "foutput":Ljava/io/FileOutputStream;
    .restart local v10    # "lastTrim":J
    .restart local v12    # "buffer":[B
    .restart local v13    # "read":I
    .restart local v17    # "max":J
    :cond_db
    move/from16 v19, v6

    .line 326
    .end local v6    # "bufferSize":I
    .restart local v19    # "bufferSize":I
    :goto_dd
    const/4 v0, 0x0

    invoke-virtual {v9, v12, v0, v13}, Ljava/io/OutputStream;->write([BII)V

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 329
    .local v14, "now":J
    sub-long v20, v14, v10

    const-wide/16 v22, 0x7530

    cmp-long v0, v20, v22

    if-lez v0, :cond_f9

    .line 330
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v20

    move-wide/from16 v16, v20

    .line 331
    .end local v17    # "max":J
    .local v16, "max":J
    move-wide v10, v14

    .line 333
    move-wide/from16 v36, v10

    move-wide/from16 v10, v16

    goto :goto_fd

    .line 333
    .end local v16    # "max":J
    .restart local v17    # "max":J
    :cond_f9
    move-wide/from16 v36, v10

    move-wide/from16 v10, v17

    .line 333
    .end local v17    # "max":J
    .local v10, "max":J
    .local v16, "lastTrim":J
    :goto_fd
    move-wide/from16 v16, v36

    invoke-virtual {v3, v12}, Ljava/io/InputStream;->read([B)I

    move-result v0

    move v13, v0

    .line 334
    if-gtz v13, :cond_10f

    .line 335
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 336
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 337
    const/4 v0, 0x0

    .line 342
    .end local v9    # "output":Ljava/io/OutputStream;
    .local v0, "output":Ljava/io/OutputStream;
    move-object v9, v0

    goto :goto_112

    .line 339
    .end local v0    # "output":Ljava/io/OutputStream;
    .restart local v9    # "output":Ljava/io/OutputStream;
    :cond_10f
    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V

    .line 342
    :goto_112
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v20

    .line 343
    .local v20, "len":J
    cmp-long v0, v20, v10

    if-lez v0, :cond_154

    .line 344
    const-string v0, "DropBoxManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v8

    const-string v8, "Dropping: "

    .line 344
    .end local v8    # "foutput":Ljava/io/FileOutputStream;
    .local v24, "foutput":Ljava/io/FileOutputStream;
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v25, v14

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v14

    .end local v14    # "now":J
    .local v25, "now":J
    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " > "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " bytes)"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 346
    const/4 v0, 0x0

    .line 347
    .end local v2    # "temp":Ljava/io/File;
    .local v0, "temp":Ljava/io/File;
    nop

    .line 353
    move-object v2, v0

    goto :goto_158

    .line 349
    .end local v0    # "temp":Ljava/io/File;
    .end local v20    # "len":J
    .end local v24    # "foutput":Ljava/io/FileOutputStream;
    .end local v25    # "now":J
    .restart local v2    # "temp":Ljava/io/File;
    .restart local v8    # "foutput":Ljava/io/FileOutputStream;
    :cond_154
    move-object/from16 v24, v8

    .line 349
    .end local v8    # "foutput":Ljava/io/FileOutputStream;
    .restart local v24    # "foutput":Ljava/io/FileOutputStream;
    if-gtz v13, :cond_310

    .line 353
    :goto_158
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mFrameworkEventCollector:Lnet/oneplus/odm/insight/FrameworkEventCollector;

    invoke-virtual {v0, v5}, Lnet/oneplus/odm/insight/FrameworkEventCollector;->recordSystemError(Ljava/lang/String;)V

    .line 358
    if-nez v7, :cond_184

    const-string v0, "SYSTEM_SERVER"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_184

    .line 359
    const-string v0, "\n<android-panic-end>\n"

    invoke-static {v0}, Lcom/oem/debug/OemManager;->writeRawPartition(Ljava/lang/String;)I

    move-result v0

    .line 360
    .local v0, "size":I
    const-string v6, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "write tag end size : "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .end local v0    # "size":I
    :cond_184
    invoke-direct {v1, v2, v5, v4}, Lcom/android/server/DropBoxManagerService;->createEntry(Ljava/io/File;Ljava/lang/String;I)J

    move-result-wide v14

    .line 365
    .local v14, "time":J
    const/4 v2, 0x0

    .line 367
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.DROPBOX_ENTRY_ADDED"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 368
    .local v6, "dropboxIntent":Landroid/content/Intent;
    const-string/jumbo v0, "tag"

    invoke-virtual {v6, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const-string/jumbo v0, "time"

    invoke-virtual {v6, v0, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 370
    iget-boolean v0, v1, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    if-nez v0, :cond_1a6

    .line 371
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 377
    :cond_1a6
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    iget-object v8, v1, Lcom/android/server/DropBoxManagerService;->mHandler:Landroid/os/Handler;

    move-wide/from16 v27, v10

    const/4 v10, 0x1

    .line 377
    .end local v10    # "max":J
    .local v27, "max":J
    invoke-virtual {v8, v10, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 382
    if-eqz v7, :cond_2e8

    .line 383
    new-instance v0, Ljava/io/File;

    const-string v8, "/data/system/dropbox"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    move-object v8, v0

    .line 384
    .local v8, "logFiles":[Ljava/io/File;
    const/4 v0, 0x0

    .line 385
    .local v0, "name":Ljava/lang/String;
    move-object v10, v0

    const/4 v0, 0x0

    .line 385
    .local v0, "i":I
    .local v10, "name":Ljava/lang/String;
    :goto_1c5
    move v11, v0

    .line 385
    .end local v0    # "i":I
    .local v11, "i":I
    if-eqz v8, :cond_2e8

    array-length v0, v8

    if-ge v11, v0, :cond_2e8

    .line 386
    aget-object v0, v8, v11

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 387
    .end local v10    # "name":Ljava/lang/String;
    .local v0, "name":Ljava/lang/String;
    const-string v10, ".gz"

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1e8

    .line 388
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x3

    move-object/from16 v29, v6

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 388
    .end local v6    # "dropboxIntent":Landroid/content/Intent;
    .local v29, "dropboxIntent":Landroid/content/Intent;
    move-object v0, v10

    goto :goto_1ea

    .line 390
    .end local v29    # "dropboxIntent":Landroid/content/Intent;
    .restart local v6    # "dropboxIntent":Landroid/content/Intent;
    :cond_1e8
    move-object/from16 v29, v6

    .line 390
    .end local v6    # "dropboxIntent":Landroid/content/Intent;
    .restart local v29    # "dropboxIntent":Landroid/content/Intent;
    :goto_1ea
    const-string v6, ".lost"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_200

    .line 391
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x5

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 398
    .end local v0    # "name":Ljava/lang/String;
    .restart local v10    # "name":Ljava/lang/String;
    :cond_1fe
    :goto_1fe
    move-object v10, v0

    goto :goto_22a

    .line 392
    .end local v10    # "name":Ljava/lang/String;
    .restart local v0    # "name":Ljava/lang/String;
    :cond_200
    const-string v6, ".txt"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_215

    .line 393
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_1fe

    .line 394
    :cond_215
    const-string v6, ".dat"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1fe

    .line 395
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x4

    const/4 v10, 0x0

    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    goto :goto_1fe

    .line 398
    .end local v0    # "name":Ljava/lang/String;
    .restart local v10    # "name":Ljava/lang/String;
    :goto_22a
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd-HH_mm_ss_SSS"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 399
    .local v6, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v30, v0

    .line 400
    .local v30, "curDate":Ljava/util/Date;
    move-object/from16 v31, v12

    move-object/from16 v12, v30

    invoke-virtual {v6, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .end local v30    # "curDate":Ljava/util/Date;
    .local v12, "curDate":Ljava/util/Date;
    .local v31, "buffer":[B
    move-object/from16 v32, v0

    .line 402
    .local v32, "mDate":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v33, v6

    const-string v6, "@"

    .line 402
    .end local v6    # "formatter":Ljava/text/SimpleDateFormat;
    .local v33, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .end local v32    # "mDate":Ljava/lang/String;
    .local v6, "mDate":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2dc

    .line 403
    const-string v0, "DropBoxManagerService"

    move-object/from16 v34, v6

    new-instance v6, Ljava/lang/StringBuilder;

    .line 403
    .end local v6    # "mDate":Ljava/lang/String;
    .local v34, "mDate":Ljava/lang/String;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v35, v10

    const-string v10, "file :: /data/system/dropbox/"

    .line 403
    .end local v10    # "name":Ljava/lang/String;
    .local v35, "name":Ljava/lang/String;
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v8, v11

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-string/jumbo v0, "wtf"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_296

    const-string/jumbo v0, "system_server"

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2b9

    goto :goto_297

    :cond_296
    const/4 v6, 0x0

    :goto_297
    const-string/jumbo v0, "system_app_crash"

    .line 405
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b9

    const-string/jumbo v0, "system_app_anr"

    .line 406
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b9

    const-string v0, "data_app_crash"

    .line 407
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b9

    const-string v0, "data_app_anr"

    .line 408
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c2

    .line 411
    :cond_2b9
    iget-object v10, v1, Lcom/android/server/DropBoxManagerService;->mObjEpitaphLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_2bc
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_2bc} :catch_d7
    .catchall {:try_start_ac .. :try_end_2bc} :catchall_d4

    .line 412
    :try_start_2bc
    aget-object v0, v8, v11

    invoke-static {v0, v5, v4}, Lcom/oem/debug/ASSERT;->epitaph(Ljava/io/File;Ljava/lang/String;I)Z

    .line 413
    monitor-exit v10
    :try_end_2c2
    .catchall {:try_start_2bc .. :try_end_2c2} :catchall_2d9

    .line 416
    :cond_2c2
    :try_start_2c2
    const-string v0, "DropBoxManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "assertState="

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d8
    .catch Ljava/io/IOException; {:try_start_2c2 .. :try_end_2d8} :catch_d7
    .catchall {:try_start_2c2 .. :try_end_2d8} :catchall_d4

    .end local v12    # "curDate":Ljava/util/Date;
    .end local v33    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v34    # "mDate":Ljava/lang/String;
    goto :goto_2de

    .line 413
    .restart local v12    # "curDate":Ljava/util/Date;
    .restart local v33    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v34    # "mDate":Ljava/lang/String;
    :catchall_2d9
    move-exception v0

    :try_start_2da
    monitor-exit v10
    :try_end_2db
    .catchall {:try_start_2da .. :try_end_2db} :catchall_2d9

    :try_start_2db
    throw v0

    .line 385
    .end local v12    # "curDate":Ljava/util/Date;
    .end local v33    # "formatter":Ljava/text/SimpleDateFormat;
    .end local v34    # "mDate":Ljava/lang/String;
    .end local v35    # "name":Ljava/lang/String;
    .restart local v10    # "name":Ljava/lang/String;
    :cond_2dc
    move-object/from16 v35, v10

    .line 385
    .end local v10    # "name":Ljava/lang/String;
    .restart local v35    # "name":Ljava/lang/String;
    :goto_2de
    add-int/lit8 v0, v11, 0x1

    .line 385
    .end local v11    # "i":I
    .local v0, "i":I
    move-object/from16 v6, v29

    move-object/from16 v12, v31

    move-object/from16 v10, v35

    goto/16 :goto_1c5

    .line 423
    .end local v0    # "i":I
    .end local v8    # "logFiles":[Ljava/io/File;
    .end local v29    # "dropboxIntent":Landroid/content/Intent;
    .end local v31    # "buffer":[B
    .end local v35    # "name":Ljava/lang/String;
    .local v6, "dropboxIntent":Landroid/content/Intent;
    .local v12, "buffer":[B
    :cond_2e8
    move-object/from16 v29, v6

    move-object/from16 v31, v12

    .line 423
    .end local v6    # "dropboxIntent":Landroid/content/Intent;
    .end local v12    # "buffer":[B
    .restart local v29    # "dropboxIntent":Landroid/content/Intent;
    .restart local v31    # "buffer":[B
    const-string v0, "anr"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2fd

    const-string/jumbo v0, "watchdog"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_300

    .line 424
    :cond_2fd
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->copyTransactionLog()V
    :try_end_300
    .catch Ljava/io/IOException; {:try_start_2db .. :try_end_300} :catch_d7
    .catchall {:try_start_2db .. :try_end_300} :catchall_d4

    .line 430
    .end local v4    # "flags":I
    .end local v13    # "read":I
    .end local v14    # "time":J
    .end local v16    # "lastTrim":J
    .end local v19    # "bufferSize":I
    .end local v24    # "foutput":Ljava/io/FileOutputStream;
    .end local v27    # "max":J
    .end local v29    # "dropboxIntent":Landroid/content/Intent;
    .end local v31    # "buffer":[B
    :cond_300
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 431
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 432
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 433
    if-eqz v2, :cond_30e

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 435
    :cond_30e
    move-object v4, v9

    goto :goto_357

    .line 326
    .restart local v4    # "flags":I
    .local v10, "max":J
    .restart local v12    # "buffer":[B
    .restart local v13    # "read":I
    .restart local v16    # "lastTrim":J
    .restart local v19    # "bufferSize":I
    .restart local v24    # "foutput":Ljava/io/FileOutputStream;
    :cond_310
    move-wide/from16 v27, v10

    move-wide/from16 v10, v16

    move-object/from16 v8, v24

    move-wide/from16 v17, v27

    .line 326
    .end local v10    # "max":J
    .end local v12    # "buffer":[B
    .restart local v27    # "max":J
    .restart local v31    # "buffer":[B
    goto/16 :goto_dd

    .line 284
    .end local v9    # "output":Ljava/io/OutputStream;
    .end local v13    # "read":I
    .end local v16    # "lastTrim":J
    .end local v19    # "bufferSize":I
    .end local v24    # "foutput":Ljava/io/FileOutputStream;
    .end local v27    # "max":J
    .end local v31    # "buffer":[B
    .local v0, "flags":I
    .local v4, "output":Ljava/io/OutputStream;
    :cond_31a
    move-object/from16 v16, v2

    .line 284
    .end local v2    # "temp":Ljava/io/File;
    .local v16, "temp":Ljava/io/File;
    :try_start_31c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
    :try_end_322
    .catch Ljava/io/IOException; {:try_start_31c .. :try_end_322} :catch_327
    .catchall {:try_start_31c .. :try_end_322} :catchall_322

    .line 430
    .end local v0    # "flags":I
    :catchall_322
    move-exception v0

    move-object v9, v4

    move-object/from16 v2, v16

    goto :goto_35a

    .line 427
    :catch_327
    move-exception v0

    move-object/from16 v2, v16

    goto :goto_333

    .line 430
    .end local v16    # "temp":Ljava/io/File;
    .restart local v2    # "temp":Ljava/io/File;
    :catchall_32b
    move-exception v0

    move-object/from16 v16, v2

    move-object v9, v4

    .line 430
    .end local v2    # "temp":Ljava/io/File;
    .restart local v16    # "temp":Ljava/io/File;
    goto :goto_35a

    .line 427
    .end local v16    # "temp":Ljava/io/File;
    .restart local v2    # "temp":Ljava/io/File;
    :catch_330
    move-exception v0

    move-object/from16 v16, v2

    .line 428
    .local v0, "e":Ljava/io/IOException;
    :goto_333
    :try_start_333
    const-string v6, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t write: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_349
    .catchall {:try_start_333 .. :try_end_349} :catchall_358

    .line 430
    .end local v0    # "e":Ljava/io/IOException;
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 431
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 432
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 433
    if-eqz v2, :cond_357

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 435
    :cond_357
    :goto_357
    return-void

    .line 430
    :catchall_358
    move-exception v0

    move-object v9, v4

    .line 430
    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v9    # "output":Ljava/io/OutputStream;
    :goto_35a
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 431
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 432
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 433
    if-eqz v2, :cond_368

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_368
    throw v0
.end method

.method public copyTransactionLog()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    const-string v0, "/data/anr/"

    .line 441
    .local v0, "tartgetPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/kernel/debug/binder/transactions"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "transactions"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/nio/file/CopyOption;

    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 441
    invoke-static {v1, v2, v4}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 444
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/kernel/debug/binder/transaction_log"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "transaction_log"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    new-array v4, v3, [Ljava/nio/file/CopyOption;

    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v4, v6

    .line 444
    invoke-static {v1, v2, v4}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 447
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/kernel/debug/binder/state"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    new-array v4, v3, [Ljava/nio/file/CopyOption;

    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v4, v6

    .line 447
    invoke-static {v1, v2, v4}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 450
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/kernel/debug/binder/proc/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "system_server"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 451
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    new-array v3, v3, [Ljava/nio/file/CopyOption;

    sget-object v4, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v4, v3, v6

    .line 450
    invoke-static {v1, v2, v3}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 452
    return-void
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 38
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    monitor-enter p0

    .line 500
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "DropBoxManagerService"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_38a

    if-nez v0, :cond_15

    monitor-exit p0

    return-void

    .line 503
    :cond_15
    :try_start_15
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_36b
    .catchall {:try_start_15 .. :try_end_18} :catchall_38a

    .line 508
    nop

    .line 512
    :try_start_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    .line 513
    .local v4, "out":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 513
    .local v0, "doPrint":Z
    const/4 v5, 0x0

    .line 514
    .local v5, "doFile":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .local v6, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move v8, v5

    move v5, v0

    const/4 v0, 0x0

    .line 515
    .local v0, "i":I
    .local v5, "doPrint":Z
    .local v8, "doFile":Z
    :goto_29
    if-eqz v3, :cond_b4

    array-length v9, v3

    if-ge v0, v9, :cond_b4

    .line 516
    aget-object v9, v3, v0

    const-string v10, "-p"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_af

    aget-object v9, v3, v0

    const-string v10, "--print"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_43

    goto :goto_af

    .line 518
    :cond_43
    aget-object v9, v3, v0

    const-string v10, "-f"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_ad

    aget-object v9, v3, v0

    const-string v10, "--file"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_58

    goto :goto_ad

    .line 520
    :cond_58
    aget-object v9, v3, v0

    const-string v10, "-h"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8d

    aget-object v9, v3, v0

    const-string v10, "--help"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d

    goto :goto_8d

    .line 528
    :cond_6d
    aget-object v9, v3, v0

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_87

    .line 529
    const-string v9, "Unknown argument: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v3, v0

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b0

    .line 531
    :cond_87
    aget-object v9, v3, v0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b0

    .line 521
    :cond_8d
    :goto_8d
    const-string v7, "Dropbox (dropbox) dump options:"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 522
    const-string v7, "  [-h|--help] [-p|--print] [-f|--file] [timestamp]"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 523
    const-string v7, "    -h|--help: print this help"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 524
    const-string v7, "    -p|--print: print full contents of each entry"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    const-string v7, "    -f|--file: print path of each entry\'s file"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    const-string v7, "  [timestamp] optionally filters to only those entries."

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_ab
    .catchall {:try_start_19 .. :try_end_ab} :catchall_38a

    .line 527
    monitor-exit p0

    return-void

    .line 519
    :cond_ad
    :goto_ad
    const/4 v8, 0x1

    goto :goto_b0

    .line 517
    :cond_af
    :goto_af
    const/4 v5, 0x1

    .line 515
    :goto_b0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_29

    .line 535
    .end local v0    # "i":I
    :cond_b4
    :try_start_b4
    const-string v0, "Drop box contents: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " entries\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    const-string v0, "Max entries: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_101

    .line 539
    const-string v0, "Searching for:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_fc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "a":Ljava/lang/String;
    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .end local v9    # "a":Ljava/lang/String;
    goto :goto_e7

    .line 541
    :cond_fc
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    :cond_101
    const/4 v0, 0x0

    .line 544
    .local v0, "numFound":I
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 545
    .local v9, "numArgs":I
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 546
    .local v10, "time":Landroid/text/format/Time;
    const-string v11, "\n"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    iget-object v11, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v11, v11, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v11}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_118
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_342

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 548
    .local v12, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-wide v13, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-virtual {v10, v13, v14}, Landroid/text/format/Time;->set(J)V

    .line 549
    const-string v13, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v10, v13}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 550
    .local v13, "date":Ljava/lang/String;
    const/4 v14, 0x1

    .line 551
    .local v14, "match":Z
    move v15, v14

    const/4 v14, 0x0

    .line 551
    .local v14, "i":I
    .local v15, "match":Z
    :goto_132
    const/16 v16, 0x1

    if-ge v14, v9, :cond_15f

    if-eqz v15, :cond_15f

    .line 552
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v18, v17

    .line 553
    .local v18, "arg":Ljava/lang/String;
    move-object/from16 v7, v18

    invoke-virtual {v13, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    .line 553
    .end local v18    # "arg":Ljava/lang/String;
    .local v7, "arg":Ljava/lang/String;
    if-nez v17, :cond_156

    move-object/from16 v19, v6

    iget-object v6, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    .line 553
    .end local v6    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v19, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_153

    goto :goto_158

    :cond_153
    const/16 v16, 0x0

    goto :goto_158

    .line 553
    .end local v19    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_156
    move-object/from16 v19, v6

    .line 553
    .end local v6    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_158
    move/from16 v15, v16

    .line 551
    .end local v7    # "arg":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, v19

    goto :goto_132

    .line 555
    .end local v14    # "i":I
    .end local v19    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_15f
    move-object/from16 v19, v6

    .line 555
    .end local v6    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v15, :cond_166

    .line 547
    .end local v12    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v13    # "date":Ljava/lang/String;
    .end local v15    # "match":Z
    move-object/from16 v6, v19

    goto :goto_118

    .line 557
    .restart local v12    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .restart local v13    # "date":Ljava/lang/String;
    .restart local v15    # "match":Z
    :cond_166
    add-int/lit8 v6, v0, 0x1

    .line 558
    .end local v0    # "numFound":I
    .local v6, "numFound":I
    if-eqz v5, :cond_16f

    const-string v0, "========================================\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    :cond_16f
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v0, :cond_17e

    const-string v0, "(no tag)"

    goto :goto_180

    :cond_17e
    iget-object v0, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    :goto_180
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v12, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    move-object v7, v0

    .line 562
    .local v7, "file":Ljava/io/File;
    if-nez v7, :cond_19c

    .line 563
    const-string v0, " (no file)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    nop

    .line 547
    .end local v7    # "file":Ljava/io/File;
    .end local v12    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v13    # "date":Ljava/lang/String;
    .end local v15    # "match":Z
    :goto_192
    move/from16 v30, v6

    move/from16 v28, v8

    move/from16 v26, v9

    move-object/from16 v27, v10

    goto/16 :goto_336

    .line 565
    .restart local v7    # "file":Ljava/io/File;
    .restart local v12    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .restart local v13    # "date":Ljava/lang/String;
    .restart local v15    # "match":Z
    :cond_19c
    iget v0, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1a8

    .line 566
    const-string v0, " (contents lost)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    goto :goto_192

    .line 569
    :cond_1a8
    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget v0, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1b8

    const-string v0, "compressed "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    :cond_1b8
    iget v0, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1c2

    const-string/jumbo v0, "text"

    goto :goto_1c4

    :cond_1c2
    const-string v0, "data"

    :goto_1c4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v26, v9

    move-object/from16 v27, v10

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 572
    .end local v9    # "numArgs":I
    .end local v10    # "time":Landroid/text/format/Time;
    .local v26, "numArgs":I
    .local v27, "time":Landroid/text/format/Time;
    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    if-nez v8, :cond_1e6

    if-eqz v5, :cond_1f9

    iget v0, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1f9

    .line 576
    :cond_1e6
    if-nez v5, :cond_1ed

    const-string v0, "    "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :cond_1ed
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    :cond_1f9
    iget v0, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_1fb
    .catchall {:try_start_b4 .. :try_end_1fb} :catchall_38a

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_32a

    if-nez v5, :cond_20a

    if-nez v8, :cond_204

    goto :goto_20a

    .line 630
    :cond_204
    move/from16 v30, v6

    move/from16 v28, v8

    goto/16 :goto_32e

    .line 581
    :cond_20a
    :goto_20a
    const/4 v9, 0x0

    .line 582
    .local v9, "dbe":Landroid/os/DropBoxManager$Entry;
    const/4 v0, 0x0

    move-object v10, v0

    .line 584
    .local v10, "isr":Ljava/io/InputStreamReader;
    :try_start_20d
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v14, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;
    :try_end_211
    .catch Ljava/io/IOException; {:try_start_20d .. :try_end_211} :catch_2e0
    .catchall {:try_start_20d .. :try_end_211} :catchall_2d7

    move/from16 v28, v8

    move-object/from16 v29, v9

    :try_start_215
    iget-wide v8, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J
    :try_end_217
    .catch Ljava/io/IOException; {:try_start_215 .. :try_end_217} :catch_2d1
    .catchall {:try_start_215 .. :try_end_217} :catchall_2ca

    .line 584
    .end local v8    # "doFile":Z
    .end local v9    # "dbe":Landroid/os/DropBoxManager$Entry;
    .local v28, "doFile":Z
    .local v29, "dbe":Landroid/os/DropBoxManager$Entry;
    move/from16 v30, v6

    :try_start_219
    iget v6, v12, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    .line 584
    .end local v6    # "numFound":I
    .local v30, "numFound":I
    move-object/from16 v20, v0

    move-object/from16 v21, v14

    move-wide/from16 v22, v8

    move-object/from16 v24, v7

    move/from16 v25, v6

    invoke-direct/range {v20 .. v25}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_228
    .catch Ljava/io/IOException; {:try_start_219 .. :try_end_228} :catch_2c6
    .catchall {:try_start_219 .. :try_end_228} :catchall_2c1

    move-object v9, v0

    .line 587
    .end local v29    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v9    # "dbe":Landroid/os/DropBoxManager$Entry;
    const/16 v0, 0xa

    if-eqz v5, :cond_27a

    .line 588
    :try_start_22d
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v9}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v10, v6

    .line 589
    const/16 v6, 0x1000

    new-array v6, v6, [C

    .line 590
    .local v6, "buf":[C
    const/4 v8, 0x0

    .line 592
    .local v8, "newline":Z
    :goto_23c
    invoke-virtual {v10, v6}, Ljava/io/InputStreamReader;->read([C)I

    move-result v14

    .line 593
    .local v14, "n":I
    if-gtz v14, :cond_24b

    .line 603
    .end local v14    # "n":I
    if-nez v8, :cond_249

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .end local v6    # "buf":[C
    .end local v8    # "newline":Z
    :cond_249
    goto/16 :goto_2b8

    .line 594
    .restart local v6    # "buf":[C
    .restart local v8    # "newline":Z
    .restart local v14    # "n":I
    :cond_24b
    move/from16 v31, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8, v14}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 595
    .end local v8    # "newline":Z
    .local v31, "newline":Z
    add-int/lit8 v8, v14, -0x1

    aget-char v8, v6, v8

    if-ne v8, v0, :cond_25a

    move/from16 v8, v16

    goto :goto_25b

    :cond_25a
    const/4 v8, 0x0

    .line 598
    .end local v31    # "newline":Z
    .restart local v8    # "newline":Z
    :goto_25b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    move-object/from16 v32, v6

    const/high16 v6, 0x10000

    .line 598
    .end local v6    # "buf":[C
    .local v32, "buf":[C
    if-le v0, v6, :cond_271

    .line 599
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 600
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 600
    .end local v14    # "n":I
    goto :goto_272

    .line 602
    :cond_271
    const/4 v6, 0x0

    .line 590
    :goto_272
    move-object/from16 v6, v32

    const/16 v0, 0xa

    goto :goto_23c

    .line 616
    .end local v8    # "newline":Z
    .end local v32    # "buf":[C
    :catch_277
    move-exception v0

    goto/16 :goto_2e7

    .line 605
    :cond_27a
    const/4 v6, 0x0

    const/16 v0, 0x46

    invoke-virtual {v9, v0}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 606
    .local v8, "text":Ljava/lang/String;
    const-string v14, "    "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    if-nez v8, :cond_290

    .line 608
    const-string v0, "[null]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    move-object/from16 v33, v8

    goto :goto_2b3

    .line 610
    :cond_290
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    if-ne v14, v0, :cond_297

    goto :goto_299

    :cond_297
    move/from16 v16, v6

    :goto_299
    move/from16 v0, v16

    .line 611
    .local v0, "truncated":Z
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const/16 v6, 0x2f

    move-object/from16 v33, v8

    const/16 v8, 0xa

    invoke-virtual {v14, v8, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    .line 611
    .end local v8    # "text":Ljava/lang/String;
    .local v33, "text":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    if-eqz v0, :cond_2b3

    const-string v6, " ..."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .end local v0    # "truncated":Z
    :cond_2b3
    :goto_2b3
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2b8
    .catch Ljava/io/IOException; {:try_start_22d .. :try_end_2b8} :catch_277
    .catchall {:try_start_22d .. :try_end_2b8} :catchall_31b

    .line 620
    .end local v33    # "text":Ljava/lang/String;
    :goto_2b8
    :try_start_2b8
    invoke-virtual {v9}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_2bb
    .catchall {:try_start_2b8 .. :try_end_2bb} :catchall_38a

    .line 621
    if-eqz v10, :cond_32e

    .line 623
    :try_start_2bd
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_2c0
    .catch Ljava/io/IOException; {:try_start_2bd .. :try_end_2c0} :catch_319
    .catchall {:try_start_2bd .. :try_end_2c0} :catchall_38a

    goto :goto_318

    .line 620
    .end local v9    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v29    # "dbe":Landroid/os/DropBoxManager$Entry;
    :catchall_2c1
    move-exception v0

    move-object v6, v0

    move-object/from16 v9, v29

    goto :goto_31d

    .line 616
    :catch_2c6
    move-exception v0

    move-object/from16 v9, v29

    goto :goto_2e7

    .line 620
    .end local v30    # "numFound":I
    .local v6, "numFound":I
    :catchall_2ca
    move-exception v0

    move/from16 v30, v6

    move-object v6, v0

    move-object/from16 v9, v29

    .line 620
    .end local v6    # "numFound":I
    .restart local v30    # "numFound":I
    goto :goto_31d

    .line 616
    .end local v30    # "numFound":I
    .restart local v6    # "numFound":I
    :catch_2d1
    move-exception v0

    move/from16 v30, v6

    move-object/from16 v9, v29

    .line 616
    .end local v6    # "numFound":I
    .restart local v30    # "numFound":I
    goto :goto_2e7

    .line 620
    .end local v28    # "doFile":Z
    .end local v29    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v30    # "numFound":I
    .restart local v6    # "numFound":I
    .local v8, "doFile":Z
    .restart local v9    # "dbe":Landroid/os/DropBoxManager$Entry;
    :catchall_2d7
    move-exception v0

    move/from16 v30, v6

    move/from16 v28, v8

    move-object/from16 v29, v9

    move-object v6, v0

    .line 620
    .end local v6    # "numFound":I
    .end local v8    # "doFile":Z
    .end local v9    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v28    # "doFile":Z
    .restart local v29    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v30    # "numFound":I
    goto :goto_31d

    .line 616
    .end local v28    # "doFile":Z
    .end local v29    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v30    # "numFound":I
    .restart local v6    # "numFound":I
    .restart local v8    # "doFile":Z
    .restart local v9    # "dbe":Landroid/os/DropBoxManager$Entry;
    :catch_2e0
    move-exception v0

    move/from16 v30, v6

    move/from16 v28, v8

    move-object/from16 v29, v9

    .line 617
    .end local v6    # "numFound":I
    .end local v8    # "doFile":Z
    .local v0, "e":Ljava/io/IOException;
    .restart local v28    # "doFile":Z
    .restart local v30    # "numFound":I
    :goto_2e7
    :try_start_2e7
    const-string v6, "*** "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const-string v6, "DropBoxManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Can\'t read: "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30e
    .catchall {:try_start_2e7 .. :try_end_30e} :catchall_31b

    .line 620
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v9, :cond_313

    :try_start_310
    invoke-virtual {v9}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_313
    .catchall {:try_start_310 .. :try_end_313} :catchall_38a

    .line 621
    :cond_313
    if-eqz v10, :cond_32e

    .line 623
    :try_start_315
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_318
    .catch Ljava/io/IOException; {:try_start_315 .. :try_end_318} :catch_319
    .catchall {:try_start_315 .. :try_end_318} :catchall_38a

    .line 625
    .end local v9    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v10    # "isr":Ljava/io/InputStreamReader;
    :goto_318
    goto :goto_32e

    .line 624
    .restart local v9    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v10    # "isr":Ljava/io/InputStreamReader;
    :catch_319
    move-exception v0

    goto :goto_318

    .line 620
    :catchall_31b
    move-exception v0

    move-object v6, v0

    :goto_31d
    if-eqz v9, :cond_322

    :try_start_31f
    invoke-virtual {v9}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_322
    .catchall {:try_start_31f .. :try_end_322} :catchall_38a

    .line 621
    :cond_322
    if-eqz v10, :cond_329

    .line 623
    :try_start_324
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_327
    .catch Ljava/io/IOException; {:try_start_324 .. :try_end_327} :catch_328
    .catchall {:try_start_324 .. :try_end_327} :catchall_38a

    .line 625
    goto :goto_329

    .line 624
    :catch_328
    move-exception v0

    .line 625
    :cond_329
    :goto_329
    :try_start_329
    throw v6

    .line 630
    .end local v9    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v10    # "isr":Ljava/io/InputStreamReader;
    .end local v28    # "doFile":Z
    .end local v30    # "numFound":I
    .restart local v6    # "numFound":I
    .restart local v8    # "doFile":Z
    :cond_32a
    move/from16 v30, v6

    move/from16 v28, v8

    .line 630
    .end local v6    # "numFound":I
    .end local v8    # "doFile":Z
    .restart local v28    # "doFile":Z
    .restart local v30    # "numFound":I
    :cond_32e
    :goto_32e
    if-eqz v5, :cond_335

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    .end local v7    # "file":Ljava/io/File;
    .end local v12    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v13    # "date":Ljava/lang/String;
    .end local v15    # "match":Z
    :cond_335
    nop

    .line 547
    .end local v26    # "numArgs":I
    .end local v27    # "time":Landroid/text/format/Time;
    .end local v28    # "doFile":Z
    .end local v30    # "numFound":I
    .restart local v6    # "numFound":I
    .restart local v8    # "doFile":Z
    .local v9, "numArgs":I
    .local v10, "time":Landroid/text/format/Time;
    :goto_336
    move-object/from16 v6, v19

    move/from16 v9, v26

    move-object/from16 v10, v27

    move/from16 v8, v28

    move/from16 v0, v30

    .line 547
    .end local v6    # "numFound":I
    .end local v8    # "doFile":Z
    .end local v9    # "numArgs":I
    .end local v10    # "time":Landroid/text/format/Time;
    .restart local v26    # "numArgs":I
    .restart local v27    # "time":Landroid/text/format/Time;
    .restart local v28    # "doFile":Z
    .restart local v30    # "numFound":I
    goto/16 :goto_118

    .line 633
    .end local v19    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26    # "numArgs":I
    .end local v27    # "time":Landroid/text/format/Time;
    .end local v28    # "doFile":Z
    .end local v30    # "numFound":I
    .local v0, "numFound":I
    .local v6, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "doFile":Z
    .restart local v9    # "numArgs":I
    .restart local v10    # "time":Landroid/text/format/Time;
    :cond_342
    move-object/from16 v19, v6

    move/from16 v28, v8

    move/from16 v26, v9

    move-object/from16 v27, v10

    .line 633
    .end local v6    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "doFile":Z
    .end local v9    # "numArgs":I
    .end local v10    # "time":Landroid/text/format/Time;
    .restart local v19    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v26    # "numArgs":I
    .restart local v27    # "time":Landroid/text/format/Time;
    .restart local v28    # "doFile":Z
    if-nez v0, :cond_351

    const-string v6, "(No entries found.)\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    :cond_351
    if-eqz v3, :cond_356

    array-length v6, v3

    if-nez v6, :cond_362

    .line 636
    :cond_356
    if-nez v5, :cond_35d

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    :cond_35d
    const-string v6, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    :cond_362
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_369
    .catchall {:try_start_329 .. :try_end_369} :catchall_38a

    .line 642
    monitor-exit p0

    return-void

    .line 504
    .end local v0    # "numFound":I
    .end local v4    # "out":Ljava/lang/StringBuilder;
    .end local v5    # "doPrint":Z
    .end local v19    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26    # "numArgs":I
    .end local v27    # "time":Landroid/text/format/Time;
    .end local v28    # "doFile":Z
    :catch_36b
    move-exception v0

    move-object v4, v0

    .line 505
    .local v0, "e":Ljava/io/IOException;
    :try_start_36d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t initialize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    const-string v4, "DropBoxManagerService"

    const-string v5, "Can\'t init"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_388
    .catchall {:try_start_36d .. :try_end_388} :catchall_38a

    .line 507
    monitor-exit p0

    return-void

    .line 499
    .end local v0    # "e":Ljava/io/IOException;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :catchall_38a
    move-exception v0

    monitor-exit p0

    .line 499
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    throw v0
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;
    .registers 16
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J

    monitor-enter p0

    .line 466
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_LOGS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_98

    if-nez v0, :cond_90

    .line 472
    const/4 v0, 0x0

    :try_start_e
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_86
    .catchall {:try_start_e .. :try_end_11} :catchall_98

    .line 476
    nop

    .line 478
    if-nez p1, :cond_17

    :try_start_14
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    goto :goto_1f

    :cond_17
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DropBoxManagerService$FileList;
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_98

    .line 479
    .local v1, "list":Lcom/android/server/DropBoxManagerService$FileList;
    :goto_1f
    if-nez v1, :cond_23

    monitor-exit p0

    return-object v0

    .line 481
    :cond_23
    :try_start_23
    iget-object v2, v1, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v3, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v4, 0x1

    add-long/2addr v4, p2

    invoke-direct {v3, v4, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 482
    .local v3, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v4, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v4, :cond_46

    .end local v3    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    goto :goto_35

    .line 483
    .restart local v3    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_46
    iget v4, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_57

    .line 484
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v2, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v4, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v2, v4, v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_55
    .catchall {:try_start_23 .. :try_end_55} :catchall_98

    monitor-exit p0

    return-object v0

    .line 486
    :cond_57
    :try_start_57
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v3, v4}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v4
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_98

    .line 488
    .local v4, "file":Ljava/io/File;
    :try_start_5d
    new-instance v11, Landroid/os/DropBoxManager$Entry;

    iget-object v6, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v7, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget v10, v3, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move-object v5, v11

    move-object v9, v4

    invoke-direct/range {v5 .. v10}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_6a} :catch_6c
    .catchall {:try_start_5d .. :try_end_6a} :catchall_98

    monitor-exit p0

    return-object v11

    .line 490
    :catch_6c
    move-exception v5

    .line 491
    .local v5, "e":Ljava/io/IOException;
    :try_start_6d
    const-string v6, "DropBoxManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t read: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_83
    .catchall {:try_start_6d .. :try_end_83} :catchall_98

    .line 494
    .end local v3    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_35

    .line 496
    :cond_84
    monitor-exit p0

    return-object v0

    .line 473
    .end local v1    # "list":Lcom/android/server/DropBoxManagerService$FileList;
    :catch_86
    move-exception v1

    .line 474
    .local v1, "e":Ljava/io/IOException;
    :try_start_87
    const-string v2, "DropBoxManagerService"

    const-string v3, "Can\'t init"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8e
    .catchall {:try_start_87 .. :try_end_8e} :catchall_98

    .line 475
    monitor-exit p0

    return-object v0

    .line 468
    .end local v1    # "e":Ljava/io/IOException;
    :cond_90
    :try_start_90
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "READ_LOGS permission required"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_98
    .catchall {:try_start_90 .. :try_end_98} :catchall_98

    .line 465
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "millis":J
    :catchall_98
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    throw p1
.end method

.method public getServiceStub()Lcom/android/internal/os/IDropBoxManagerService;
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    return-object v0
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;

    .line 456
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 458
    .local v0, "token":J
    :try_start_4
    const-string v2, "disabled"

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dropbox:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_27

    .line 461
    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 458
    return v2

    .line 461
    :catchall_27
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public onBootPhase(I)V
    .registers 8
    .param p1, "phase"    # I

    .line 246
    const/16 v0, 0x1f4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_d

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_a

    goto :goto_32

    .line 263
    :cond_a
    iput-boolean v1, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    goto :goto_32

    .line 248
    :cond_d
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 249
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 252
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Lcom/android/server/DropBoxManagerService$4;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/DropBoxManagerService$4;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 260
    nop

    .line 266
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_32
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 239
    const-string v0, "dropbox"

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/DropBoxManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 242
    return-void
.end method
