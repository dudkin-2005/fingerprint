.class public Lcom/android/server/power/batterysaver/BatterySavingStats;
.super Ljava/lang/Object;
.source "BatterySavingStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$DozeState;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;,
        Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final STATE_CHARGING:I = -0x2

.field private static final STATE_NOT_INITIALIZED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "BatterySavingStats"


# instance fields
.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mBatterySaverEnabledCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mCurrentState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mIsBatterySaverEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLastBatterySaverDisabledTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLastBatterySaverEnabledTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mMetricsLoggerHelper:Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;

.field private mSendTronLog:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field final mStats:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 190
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/batterysaver/BatterySavingStats;-><init>(Ljava/lang/Object;Lcom/android/internal/logging/MetricsLogger;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/android/internal/logging/MetricsLogger;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 159
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/ArrayMap;

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    .line 169
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    .line 172
    iput-wide v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    .line 175
    new-instance v0, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;

    invoke-direct {v0, p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;-><init>(Lcom/android/server/power/batterysaver/BatterySavingStats;)V

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mMetricsLoggerHelper:Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;

    .line 184
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    .line 185
    const-class p1, Landroid/os/BatteryManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManagerInternal;

    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 186
    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/batterysaver/BatterySavingStats;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mSendTronLog:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/power/batterysaver/BatterySavingStats;)Lcom/android/internal/logging/MetricsLogger;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method private dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 5

    .line 456
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p1, p6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 458
    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 460
    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 462
    const/4 p2, 0x0

    invoke-direct {p0, p2, p3, p5}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(III)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object p4

    .line 463
    const/4 p6, 0x1

    invoke-direct {p0, p6, p3, p5}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(III)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object p3

    .line 465
    const-string p5, "%6dm %6dmAh(%3d%%) %8.1fmAh/h     %6dm %6dmAh(%3d%%) %8.1fmAh/h"

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 466
    invoke-virtual {p4}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalMinutes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, p2

    iget p2, p4, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    div-int/lit16 p2, p2, 0x3e8

    .line 467
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, p6

    iget p2, p4, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 468
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p6, 0x2

    aput-object p2, v0, p6

    .line 469
    invoke-virtual {p4}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->drainPerHour()D

    move-result-wide v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p4, 0x3

    aput-object p2, v0, p4

    .line 470
    invoke-virtual {p3}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalMinutes()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p4, 0x4

    aput-object p2, v0, p4

    iget p2, p3, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    div-int/lit16 p2, p2, 0x3e8

    .line 471
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p4, 0x5

    aput-object p2, v0, p4

    iget p2, p3, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 472
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p4, 0x6

    aput-object p2, v0, p4

    .line 473
    invoke-virtual {p3}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->drainPerHour()D

    move-result-wide p2

    div-double/2addr p2, v3

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x7

    aput-object p2, v0, p3

    .line 465
    invoke-static {p5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method private endLastStateLocked(JII)V
    .locals 17
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    move-object/from16 v0, p0

    .line 333
    iget v1, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    if-gez v1, :cond_0

    .line 334
    return-void

    .line 336
    :cond_0
    iget v1, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    invoke-virtual {v0, v1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object v1

    .line 338
    move/from16 v2, p3

    iput v2, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryLevel:I

    .line 339
    move/from16 v2, p4

    iput v2, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryPercent:I

    .line 340
    move-wide/from16 v2, p1

    iput-wide v2, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endTime:J

    .line 342
    iget-wide v2, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endTime:J

    iget-wide v4, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startTime:J

    sub-long v9, v2, v4

    .line 343
    iget v2, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryLevel:I

    iget v3, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryLevel:I

    sub-int v11, v2, v3

    .line 344
    iget v2, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryPercent:I

    iget v3, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endBatteryPercent:I

    sub-int v12, v2, v3

    .line 346
    iget-wide v2, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    add-long/2addr v2, v9

    iput-wide v2, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    .line 347
    iget v2, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    add-int/2addr v2, v11

    iput v2, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    .line 348
    iget v2, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    add-int/2addr v2, v12

    iput v2, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 359
    iget v2, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 360
    invoke-static {v2}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v6

    iget v2, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 361
    invoke-static {v2}, Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;->fromIndex(I)I

    move-result v7

    iget v0, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 362
    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySavingStats$DozeState;->fromIndex(I)I

    move-result v8

    iget-wide v13, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalTimeMillis:J

    iget v15, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrain:I

    iget v0, v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->totalBatteryDrainPercent:I

    .line 359
    move/from16 v16, v0

    invoke-static/range {v6 .. v16}, Lcom/android/server/EventLogTags;->writeBatterySavingStats(IIIJIIJII)V

    .line 370
    return-void
.end method

.method private getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-nez v0, :cond_0

    .line 201
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    .line 202
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    if-nez v0, :cond_0

    .line 203
    const-string v0, "BatterySavingStats"

    const-string v1, "BatteryManagerInternal not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    return-object v0
.end method

.method private getStat(III)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    .locals 0

    .line 256
    invoke-static {p1, p2, p3}, Lcom/android/server/power/batterysaver/BatterySavingStats;->statesToIndex(III)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object p1

    return-object p1
.end method

.method private startNewStateLocked(IJII)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 377
    iput p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 379
    iget p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    if-gez p1, :cond_0

    .line 380
    return-void

    .line 383
    :cond_0
    iget p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    invoke-virtual {p0, p1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    move-result-object p1

    .line 384
    iput p4, p1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryLevel:I

    .line 385
    iput p5, p1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startBatteryPercent:I

    .line 386
    iput-wide p2, p1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->startTime:J

    .line 387
    const-wide/16 p2, 0x0

    iput-wide p2, p1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;->endTime:J

    .line 388
    return-void
.end method

.method static stateToString(I)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 226
    packed-switch p0, :pswitch_data_0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;->fromIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",D="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-static {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats$DozeState;->fromIndex(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 232
    return-object p0

    .line 228
    :pswitch_0
    const-string p0, "NotInitialized"

    return-object p0

    .line 230
    :pswitch_1
    const-string p0, "Charging"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static statesToIndex(III)I
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 215
    and-int/lit8 p0, p0, 0x1

    .line 216
    and-int/lit8 p1, p1, 0x1

    shl-int/lit8 p1, p1, 0x1

    or-int/2addr p0, p1

    .line 217
    and-int/lit8 p1, p2, 0x3

    shl-int/lit8 p1, p1, 0x2

    or-int/2addr p0, p1

    .line 218
    return p0
.end method

.method private transitionStateLocked(I)V
    .locals 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .line 305
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    if-ne v0, p1, :cond_0

    .line 306
    return-void

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    move-result-wide v7

    .line 309
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectBatteryLevel()I

    move-result v0

    .line 310
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectBatteryPercent()I

    move-result v9

    .line 312
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mCurrentState:I

    .line 313
    invoke-static {v1}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 314
    move v1, v3

    goto :goto_0

    .line 313
    :cond_1
    nop

    .line 314
    move v1, v2

    .line 315
    :goto_0
    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v4

    if-eqz v4, :cond_2

    .line 316
    move v2, v3

    goto :goto_1

    .line 315
    :cond_2
    nop

    .line 316
    :goto_1
    if-eq v1, v2, :cond_4

    .line 317
    iput-boolean v2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mIsBatterySaverEnabled:Z

    .line 318
    if-eqz v2, :cond_3

    .line 319
    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    .line 320
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    goto :goto_2

    .line 322
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    .line 326
    :cond_4
    :goto_2
    invoke-direct {p0, v7, v8, v0, v9}, Lcom/android/server/power/batterysaver/BatterySavingStats;->endLastStateLocked(JII)V

    .line 327
    move-object v1, p0

    move v2, p1

    move-wide v3, v7

    move v5, v0

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats;->startNewStateLocked(IJII)V

    .line 328
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mMetricsLoggerHelper:Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->transitionStateLocked(IJII)V

    .line 329
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 391
    iget-object v9, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 392
    :try_start_0
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 393
    const-string v1, "Battery saving stats:"

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->injectCurrentTime()J

    move-result-wide v3

    .line 399
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 401
    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 402
    const-string v6, "Battery Saver is currently: "

    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 403
    iget-boolean v6, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mIsBatterySaverEnabled:Z

    if-eqz v6, :cond_0

    const-string v6, "ON"

    goto :goto_0

    :cond_0
    const-string v6, "OFF"

    :goto_0
    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    iget-wide v6, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    const-wide/16 v11, 0x0

    cmp-long v6, v6, v11

    if-lez v6, :cond_1

    .line 405
    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    const-string v6, "  "

    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 407
    const-string v6, "Last ON time: "

    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 408
    new-instance v6, Ljava/util/Date;

    sub-long v13, v1, v3

    iget-wide v11, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    add-long/2addr v13, v11

    invoke-direct {v6, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 409
    const-string v6, " "

    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 410
    iget-wide v6, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverEnabledTime:J

    invoke-static {v6, v7, v3, v4, v8}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 411
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 414
    :cond_1
    iget-wide v6, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    const-wide/16 v11, 0x0

    cmp-long v6, v6, v11

    if-lez v6, :cond_2

    .line 415
    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 416
    const-string v6, "  "

    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 417
    const-string v6, "Last OFF time: "

    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 418
    new-instance v6, Ljava/util/Date;

    sub-long/2addr v1, v3

    iget-wide v11, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    add-long/2addr v1, v11

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 419
    const-string v1, " "

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 420
    iget-wide v1, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLastBatterySaverDisabledTime:J

    invoke-static {v1, v2, v3, v4, v8}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 421
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 424
    :cond_2
    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 425
    const-string v1, "  "

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 426
    const-string v1, "Times enabled: "

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 427
    iget v1, v0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mBatterySaverEnabledCount:I

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 429
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 431
    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 432
    const-string v1, "Drain stats:"

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v8, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    const-string v1, "                   Battery saver OFF                          ON"

    invoke-virtual {v8, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    const/4 v4, 0x0

    const-string v5, "NonIntr"

    const/4 v6, 0x0

    const-string v7, "NonDoze"

    move-object v1, v0

    move-object v2, v8

    move-object v3, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 438
    const/4 v4, 0x1

    const-string v5, "   Intr"

    const/4 v6, 0x0

    const-string v7, "       "

    move-object v1, v0

    move-object v2, v8

    move-object v3, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 441
    const/4 v4, 0x0

    const-string v5, "NonIntr"

    const/4 v6, 0x2

    const-string v7, "Deep   "

    move-object v1, v0

    move-object v2, v8

    move-object v3, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 443
    const/4 v4, 0x1

    const-string v5, "   Intr"

    const/4 v6, 0x2

    const-string v7, "       "

    move-object v1, v0

    move-object v2, v8

    move-object v3, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 446
    const/4 v4, 0x0

    const-string v5, "NonIntr"

    const/4 v6, 0x1

    const-string v7, "Light  "

    move-object v1, v0

    move-object v2, v8

    move-object v3, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 448
    const/4 v4, 0x1

    const-string v5, "   Intr"

    const/4 v6, 0x1

    const-string v7, "       "

    move-object v1, v0

    move-object v2, v8

    move-object v3, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/power/batterysaver/BatterySavingStats;->dumpLineLocked(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 450
    monitor-exit v9

    .line 451
    return-void

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getStat(I)Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    .line 244
    if-nez v1, :cond_0

    .line 245
    new-instance v1, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;

    invoke-direct {v1}, Lcom/android/server/power/batterysaver/BatterySavingStats$Stat;-><init>()V

    .line 246
    iget-object v2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mStats:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_0
    monitor-exit v0

    return-object v1

    .line 249
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method injectBatteryLevel()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 266
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;

    move-result-object v0

    .line 267
    if-nez v0, :cond_0

    .line 268
    const/4 v0, 0x0

    return v0

    .line 270
    :cond_0
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryChargeCounter()I

    move-result v0

    return v0
.end method

.method injectBatteryPercent()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 275
    invoke-direct {p0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;

    move-result-object v0

    .line 276
    if-nez v0, :cond_0

    .line 277
    const/4 v0, 0x0

    return v0

    .line 279
    :cond_0
    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v0

    return v0
.end method

.method injectCurrentTime()J
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 261
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public setSendTronLog(Z)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mSendTronLog:Z

    .line 196
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startCharging()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    const/4 v1, -0x2

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->transitionStateLocked(I)V

    .line 300
    monitor-exit v0

    .line 301
    return-void

    .line 300
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public transitionState(III)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/android/server/power/batterysaver/BatterySavingStats;->statesToIndex(III)I

    move-result p1

    .line 290
    invoke-direct {p0, p1}, Lcom/android/server/power/batterysaver/BatterySavingStats;->transitionStateLocked(I)V

    .line 291
    monitor-exit v0

    .line 292
    return-void

    .line 291
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
