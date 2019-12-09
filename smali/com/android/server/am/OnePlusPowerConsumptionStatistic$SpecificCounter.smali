.class Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpecificCounter"
.end annotation


# instance fields
.field cumulativeCount:I

.field lock:Ljava/lang/Object;

.field tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
    .param p2, "_tag"    # Ljava/lang/String;

    .line 2566
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2562
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->cumulativeCount:I

    .line 2563
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->tag:Ljava/lang/String;

    .line 2564
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->lock:Ljava/lang/Object;

    .line 2567
    iput-object p2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->tag:Ljava/lang/String;

    .line 2568
    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    .line 2561
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->countAdd()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    .line 2561
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->clear()V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;

    .line 2561
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->getCumulativeCount()I

    move-result v0

    return v0
.end method

.method private clear()V
    .registers 4

    .line 2596
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2597
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpecificCounter clear tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |cumulativeCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->cumulativeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 2599
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->cumulativeCount:I

    .line 2600
    monitor-exit v0

    .line 2601
    return-void

    .line 2600
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method private countAdd()V
    .registers 4

    .line 2571
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2572
    :try_start_3
    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->cumulativeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->cumulativeCount:I

    .line 2573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpecificCounter countAdd tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |cumulativeCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->cumulativeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 2575
    monitor-exit v0

    .line 2576
    return-void

    .line 2575
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private countSub()V
    .registers 4

    .line 2580
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2581
    :try_start_3
    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->cumulativeCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->cumulativeCount:I

    .line 2582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpecificCounter countSub tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |cumulativeCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->cumulativeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 2584
    monitor-exit v0

    .line 2585
    return-void

    .line 2584
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method private dump()V
    .registers 5

    .line 2605
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2606
    :try_start_3
    const-string v1, "OPCS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# dump # SpecificCounter # tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |cumulativeCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->cumulativeCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    monitor-exit v0

    .line 2609
    return-void

    .line 2608
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method

.method private getCumulativeCount()I
    .registers 4

    .line 2588
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 2589
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpecificCounter getCumulativeCount tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |cumulativeCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->cumulativeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLogSpecific(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1900(Ljava/lang/String;)V

    .line 2591
    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$SpecificCounter;->cumulativeCount:I

    monitor-exit v0

    return v1

    .line 2592
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v1
.end method
