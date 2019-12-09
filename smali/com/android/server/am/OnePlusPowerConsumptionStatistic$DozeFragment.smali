.class Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DozeFragment"
.end annotation


# instance fields
.field beginPowerLevel:I

.field duration:J

.field endPowerLevel:I

.field exitReason:Ljava/lang/String;

.field realBeginTime:J

.field relativeBeginTime:J

.field relativeEndTime:J

.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 482
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    .line 475
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeEndTime:J

    .line 476
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->realBeginTime:J

    .line 477
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->duration:J

    .line 478
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->beginPowerLevel:I

    .line 479
    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->endPowerLevel:I

    .line 480
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->exitReason:Ljava/lang/String;

    .line 483
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p2, "d"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    .line 485
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    .line 475
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeEndTime:J

    .line 476
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->realBeginTime:J

    .line 477
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->duration:J

    .line 478
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->beginPowerLevel:I

    .line 479
    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->endPowerLevel:I

    .line 480
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->exitReason:Ljava/lang/String;

    .line 486
    iget-wide v0, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    .line 487
    iget-wide v0, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeEndTime:J

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeEndTime:J

    .line 488
    iget-wide v0, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->realBeginTime:J

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->realBeginTime:J

    .line 489
    iget-wide v0, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->duration:J

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->duration:J

    .line 490
    iget v0, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->beginPowerLevel:I

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->beginPowerLevel:I

    .line 491
    iget v0, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->endPowerLevel:I

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->endPowerLevel:I

    .line 492
    iget-object v0, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->exitReason:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->exitReason:Ljava/lang/String;

    .line 493
    return-void
.end method

.method static synthetic access$7400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;

    .line 473
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->clear()V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;
    .param p1, "x1"    # I

    .line 473
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->toMDM(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private clear()V
    .registers 3

    .line 496
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    .line 497
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeEndTime:J

    .line 498
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->realBeginTime:J

    .line 499
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->duration:J

    .line 500
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->beginPowerLevel:I

    .line 501
    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->endPowerLevel:I

    .line 502
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->exitReason:Ljava/lang/String;

    .line 503
    return-void
.end method

.method private toMDM(I)Ljava/lang/String;
    .registers 5
    .param p1, "seq"    # I

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{\"seq\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 508
    const-string v1, "\",\"relativeBeginTime\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 509
    const-string v1, "\",\"relativeEndTime\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 510
    const-string v1, "\",\"duration\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 511
    const-string v1, "\",\"realBeginTime\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->realBeginTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 512
    const-string v1, "\",\"beginPowerLevel\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->beginPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 513
    const-string v1, "\",\"endPowerLevel\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->endPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 514
    const-string v1, "\",\"exitReason\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->exitReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 518
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DozeFragment relativeBeginTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeBeginTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |relativeEndTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->relativeEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |realBeginTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->realBeginTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |beginPowerLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->beginPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |endPowerLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->endPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |exitReason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$DozeFragment;->exitReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
