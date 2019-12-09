.class Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaseRecordPoint"
.end annotation


# instance fields
.field description:Ljava/lang/String;

.field eventType:Ljava/lang/String;

.field frontPkg:Ljava/lang/String;

.field idleState:Z

.field plugState:Z

.field powerlevelState:I

.field realTime:J

.field relativeTime:J

.field screenState:Z

.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

.field totalSeq:I

.field typeSeq:I


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 4278
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4275
    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->frontPkg:Ljava/lang/String;

    .line 4276
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->description:Ljava/lang/String;

    .line 4279
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;IILjava/lang/String;JJZZZILjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p2, "_totalSeq"    # I
    .param p3, "_typeSeq"    # I
    .param p4, "_eventType"    # Ljava/lang/String;
    .param p5, "_relativeTime"    # J
    .param p7, "_realTime"    # J
    .param p9, "_screenState"    # Z
    .param p10, "_plugState"    # Z
    .param p11, "_idleState"    # Z
    .param p12, "_powerlevelState"    # I
    .param p13, "_frontPkg"    # Ljava/lang/String;
    .param p14, "_description"    # Ljava/lang/String;

    .line 4284
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4275
    const-string/jumbo v0, "none"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->frontPkg:Ljava/lang/String;

    .line 4276
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->description:Ljava/lang/String;

    .line 4285
    iput p2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->totalSeq:I

    .line 4286
    iput p3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->typeSeq:I

    .line 4287
    iput-object p4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->eventType:Ljava/lang/String;

    .line 4288
    iput-wide p5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->relativeTime:J

    .line 4289
    iput-wide p7, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->realTime:J

    .line 4290
    iput-boolean p9, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->screenState:Z

    .line 4291
    iput-boolean p10, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->plugState:Z

    .line 4292
    iput-boolean p11, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->idleState:Z

    .line 4293
    iput p12, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->powerlevelState:I

    .line 4294
    iput-object p13, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->frontPkg:Ljava/lang/String;

    .line 4295
    iput-object p14, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->description:Ljava/lang/String;

    .line 4296
    return-void
.end method

.method static synthetic access$9400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;

    .line 4265
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->toMDM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toMDM()Ljava/lang/String;
    .registers 4

    .line 4310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4311
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{\"totalSeq\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->totalSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4312
    const-string v1, "\",\"typeSeq\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->typeSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4313
    const-string v1, "\",\"eventType\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->eventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4314
    const-string v1, "\",\"relativeTime\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->relativeTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4315
    const-string v1, "\",\"realTime\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->realTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4316
    const-string v1, "\",\"screenState\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->screenState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4317
    const-string v1, "\",\"plugState\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->plugState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4318
    const-string v1, "\",\"idleState\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->idleState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4319
    const-string v1, "\",\"powerlevelState\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->powerlevelState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4320
    const-string v1, "\",\"frontPkg\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->frontPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4321
    const-string v1, "\",\"description\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4322
    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4323
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 4300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseRecordPoint totalSeq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->totalSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |typeSeq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->typeSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |eventType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->eventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |screenState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->screenState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |plugState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->plugState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |idleState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->idleState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " |powerlevelState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->powerlevelState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |frontPkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->frontPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |description:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " |relativeTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->relativeTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |realTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$BaseRecordPoint;->realTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
