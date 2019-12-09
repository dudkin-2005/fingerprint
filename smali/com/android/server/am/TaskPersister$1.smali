.class Lcom/android/server/am/TaskPersister$1;
.super Ljava/lang/Object;
.source "TaskPersister.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/TaskPersister;->restoreTasksForUserLocked(ILandroid/util/SparseBooleanArray;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/am/TaskRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskPersister;


# direct methods
.method constructor <init>(Lcom/android/server/am/TaskPersister;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/android/server/am/TaskPersister$1;->this$0:Lcom/android/server/am/TaskPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)I
    .locals 2

    .line 524
    iget-wide v0, p2, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    iget-wide p1, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    sub-long/2addr v0, p1

    .line 525
    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    .line 526
    const/4 p1, -0x1

    return p1

    .line 527
    :cond_0
    if-lez p1, :cond_1

    .line 528
    const/4 p1, 0x1

    return p1

    .line 530
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 521
    check-cast p1, Lcom/android/server/am/TaskRecord;

    check-cast p2, Lcom/android/server/am/TaskRecord;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/TaskPersister$1;->compare(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)I

    move-result p1

    return p1
.end method
