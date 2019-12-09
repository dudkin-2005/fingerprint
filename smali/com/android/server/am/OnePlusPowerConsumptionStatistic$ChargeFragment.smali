.class Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChargeFragment"
.end annotation


# instance fields
.field beginPowerLevel:I

.field duration:J

.field endPowerLevel:I

.field firstFullTimeToRelativeBeginTime:J

.field plugType:Ljava/lang/String;

.field realBeginTime:J

.field relativeBeginTime:J

.field relativeEndTime:J

.field screenOnDuration:J

.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 541
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    .line 532
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    .line 533
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->realBeginTime:J

    .line 534
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->beginPowerLevel:I

    .line 535
    iput v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->endPowerLevel:I

    .line 536
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->duration:J

    .line 537
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->screenOnDuration:J

    .line 538
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->firstFullTimeToRelativeBeginTime:J

    .line 539
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->plugType:Ljava/lang/String;

    .line 542
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p2, "c"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    .line 544
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    .line 532
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    .line 533
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->realBeginTime:J

    .line 534
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->beginPowerLevel:I

    .line 535
    iput v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->endPowerLevel:I

    .line 536
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->duration:J

    .line 537
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->screenOnDuration:J

    .line 538
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->firstFullTimeToRelativeBeginTime:J

    .line 539
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->plugType:Ljava/lang/String;

    .line 545
    iget-wide v0, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    .line 546
    iget-wide v0, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    .line 547
    iget-wide v0, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->realBeginTime:J

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->realBeginTime:J

    .line 548
    iget v0, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->beginPowerLevel:I

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->beginPowerLevel:I

    .line 549
    iget v0, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->endPowerLevel:I

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->endPowerLevel:I

    .line 550
    iget-wide v0, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->duration:J

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->duration:J

    .line 551
    iget-wide v0, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->screenOnDuration:J

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->screenOnDuration:J

    .line 552
    iget-wide v0, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->firstFullTimeToRelativeBeginTime:J

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->firstFullTimeToRelativeBeginTime:J

    .line 553
    iget-object v0, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->plugType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->plugType:Ljava/lang/String;

    .line 554
    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;

    .line 530
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->clear()V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;
    .param p1, "x1"    # I

    .line 530
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->toMDM(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private clear()V
    .registers 4

    .line 557
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    .line 558
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    .line 559
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->realBeginTime:J

    .line 560
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->beginPowerLevel:I

    .line 561
    iput v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->endPowerLevel:I

    .line 562
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->duration:J

    .line 563
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->screenOnDuration:J

    .line 564
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->firstFullTimeToRelativeBeginTime:J

    .line 565
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->plugType:Ljava/lang/String;

    .line 566
    return-void
.end method

.method private toMDM(I)Ljava/lang/String;
    .registers 5
    .param p1, "seq"    # I

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{\"seq\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 571
    const-string v1, "\",\"relativeBeginTime\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 572
    const-string v1, "\",\"relativeEndTime\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 573
    const-string v1, "\",\"duration\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 574
    const-string v1, "\",\"realBeginTime\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->realBeginTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 575
    const-string v1, "\",\"beginPowerLevel\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->beginPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 576
    const-string v1, "\",\"endPowerLevel\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->endPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 577
    const-string v1, "\",\"screenOnDuration\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->screenOnDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 578
    const-string v1, "\",\"firstFullTimeToRelativeBeginTime\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->firstFullTimeToRelativeBeginTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 580
    const-string v1, "\",\"plugType\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->plugType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 584
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChargeFragment relativeBeginTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeBeginTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |relativeEndTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->relativeEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |realBeginTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->realBeginTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |beginPowerLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->beginPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |endPowerLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->endPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |screenOnDuration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->screenOnDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |firstFullTimeToRelativeBeginTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->firstFullTimeToRelativeBeginTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |plugType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ChargeFragment;->plugType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
