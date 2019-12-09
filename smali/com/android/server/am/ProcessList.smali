.class public final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessList$ProcStateMemTracker;
    }
.end annotation


# static fields
.field static final BACKUP_APP_ADJ:I = 0x12c

.field static final CACHED_APP_MAX_ADJ:I = 0x38a

.field static final CACHED_APP_MIN_ADJ:I = 0x384

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x190

.field static final HOME_APP_ADJ:I = 0x258

.field static final INVALID_ADJ:I = -0x2710

.field static final LMK_PROCPRIO:B = 0x1t

.field static final LMK_PROCPURGE:B = 0x3t

.field static final LMK_PROCREMOVE:B = 0x2t

.field static final LMK_TARGET:B = 0x0t

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static final MIN_CACHED_APPS:I = 0x2

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final NATIVE_ADJ:I = -0x3e8

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0xc8

.field static final PERCEPTIBLE_RECENT_FOREGROUND_APP_ADJ:I = 0x32

.field static final PERSISTENT_PROC_ADJ:I = -0x320

.field static final PERSISTENT_SERVICE_ADJ:I = -0x2bc

.field static final PREVIOUS_APP_ADJ:I = 0x2bc

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_NUM:I = 0x5

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field public static final PSS_ALL_INTERVAL:I = 0x124f80

.field private static final PSS_FIRST_ASLEEP_BACKGROUND_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_ASLEEP_CACHED_INTERVAL:I = 0xea60

.field private static final PSS_FIRST_ASLEEP_PERSISTENT_INTERVAL:I = 0xea60

.field private static final PSS_FIRST_ASLEEP_TOP_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_PERSISTENT_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x36ee80

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field public static final PSS_SAFE_TIME_FROM_STATE_CHANGE:I = 0x3e8

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_PERSISTENT_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x493e0

.field private static final PSS_SAME_TOP_INTERVAL:I = 0xea60

.field private static final PSS_TEST_FIRST_BACKGROUND_INTERVAL:I = 0x1388

.field private static final PSS_TEST_FIRST_TOP_INTERVAL:I = 0xbb8

.field public static final PSS_TEST_MIN_TIME_FROM_STATE_CHANGE:I = 0x2710

.field private static final PSS_TEST_SAME_BACKGROUND_INTERVAL:I = 0x3a98

.field private static final PSS_TEST_SAME_IMPORTANT_INTERVAL:I = 0x2710

.field static final SCHED_GROUP_BACKGROUND:I = 0x0

.field static final SCHED_GROUP_DEFAULT:I = 0x2

.field static final SCHED_GROUP_RESTRICTED:I = 0x1

.field static final SCHED_GROUP_TOP_APP:I = 0x3

.field static final SCHED_GROUP_TOP_APP_BOUND:I = 0x4

.field static final SERVICE_ADJ:I = 0x1f4

.field static final SERVICE_B_ADJ:I = 0x320

.field static final SYSTEM_ADJ:I = -0x384

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TRIM_CRITICAL_THRESHOLD:I = 0x3

.field static final TRIM_LOW_THRESHOLD:I = 0x5

.field static final UNKNOWN_ADJ:I = 0x3e9

.field static final VISIBLE_APP_ADJ:I = 0x64

.field static final VISIBLE_APP_LAYER_MAX:I = 0x63

.field private static final sFirstAsleepPssTimes:[J

.field private static final sFirstAwakePssTimes:[J

.field private static sLmkdOutputStream:Ljava/io/OutputStream;

.field private static sLmkdSocket:Landroid/net/LocalSocket;

.field private static final sProcStateToProcMem:[I

.field private static final sSameAsleepPssTimes:[J

.field private static final sSameAwakePssTimes:[J

.field private static final sTestFirstPssTimes:[J

.field private static final sTestSamePssTimes:[J


# instance fields
.field private mCachedRestoreLevel:J

.field private mHaveDisplaySize:Z

.field private final mOomAdj:[I

.field private final mOomMinFree:[I

.field private final mOomMinFreeHigh:[I

.field private final mOomMinFreeLow:[I

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 562
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 584
    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 592
    new-array v1, v0, [J

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 600
    new-array v1, v0, [J

    fill-array-data v1, :array_3

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    .line 608
    new-array v1, v0, [J

    fill-array-data v1, :array_4

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    .line 616
    new-array v1, v0, [J

    fill-array-data v1, :array_5

    sput-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    .line 624
    new-array v0, v0, [J

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x1
        0x2
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_1
    .array-data 8
        0x7530
        0x2710
        0x4e20
        0x4e20
        0x4e20
    .end array-data

    :array_2
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_3
    .array-data 8
        0xea60
        0x4e20
        0x7530
        0x7530
        0xea60
    .end array-data

    :array_4
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_5
    .array-data 8
        0xbb8
        0xbb8
        0x1388
        0x1388
        0x1388
    .end array-data

    :array_6
    .array-data 8
        0x3a98
        0x2710
        0x2710
        0x3a98
        0x3a98
    .end array-data
.end method

.method constructor <init>()V
    .locals 4

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 180
    new-array v1, v0, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    .line 186
    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    .line 191
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    .line 203
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 204
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 205
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 207
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x64
        0xc8
        0x12c
        0x384
        0x38a
    .end array-data

    :array_1
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    :array_2
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data
.end method

.method public static abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .locals 1

    .line 701
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 702
    return-void
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .locals 4

    .line 480
    const/16 v0, 0xa

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 481
    int-to-long v2, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 482
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 480
    :cond_0
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 485
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 486
    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 0

    .line 319
    if-ne p2, p3, :cond_1

    .line 320
    if-nez p1, :cond_0

    return-object p0

    .line 321
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 323
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "+"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .locals 3

    .line 692
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    if-ltz v0, :cond_0

    .line 693
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    aput v2, v0, v1

    .line 694
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    aput v2, v0, v1

    .line 695
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 696
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 698
    :cond_0
    return-void
.end method

.method public static computeEmptyProcessLimit(I)I
    .locals 0

    .line 315
    div-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public static computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J
    .locals 4

    .line 708
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget p0, v0, p0

    .line 709
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 710
    iget v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    if-ge p0, v2, :cond_0

    .line 711
    nop

    .line 712
    move v2, p0

    goto :goto_0

    .line 711
    :cond_0
    iget v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 712
    :goto_0
    iget-object v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v3, v3, p0

    if-ge v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 713
    :goto_1
    iput p0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 714
    iput v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    .line 715
    if-eqz v1, :cond_2

    .line 716
    iput v0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    goto :goto_2

    .line 718
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    aget v0, v0, p0

    .line 719
    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v0

    iput v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    .line 721
    :goto_2
    goto :goto_3

    .line 722
    :cond_3
    nop

    .line 723
    nop

    .line 725
    :goto_3
    if-eqz p2, :cond_5

    .line 726
    if-eqz v1, :cond_4

    .line 727
    sget-object p1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    goto :goto_4

    .line 728
    :cond_4
    sget-object p1, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    goto :goto_4

    .line 729
    :cond_5
    if-eqz v1, :cond_7

    .line 730
    if-eqz p3, :cond_6

    sget-object p1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    goto :goto_4

    :cond_6
    sget-object p1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_4

    .line 731
    :cond_7
    if-eqz p3, :cond_8

    sget-object p1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    goto :goto_4

    :cond_8
    sget-object p1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 732
    :goto_4
    aget-wide p0, p1, p0

    long-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-long p0, p0

    .line 733
    const-wide/32 p2, 0x36ee80

    cmp-long v0, p0, p2

    if-lez v0, :cond_9

    .line 734
    nop

    .line 736
    move-wide p0, p2

    :cond_9
    add-long/2addr p4, p0

    return-wide p4
.end method

.method public static makeOomAdjString(I)Ljava/lang/String;
    .locals 3

    .line 327
    const/16 v0, 0x384

    if-lt p0, v0, :cond_0

    .line 328
    const-string v1, "cch"

    const-string v2, "  "

    invoke-static {v1, v2, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 329
    :cond_0
    const/16 v0, 0x320

    const/4 v1, 0x0

    if-lt p0, v0, :cond_1

    .line 330
    const-string/jumbo v2, "svcb "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 331
    :cond_1
    const/16 v0, 0x2bc

    if-lt p0, v0, :cond_2

    .line 332
    const-string/jumbo v2, "prev "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 333
    :cond_2
    const/16 v0, 0x258

    if-lt p0, v0, :cond_3

    .line 334
    const-string v2, "home "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 335
    :cond_3
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_4

    .line 336
    const-string/jumbo v2, "svc  "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 337
    :cond_4
    const/16 v0, 0x190

    if-lt p0, v0, :cond_5

    .line 338
    const-string v2, "hvy  "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 339
    :cond_5
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_6

    .line 340
    const-string v2, "bkup "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 341
    :cond_6
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_7

    .line 342
    const-string/jumbo v2, "prcp "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 343
    :cond_7
    const/16 v0, 0x64

    if-lt p0, v0, :cond_8

    .line 344
    const-string/jumbo v2, "vis  "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 345
    :cond_8
    if-ltz p0, :cond_9

    .line 346
    const-string v0, "fore "

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 347
    :cond_9
    const/16 v0, -0x2bc

    if-lt p0, v0, :cond_a

    .line 348
    const-string/jumbo v2, "psvc "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 349
    :cond_a
    const/16 v0, -0x320

    if-lt p0, v0, :cond_b

    .line 350
    const-string/jumbo v2, "pers "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 351
    :cond_b
    const/16 v0, -0x384

    if-lt p0, v0, :cond_c

    .line 352
    const-string/jumbo v2, "sys  "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 353
    :cond_c
    const/16 v0, -0x3e8

    if-lt p0, v0, :cond_d

    .line 354
    const-string v2, "ntv  "

    invoke-static {v2, v1, p0, v0}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 356
    :cond_d
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeProcStateProtoEnum(I)I
    .locals 0

    .line 431
    packed-switch p0, :pswitch_data_0

    .line 475
    const/16 p0, 0x3e6

    return p0

    .line 471
    :pswitch_0
    const/16 p0, 0x3fb

    return p0

    .line 469
    :pswitch_1
    const/16 p0, 0x3fa

    return p0

    .line 467
    :pswitch_2
    const/16 p0, 0x3f9

    return p0

    .line 465
    :pswitch_3
    const/16 p0, 0x3f8

    return p0

    .line 463
    :pswitch_4
    const/16 p0, 0x3f7

    return p0

    .line 461
    :pswitch_5
    const/16 p0, 0x3f6

    return p0

    .line 459
    :pswitch_6
    const/16 p0, 0x3f5

    return p0

    .line 453
    :pswitch_7
    const/16 p0, 0x3f4

    return p0

    .line 443
    :pswitch_8
    const/16 p0, 0x3f3

    return p0

    .line 457
    :pswitch_9
    const/16 p0, 0x3f2

    return p0

    .line 455
    :pswitch_a
    const/16 p0, 0x3f1

    return p0

    .line 451
    :pswitch_b
    const/16 p0, 0x3f0

    return p0

    .line 449
    :pswitch_c
    const/16 p0, 0x3ef

    return p0

    .line 447
    :pswitch_d
    const/16 p0, 0x3ee

    return p0

    .line 445
    :pswitch_e
    const/16 p0, 0x3ed

    return p0

    .line 439
    :pswitch_f
    const/16 p0, 0x3ec

    return p0

    .line 441
    :pswitch_10
    const/16 p0, 0x3eb

    return p0

    .line 437
    :pswitch_11
    const/16 p0, 0x3ea

    return p0

    .line 435
    :pswitch_12
    const/16 p0, 0x3e9

    return p0

    .line 433
    :pswitch_13
    const/16 p0, 0x3e8

    return p0

    .line 473
    :pswitch_14
    const/16 p0, 0x3e7

    return p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .locals 0

    .line 362
    packed-switch p0, :pswitch_data_0

    .line 424
    const-string p0, "??"

    goto :goto_0

    .line 421
    :pswitch_0
    const-string p0, "NONE"

    .line 422
    goto :goto_0

    .line 418
    :pswitch_1
    const-string p0, "CEM "

    .line 419
    goto :goto_0

    .line 415
    :pswitch_2
    const-string p0, "CRE "

    .line 416
    goto :goto_0

    .line 412
    :pswitch_3
    const-string p0, "CACC"

    .line 413
    goto :goto_0

    .line 409
    :pswitch_4
    const-string p0, "CAC "

    .line 410
    goto :goto_0

    .line 406
    :pswitch_5
    const-string p0, "LAST"

    .line 407
    goto :goto_0

    .line 403
    :pswitch_6
    const-string p0, "HOME"

    .line 404
    goto :goto_0

    .line 400
    :pswitch_7
    const-string p0, "HVY "

    .line 401
    goto :goto_0

    .line 397
    :pswitch_8
    const-string p0, "TPSL"

    .line 398
    goto :goto_0

    .line 394
    :pswitch_9
    const-string p0, "RCVR"

    .line 395
    goto :goto_0

    .line 391
    :pswitch_a
    const-string p0, "SVC "

    .line 392
    goto :goto_0

    .line 388
    :pswitch_b
    const-string p0, "BKUP"

    .line 389
    goto :goto_0

    .line 385
    :pswitch_c
    const-string p0, "TRNB"

    .line 386
    goto :goto_0

    .line 382
    :pswitch_d
    const-string p0, "IMPB"

    .line 383
    goto :goto_0

    .line 379
    :pswitch_e
    const-string p0, "IMPF"

    .line 380
    goto :goto_0

    .line 376
    :pswitch_f
    const-string p0, "BFGS"

    .line 377
    goto :goto_0

    .line 373
    :pswitch_10
    const-string p0, "FGS "

    .line 374
    goto :goto_0

    .line 370
    :pswitch_11
    const-string p0, "TOP "

    .line 371
    goto :goto_0

    .line 367
    :pswitch_12
    const-string p0, "PERU"

    .line 368
    goto :goto_0

    .line 364
    :pswitch_13
    const-string p0, "PER "

    .line 365
    nop

    .line 427
    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static minTimeFromStateChange(Z)J
    .locals 2

    .line 688
    if-eqz p0, :cond_0

    const-wide/16 v0, 0x2710

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3a98

    :goto_0
    return-wide v0
.end method

.method private static openLmkdSocket()Z
    .locals 4

    .line 804
    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 805
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string v2, "lmkd"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 808
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    nop

    .line 815
    const/4 v0, 0x1

    return v0

    .line 809
    :catch_0
    move-exception v0

    .line 810
    const-string v0, "ActivityManager"

    const-string v1, "lowmemorykiller daemon socket open failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 812
    const/4 v0, 0x0

    return v0
.end method

.method public static procStatesDifferForMem(II)Z
    .locals 1

    .line 684
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget p0, v0, p0

    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget p1, v0, p1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final remove(I)V
    .locals 2

    .line 793
    if-gtz p0, :cond_0

    .line 794
    return-void

    .line 796
    :cond_0
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 797
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 798
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 799
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 800
    return-void
.end method

.method public static final setOomAdj(III)V
    .locals 4

    .line 768
    if-gtz p0, :cond_0

    .line 769
    return-void

    .line 771
    :cond_0
    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_1

    .line 772
    return-void

    .line 774
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 775
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 776
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 777
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 778
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 779
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 780
    invoke-static {v2}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 781
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 782
    sub-long/2addr v2, v0

    const-wide/16 v0, 0xfa

    cmp-long p1, v2, v0

    if-lez p1, :cond_2

    .line 783
    const-string p1, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SLOW OOM ADJ: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms for pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_2
    return-void
.end method

.method private updateOomLevels(IIZ)V
    .locals 10

    .line 224
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v2, 0x15e

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x43af0000    # 350.0f

    div-float/2addr v0, v1

    .line 227
    nop

    .line 228
    nop

    .line 229
    mul-int/2addr p1, p2

    int-to-float p2, p1

    const v1, 0x5dc00

    int-to-float v1, v1

    sub-float/2addr p2, v1

    const v1, 0x9c400

    int-to-float v1, v1

    div-float/2addr p2, v1

    .line 236
    cmpl-float v1, v0, p2

    if-lez v1, :cond_0

    .line 237
    move p2, v0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gez v1, :cond_1

    .line 239
    move p2, v0

    goto :goto_0

    .line 238
    :cond_1
    cmpl-float v0, p2, v2

    if-lez v0, :cond_2

    .line 239
    move p2, v2

    :cond_2
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 241
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 247
    sget-object v2, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_3

    .line 249
    move v2, v4

    goto :goto_1

    .line 247
    :cond_3
    nop

    .line 249
    move v2, v3

    :goto_1
    move v5, v3

    :goto_2
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v6, v6

    const/4 v7, 0x2

    const/4 v8, 0x4

    if-ge v5, v6, :cond_6

    .line 250
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    aget v6, v6, v5

    .line 251
    iget-object v9, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    aget v9, v9, v5

    .line 252
    if-eqz v2, :cond_5

    .line 254
    if-ne v5, v8, :cond_4

    mul-int/lit8 v9, v9, 0x3

    div-int/2addr v9, v7

    goto :goto_3

    .line 255
    :cond_4
    const/4 v7, 0x5

    if-ne v5, v7, :cond_5

    mul-int/lit8 v9, v9, 0x7

    div-int/2addr v9, v8

    .line 257
    :cond_5
    :goto_3
    iget-object v7, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v8, v6

    sub-int/2addr v9, v6

    int-to-float v6, v9

    mul-float/2addr v6, p2

    add-float/2addr v8, v6

    float-to-int v6, v8

    aput v6, v7, v5

    .line 249
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 260
    :cond_6
    if-ltz v1, :cond_7

    .line 261
    move p2, v3

    :goto_4
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    if-ge p2, v2, :cond_7

    .line 262
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v5, v1

    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v6, v6, p2

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v9, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v9, v9

    sub-int/2addr v9, v4

    aget v6, v6, v9

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    aput v5, v2, p2

    .line 261
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 267
    :cond_7
    if-eqz v0, :cond_9

    .line 268
    move p2, v3

    :goto_5
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge p2, v1, :cond_9

    .line 269
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v2, v1, p2

    int-to-float v5, v0

    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v6, v6, p2

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v9, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v9, v9

    sub-int/2addr v9, v4

    aget v6, v6, v9

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v2, v5

    aput v2, v1, p2

    .line 271
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v1, v1, p2

    if-gez v1, :cond_8

    .line 272
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aput v3, v1, p2

    .line 268
    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 280
    :cond_9
    const/16 p2, 0x38a

    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    const-wide/16 v5, 0x400

    div-long/2addr v0, v5

    const-wide/16 v5, 0x3

    div-long/2addr v0, v5

    iput-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 284
    mul-int/2addr p1, v8

    mul-int/lit8 p1, p1, 0x3

    div-int/lit16 p1, p1, 0x400

    .line 285
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e0047

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 286
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 288
    if-ltz v0, :cond_a

    .line 289
    nop

    .line 292
    move p1, v0

    :cond_a
    if-eqz p2, :cond_b

    .line 293
    add-int/2addr p1, p2

    .line 294
    if-gez p1, :cond_b

    .line 295
    nop

    .line 299
    move p1, v3

    :cond_b
    if-eqz p3, :cond_d

    .line 300
    iget-object p2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length p2, p2

    mul-int/2addr v7, p2

    add-int/2addr v7, v4

    mul-int/2addr v8, v7

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 301
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 302
    :goto_6
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length p3, p3

    if-ge v3, p3, :cond_c

    .line 303
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget p3, p3, v3

    mul-int/lit16 p3, p3, 0x400

    div-int/lit16 p3, p3, 0x1000

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 304
    iget-object p3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget p3, p3, v3

    invoke-virtual {p2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 302
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 307
    :cond_c
    invoke-static {p2}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 308
    const-string/jumbo p2, "sys.sysctl.extra_free_kbytes"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_d
    return-void
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 838
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    .line 839
    sget-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    if-nez v2, :cond_1

    .line 840
    invoke-static {}, Lcom/android/server/am/ProcessList;->openLmkdSocket()Z

    move-result v2

    if-nez v2, :cond_0

    .line 842
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 844
    goto :goto_1

    .line 843
    :catch_0
    move-exception v1

    .line 845
    goto :goto_1

    .line 849
    :cond_0
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 850
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 851
    invoke-static {v2}, Lcom/android/server/am/ProcessList;->writeLmkdCommand(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 853
    goto :goto_1

    .line 856
    :cond_1
    invoke-static {p0}, Lcom/android/server/am/ProcessList;->writeLmkdCommand(Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 857
    return-void

    .line 838
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 860
    :cond_3
    return-void
.end method

.method private static writeLmkdCommand(Ljava/nio/ByteBuffer;)Z
    .locals 3

    .line 821
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    invoke-virtual {v1, v2, v0, p0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    nop

    .line 833
    const/4 p0, 0x1

    return p0

    .line 822
    :catch_0
    move-exception p0

    .line 823
    const-string p0, "ActivityManager"

    const-string v1, "Error writing to lowmemorykiller socket"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :try_start_1
    sget-object p0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {p0}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 828
    goto :goto_0

    .line 827
    :catch_1
    move-exception p0

    .line 830
    :goto_0
    const/4 p0, 0x0

    sput-object p0, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 831
    return v0
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    .line 210
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 213
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 214
    iget p1, v0, Landroid/graphics/Point;->x:I

    if-eqz p1, :cond_0

    iget p1, v0, Landroid/graphics/Point;->y:I

    if-eqz p1, :cond_0

    .line 215
    iget p1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 216
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 219
    :cond_0
    return-void
.end method

.method getCachedRestoreThresholdKb()J
    .locals 2

    .line 753
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method getMemLevel(I)J
    .locals 2

    .line 740
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 741
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    .line 742
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget p1, p1, v0

    mul-int/lit16 p1, p1, 0x400

    int-to-long v0, p1

    return-wide v0

    .line 740
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 745
    :cond_1
    iget-object p1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    aget p1, p1, v0

    mul-int/lit16 p1, p1, 0x400

    int-to-long v0, p1

    return-wide v0
.end method
