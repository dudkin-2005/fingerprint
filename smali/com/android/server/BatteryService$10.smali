.class Lcom/android/server/BatteryService$10;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ResetParamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->processValuesLocked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    .line 599
    iput-object p1, p0, Lcom/android/server/BatteryService$10;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlugState()I
    .registers 2

    .line 612
    iget-object v0, p0, Lcom/android/server/BatteryService$10;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mPlugType:I
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1600(Lcom/android/server/BatteryService;)I

    move-result v0

    return v0
.end method

.method public resetParamForOPCS()Z
    .registers 7

    .line 602
    iget-object v0, p0, Lcom/android/server/BatteryService$10;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mReportLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$1400(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 603
    :try_start_7
    iget-object v1, p0, Lcom/android/server/BatteryService$10;->this$0:Lcom/android/server/BatteryService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/BatteryService;->mIsInitted:Z
    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$1502(Lcom/android/server/BatteryService;Z)Z

    .line 604
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getInstance()Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 605
    iget-object v1, p0, Lcom/android/server/BatteryService$10;->this$0:Lcom/android/server/BatteryService;

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->getInstance()Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BatteryService$10;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mPlugType:I
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1600(Lcom/android/server/BatteryService;)I

    move-result v4

    if-eqz v4, :cond_23

    const/4 v2, 0x1

    nop

    :cond_23
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/BatteryService$10;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mPlugType:I
    invoke-static {v4}, Lcom/android/server/BatteryService;->access$1600(Lcom/android/server/BatteryService;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/BatteryService$10;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mFastChargeStatus:Z
    invoke-static {v5}, Lcom/android/server/BatteryService;->access$1700(Lcom/android/server/BatteryService;)Z

    move-result v5

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->initPlugState(Ljava/lang/Boolean;IZ)Z

    move-result v2

    # setter for: Lcom/android/server/BatteryService;->mIsInitted:Z
    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$1502(Lcom/android/server/BatteryService;Z)Z

    .line 607
    :cond_3a
    iget-object v1, p0, Lcom/android/server/BatteryService$10;->this$0:Lcom/android/server/BatteryService;

    # getter for: Lcom/android/server/BatteryService;->mIsInitted:Z
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$1500(Lcom/android/server/BatteryService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 608
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_42

    throw v1
.end method
