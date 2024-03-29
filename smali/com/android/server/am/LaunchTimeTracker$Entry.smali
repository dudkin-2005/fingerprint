.class Lcom/android/server/am/LaunchTimeTracker$Entry;
.super Ljava/lang/Object;
.source "LaunchTimeTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LaunchTimeTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation


# instance fields
.field mFullyDrawnStartTime:J

.field mLaunchStartTime:J

.field mPerf:Landroid/util/BoostFramework;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mPerf:Landroid/util/BoostFramework;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/LaunchTimeTracker$Entry;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/LaunchTimeTracker$Entry;

    .line 54
    invoke-direct {p0}, Lcom/android/server/am/LaunchTimeTracker$Entry;->stopFullyDrawnTraceIfNeeded()V

    return-void
.end method

.method private startLaunchTraces(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 100
    iget-wide v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mFullyDrawnStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const-wide/16 v2, 0x40

    if-eqz v0, :cond_10

    .line 101
    const-string v0, "drawing"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 103
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "launching: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 104
    const-string v0, "drawing"

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 105
    return-void
.end method

.method private stopFullyDrawnTraceIfNeeded()V
    .registers 7

    .line 108
    iget-wide v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mFullyDrawnStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    iget-wide v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLaunchStartTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    .line 109
    const-wide/16 v0, 0x40

    const-string v4, "drawing"

    const/4 v5, 0x0

    invoke-static {v0, v1, v4, v5}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 110
    iput-wide v2, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mFullyDrawnStartTime:J

    .line 112
    :cond_18
    return-void
.end method


# virtual methods
.method setLaunchTime(Lcom/android/server/am/ActivityRecord;)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .line 61
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/16 v4, 0x1081

    const/4 v5, -0x1

    if-nez v0, :cond_38

    .line 62
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    iput-wide v6, p1, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    .line 63
    iget-wide v6, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLaunchStartTime:J

    cmp-long v0, v6, v2

    if-nez v0, :cond_5d

    .line 67
    iget-object v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_2c

    iget v0, p1, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    if-ne v0, v5, :cond_2c

    .line 68
    iget-object v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mPerf:Landroid/util/BoostFramework;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v4, v2, v5, v1}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    iput v0, p1, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    .line 77
    :cond_2c
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/LaunchTimeTracker$Entry;->startLaunchTraces(Ljava/lang/String;)V

    .line 78
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mFullyDrawnStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLaunchStartTime:J

    goto :goto_5d

    .line 80
    :cond_38
    iget-wide v6, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLaunchStartTime:J

    cmp-long v0, v6, v2

    if-nez v0, :cond_5d

    .line 84
    iget-object v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_50

    iget v0, p1, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    if-ne v0, v5, :cond_50

    .line 85
    iget-object v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mPerf:Landroid/util/BoostFramework;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v4, v2, v5, v1}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    iput v0, p1, Lcom/android/server/am/ActivityRecord;->perfActivityBoostHandler:I

    .line 94
    :cond_50
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/LaunchTimeTracker$Entry;->startLaunchTraces(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mFullyDrawnStartTime:J

    iput-wide v0, p0, Lcom/android/server/am/LaunchTimeTracker$Entry;->mLaunchStartTime:J

    .line 97
    :cond_5d
    :goto_5d
    return-void
.end method
