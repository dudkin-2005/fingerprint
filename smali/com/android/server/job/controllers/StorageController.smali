.class public final Lcom/android/server/job/controllers/StorageController;
.super Lcom/android/server/job/controllers/StateController;
.source "StorageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/StorageController$StorageTracker;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Storage"


# instance fields
.field private final mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

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

    .line 44
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "JobScheduler.Storage"

    const/4 v1, 0x3

    .line 45
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
    sput-boolean v0, Lcom/android/server/job/controllers/StorageController;->DEBUG:Z

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    .line 47
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    .line 57
    new-instance p1, Lcom/android/server/job/controllers/StorageController$StorageTracker;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/StorageController$StorageTracker;-><init>(Lcom/android/server/job/controllers/StorageController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    .line 58
    iget-object p1, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->startTracking()V

    .line 59
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 42
    sget-boolean v0, Lcom/android/server/job/controllers/StorageController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/job/controllers/StorageController;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/server/job/controllers/StorageController;->maybeReportNewStorageState()V

    return-void
.end method

.method private maybeReportNewStorageState()V
    .locals 5

    .line 79
    iget-object v0, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->isStorageNotLow()Z

    move-result v0

    .line 80
    nop

    .line 81
    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ltz v2, :cond_0

    .line 83
    iget-object v4, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/job/controllers/JobStatus;

    .line 84
    invoke-virtual {v4, v0}, Lcom/android/server/job/controllers/JobStatus;->setStorageNotLowConstraintSatisfied(Z)Z

    move-result v4

    or-int/2addr v3, v4

    .line 82
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 86
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    if-eqz v3, :cond_1

    .line 90
    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v1}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 93
    :cond_1
    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/android/server/job/controllers/StorageController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    .line 96
    :cond_2
    return-void

    .line 86
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public dumpControllerStateLocked(Landroid/util/proto/ProtoOutputStream;JLjava/util/function/Predicate;)V
    .locals 10
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

    .line 177
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 178
    const-wide v0, 0x10b00000007L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 180
    iget-object v2, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    .line 181
    invoke-virtual {v2}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->isStorageNotLow()Z

    move-result v2

    .line 180
    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 182
    iget-object v2, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    .line 183
    invoke-virtual {v2}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->getSeq()I

    move-result v2

    .line 182
    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 185
    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 186
    iget-object v5, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 187
    invoke-interface {p4, v5}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 188
    goto :goto_1

    .line 190
    :cond_0
    const-wide v6, 0x20b00000003L

    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 191
    const-wide v8, 0x10b00000001L

    invoke-virtual {v5, p1, v8, v9}, Lcom/android/server/job/controllers/JobStatus;->writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 192
    nop

    .line 193
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    .line 192
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 194
    invoke-virtual {p1, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 185
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 198
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 199
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

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not low: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->isStorageNotLow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sequence: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->getSeq()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 161
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 163
    invoke-interface {p2, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    goto :goto_1

    .line 166
    :cond_0
    const-string v2, "#"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    .line 168
    const-string v2, " from "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 170
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 161
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_1
    return-void
.end method

.method public getTracker()Lcom/android/server/job/controllers/StorageController$StorageTracker;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    return-object v0
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    .line 63
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasStorageNotLowConstraint()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 64
    iget-object p2, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 65
    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 66
    iget-object p2, p0, Lcom/android/server/job/controllers/StorageController;->mStorageTracker:Lcom/android/server/job/controllers/StorageController$StorageTracker;

    invoke-virtual {p2}, Lcom/android/server/job/controllers/StorageController$StorageTracker;->isStorageNotLow()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setStorageNotLowConstraintSatisfied(Z)Z

    .line 68
    :cond_0
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 0

    .line 73
    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 74
    iget-object p2, p0, Lcom/android/server/job/controllers/StorageController;->mTrackedTasks:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 76
    :cond_0
    return-void
.end method
