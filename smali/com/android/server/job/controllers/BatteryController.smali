.class public final Lcom/android/server/job/controllers/BatteryController;
.super Lcom/android/server/job/controllers/StateController;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/BatteryController$ChargingTracker;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Battery"


# instance fields
.field private mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

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
    .locals 2

    .line 48
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "JobScheduler.Battery"

    const/4 v1, 0x3

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 51
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 61
    new-instance p1, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;-><init>(Lcom/android/server/job/controllers/BatteryController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    .line 62
    iget-object p1, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->startTracking()V

    .line 63
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 46
    sget-boolean v0, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/job/controllers/BatteryController;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/server/job/controllers/BatteryController;->maybeReportNewChargingStateLocked()V

    return-void
.end method

.method private maybeReportNewChargingStateLocked()V
    .locals 6

    .line 83
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isBatteryNotLow()Z

    move-result v1

    .line 85
    sget-boolean v2, Lcom/android/server/job/controllers/BatteryController;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 86
    const-string v2, "JobScheduler.Battery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maybeReportNewChargingStateLocked: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    const/4 v2, 0x0

    .line 89
    iget-object v3, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_1

    .line 90
    iget-object v4, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 91
    invoke-virtual {v4, v0}, Lcom/android/server/job/controllers/JobStatus;->setChargingConstraintSatisfied(Z)Z

    move-result v5

    or-int/2addr v2, v5

    .line 92
    invoke-virtual {v4, v1}, Lcom/android/server/job/controllers/JobStatus;->setBatteryNotLowConstraintSatisfied(Z)Z

    move-result v4

    or-int/2addr v2, v4

    .line 89
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 95
    :cond_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    .line 98
    :cond_2
    if-eqz v2, :cond_4

    .line 101
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    goto :goto_2

    .line 97
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 103
    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .locals 8
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

    .line 249
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 250
    const-wide v0, 0x10b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 252
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    .line 253
    invoke-virtual {v2}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    move-result v2

    .line 252
    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 254
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    .line 255
    invoke-virtual {v2}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isBatteryNotLow()Z

    move-result v2

    .line 254
    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 257
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    .line 258
    invoke-virtual {v2}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isMonitoring()Z

    move-result v2

    .line 257
    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 259
    iget-object v2, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    .line 260
    invoke-virtual {v2}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->getSeq()I

    move-result v2

    .line 259
    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 262
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 263
    iget-object v3, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/controllers/JobStatus;

    .line 264
    invoke-interface {p4, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 265
    goto :goto_1

    .line 267
    :cond_0
    const-wide v4, 0x20b00000005L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 268
    const-wide v6, 0x10b00000001L

    invoke-virtual {v3, p1, v6, v7}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 269
    const-wide v6, 0x10500000002L

    .line 270
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    .line 269
    invoke-virtual {p1, v6, v7, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 271
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 262
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 275
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 276
    return-void
.end method

.method public dumpControllerStateLocked(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stable power: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not low: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isBatteryNotLow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isMonitoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const-string v0, "MONITORING: seq="

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->getSeq()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 231
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 233
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 234
    iget-object v1, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 235
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 236
    goto :goto_1

    .line 238
    :cond_1
    const-string v2, "#"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 240
    const-string v2, " from "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 242
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 233
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_2
    return-void
.end method

.method public getTracker()Lcom/android/server/job/controllers/BatteryController$ChargingTracker;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    return-object v0
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    .line 67
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasPowerConstraint()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 68
    iget-object p2, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 69
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 70
    iget-object p2, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {p2}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isOnStablePower()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setChargingConstraintSatisfied(Z)Z

    .line 71
    iget-object p2, p0, Lcom/android/server/job/controllers/BatteryController;->mChargeTracker:Lcom/android/server/job/controllers/BatteryController$ChargingTracker;

    invoke-virtual {p2}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker;->isBatteryNotLow()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setBatteryNotLowConstraintSatisfied(Z)Z

    .line 73
    :cond_0
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 0

    .line 77
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 78
    iget-object p2, p0, Lcom/android/server/job/controllers/BatteryController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    return-void
.end method
