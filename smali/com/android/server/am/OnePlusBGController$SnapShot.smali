.class public final Lcom/android/server/am/OnePlusBGController$SnapShot;
.super Ljava/lang/Object;
.source "OnePlusBGController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SnapShot"
.end annotation


# instance fields
.field private mBatteryDrop:I

.field private mSnapShotType:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

.field private mmA:F

.field final synthetic this$0:Lcom/android/server/am/OnePlusBGController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusBGController;
    .param p2, "snapshot"    # Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    .line 2030
    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2031
    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->mSnapShotType:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    .line 2032
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;IF)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusBGController;
    .param p2, "snapshot"    # Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;
    .param p3, "batteryDrop"    # I
    .param p4, "mA"    # F

    .line 2034
    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2035
    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->mSnapShotType:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    .line 2036
    iput p3, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->mBatteryDrop:I

    .line 2037
    iput p4, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->mmA:F

    .line 2038
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 2041
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    # getter for: Lcom/android/server/am/OnePlusBGController;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;
    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->access$900(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v0

    if-eqz v0, :cond_149

    .line 2043
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2045
    .local v0, "startTime":J
    sget-object v2, Lcom/android/server/am/OnePlusBGController$4;->$SwitchMap$com$android$server$am$OnePlusBGController$SNAPSHOT_TYPE:[I

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->mSnapShotType:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_152

    .line 2045
    .end local v0    # "startTime":J
    goto/16 :goto_148

    .line 2108
    .restart local v0    # "startTime":J
    :pswitch_1c
    const-string v2, "======CALCULATE======"

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 2109
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    # getter for: Lcom/android/server/am/OnePlusBGController;->mIsFlushed:Z
    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$3600(Lcom/android/server/am/OnePlusBGController;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2110
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    # invokes: Lcom/android/server/am/OnePlusBGController;->CheckAbnBgmAh()V
    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$3700(Lcom/android/server/am/OnePlusBGController;)V

    goto :goto_34

    .line 2112
    :cond_2f
    const-string v2, "No round-flush, so skip calculating..."

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 2115
    :goto_34
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    # setter for: Lcom/android/server/am/OnePlusBGController;->mIsFlushed:Z
    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusBGController;->access$3602(Lcom/android/server/am/OnePlusBGController;Z)Z

    .line 2119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@[End] Calculate & Judge in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .end local v0    # "startTime":J
    goto/16 :goto_148

    .line 2052
    .restart local v0    # "startTime":J
    :pswitch_59
    const-string v2, "======ONESHOT======"

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 2055
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    # invokes: Lcom/android/server/am/OnePlusBGController;->isNeedResetBudget()Z
    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$3200(Lcom/android/server/am/OnePlusBGController;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 2056
    const-string v2, "Exceed the reset period, just budget reset..."

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 2057
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    # invokes: Lcom/android/server/am/OnePlusBGController;->resetAllBudget()V
    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$800(Lcom/android/server/am/OnePlusBGController;)V

    .line 2058
    return-void

    .line 2065
    :cond_71
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    # getter for: Lcom/android/server/am/OnePlusBGController;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;
    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$900(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/BatteryStatsService;->flushExternel()V

    .line 2070
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    # getter for: Lcom/android/server/am/OnePlusBGController;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;
    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$900(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    .line 2073
    .local v2, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    # getter for: Lcom/android/server/am/OnePlusBGController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;
    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->access$3300(Lcom/android/server/am/OnePlusBGController;)Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    .line 2075
    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    # getter for: Lcom/android/server/am/OnePlusBGController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;
    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->access$3300(Lcom/android/server/am/OnePlusBGController;)Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 2078
    if-eqz v2, :cond_f3

    .line 2079
    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    # getter for: Lcom/android/server/am/OnePlusBGController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;
    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->access$3300(Lcom/android/server/am/OnePlusBGController;)Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v4

    .line 2080
    .local v4, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    iget-object v5, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, v5, Lcom/android/server/am/OnePlusBGController;->mSippersOfOneShot:Ljava/util/List;

    .line 2081
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mSippersOfOneShot size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-object v6, v6, Lcom/android/server/am/OnePlusBGController;->mSippersOfOneShot:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 2084
    iget-object v5, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-object v5, v5, Lcom/android/server/am/OnePlusBGController;->mSippersOfOneShot:Ljava/util/List;

    iget-object v6, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-object v6, v6, Lcom/android/server/am/OnePlusBGController;->cptor:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2087
    iget-object v5, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-object v6, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-object v6, v6, Lcom/android/server/am/OnePlusBGController;->mSippersOfOneShot:Ljava/util/List;

    # invokes: Lcom/android/server/am/OnePlusBGController;->updateUidSippermAhStatsBySippers(Ljava/util/List;)V
    invoke-static {v5, v6}, Lcom/android/server/am/OnePlusBGController;->access$3400(Lcom/android/server/am/OnePlusBGController;Ljava/util/List;)V

    .line 2089
    sget-boolean v5, Lcom/android/server/am/OnePlusBGController;->DEBUG_BGC:Z

    if-eqz v5, :cond_ec

    iget-object v5, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    const-string v6, "ONESHOT"

    iget-object v7, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-object v7, v7, Lcom/android/server/am/OnePlusBGController;->mSippersOfOneShot:Ljava/util/List;

    # invokes: Lcom/android/server/am/OnePlusBGController;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V
    invoke-static {v5, v6, v7, v3}, Lcom/android/server/am/OnePlusBGController;->access$3500(Lcom/android/server/am/OnePlusBGController;Ljava/lang/String;Ljava/util/List;Z)V

    .line 2092
    :cond_ec
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/am/OnePlusBGController;->mIsFlushed:Z
    invoke-static {v3, v5}, Lcom/android/server/am/OnePlusBGController;->access$3602(Lcom/android/server/am/OnePlusBGController;Z)Z

    .line 2094
    .end local v4    # "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    goto :goto_f9

    .line 2095
    :cond_f3
    const-string/jumbo v3, "stats == null"

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 2101
    :goto_f9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@@[START] SnapShot in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 2105
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    sget-object v4, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->CALCULATE:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    invoke-virtual {v3, v4}, Lcom/android/server/am/OnePlusBGController;->snapShot(Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;)V

    .line 2106
    .end local v2    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    goto :goto_148

    .line 2047
    :pswitch_11f
    const-string v2, "======INIT_OBSERVE======"

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 2048
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    # invokes: Lcom/android/server/am/OnePlusBGController;->initObservingUid()V
    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$3100(Lcom/android/server/am/OnePlusBGController;)V

    .line 2049
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@[START] Init-Observing in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 2050
    nop

    .line 2122
    .end local v0    # "startTime":J
    :goto_148
    goto :goto_14f

    .line 2123
    :cond_149
    const-string/jumbo v0, "mBatteryStatsService == null"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    .line 2125
    :goto_14f
    return-void

    nop

    nop

    :pswitch_data_152
    .packed-switch 0x1
        :pswitch_11f
        :pswitch_59
        :pswitch_1c
    .end packed-switch
.end method
