.class Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;
.super Ljava/lang/Object;
.source "BatterySavingStats.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySavingStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MetricsLoggerHelper"
.end annotation


# static fields
.field private static final STATE_CHANGE_DETECT_MASK:I = 0x3


# instance fields
.field private mLastState:I

.field private mStartBatteryLevel:I

.field private mStartPercent:I

.field private mStartTime:J

.field final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySavingStats;


# direct methods
.method constructor <init>(Lcom/android/server/power/batterysaver/BatterySavingStats;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->this$0:Lcom/android/server/power/batterysaver/BatterySavingStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->mLastState:I

    return-void
.end method


# virtual methods
.method reportLocked(IJIIII)V
    .locals 3

    .line 509
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->this$0:Lcom/android/server/power/batterysaver/BatterySavingStats;

    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySavingStats;->access$000(Lcom/android/server/power/batterysaver/BatterySavingStats;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 510
    return-void

    .line 512
    :cond_0
    nop

    .line 513
    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySavingStats$BatterySaverState;->fromIndex(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 514
    move v0, v2

    goto :goto_0

    .line 513
    :cond_1
    nop

    .line 514
    move v0, v1

    .line 515
    :goto_0
    invoke-static {p1}, Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;->fromIndex(I)I

    move-result p1

    if-eqz p1, :cond_2

    .line 517
    move v1, v2

    goto :goto_1

    .line 515
    :cond_2
    nop

    .line 517
    :goto_1
    new-instance p1, Landroid/metrics/LogMaker;

    const/16 v2, 0x516

    invoke-direct {p1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 518
    invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p1

    const/16 v0, 0x517

    .line 519
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    const/16 v0, 0x518

    .line 520
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    const/16 p2, 0x519

    .line 521
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    const/16 p2, 0x51b

    .line 523
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 522
    invoke-virtual {p1, p2, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    const/16 p2, 0x51a

    .line 524
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    const/16 p2, 0x51c

    .line 525
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 527
    iget-object p2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->this$0:Lcom/android/server/power/batterysaver/BatterySavingStats;

    invoke-static {p2}, Lcom/android/server/power/batterysaver/BatterySavingStats;->access$100(Lcom/android/server/power/batterysaver/BatterySavingStats;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 528
    return-void
.end method

.method public transitionStateLocked(IJII)V
    .locals 10

    .line 489
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->mLastState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ltz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    xor-int/2addr v0, v3

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->mLastState:I

    xor-int/2addr v0, p1

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    .line 492
    :cond_3
    :goto_2
    move v1, v2

    :goto_3
    if-eqz v1, :cond_5

    .line 493
    iget v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->mLastState:I

    if-ltz v0, :cond_4

    .line 494
    iget-wide v0, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->mStartTime:J

    sub-long v4, p2, v0

    .line 496
    iget v3, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->mLastState:I

    iget v6, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->mStartBatteryLevel:I

    iget v7, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->mStartPercent:I

    move-object v2, p0

    move v8, p4

    move v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->reportLocked(IJIIII)V

    .line 499
    :cond_4
    iput-wide p2, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->mStartTime:J

    .line 500
    iput p4, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->mStartBatteryLevel:I

    .line 501
    iput p5, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->mStartPercent:I

    .line 503
    :cond_5
    iput p1, p0, Lcom/android/server/power/batterysaver/BatterySavingStats$MetricsLoggerHelper;->mLastState:I

    .line 504
    return-void
.end method
