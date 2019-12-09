.class Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;
.super Ljava/lang/Object;
.source "OnePlusTemperatureMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusTemperatureMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReportItem"
.end annotation


# instance fields
.field public endTemperatureOfBattery:I

.field public endTemperatureOfCpu:I

.field public initialTemperatureOfBattery:I

.field public initialTemperatureOfCpu:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5
    .param p1, "initialTemperatureOfCpu"    # I
    .param p2, "initialTemperatureOfBattery"    # I
    .param p3, "endTemperatureOfCpu"    # I
    .param p4, "endTemperatureOfBattery"    # I

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput p1, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;->initialTemperatureOfCpu:I

    .line 172
    iput p2, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;->initialTemperatureOfBattery:I

    .line 174
    iput p3, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;->endTemperatureOfCpu:I

    .line 175
    iput p4, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;->endTemperatureOfBattery:I

    .line 176
    return-void
.end method


# virtual methods
.method public toMDM()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v0, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "ic"

    iget v2, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;->initialTemperatureOfCpu:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string/jumbo v1, "ib"

    iget v2, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;->initialTemperatureOfBattery:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v1, "ec"

    iget v2, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;->endTemperatureOfCpu:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v1, "eb"

    iget v2, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;->endTemperatureOfBattery:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ReportItem{ ic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;->initialTemperatureOfCpu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ib="

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;->initialTemperatureOfBattery:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ec="

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;->endTemperatureOfCpu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eb="

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusTemperatureMonitor$ReportItem;->endTemperatureOfBattery:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
