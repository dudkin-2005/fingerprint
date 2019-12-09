.class Lcom/android/server/OverHeatingDiagnosis$Stopwatch;
.super Ljava/lang/Object;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OverHeatingDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stopwatch"
.end annotation


# instance fields
.field private mStartTimeMs:J

.field private mStopTimeMs:J

.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;


# direct methods
.method private constructor <init>(Lcom/android/server/OverHeatingDiagnosis;)V
    .registers 2

    .line 1650
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OverHeatingDiagnosis;Lcom/android/server/OverHeatingDiagnosis$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p2, "x1"    # Lcom/android/server/OverHeatingDiagnosis$1;

    .line 1650
    invoke-direct {p0, p1}, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;-><init>(Lcom/android/server/OverHeatingDiagnosis;)V

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .registers 2

    .line 1663
    invoke-virtual {p0}, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->isStopped()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isStarted()Z
    .registers 5

    .line 1655
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->mStartTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isStopped()Z
    .registers 5

    .line 1659
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->mStopTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public lap()J
    .registers 5

    .line 1689
    invoke-virtual {p0}, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1690
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->mStartTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 1692
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->stop()J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .registers 3

    .line 1697
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->mStartTimeMs:J

    .line 1698
    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->mStopTimeMs:J

    .line 1699
    return-void
.end method

.method public start()Lcom/android/server/OverHeatingDiagnosis$Stopwatch;
    .registers 3

    .line 1670
    invoke-virtual {p0}, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->isStarted()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1671
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->mStartTimeMs:J

    .line 1673
    :cond_c
    return-object p0
.end method

.method public stop()J
    .registers 5

    .line 1678
    invoke-virtual {p0}, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1679
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->mStopTimeMs:J

    .line 1682
    :cond_c
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->mStopTimeMs:J

    iget-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis$Stopwatch;->mStartTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
