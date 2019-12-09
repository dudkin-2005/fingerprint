.class public final Lcom/android/server/job/controllers/ContentObserverController;
.super Lcom/android/server/job/controllers/StateController;
.source "ContentObserverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/ContentObserverController$JobInstance;,
        Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;,
        Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MAX_URIS_REPORTED:I = 0x32

.field private static final TAG:Ljava/lang/String; = "JobScheduler.ContentObserver"

.field private static final URIS_URGENT_THRESHOLD:I = 0x28


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mObservers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Landroid/app/job/JobInfo$TriggerContentUri;",
            "Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTrackedTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const-string v0, "JobScheduler.ContentObserver"

    const/4 v1, 0x3

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 61
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    .line 71
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    return v0
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .registers 37
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .local p4, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 448
    move-object/from16 v2, p4

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 449
    .local v3, "token":J
    const-wide v5, 0x10b00000004L

    invoke-virtual {v1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 451
    .local v5, "mToken":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_14
    iget-object v9, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    const-wide v10, 0x10b00000001L

    const-wide v12, 0x10500000002L

    if-ge v8, v9, :cond_4f

    .line 452
    iget-object v9, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/job/controllers/JobStatus;

    .line 453
    .local v9, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {v2, v9}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_35

    .line 454
    goto :goto_4c

    .line 456
    :cond_35
    const-wide v14, 0x20b00000001L

    .line 457
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 458
    .local v14, "jsToken":J
    invoke-virtual {v9, v1, v10, v11}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 460
    nop

    .line 461
    invoke-virtual {v9}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v10

    .line 460
    invoke-virtual {v1, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 462
    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 451
    .end local v9    # "js":Lcom/android/server/job/controllers/JobStatus;
    .end local v14    # "jsToken":J
    :goto_4c
    add-int/lit8 v8, v8, 0x1

    goto :goto_14

    .line 465
    .end local v8    # "i":I
    :cond_4f
    iget-object v8, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 466
    .local v8, "n":I
    const/4 v9, 0x0

    .local v9, "userIdx":I
    :goto_56
    if-ge v9, v8, :cond_200

    .line 467
    nop

    .line 468
    const-wide v14, 0x20b00000002L

    move/from16 v16, v8

    invoke-virtual {v1, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 469
    .end local v8    # "n":I
    .local v7, "oToken":J
    .local v16, "n":I
    iget-object v10, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 471
    .local v10, "userId":I
    const-wide v12, 0x10500000001L

    invoke-virtual {v1, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 473
    iget-object v11, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    .line 474
    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArrayMap;

    .line 475
    .local v11, "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v12

    .line 476
    .local v12, "numbOfObserversPerUser":I
    const/4 v13, 0x0

    .local v13, "observerIdx":I
    :goto_7f
    if-ge v13, v12, :cond_1d9

    .line 477
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v14, v17

    check-cast v14, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    .line 478
    .local v14, "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    iget-object v15, v14, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v15

    .line 479
    .local v15, "m":I
    const/16 v17, 0x0

    .line 480
    .local v17, "shouldDump":Z
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_93
    move/from16 v19, v18

    .end local v18    # "j":I
    .local v19, "j":I
    move/from16 v0, v19

    if-ge v0, v15, :cond_b9

    .line 481
    .end local v19    # "j":I
    .local v0, "j":I
    move/from16 v20, v10

    iget-object v10, v14, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    .end local v10    # "userId":I
    .local v20, "userId":I
    invoke-virtual {v10, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 482
    .local v10, "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    move/from16 v21, v12

    iget-object v12, v10, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .end local v12    # "numbOfObserversPerUser":I
    .local v21, "numbOfObserversPerUser":I
    invoke-interface {v2, v12}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b0

    .line 483
    const/16 v17, 0x1

    .line 484
    goto :goto_bd

    .line 480
    .end local v10    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    :cond_b0
    add-int/lit8 v18, v0, 0x1

    .end local v0    # "j":I
    .restart local v18    # "j":I
    move/from16 v10, v20

    move/from16 v12, v21

    move-object/from16 v0, p0

    goto :goto_93

    .line 487
    .end local v18    # "j":I
    .end local v20    # "userId":I
    .end local v21    # "numbOfObserversPerUser":I
    .local v10, "userId":I
    .restart local v12    # "numbOfObserversPerUser":I
    :cond_b9
    move/from16 v20, v10

    move/from16 v21, v12

    .end local v10    # "userId":I
    .end local v12    # "numbOfObserversPerUser":I
    .restart local v20    # "userId":I
    .restart local v21    # "numbOfObserversPerUser":I
    :goto_bd
    if-nez v17, :cond_ca

    .line 488
    nop

    .line 476
    move-wide/from16 v22, v3

    move-wide/from16 v24, v5

    move-wide/from16 v29, v7

    move-object/from16 v26, v11

    goto/16 :goto_1c0

    .line 490
    :cond_ca
    move-wide/from16 v22, v3

    move-wide/from16 v24, v5

    const-wide v2, 0x20b00000002L

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 493
    .end local v3    # "token":J
    .end local v5    # "mToken":J
    .local v4, "tToken":J
    .local v22, "token":J
    .local v24, "mToken":J
    invoke-virtual {v11, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 494
    .local v0, "trigger":Landroid/app/job/JobInfo$TriggerContentUri;
    invoke-virtual {v0}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 495
    .local v6, "u":Landroid/net/Uri;
    if-eqz v6, :cond_ef

    .line 496
    const-wide v2, 0x10900000001L

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v2, v3, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 498
    :cond_ef
    invoke-virtual {v0}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v2

    move-object/from16 v26, v11

    const-wide v10, 0x10500000002L

    invoke-virtual {v1, v10, v11, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 500
    .end local v11    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    .local v26, "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_fe
    if-ge v2, v15, :cond_1b5

    .line 501
    const-wide v10, 0x20b00000003L

    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 502
    .local v10, "jToken":J
    iget-object v3, v14, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 504
    .local v3, "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    iget-object v12, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v27, v14

    move/from16 v28, v15

    const-wide v14, 0x10b00000001L

    invoke-virtual {v12, v1, v14, v15}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 505
    .end local v14    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    .end local v15    # "m":I
    .local v27, "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    .local v28, "m":I
    iget-object v12, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 506
    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v12

    .line 505
    const-wide v14, 0x10500000002L

    invoke-virtual {v1, v14, v15, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 508
    iget-object v12, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-nez v12, :cond_139

    .line 509
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 510
    nop

    .line 500
    move-wide/from16 v29, v7

    goto/16 :goto_1ab

    .line 512
    :cond_139
    iget-boolean v12, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    if-eqz v12, :cond_15e

    .line 513
    const-wide v14, 0x10300000003L

    iget-object v12, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 514
    move-object/from16 v31, v6

    move-wide/from16 v29, v7

    invoke-virtual {v12}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentUpdateDelay()J

    move-result-wide v6

    .line 513
    .end local v6    # "u":Landroid/net/Uri;
    .end local v7    # "oToken":J
    .local v29, "oToken":J
    .local v31, "u":Landroid/net/Uri;
    invoke-virtual {v1, v14, v15, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 515
    const-wide v6, 0x10300000004L

    iget-object v8, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 516
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentMaxDelay()J

    move-result-wide v14

    .line 515
    invoke-virtual {v1, v6, v7, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_162

    .line 518
    .end local v29    # "oToken":J
    .end local v31    # "u":Landroid/net/Uri;
    .restart local v6    # "u":Landroid/net/Uri;
    .restart local v7    # "oToken":J
    :cond_15e
    move-object/from16 v31, v6

    move-wide/from16 v29, v7

    .end local v6    # "u":Landroid/net/Uri;
    .end local v7    # "oToken":J
    .restart local v29    # "oToken":J
    .restart local v31    # "u":Landroid/net/Uri;
    :goto_162
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_163
    iget-object v7, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_17e

    .line 519
    const-wide v7, 0x20900000005L

    iget-object v12, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 520
    invoke-virtual {v12, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 519
    invoke-virtual {v1, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 518
    add-int/lit8 v6, v6, 0x1

    goto :goto_163

    .line 522
    .end local v6    # "k":I
    :cond_17e
    iget-object v6, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    if-eqz v6, :cond_1a6

    .line 523
    const/4 v6, 0x0

    .restart local v6    # "k":I
    :goto_183
    iget-object v7, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_1a6

    .line 524
    iget-object v7, v3, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 525
    .end local v31    # "u":Landroid/net/Uri;
    .local v7, "u":Landroid/net/Uri;
    if-eqz v7, :cond_1a1

    .line 526
    const-wide v14, 0x20900000006L

    .line 527
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 526
    invoke-virtual {v1, v14, v15, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 523
    :cond_1a1
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v31, v7

    goto :goto_183

    .line 532
    .end local v6    # "k":I
    .end local v7    # "u":Landroid/net/Uri;
    .restart local v31    # "u":Landroid/net/Uri;
    :cond_1a6
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 500
    .end local v3    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    .end local v10    # "jToken":J
    move-object/from16 v6, v31

    .end local v31    # "u":Landroid/net/Uri;
    .local v6, "u":Landroid/net/Uri;
    :goto_1ab
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v14, v27

    move/from16 v15, v28

    move-wide/from16 v7, v29

    goto/16 :goto_fe

    .line 535
    .end local v2    # "j":I
    .end local v27    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    .end local v28    # "m":I
    .end local v29    # "oToken":J
    .local v7, "oToken":J
    .restart local v14    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    .restart local v15    # "m":I
    :cond_1b5
    move-object/from16 v31, v6

    move-wide/from16 v29, v7

    move-object/from16 v27, v14

    move/from16 v28, v15

    .end local v6    # "u":Landroid/net/Uri;
    .end local v7    # "oToken":J
    .end local v14    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    .end local v15    # "m":I
    .restart local v27    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    .restart local v28    # "m":I
    .restart local v29    # "oToken":J
    .restart local v31    # "u":Landroid/net/Uri;
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 476
    .end local v0    # "trigger":Landroid/app/job/JobInfo$TriggerContentUri;
    .end local v4    # "tToken":J
    .end local v17    # "shouldDump":Z
    .end local v27    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    .end local v28    # "m":I
    .end local v31    # "u":Landroid/net/Uri;
    :goto_1c0
    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v20

    move/from16 v12, v21

    move-wide/from16 v3, v22

    move-wide/from16 v5, v24

    move-object/from16 v11, v26

    move-wide/from16 v7, v29

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    const-wide v14, 0x20b00000002L

    goto/16 :goto_7f

    .line 538
    .end local v13    # "observerIdx":I
    .end local v20    # "userId":I
    .end local v21    # "numbOfObserversPerUser":I
    .end local v22    # "token":J
    .end local v24    # "mToken":J
    .end local v26    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    .end local v29    # "oToken":J
    .local v3, "token":J
    .restart local v5    # "mToken":J
    .restart local v7    # "oToken":J
    .local v10, "userId":I
    .restart local v11    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    .restart local v12    # "numbOfObserversPerUser":I
    :cond_1d9
    move-wide/from16 v22, v3

    move-wide/from16 v24, v5

    move-wide/from16 v29, v7

    move/from16 v20, v10

    move-object/from16 v26, v11

    move/from16 v21, v12

    .end local v3    # "token":J
    .end local v5    # "mToken":J
    .end local v7    # "oToken":J
    .end local v10    # "userId":I
    .end local v11    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    .end local v12    # "numbOfObserversPerUser":I
    .restart local v20    # "userId":I
    .restart local v21    # "numbOfObserversPerUser":I
    .restart local v22    # "token":J
    .restart local v24    # "mToken":J
    .restart local v26    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    .restart local v29    # "oToken":J
    move-wide/from16 v2, v29

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 466
    .end local v20    # "userId":I
    .end local v21    # "numbOfObserversPerUser":I
    .end local v26    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    .end local v29    # "oToken":J
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v16

    move-wide/from16 v3, v22

    move-object/from16 v0, p0

    move-object/from16 v2, p4

    const-wide v10, 0x10b00000001L

    const-wide v12, 0x10500000002L

    goto/16 :goto_56

    .line 541
    .end local v9    # "userIdx":I
    .end local v16    # "n":I
    .end local v22    # "token":J
    .end local v24    # "mToken":J
    .restart local v3    # "token":J
    .restart local v5    # "mToken":J
    .restart local v8    # "n":I
    :cond_200
    move-wide/from16 v22, v3

    move-wide/from16 v24, v5

    move/from16 v16, v8

    .end local v3    # "token":J
    .end local v5    # "mToken":J
    .end local v8    # "n":I
    .restart local v16    # "n":I
    .restart local v22    # "token":J
    .restart local v24    # "mToken":J
    move-wide/from16 v2, v24

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 542
    .end local v24    # "mToken":J
    .local v2, "mToken":J
    move-wide/from16 v4, v22

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 543
    .end local v22    # "token":J
    .local v4, "token":J
    return-void
.end method

.method public dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .registers 20
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .local p2, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/job/controllers/JobStatus;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 358
    move-object/from16 v2, p2

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7
    iget-object v5, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_38

    .line 359
    iget-object v5, v0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 360
    .local v5, "js":Lcom/android/server/job/controllers/JobStatus;
    invoke-interface {v2, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 361
    goto :goto_35

    .line 363
    :cond_1e
    const-string v6, "#"

    invoke-virtual {v1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v5, v1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 365
    const-string v6, " from "

    invoke-virtual {v1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v6

    invoke-static {v1, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 367
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 358
    .end local v5    # "js":Lcom/android/server/job/controllers/JobStatus;
    :goto_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 369
    .end local v4    # "i":I
    :cond_38
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 371
    iget-object v4, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 372
    .local v4, "N":I
    if-lez v4, :cond_173

    .line 373
    const-string v5, "Observers:"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 375
    const/4 v5, 0x0

    .local v5, "userIdx":I
    :goto_4c
    if-ge v5, v4, :cond_170

    .line 376
    iget-object v6, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 377
    .local v6, "userId":I
    iget-object v7, v0, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    .line 378
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 379
    .local v7, "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 380
    .local v8, "numbOfObserversPerUser":I
    const/4 v9, 0x0

    .local v9, "observerIdx":I
    :goto_61
    if-ge v9, v8, :cond_16a

    .line 381
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    .line 382
    .local v10, "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    iget-object v11, v10, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v11}, Landroid/util/ArraySet;->size()I

    move-result v11

    .line 383
    .local v11, "M":I
    const/4 v12, 0x0

    .line 384
    .local v12, "shouldDump":Z
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_71
    if-ge v13, v11, :cond_88

    .line 385
    iget-object v14, v10, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v14, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 386
    .local v14, "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    iget-object v15, v14, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-interface {v2, v15}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_85

    .line 387
    const/4 v12, 0x1

    .line 388
    goto :goto_88

    .line 384
    .end local v14    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    :cond_85
    add-int/lit8 v13, v13, 0x1

    goto :goto_71

    .line 391
    .end local v13    # "j":I
    :cond_88
    :goto_88
    if-nez v12, :cond_8c

    .line 392
    goto/16 :goto_164

    .line 394
    :cond_8c
    invoke-virtual {v7, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/job/JobInfo$TriggerContentUri;

    .line 395
    .local v13, "trigger":Landroid/app/job/JobInfo$TriggerContentUri;
    invoke-virtual {v13}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 396
    const-string v14, " 0x"

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v13}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 398
    const-string v14, " ("

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 399
    invoke-static {v10}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 400
    const-string v14, "):"

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 402
    const-string v14, "Jobs:"

    invoke-virtual {v1, v14}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 404
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_c6
    if-ge v14, v11, :cond_15e

    .line 405
    iget-object v15, v10, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v15, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 406
    .local v15, "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    const-string v3, "#"

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 407
    iget-object v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v3, v1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 408
    const-string v3, " from "

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 409
    iget-object v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-static {v1, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 410
    iget-object v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-eqz v3, :cond_155

    .line 411
    const-string v3, ":"

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 412
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 413
    iget-boolean v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    if-eqz v3, :cond_117

    .line 414
    const-string v3, "Trigger pending: update="

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 415
    iget-object v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 416
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentUpdateDelay()J

    move-result-wide v2

    .line 415
    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 417
    const-string v2, ", max="

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 418
    iget-object v2, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 419
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentMaxDelay()J

    move-result-wide v2

    .line 418
    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 420
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 422
    :cond_117
    const-string v2, "Changed Authorities:"

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 423
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_11d
    iget-object v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_133

    .line 424
    iget-object v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 423
    add-int/lit8 v2, v2, 0x1

    goto :goto_11d

    .line 426
    .end local v2    # "k":I
    :cond_133
    iget-object v2, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    if-eqz v2, :cond_151

    .line 427
    const-string v2, "          Changed URIs:"

    invoke-virtual {v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 428
    const/4 v2, 0x0

    .restart local v2    # "k":I
    :goto_13d
    iget-object v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_151

    .line 429
    iget-object v3, v15, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 428
    add-int/lit8 v2, v2, 0x1

    goto :goto_13d

    .line 432
    .end local v2    # "k":I
    :cond_151
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_158

    .line 434
    :cond_155
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 404
    .end local v15    # "inst":Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
    :goto_158
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p2

    goto/16 :goto_c6

    .line 437
    .end local v14    # "j":I
    :cond_15e
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 438
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 380
    .end local v10    # "obs":Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;
    .end local v11    # "M":I
    .end local v12    # "shouldDump":Z
    .end local v13    # "trigger":Landroid/app/job/JobInfo$TriggerContentUri;
    :goto_164
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, p2

    goto/16 :goto_61

    .line 375
    .end local v6    # "userId":I
    .end local v7    # "observersOfUser":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/app/job/JobInfo$TriggerContentUri;Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;>;"
    .end local v8    # "numbOfObserversPerUser":I
    .end local v9    # "observerIdx":I
    :cond_16a
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p2

    goto/16 :goto_4c

    .line 441
    .end local v5    # "userIdx":I
    :cond_170
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 443
    :cond_173
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 8
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    .line 76
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a3

    .line 77
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-nez v0, :cond_12

    .line 78
    new-instance v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-direct {v0, p0, p1}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;-><init>(Lcom/android/server/job/controllers/ContentObserverController;Lcom/android/server/job/controllers/JobStatus;)V

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 80
    :cond_12
    sget-boolean v0, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 81
    const-string v0, "JobScheduler.ContentObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tracking content-trigger job "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_2c
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 84
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 85
    const/4 v0, 0x0

    .line 88
    .local v0, "havePendingUris":Z
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-eqz v2, :cond_3d

    .line 89
    const/4 v0, 0x1

    .line 93
    :cond_3d
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    if-eqz v2, :cond_9c

    .line 94
    const/4 v0, 0x1

    .line 95
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-nez v2, :cond_51

    .line 96
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 99
    :cond_51
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 100
    .local v3, "auth":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v4, v4, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 101
    .end local v3    # "auth":Ljava/lang/String;
    goto :goto_57

    .line 102
    :cond_6b
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    if-eqz v2, :cond_98

    .line 103
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    if-nez v2, :cond_7e

    .line 104
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    .line 106
    :cond_7e
    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_84
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 107
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v4, v4, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v3    # "uri":Landroid/net/Uri;
    goto :goto_84

    .line 110
    :cond_98
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    .line 111
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    .line 113
    :cond_9c
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    .line 114
    iput-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    .line 115
    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->setContentTriggerConstraintSatisfied(Z)Z

    .line 117
    .end local v0    # "havePendingUris":Z
    :cond_a3
    if-eqz p2, :cond_b0

    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-eqz v0, :cond_b0

    .line 119
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->detachLocked()V

    .line 120
    iput-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 122
    :cond_b0
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .registers 7
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    .line 140
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 141
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-eqz v0, :cond_4d

    .line 143
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->unscheduleLocked()V

    .line 144
    const/4 v0, 0x0

    if-eqz p2, :cond_46

    .line 145
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-eqz v1, :cond_4d

    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v1, v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    if-eqz v1, :cond_4d

    .line 152
    iget-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-nez v1, :cond_2d

    .line 153
    new-instance v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-direct {v1, p0, p2}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;-><init>(Lcom/android/server/job/controllers/ContentObserverController;Lcom/android/server/job/controllers/JobStatus;)V

    iput-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 155
    :cond_2d
    iget-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    iput-object v2, v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 157
    iget-object v1, p2, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v2, v2, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    iput-object v2, v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    .line 159
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iput-object v0, v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 160
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iput-object v0, v1, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    goto :goto_4d

    .line 168
    :cond_46
    iget-object v1, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->detachLocked()V

    .line 169
    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    .line 172
    :cond_4d
    :goto_4d
    sget-boolean v0, Lcom/android/server/job/controllers/ContentObserverController;->DEBUG:Z

    if-eqz v0, :cond_67

    .line 173
    const-string v0, "JobScheduler.ContentObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No longer tracking job "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_67
    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4
    .param p1, "taskStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .line 126
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 127
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    if-eqz v0, :cond_1f

    .line 128
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    .line 129
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    .line 131
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    .line 132
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

    iput-object v1, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedAuthorities:Landroid/util/ArraySet;

    .line 135
    :cond_1f
    return-void
.end method

.method public rescheduleForFailureLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 4
    .param p1, "newJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "failureToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    .line 180
    invoke-virtual {p2}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 181
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasContentTriggerConstraint()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 185
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    .line 186
    iget-object v0, p2, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    iput-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    .line 188
    :cond_14
    return-void
.end method
