.class public final Lcom/android/server/job/JobPackageTracker;
.super Ljava/lang/Object;
.source "JobPackageTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobPackageTracker$DataSet;,
        Lcom/android/server/job/JobPackageTracker$PackageEntry;
    }
.end annotation


# static fields
.field static final BATCHING_TIME:J = 0x1b7740L

.field private static final EVENT_BUFFER_SIZE:I = 0x64

.field public static final EVENT_CMD_MASK:I = 0xff

.field public static final EVENT_NULL:I = 0x0

.field public static final EVENT_START_JOB:I = 0x1

.field public static final EVENT_START_PERIODIC_JOB:I = 0x3

.field public static final EVENT_STOP_JOB:I = 0x2

.field public static final EVENT_STOP_PERIODIC_JOB:I = 0x4

.field public static final EVENT_STOP_REASON_MASK:I = 0xff00

.field public static final EVENT_STOP_REASON_SHIFT:I = 0x8

.field static final NUM_HISTORY:I = 0x5


# instance fields
.field mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

.field private final mEventCmds:[I

.field private final mEventIndices:Lcom/android/internal/util/RingBufferIndices;

.field private final mEventJobIds:[I

.field private final mEventReasons:[Ljava/lang/String;

.field private final mEventTags:[Ljava/lang/String;

.field private final mEventTimes:[J

.field private final mEventUids:[I

.field mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/internal/util/RingBufferIndices;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/android/internal/util/RingBufferIndices;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/RingBufferIndices;

    .line 56
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    .line 57
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    .line 58
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    .line 59
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    .line 60
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    .line 61
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventReasons:[Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 75
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/job/JobPackageTracker$DataSet;

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    return-void
.end method


# virtual methods
.method public addEvent(IILjava/lang/String;IILjava/lang/String;)V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/RingBufferIndices;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBufferIndices;->add()I

    move-result v0

    .line 66
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    shl-int/lit8 p5, p5, 0x8

    const v2, 0xff00

    and-int/2addr p5, v2

    or-int/2addr p1, p5

    aput p1, v1, v0

    .line 67
    iget-object p1, p0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    sget-object p5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p5}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    aput-wide v1, p1, v0

    .line 68
    iget-object p1, p0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    aput p2, p1, v0

    .line 69
    iget-object p1, p0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    aput-object p3, p1, v0

    .line 70
    iget-object p1, p0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    aput p4, p1, v0

    .line 71
    iget-object p1, p0, Lcom/android/server/job/JobPackageTracker;->mEventReasons:[Ljava/lang/String;

    aput-object p6, p1, v0

    .line 72
    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 18

    move-object/from16 v0, p0

    .line 543
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 544
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v13

    .line 545
    sget-object v3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v3}, Ljava/time/Clock;->millis()J

    move-result-wide v15

    .line 548
    iget-object v3, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    .line 549
    new-instance v3, Lcom/android/server/job/JobPackageTracker$DataSet;

    iget-object v5, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v5, v5, v4

    invoke-direct {v3, v5}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    .line 550
    iget-object v5, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v4, v5, v4

    invoke-virtual {v4, v3, v13, v14}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    goto :goto_0

    .line 552
    :cond_0
    new-instance v3, Lcom/android/server/job/JobPackageTracker$DataSet;

    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v3, v4}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    .line 554
    :goto_0
    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v4, v3, v13, v14}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    .line 556
    const/4 v4, 0x1

    move v12, v4

    :goto_1
    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    array-length v4, v4

    if-ge v12, v4, :cond_2

    .line 557
    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v4, v4, v12

    if-eqz v4, :cond_1

    .line 558
    iget-object v4, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v4, v4, v12

    const-wide v6, 0x20b00000001L

    move-object/from16 v5, p1

    move-wide v8, v13

    move-wide v10, v15

    move/from16 v17, v12

    move/from16 v12, p4

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(Landroid/util/proto/ProtoOutputStream;JJJI)V

    goto :goto_2

    .line 556
    :cond_1
    move/from16 v17, v12

    :goto_2
    add-int/lit8 v12, v17, 0x1

    goto :goto_1

    .line 562
    :cond_2
    const-wide v6, 0x10b00000002L

    move-object v4, v3

    move-object/from16 v5, p1

    move-wide v8, v13

    move-wide v10, v15

    move/from16 v12, p4

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(Landroid/util/proto/ProtoOutputStream;JJJI)V

    .line 565
    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 566
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 16

    move-object/from16 v0, p0

    .line 523
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v11

    .line 524
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v13

    .line 526
    iget-object v1, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 527
    new-instance v1, Lcom/android/server/job/JobPackageTracker$DataSet;

    iget-object v3, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v3, v3, v2

    invoke-direct {v1, v3}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    .line 528
    iget-object v3, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v2, v3, v2

    invoke-virtual {v2, v1, v11, v12}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    goto :goto_0

    .line 530
    :cond_0
    new-instance v1, Lcom/android/server/job/JobPackageTracker$DataSet;

    iget-object v2, v0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v1, v2}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>(Lcom/android/server/job/JobPackageTracker$DataSet;)V

    .line 532
    :goto_0
    iget-object v2, v0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v2, v1, v11, v12}, Lcom/android/server/job/JobPackageTracker$DataSet;->addTo(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    .line 533
    const/4 v2, 0x1

    move v15, v2

    :goto_1
    iget-object v2, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    array-length v2, v2

    if-ge v15, v2, :cond_2

    .line 534
    iget-object v2, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v2, v2, v15

    if-eqz v2, :cond_1

    .line 535
    iget-object v2, v0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v2, v2, v15

    const-string v4, "Historical stats"

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-wide v6, v11

    move-wide v8, v13

    move/from16 v10, p3

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJI)V

    .line 536
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 533
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 539
    :cond_2
    const-string v4, "Current stats"

    move-object v2, v1

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-wide v6, v11

    move-wide v8, v13

    move/from16 v10, p3

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/job/JobPackageTracker$DataSet;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;JJI)V

    .line 540
    return-void
.end method

.method public dumpHistory(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 619
    move/from16 v2, p4

    iget-object v3, v0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/RingBufferIndices;

    invoke-virtual {v3}, Lcom/android/internal/util/RingBufferIndices;->size()I

    move-result v3

    .line 620
    if-nez v3, :cond_0

    .line 621
    return-void

    .line 623
    :cond_0
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 625
    sget-object v6, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v6}, Ljava/time/Clock;->millis()J

    move-result-wide v6

    .line 626
    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_5

    .line 627
    iget-object v9, v0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/RingBufferIndices;

    invoke-virtual {v9, v8}, Lcom/android/internal/util/RingBufferIndices;->indexOf(I)I

    move-result v9

    .line 628
    iget-object v10, v0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    aget v10, v10, v9

    .line 629
    const/4 v11, -0x1

    if-eq v2, v11, :cond_1

    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    if-eq v2, v11, :cond_1

    .line 630
    nop

    .line 626
    :goto_1
    move/from16 v16, v3

    goto :goto_2

    .line 632
    :cond_1
    iget-object v11, v0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    aget v11, v11, v9

    and-int/lit16 v11, v11, 0xff

    .line 633
    if-nez v11, :cond_2

    .line 634
    goto :goto_1

    .line 636
    :cond_2
    const-wide v12, 0x20b00000001L

    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 638
    const-wide v14, 0x10e00000001L

    invoke-virtual {v1, v14, v15, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 639
    iget-object v14, v0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    aget-wide v14, v14, v9

    sub-long v14, v6, v14

    move/from16 v16, v3

    const-wide v2, 0x10300000002L

    invoke-virtual {v1, v2, v3, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 640
    const-wide v2, 0x10500000003L

    invoke-virtual {v1, v2, v3, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 641
    const-wide v2, 0x10500000004L

    iget-object v10, v0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    aget v10, v10, v9

    invoke-virtual {v1, v2, v3, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 642
    const-wide v2, 0x10900000005L

    iget-object v10, v0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    aget-object v10, v10, v9

    invoke-virtual {v1, v2, v3, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 643
    const/4 v2, 0x2

    if-eq v11, v2, :cond_3

    const/4 v2, 0x4

    if-ne v11, v2, :cond_4

    .line 644
    :cond_3
    const-wide v2, 0x10e00000006L

    iget-object v10, v0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    aget v9, v10, v9

    const v10, 0xff00

    and-int/2addr v9, v10

    shr-int/lit8 v9, v9, 0x8

    invoke-virtual {v1, v2, v3, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 648
    :cond_4
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 626
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v16

    move/from16 v2, p4

    goto/16 :goto_0

    .line 651
    :cond_5
    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 652
    return-void
.end method

.method public dumpHistory(Ljava/io/PrintWriter;Ljava/lang/String;I)Z
    .locals 11

    .line 569
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/RingBufferIndices;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBufferIndices;->size()I

    move-result v0

    .line 570
    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 571
    return v1

    .line 573
    :cond_0
    const-string v2, "  Job history:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 575
    :goto_0
    if-ge v1, v0, :cond_6

    .line 576
    iget-object v4, p0, Lcom/android/server/job/JobPackageTracker;->mEventIndices:Lcom/android/internal/util/RingBufferIndices;

    invoke-virtual {v4, v1}, Lcom/android/internal/util/RingBufferIndices;->indexOf(I)I

    move-result v4

    .line 577
    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker;->mEventUids:[I

    aget v5, v5, v4

    .line 578
    const/4 v6, -0x1

    if-eq p3, v6, :cond_1

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-eq p3, v6, :cond_1

    .line 579
    goto/16 :goto_3

    .line 581
    :cond_1
    iget-object v6, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    aget v6, v6, v4

    and-int/lit16 v6, v6, 0xff

    .line 582
    if-nez v6, :cond_2

    .line 583
    goto/16 :goto_3

    .line 586
    :cond_2
    packed-switch v6, :pswitch_data_0

    .line 591
    const-string v7, "     ??"

    goto :goto_1

    .line 590
    :pswitch_0
    const-string v7, " STOP-P"

    goto :goto_1

    .line 589
    :pswitch_1
    const-string v7, "START-P"

    goto :goto_1

    .line 588
    :pswitch_2
    const-string v7, "   STOP"

    goto :goto_1

    .line 587
    :pswitch_3
    const-string v7, "  START"

    .line 593
    :goto_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 594
    iget-object v8, p0, Lcom/android/server/job/JobPackageTracker;->mEventTimes:[J

    aget-wide v8, v8, v4

    sub-long/2addr v8, v2

    const/16 v10, 0x13

    invoke-static {v8, v9, p1, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 595
    const-string v8, " "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 597
    const-string v7, ": #"

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 598
    invoke-static {p1, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 599
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 600
    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker;->mEventJobIds:[I

    aget v5, v5, v4

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 601
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 602
    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker;->mEventTags:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 603
    const/4 v5, 0x2

    if-eq v6, v5, :cond_3

    const/4 v5, 0x4

    if-ne v6, v5, :cond_5

    .line 604
    :cond_3
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 605
    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker;->mEventReasons:[Ljava/lang/String;

    aget-object v5, v5, v4

    .line 606
    if-eqz v5, :cond_4

    .line 607
    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker;->mEventReasons:[Ljava/lang/String;

    aget-object v4, v5, v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 609
    :cond_4
    iget-object v5, p0, Lcom/android/server/job/JobPackageTracker;->mEventCmds:[I

    aget v4, v5, v4

    const v5, 0xff00

    and-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x8

    invoke-static {v4}, Landroid/app/job/JobParameters;->getReasonName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 613
    :cond_5
    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 575
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 615
    :cond_6
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLoadFactor(Lcom/android/server/job/controllers/JobStatus;)F
    .locals 12

    .line 502
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v0

    .line 503
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    .line 504
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/job/JobPackageTracker$DataSet;->getEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object v1

    .line 505
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object v2, v2, v3

    invoke-virtual {v2, v0, p1}, Lcom/android/server/job/JobPackageTracker$DataSet;->getEntry(ILjava/lang/String;)Lcom/android/server/job/JobPackageTracker$PackageEntry;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 506
    :goto_0
    if-nez v1, :cond_1

    if-nez p1, :cond_1

    .line 507
    const/4 p1, 0x0

    return p1

    .line 509
    :cond_1
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    .line 510
    const-wide/16 v6, 0x0

    .line 511
    if-eqz v1, :cond_2

    .line 512
    invoke-virtual {v1, v4, v5}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v8

    invoke-virtual {v1, v4, v5}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v0

    add-long/2addr v8, v0

    add-long/2addr v6, v8

    .line 514
    :cond_2
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v0

    .line 515
    if-eqz p1, :cond_3

    .line 516
    invoke-virtual {p1, v4, v5}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getActiveTime(J)J

    move-result-wide v8

    invoke-virtual {p1, v4, v5}, Lcom/android/server/job/JobPackageTracker$PackageEntry;->getPendingTime(J)J

    move-result-wide v10

    add-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 517
    iget-object p1, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aget-object p1, p1, v3

    invoke-virtual {p1, v4, v5}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 519
    :cond_3
    long-to-float p1, v6

    long-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method public noteActive(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 8

    .line 467
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 468
    iput-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->madeActive:J

    .line 469
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    .line 470
    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    const/16 v3, 0x28

    if-lt v2, v3, :cond_0

    .line 471
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/server/job/JobPackageTracker$DataSet;->incActiveTop(ILjava/lang/String;J)V

    goto :goto_0

    .line 473
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/server/job/JobPackageTracker$DataSet;->incActive(ILjava/lang/String;J)V

    .line 475
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 476
    :goto_1
    move v2, v0

    goto :goto_2

    .line 475
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 476
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 475
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/job/JobPackageTracker;->addEvent(IILjava/lang/String;IILjava/lang/String;)V

    .line 477
    return-void
.end method

.method public noteConcurrency(II)V
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    iget v0, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    if-le p1, v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    iput p1, v0, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxTotalActive:I

    .line 496
    :cond_0
    iget-object p1, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    iget p1, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    if-le p2, p1, :cond_1

    .line 497
    iget-object p1, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    iput p2, p1, Lcom/android/server/job/JobPackageTracker$DataSet;->mMaxFgActive:I

    .line 499
    :cond_1
    return-void
.end method

.method public noteInactive(Lcom/android/server/job/controllers/JobStatus;ILjava/lang/String;)V
    .locals 9

    .line 480
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 481
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedPriority:I

    const/16 v1, 0x28

    if-lt v0, v1, :cond_0

    .line 482
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    move-wide v4, v7

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->decActiveTop(ILjava/lang/String;JI)V

    goto :goto_0

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    move-wide v4, v7

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/job/JobPackageTracker$DataSet;->decActive(ILjava/lang/String;JI)V

    .line 487
    :goto_0
    invoke-virtual {p0, v7, v8}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    .line 488
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 489
    :goto_1
    move v2, v0

    goto :goto_2

    .line 488
    :cond_1
    const/4 v0, 0x4

    goto :goto_1

    .line 489
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v5

    .line 488
    move-object v1, p0

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/job/JobPackageTracker;->addEvent(IILjava/lang/String;IILjava/lang/String;)V

    .line 490
    return-void
.end method

.method public noteNonpending(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 4

    .line 461
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 462
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/android/server/job/JobPackageTracker$DataSet;->decPending(ILjava/lang/String;J)V

    .line 463
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    .line 464
    return-void
.end method

.method public notePending(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 4

    .line 454
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sUptimeMillisClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 455
    iput-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->madePending:J

    .line 456
    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobPackageTracker;->rebatchIfNeeded(J)V

    .line 457
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/android/server/job/JobPackageTracker$DataSet;->incPending(ILjava/lang/String;J)V

    .line 458
    return-void
.end method

.method rebatchIfNeeded(J)V
    .locals 4

    .line 442
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->getTotalTime(J)J

    move-result-wide v0

    .line 443
    const-wide/32 v2, 0x1b7740

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 445
    iput-wide v0, v2, Lcom/android/server/job/JobPackageTracker$DataSet;->mSummedTime:J

    .line 446
    new-instance v0, Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-direct {v0}, Lcom/android/server/job/JobPackageTracker$DataSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    .line 447
    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mCurDataSet:Lcom/android/server/job/JobPackageTracker$DataSet;

    invoke-virtual {v2, v0, p1, p2}, Lcom/android/server/job/JobPackageTracker$DataSet;->finish(Lcom/android/server/job/JobPackageTracker$DataSet;J)V

    .line 448
    iget-object p1, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    iget-object p2, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    iget-object v0, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v3, 0x0

    invoke-static {p1, v3, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 449
    iget-object p1, p0, Lcom/android/server/job/JobPackageTracker;->mLastDataSets:[Lcom/android/server/job/JobPackageTracker$DataSet;

    aput-object v2, p1, v3

    .line 451
    :cond_0
    return-void
.end method