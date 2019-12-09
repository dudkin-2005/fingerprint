.class Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusPowerConsumptionStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 659
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 661
    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$000()Z

    move-result v0

    if-nez v0, :cond_e

    .line 662
    const-string v0, "OPCS"

    const-string v1, "# mDebugReceiver # onReceive # ENABLE false, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    return-void

    .line 667
    :cond_e
    if-nez p2, :cond_18

    .line 668
    const-string v0, "OPCS"

    const-string v1, "# mDebugReceiver # onReceive # intent is null, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    return-void

    .line 673
    :cond_18
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->isBaseTimerInited()Z
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 674
    const-string v0, "BaseTimer not yet timing, return"

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->myLog(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$200(Ljava/lang/String;)V

    .line 675
    return-void

    .line 678
    :cond_26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, "action":Ljava/lang/String;
    const-string v1, "OPCS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# mDebugReceiver # onReceive # action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const-string v1, "com.OPCS.action.debug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_135

    .line 682
    const-string v1, "code"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 683
    .local v1, "code":Ljava/lang/String;
    const-string v2, "OPCS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# mGeneralReceiver # onReceive # code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const-string v2, "dump"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    .line 685
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->dumpInfo()V
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    .line 686
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->dumpState()V
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    goto/16 :goto_135

    .line 687
    :cond_78
    const-string/jumbo v2, "persist"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 688
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    const-string v3, "cmd persist"

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleCalculate(Ljava/lang/String;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    move-result-object v2

    .line 689
    .local v2, "data":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    if-nez v2, :cond_93

    .line 690
    const-string v3, "OPCS"

    const-string v4, "# mGeneralReceiver # onReceive # persist # data is null, return"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    return-void

    .line 694
    :cond_93
    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->persistToLocal(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V
    invoke-static {v3, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V

    .line 695
    .end local v2    # "data":Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    goto/16 :goto_135

    :cond_9a
    const-string v2, "calculate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 696
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    const-string v3, "cmd calculate"

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleCalculate(Ljava/lang/String;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    goto/16 :goto_135

    .line 697
    :cond_ab
    const-string/jumbo v2, "report"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 698
    const-string/jumbo v2, "immediately"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 700
    .local v2, "immediately":Z
    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleReport(Z)V
    invoke-static {v3, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Z)V

    .line 701
    .end local v2    # "immediately":Z
    goto/16 :goto_135

    :cond_c3
    const-string v2, "calculatePower"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    .line 702
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    const-string v3, "cmd_calculatePower"

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleBatteryStatsRelated(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)V

    goto :goto_135

    .line 703
    :cond_d3
    const-string v2, "dumpAppForeground"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 704
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->dumpAppForeground()V
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    goto :goto_135

    .line 705
    :cond_e1
    const-string v2, "dumpPowerConsumptionList"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ef

    .line 706
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->dumpPowerConsumptionList()V
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    goto :goto_135

    .line 707
    :cond_ef
    const-string v2, "generatePowerConsumptionData"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_102

    .line 708
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->generatePowerConsumptionData()V
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    .line 709
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->dumpPowerConsumptionList()V
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    goto :goto_135

    .line 710
    :cond_102
    const-string v2, "generateSortListAndSystemList"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    .line 711
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    const-string v4, "cmd generateSortListAndSystemList"

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->handleCalculate(Ljava/lang/String;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;
    invoke-static {v3, v4}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;

    move-result-object v3

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->generateSortListAndSystemList(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V
    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1500(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$StatisticalData;)V

    goto :goto_135

    .line 712
    :cond_118
    const-string v2, "dumpBaseEventList"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_126

    .line 713
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->dumpBaseEventList()V
    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1600(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    goto :goto_135

    .line 714
    :cond_126
    const-string v2, "calculateKernelWakeLocks"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_135

    .line 715
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$2;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    const-string v3, "calculateKernelWakeLocks"

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->calculateKernelWakeLocks(Ljava/lang/String;)Ljava/util/HashMap;
    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$1700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;)Ljava/util/HashMap;

    .line 718
    .end local v1    # "code":Ljava/lang/String;
    :cond_135
    :goto_135
    return-void
.end method
