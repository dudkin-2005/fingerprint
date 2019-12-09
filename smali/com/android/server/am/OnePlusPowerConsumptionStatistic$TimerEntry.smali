.class final Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimerEntry"
.end annotation


# instance fields
.field mCount:I

.field mName:Ljava/lang/String;

.field mTime:J


# direct methods
.method constructor <init>()V
    .registers 3

    .line 3604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3600
    const-string/jumbo v0, "unknow"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    .line 3601
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    .line 3602
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    .line 3605
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)V
    .registers 4
    .param p1, "t"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    .line 3613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3600
    const-string/jumbo v0, "unknow"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    .line 3601
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    .line 3602
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    .line 3614
    iget-object v0, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    .line 3615
    iget-wide v0, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    .line 3616
    iget v0, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    .line 3617
    return-void
.end method

.method constructor <init>(Ljava/lang/String;JI)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "time"    # J
    .param p4, "count"    # I

    .line 3607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3600
    const-string/jumbo v0, "unknow"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    .line 3601
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    .line 3602
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    .line 3608
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    .line 3609
    iput-wide p2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    .line 3610
    iput p4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    .line 3611
    return-void
.end method

.method static synthetic access$8400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .param p1, "x1"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    .line 3599
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->equals(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;JI)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .line 3599
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->updateData(JI)V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .param p1, "x1"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    .line 3599
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->handlePastData(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;
    .param p1, "x1"    # I

    .line 3599
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->toMDM(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private equals(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)Z
    .registers 7
    .param p1, "te"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    .line 3620
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 3621
    return v0

    .line 3624
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    if-ne v1, v2, :cond_1a

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1a

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    iget v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    if-ne v1, v2, :cond_1a

    .line 3625
    const/4 v0, 0x1

    return v0

    .line 3627
    :cond_1a
    return v0
.end method

.method private handlePastData(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;)Z
    .registers 6
    .param p1, "te"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;

    .line 3636
    if-eqz p1, :cond_10

    .line 3637
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    .line 3638
    iget v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    iget v1, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    .line 3641
    :cond_10
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1f

    iget v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    if-gtz v0, :cond_1d

    goto :goto_1f

    .line 3645
    :cond_1d
    const/4 v0, 0x1

    return v0

    .line 3642
    :cond_1f
    :goto_1f
    const/4 v0, 0x0

    return v0
.end method

.method private toMDM(I)Ljava/lang/String;
    .registers 5
    .param p1, "seq"    # I

    .line 3667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3669
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{\"seq\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3670
    const-string v1, "\",\"name\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3671
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    if-nez v1, :cond_1b

    const-string/jumbo v1, "unknow"

    goto :goto_21

    :cond_1b
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3670
    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3672
    const-string v1, "\",\"time\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3673
    const-string v1, "\",\"count\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3674
    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3676
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updateData(JI)V
    .registers 6
    .param p1, "addTime"    # J
    .param p3, "addCount"    # I

    .line 3631
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    .line 3632
    iget v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    .line 3633
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 3650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3652
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "TimerEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3653
    const-string/jumbo v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3654
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3656
    const-string v1, ",time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3657
    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3659
    const-string v1, ",count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3660
    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$TimerEntry;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3661
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3663
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
