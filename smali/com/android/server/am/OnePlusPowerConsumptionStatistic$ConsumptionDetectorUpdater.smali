.class Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorUpdater;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionStatistic.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConsumptionDetectorUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    .line 1080
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorUpdater;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .registers 3
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .line 1083
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$ConsumptionDetectorUpdater;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    # invokes: Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->resolveConfigFromJSON(Lorg/json/JSONArray;)V
    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Lorg/json/JSONArray;)V

    .line 1084
    return-void
.end method
