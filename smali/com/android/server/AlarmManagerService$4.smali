.class Lcom/android/server/AlarmManagerService$4;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AlarmManagerService;->dumpProto(Ljava/io/FileDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/AlarmManagerService$FilterStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    .line 2391
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/AlarmManagerService$FilterStats;Lcom/android/server/AlarmManagerService$FilterStats;)I
    .locals 4

    .line 2394
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    iget-wide v2, p2, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 2395
    const/4 p1, 0x1

    return p1

    .line 2396
    :cond_0
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    iget-wide p1, p2, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_1

    .line 2397
    const/4 p1, -0x1

    return p1

    .line 2399
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 2391
    check-cast p1, Lcom/android/server/AlarmManagerService$FilterStats;

    check-cast p2, Lcom/android/server/AlarmManagerService$FilterStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService$4;->compare(Lcom/android/server/AlarmManagerService$FilterStats;Lcom/android/server/AlarmManagerService$FilterStats;)I

    move-result p1

    return p1
.end method