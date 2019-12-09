.class Lcom/android/server/am/OnePlusPowerConsumptionStatistic$5;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionStatistic.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 3572
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$5;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)I
    .registers 8
    .param p1, "lhs"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .param p2, "rhs"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    .line 3575
    iget-wide v0, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    .line 3576
    .local v0, "lhsTime":J
    iget-wide v2, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    .line 3577
    .local v2, "rhsTime":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_a

    .line 3578
    const/4 v4, 0x1

    return v4

    .line 3580
    :cond_a
    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    .line 3581
    const/4 v4, -0x1

    return v4

    .line 3583
    :cond_10
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 3572
    check-cast p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    check-cast p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$5;->compare(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)I

    move-result p1

    return p1
.end method
