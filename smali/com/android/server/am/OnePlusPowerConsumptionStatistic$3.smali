.class Lcom/android/server/am/OnePlusPowerConsumptionStatistic$3;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionStatistic.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


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

    .line 1036
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$3;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .registers 3

    .line 1039
    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->ENABLE:Z
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$000()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1040
    const-string v0, "OPCS"

    const-string v1, "# mCalculateAlarmListener # ENABLE false, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    return-void

    .line 1044
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$3;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1045
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$3;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1047
    :cond_24
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$3;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # getter for: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->mConsumptionDetectorHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$400(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1048
    return-void
.end method
